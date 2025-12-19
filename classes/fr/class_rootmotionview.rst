:github_url: hide

.. _class_RootMotionView:

RootMotionView
==============

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Assistant dans l'éditeur seulement pour la mise en place du mouvement racine dans :ref:`AnimationMixer<class_AnimationMixer>`.

.. rst-class:: classref-introduction-group

Description
-----------

Le *mouvement racine* (en anglais, "root motion") se réfère à une technique d'animation où un squelette d'un maillage est utilisé pour donner une impulsion à un personnage. En travaillant avec des animations 3D, une technique populaire est pour les animateurs d'utiliser l'os racine du squelette pour donner du mouvement au reste du squelette. Cela permet d'animer des personnages d'une manière où les pas correspondent réellement au sol en-dessous. Cela permet également une interaction précise avec des objets pendant les cinématiques. Voir aussi :ref:`AnimationMixer<class_AnimationMixer>`.

\ **Note :** **RootMotionView** n'est visible que dans l'éditeur. Il sera automatiquement caché dans le projet en exécution.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Utiliser AnimationTree - Mouvement racine <../tutorials/animation/animation_tree.html#root-motion>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`animation_path<class_RootMotionView_property_animation_path>` | ``NodePath("")``          |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`float<class_float>`       | :ref:`cell_size<class_RootMotionView_property_cell_size>`           | ``1.0``                   |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`Color<class_Color>`       | :ref:`color<class_RootMotionView_property_color>`                   | ``Color(0.5, 0.5, 1, 1)`` |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`float<class_float>`       | :ref:`radius<class_RootMotionView_property_radius>`                 | ``10.0``                  |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+
   | :ref:`bool<class_bool>`         | :ref:`zero_y<class_RootMotionView_property_zero_y>`                 | ``true``                  |
   +---------------------------------+---------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_RootMotionView_property_animation_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **animation_path** = ``NodePath("")`` :ref:`🔗<class_RootMotionView_property_animation_path>`

.. rst-class:: classref-property-setget

- |void| **set_animation_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_animation_path**\ (\ )

Chemin vers un nœud :ref:`AnimationMixer<class_AnimationMixer>` à utiliser comme base pour le mouvement racine.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``1.0`` :ref:`🔗<class_RootMotionView_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

La taille de cellule de la grille en unités 3D.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0.5, 0.5, 1, 1)`` :ref:`🔗<class_RootMotionView_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

La couleur de la grille.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``10.0`` :ref:`🔗<class_RootMotionView_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Le rayon de la grille en unités 3D. L'opacité de la grille disparaîtra graduellement avec la distance de l'origine jusqu'à ce que ce rayon :ref:`radius<class_RootMotionView_property_radius>` soit atteint.

.. rst-class:: classref-item-separator

----

.. _class_RootMotionView_property_zero_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **zero_y** = ``true`` :ref:`🔗<class_RootMotionView_property_zero_y>`

.. rst-class:: classref-property-setget

- |void| **set_zero_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_zero_y**\ (\ )

Si ``true``, les points de la grille seront tous sur la même coordonnées Y (Y *local* = 0). Si ``false``, la coordonnées Y originale des points est conservée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
