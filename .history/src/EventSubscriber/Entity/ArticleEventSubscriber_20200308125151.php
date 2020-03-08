<?php

namespace App\EventSubscriber\Entity;



use App\Entity\Article;
use App\Service\FileService;
use Doctrine\Common\EventSubscriber;
use Doctrine\ORM\Event\LifecycleEventArgs;
use Doctrine\ORM\Events;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\String\Slugger\SluggerInterface;

class ArticleEventSubscriber implements EventSubscriber
{

	private $slugger;
	private $fileService;

	public function __construct(SluggerInterface $slugger, FileService $fileService)
	{
		$this->slugger = $slugger;
		$this->fileService = $fileService;
	}

	public function prePersist(LifecycleEventArgs $event): void
	{

		if ($event->getObject() instanceof Article) {
			$article = $event->getObject();
			$article->setSlug($this->slugger->slug($article->getName())->lower());

			if ($article->getImage() instanceof UploadedFile) {
				$this->fileService->upload($article->getImage(), 'img/article');
				$article->setImage($this->fileService->getFileName());
			}
		}
	}

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
			$this->fileService->delete($article->prevImage, 'img/article');
		}
	}

	public function preUpdate(LifecycleEventArgs $args): void
	{
		if ($args->getObject() instanceof Article) {
			$article = $args->getObject();
			if ($article->getImage() instanceof UploadedFile) {
				$this->fileService->upload($article->getImage(), 'img/article');
				$article->setImage($this->fileService->getFileName());
				$this->fileService->delete($article->prevImage, 'img/article');
			} else {
				$article->setImage($article->prevImage);
			}
		}
	}

	public function postLoad(LifecycleEventArgs $args): void
	{
		if ($args->getObject() instanceof Article) {
			$article = $args->getObject();
			$article->prevImage = $article->getImage();
		}
	}
}
