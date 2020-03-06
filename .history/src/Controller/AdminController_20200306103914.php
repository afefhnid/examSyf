<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin")
 */
class AdminController extends AbstractController
{
    /**
     * @Route("/", name="admin.homepage.index")
     */
    public function index(Request $request): Response
    {
        return $this->render('admin/homepage/index.html.twig', []);
    }
}
