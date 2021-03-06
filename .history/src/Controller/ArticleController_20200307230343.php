<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\ContinentRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ArticleController extends AbstractController
{
    /**
     * @Route("/article", name="article.index")
     */
    public function index(ArticleRepository $articleRepository, ContinentRepository $continentRepository)
    {

        $results = $continentRepository->findAll();

        return $this->render('article/index.html.twig', [
            'controller_name' => 'ArticleController',
            'results' => $results
        ]);
    }
    /**
     * @Route("/product/{slug}", name="product.details")
     */

    public function details(string $slug, ProductRepository $productRepository): Response
    {
        /*
		 * findOneBy nécessite une liste de conditions sur les propriétés de l'entité
		 *      clé est l'une des propriétés de l'entité
		 */
        $product = $productRepository->findOneBy([
            'slug' => $slug
        ]);

        return $this->render('product/details.html.twig', [
            'product' => $product
        ]);
    }
}
