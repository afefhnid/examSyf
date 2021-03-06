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
        $table = [];
        foreach ($results as  $index => $item) {

            foreach ($item as  $index => $item1) {
                array_push($table, $item1);
            }
        }

        return $this->render('home_page/index.html.twig', [
            'controller_name' => 'HomePageController',
            'results' => $results
        ]);
    }
}
