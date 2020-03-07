<?php

namespace App\EventSubscriber\Entity;

/*
 * souscripteur d'entités doctrine
 *    déclencher des actions durant le cycle de vie d'une entité
 *
 */

use App\Entity\Article;
use App\Service\FileService;
use Doctrine\Common\EventSubscriber;
use Doctrine\ORM\Event\LifecycleEventArgs;
use Doctrine\ORM\Events;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\String\Slugger\SluggerInterface;

class ArticleEventSubscriber implements EventSubscriber
{
	/*
	 * injecter un service dans un service non contrôleur
	 *      créer une propriété
	 *      créer un constructeur avec un paramètre réprésentant le service
	 *      dans le constructeur, lier la propriété et le paramètre
	 */
	private $slugger;
	private $fileService;

	public function __construct(SluggerInterface $slugger, FileService $fileService)
	{
		$this->slugger = $slugger;
		$this->fileService = $fileService;
	}

	public function prePersist(LifecycleEventArgs $event): void
	{
		// par défaut, les souscripteurs doctrine écoutent toutes les entités
		if ($event->getObject() instanceof Article) {
			$article = $event->getObject();

			// création du slug
			$article->setSlug($this->slugger->slug($article->getName())->lower());
			dd($article);
			// transfert de l'image
			if ($article->getImage() instanceof UploadedFile) {
				// appel d'un service
				$this->fileService->upload($article->getImage(), 'img/article');

				// récupération du nom aléatoire du fichier généré dans le service
				$article->setImage($this->fileService->getFileName());
			}
		}
	}

	/*
	 * getSubscribedEvents doit retourner un array des événements à écouter
	 * principaux événements:
	 *      - postLoad : après le chargement d'une entité
	 *      - prePersist / postPersist : avant ou après la création d'une nouvelle entité dans la table (INSERT)
	 *      - preUpdate / postUpdate : avant ou après la mise à jour d'une entité dans la table (UPDATE)
	 *      - preRemove / postRemove : avant ou après la suppression d'une entité dans la table (DELETE)
	 *
	 * le nom des méthodes gérant les événements doivent reprendre strictement le nom de l'événement
	 *
	 * NE PAS OUBLIER de déclarer le souscripteur doctrine dans config/services.yaml
	 */
	public function getSubscribedEvents()
	{
		return [
			Events::prePersist,
			Events::postLoad,
			Events::preUpdate,
			Events::preRemove
		];
	}

	public function preRemove(LifecycleEventArgs $args): void
	{
		if ($args->getObject() instanceof Article) {
			$article = $args->getObject();
			// supprimer l'image à partir de la propriété dynamique créée dans l'événement postLoad
			$this->fileService->delete($article->prevImage, 'img/article');
		}
	}

	public function preUpdate(LifecycleEventArgs $args): void
	{
		if ($args->getObject() instanceof Article) {
			$article = $args->getObject();
			// gestion de l'image
			// si une nouvelle image a été sélectionnée
			if ($article->getImage() instanceof UploadedFile) {
				// transfert de la nouvelle image
				$this->fileService->upload($article->getImage(), 'img/article');
				$article->setImage($this->fileService->getFileName());

				// supprimer l'ancienne image à partir de la propriété dynamique créée dans l'événement postLoad
				$this->fileService->delete($article->prevImage, 'img/article');
			}
			// si aucune image n'a été sélectionnée
			else {
				// récupération de la propriété dynamique créée dans l'événement postLoad
				$article->setImage($article->prevImage);
			}
		}
	}

	public function postLoad(LifecycleEventArgs $args): void
	{
		if ($args->getObject() instanceof Article) {
			// création d'une propriété dynamique permettant de stocker le nom de l'image
			$article = $args->getObject();
			$article->prevImage = $article->getImage();
			//dd($product);
		}
	}
}
