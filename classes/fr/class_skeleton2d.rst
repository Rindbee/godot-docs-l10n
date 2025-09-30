:github_url: hide

.. _class_Skeleton2D:

Skeleton2D
==========

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Le parent d'une hiérarchie de :ref:`Bone2D<class_Bone2D>`\ s, utilisé pour créer une animation de squelette 2D.

.. rst-class:: classref-introduction-group

Description
-----------

**Skeleton2D** est le parent d'une hiérarchie de nœuds :ref:`Bone2D<class_Bone2D>`. Il tient une référence à la pose de repos de chacun des\ :ref:`Bone2D<class_Bone2D>`\ s et agit comme un point d'accès unique à ses os.

Pour mettre en place différents types de cinématiques inverses pour le Skeleton2D donné, une :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` devrait être créée. Les cinématiques inverses sont appliqués en augmentant :ref:`SkeletonModificationStack2D.modification_count<class_SkeletonModificationStack2D_property_modification_count>` et en créant le nombre souhaité de modifications.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Squelettes 2D <../tutorials/animation/2d_skeletons>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`execute_modifications<class_Skeleton2D_method_execute_modifications>`\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ )                                                                                                         |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Bone2D<class_Bone2D>`                                           | :ref:`get_bone<class_Skeleton2D_method_get_bone>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                                                                 |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                 | :ref:`get_bone_count<class_Skeleton2D_method_get_bone_count>`\ (\ ) |const|                                                                                                                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`                                 | :ref:`get_bone_local_pose_override<class_Skeleton2D_method_get_bone_local_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                                                                                                                                    |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_modification_stack<class_Skeleton2D_method_get_modification_stack>`\ (\ ) |const|                                                                                                                                                                          |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                 | :ref:`get_skeleton<class_Skeleton2D_method_get_skeleton>`\ (\ ) |const|                                                                                                                                                                                              |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_bone_local_pose_override<class_Skeleton2D_method_set_bone_local_pose_override>`\ (\ bone_idx\: :ref:`int<class_int>`, override_pose\: :ref:`Transform2D<class_Transform2D>`, strength\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_modification_stack<class_Skeleton2D_method_set_modification_stack>`\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ )                                                                                      |
   +-----------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Skeleton2D_signal_bone_setup_changed:

.. rst-class:: classref-signal

**bone_setup_changed**\ (\ ) :ref:`🔗<class_Skeleton2D_signal_bone_setup_changed>`

Émis lorsque la configuration des :ref:`Bone2D<class_Bone2D>` attachés à ce squelette change. Ceci est principalement utilisé en interne dans le squelette.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Skeleton2D_method_execute_modifications:

.. rst-class:: classref-method

|void| **execute_modifications**\ (\ delta\: :ref:`float<class_float>`, execution_mode\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_execute_modifications>`

Exécute toutes les modifications sur la :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, si le Skeleton2D en une d'assignée.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone:

.. rst-class:: classref-method

:ref:`Bone2D<class_Bone2D>` **get_bone**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_get_bone>`

Renvoie un :ref:`Bone2D<class_Bone2D>` de la hiérarchie de nœuds parentée par Skeleton2D. L'objet à renvoyer est identifié par l'index ``idx``. Les os sont indexés en descendant la hiérarchie de nœuds de haut en bas, en ajoutant les enfants de chaque branche avant de passer au prochain frère.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_count**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_bone_count>`

Renvoie le nombre de nœuds :ref:`Bone2D<class_Bone2D>` dans la hiérarchie de ce Skeleton2D.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_bone_local_pose_override:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_bone_local_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Skeleton2D_method_get_bone_local_pose_override>`

Renvoie la transformation redéfinie de la pose locale pour l'index d'os ``bone_idx``.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_modification_stack**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_modification_stack>`

Renvoie la :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` attachée à ce squelette, si une existe.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_Skeleton2D_method_get_skeleton>`

Renvoie le :ref:`RID<class_RID>` de l'instance d'un Skeleton2D.

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_set_bone_local_pose_override:

.. rst-class:: classref-method

|void| **set_bone_local_pose_override**\ (\ bone_idx\: :ref:`int<class_int>`, override_pose\: :ref:`Transform2D<class_Transform2D>`, strength\: :ref:`float<class_float>`, persistent\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Skeleton2D_method_set_bone_local_pose_override>`

Définit la transformation de la pose locale, ``override_pose``, pour l'os à l'index ``bone_idx``.

\ ``strength`` est la force d'interpolation qui sera utilisée lors de l'application de la pose, et ``persistent`` détermine si la pose appliquée restera.

\ **Note :** La transformation de la pose doit être une transformation locale relative au nœud :ref:`Bone2D<class_Bone2D>` à ``bone_idx``\  !

.. rst-class:: classref-item-separator

----

.. _class_Skeleton2D_method_set_modification_stack:

.. rst-class:: classref-method

|void| **set_modification_stack**\ (\ modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) :ref:`🔗<class_Skeleton2D_method_set_modification_stack>`

Définit la :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` attachée à ce squelette.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
