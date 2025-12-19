:github_url: hide

.. _class_ImageFormatLoaderExtension:

ImageFormatLoaderExtension
==========================

**Hérite de :** :ref:`ImageFormatLoader<class_ImageFormatLoader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe de base pour la création d'extensions de :ref:`ImageFormatLoader<class_ImageFormatLoader>` (ajouter du support pour des formats d'image supplémentaires).

.. rst-class:: classref-introduction-group

Description
-----------

Le moteur prend en charge plusieurs formats d'image (PNG, SVG, JPEG, WebP pour n'en nommer que quelques-uns), mais vous pouvez choisir d'implémenter le support pour des formats d'image supplémentaires en élargissant cette classe.

Assurez-vous de respecter les types et les valeurs de renvoi documentés. Vous devriez en créer une instance et appeler :ref:`add_format_loader()<class_ImageFormatLoaderExtension_method_add_format_loader>` pour enregistrer ce chargeur pendant la phase d'initialisation.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const|                                                                                                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_load_image<class_ImageFormatLoaderExtension_private_method__load_image>`\ (\ image\: :ref:`Image<class_Image>`, fileaccess\: :ref:`FileAccess<class_FileAccess>`, flags\: |bitfield|\[:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>`\], scale\: :ref:`float<class_float>`\ ) |virtual| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_format_loader<class_ImageFormatLoaderExtension_method_add_format_loader>`\ (\ )                                                                                                                                                                                                             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_format_loader<class_ImageFormatLoaderExtension_method_remove_format_loader>`\ (\ )                                                                                                                                                                                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ImageFormatLoaderExtension_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`

Renvoie la liste des extensions de fichier pour ce format d'image. Les fichiers avec les extensions données seront traités comme des fichier image et chargés en utilisant cette classe.

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_private_method__load_image:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_load_image**\ (\ image\: :ref:`Image<class_Image>`, fileaccess\: :ref:`FileAccess<class_FileAccess>`, flags\: |bitfield|\[:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>`\], scale\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_ImageFormatLoaderExtension_private_method__load_image>`

Charge le contenu de ``fileaccess`` dans l'``image`` fournie.

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_method_add_format_loader:

.. rst-class:: classref-method

|void| **add_format_loader**\ (\ ) :ref:`🔗<class_ImageFormatLoaderExtension_method_add_format_loader>`

Ajoute ce chargeur de format au moteur, lui permettant de reconnaître les extensions de fichier renvoyées par :ref:`_get_recognized_extensions()<class_ImageFormatLoaderExtension_private_method__get_recognized_extensions>`.

.. rst-class:: classref-item-separator

----

.. _class_ImageFormatLoaderExtension_method_remove_format_loader:

.. rst-class:: classref-method

|void| **remove_format_loader**\ (\ ) :ref:`🔗<class_ImageFormatLoaderExtension_method_remove_format_loader>`

Retire ce chargeur de format du moteur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
