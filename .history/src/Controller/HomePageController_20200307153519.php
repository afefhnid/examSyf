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
        //   dd($results);
        foreach ($results as  $index => $item) {
            dd($item);
        }
        return $this->render('home_page/index.html.twig', [
            'controller_name' => 'HomePageController',
            'results' => $results
        ]);
    }
}
