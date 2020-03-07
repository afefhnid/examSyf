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
        $table = [];
        $results = $articleRepository->findAll();
        $searchResults = $articleRepository->test()->getResult();

        return $this->render('article/index.html.twig', [
            'controller_name' => 'ArticleController',
            'results' => $searchResults
        ]);
    }
}
