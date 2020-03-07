<?php

namespace App\Controller\Admin;

use App\Entity\Article;
use App\Entity\Product;
use App\Form\ProductType;
use App\Repository\ArticleRepository;
use App\Repository\ProductRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * @Route("/admin")
 */
class ArticleController extends AbstractController
{
	/**
	 * @Route("/products", name="admin.article.index")
	 */
	public function index(ArticleRepository $articleRepository): Response
	{
		$results = $articleRepository->findAll();

		return $this->render('admin/article/index.html.twig', [
			'results' => $results
		]);
	}


	/**
	 * @Route("/article/form", name="admin.product.form")
	 * @Route("/article/form/update/{id}", name="admin.product.form.update")
	 */
	public function form(Request $request, EntityManagerInterface $entityManager, int $id = null, ProductRepository $productRepository): Response
	{
		// affichage d'un formulaire
		$type = ProductType::class;
		$model = $id ? $productRepository->find($id) : new Product();
		$form = $this->createForm($type, $model);
		$form->handleRequest($request);

		// si le formulaire est valide
		if ($form->isSubmitted() && $form->isValid()) {
			//dd($model);
			/*
			 * insertion dans une table
			 * EntityManagerInterface permet d'exécuter UPDATE, DELETE, INSERT
			 *   méthode persist permet un INSERT
			 *   lors d'un UPDATE, aucune méthode n'est requise
			 *   méthode flush permet d'exécuter les requêtes
			 */
			$id ? null : $entityManager->persist($model);
			$entityManager->flush();

			// message de confirmation
			$message = $id ? "Le produit a été modifié" : "Le produit a été ajouté";
			$this->addFlash('notice', $message);

			// redirection
			return $this->redirectToRoute('admin.product.index');
		}

		return $this->render('admin/product/form.html.twig', [
			'form' => $form->createView()
		]);
	}

	/**
	 * @Route("/products/delete/{id}", name="admin.product.delete")
	 */
	public function delete(ProductRepository $productRepository, EntityManagerInterface $entityManager, int $id): Response
	{
		/*
		 * avec doctrine, pour supprimer une entité, il faut la sélectionner au préalable
		 * méthode remove pour DELETE
		 */
		$entity = $productRepository->find($id);
		$entityManager->remove($entity);
		$entityManager->flush();

		// message de confirmation et redirection
		$this->addFlash('notice', 'Le produit a été supprimé');
		return $this->redirectToRoute('admin.product.index');
	}
}
