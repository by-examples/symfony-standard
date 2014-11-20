<?php

namespace Gajdaw\BDDTutorial\AppRiversBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class RiverType extends AbstractType
{
        /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('length')
        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Gajdaw\BDDTutorial\AppRiversBundle\Entity\River'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'gajdaw_bddtutorial_appriversbundle_river';
    }
}
