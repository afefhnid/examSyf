<?php

namespace App\Controller\Admin;

use App\Entity\Article;
use App\Entity\Product;
use App\Form\ArticleType;
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
	 * @Route("/article", name="admin.article.index")
	 */
	public function index(ArticleRepository $articleRepository): Response
	{
		$results = $articleRepository->findAll();

		return $this->render('admin/article/index.html.twig', [
			'results' => $results
		]);
	}


	/**
	 * @Route("/article/form", name="admin.article.form")
	 * @Route("/article/form/update/{id}", name="admin.article.form.update")
	 */
	public function form(Request $request, EntityManagerInterface $entityManager, int $id = null, ArticleRepository $articleRepository): Response
	{
		$type = ArticleType::class;
		$model = $id ? $articleRepository->find($id) : new Article();
		$form = $this->createForm($type, $model);
		$form->handleRequest($request);


		if ($form->isSubmitted() && $form->isValid()) {

			$id ? null : $entityManager->persist($model);
			$entityManager->flush();

			$message = $id ? "Le Article a été modifié" : "Le Article a été ajouté";
			$this->addFlash('notice', $message);

			// redirection
			return $this->redirectToRoute('admin.article.index');
		}

		return $this->render('admin/article/form.html.twig', [
			'form' => $form->createView()
		]);
	}

	/**
	 * @Route("/article/delete/{id}", name="admin.article.delete")
	 */
	public function delete(ArticleRepository $articleRepository, EntityManagerInterface $entityManager, int $id): Response
	{

		$entity = $articleRepository->find($id);
		$entityManager->remove($entity);
		$entityManager->flush();

		$this->addFlash('notice', 'L Article a été supprimé');
		return $this->redirectToRoute('admin.article.index');
	}
}
