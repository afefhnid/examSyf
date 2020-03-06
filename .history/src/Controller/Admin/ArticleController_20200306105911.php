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
	 * @Route("/products", name="admin.product.index")
	 */
	public function index(ArticleRepository $articleRepository): Response
	{
		$results = $articleRepository->findAll();

		return $this->render('admin/article/index.html.twig', [
			'results' => $results
		]);
	}
}
