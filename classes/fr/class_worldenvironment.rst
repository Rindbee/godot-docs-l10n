:github_url: hide

.. meta::
	:keywords: background, sky

.. _class_WorldEnvironment:

WorldEnvironment
================

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Les propriétés par défaut de l'environnement de toute la scène (effets de post-processing, éclairage et réglages de l'arrière-plan).

.. rst-class:: classref-introduction-group

Description
-----------

Le nœud **WorldEnvironment** est utilisé pour configurer l':ref:`Environment<class_Environment>` par défaut pour la scène.

Les paramètres définis dans le **WorldEnvironment** peuvent être redéfinis par un nœud :ref:`Environment<class_Environment>` défini sur la :ref:`Camera3D<class_Camera3D>` courante. En plus, un seul **WorldEnvironment** peut être instancié dans une scène donnée à la fois.

Le **WorldEnvironment** permet à l'utilisateur de spécifier les paramètres de lumière par défaut (par exemple l'éclairage ambiant), les divers effets de post-traitement (p. ex. SSAO, profondeur de champ, Tonemapping) et comment dessiner l'arrière-plan (p. ex. couleur solide, skybox). Habituellement, ils sont ajoutés afin d'améliorer le réalisme/la balance des couleurs de la scène.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Les environnements et les effets post-rendu <../tutorials/3d/environment_and_post_processing>`

- `Démo de test des matériaux 3D <https://godotengine.org/asset-library/asset/2742>`__

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_WorldEnvironment_property_camera_attributes>` |
   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`Compositor<class_Compositor>`             | :ref:`compositor<class_WorldEnvironment_property_compositor>`               |
   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`           | :ref:`environment<class_WorldEnvironment_property_environment>`             |
   +-------------------------------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_WorldEnvironment_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_WorldEnvironment_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

La ressource :ref:`CameraAttributes<class_CameraAttributes>` par défaut à utiliser si aucune n'est définie sur la :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_compositor:

.. rst-class:: classref-property

:ref:`Compositor<class_Compositor>` **compositor** :ref:`🔗<class_WorldEnvironment_property_compositor>`

.. rst-class:: classref-property-setget

- |void| **set_compositor**\ (\ value\: :ref:`Compositor<class_Compositor>`\ )
- :ref:`Compositor<class_Compositor>` **get_compositor**\ (\ )

La ressource :ref:`Compositor<class_Compositor>` par défaut à utiliser si aucune n'est définie sur la :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_WorldEnvironment_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

La ressource du :ref:`Environment<class_Environment>` utilisé par ce **WorldEnvironment**, définissant les propriétés par défaut.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
