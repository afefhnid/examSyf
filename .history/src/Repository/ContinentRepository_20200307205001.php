<?php

namespace App\Repository;

use Doctrine\ORM\Query;
use App\Entity\Continent;
use Doctrine\Common\Persistence\ManagerRegistry;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;

/**
 * @method Continent|null find($id, $lockMode = null, $lockVersion = null)
 * @method Continent|null findOneBy(array $criteria, array $orderBy = null)
 * @method Continent[]    findAll()
 * @method Continent[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ContinentRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Continent::class);
    }

    public function test(): Query
    {
        $results = $this->createQueryBuilder('article')
            /*->select('article.id, continent.name')
            ->join('article.continent', 'continent')
            ->groupBy('continent.name')
*/
            ->select('continent.name, article.name AS aName')
            ->join('article.continent', 'continent')
            ->groupBy('continent.name')
            ->getQuery();

        // retour des résultats
        return $results;
    }
    // /**
    //  * @return Continent[] Returns an array of Continent objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Continent
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
