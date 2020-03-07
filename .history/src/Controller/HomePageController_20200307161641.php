<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomePageController extends AbstractController
{
    /**
     * @Route("/", name="homePage.index")
     */
    public function index(ArticleRepository $articleRepository)
    {
        $results = $articleRepository->findAll();

        $random_keys = array_rand($results, 3);

        $table = [$results[$random_keys[0]], $results[$random_keys[1]], $results[$random_keys[2]]];
        dd($random_keys[$table]);
        return $this->render('home_page/index.html.twig', [
            'controller_name' => 'HomePageController',
            'results' => $results
        ]);
    }
}
