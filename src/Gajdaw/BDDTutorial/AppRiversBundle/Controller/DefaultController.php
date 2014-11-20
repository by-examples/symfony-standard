<?php

namespace Gajdaw\BDDTutorial\AppRiversBundle\Controller;

use Gedmo\Exception\RuntimeException;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class DefaultController extends Controller
{
    /**
     * @Route("/")
     * @Template()
     */
    public function indexAction()
    {
        return array();
    }

    /**
     * @Route("/action/with/exception")
     * @Template()
     */
    public function actionWithExceptionAction()
    {
        throw new RuntimeException('Ups...');
    }
}
