:github_url: hide

.. _class_ImageFormatLoader:

ImageFormatLoader
=================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`ImageFormatLoaderExtension<class_ImageFormatLoaderExtension>`

Classe de base pour ajouter du support pour des formats d'image spécifiques.

.. rst-class:: classref-introduction-group

Description
-----------

Le moteur prend en charge plusieurs formats d'image (PNG, SVG, JPEG, WebP pour n'en nommer que quelques-uns), mais vous pouvez choisir d'implémenter du support pour des formats d'image supplémentaires en étendant :ref:`ImageFormatLoaderExtension<class_ImageFormatLoaderExtension>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ImageFormatLoader_LoaderFlags:

.. rst-class:: classref-enumeration

flags **LoaderFlags**: :ref:`🔗<enum_ImageFormatLoader_LoaderFlags>`

.. _class_ImageFormatLoader_constant_FLAG_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_NONE** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_ImageFormatLoader_constant_FLAG_FORCE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_FORCE_LINEAR** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_ImageFormatLoader_constant_FLAG_CONVERT_COLORS:

.. rst-class:: classref-enumeration-constant

:ref:`LoaderFlags<enum_ImageFormatLoader_LoaderFlags>` **FLAG_CONVERT_COLORS** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
