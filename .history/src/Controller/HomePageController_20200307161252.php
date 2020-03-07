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
        $a = array("red", "green", "blue", "yellow", "brown");
        $random_keys = array_rand($a, 3);
        echo $a[$random_keys[0]] . "<br>";
        echo $a[$random_keys[1]] . "<br>";
        echo $a[$random_keys[2]];
        return $this->render('home_page/index.html.twig', [
            'controller_name' => 'HomePageController',
            'results' => $results
        ]);
    }
}
