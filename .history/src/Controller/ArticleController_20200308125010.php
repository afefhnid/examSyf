<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\ContinentRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ArticleController extends AbstractController
{
    /**
     * @Route("/article", name="article.index")
     */
    public function index(ContinentRepository $continentRepository): Response
    {

        $results = $continentRepository->findAll();

        return $this->render('article/index.html.twig', [
            'controller_name' => 'ArticleController',
            'results' => $results
        ]);
    }

    /**
     * @Route("/article/{slug}", name="article.details")
     */

    public function details(string $slug, ArticleRepository $articleRepository): Response
    {

        $article = $articleRepository->findOneBy([
            'slug' => $slug
        ]);

        return $this->render('article/details.html.twig', [
            'article' => $article
        ]);
    }
}
