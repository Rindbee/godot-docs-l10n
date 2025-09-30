:github_url: hide

.. _class_SkeletonModification2DTwoBoneIK:

SkeletonModification2DTwoBoneIK
===============================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une modification qui fait tourner deux os en utilisant la loi des cosinus pour atteindre la cible.

.. rst-class:: classref-introduction-group

Description
-----------

Ce :ref:`SkeletonModification2D<class_SkeletonModification2D>` utilise un algorithme généralement appelé TwoBoneIK (litt. Cinématique inverse à deux os). Cet algorithme fonctionne en tirant parti de la loi des cosinus et des longueurs des os pour déterminer quelle rotation les os ont actuellement, et quelle rotation ils doivent avoir pour obtenir un triangle complet, où le premier os, le second os, et la cible forment les trois sommets du triangle. Parce que l'algorithme fonctionne en faisant un triangle, il ne peut fonctionner que sur deux os.

TwoBoneIK est idéal pour les bras, les jambes, et vraiment toutes les liaisons qui peuvent être représentées par seulement deux os qui se plient pour atteindre une cible. Ce solveur est plus léger que :ref:`SkeletonModification2DFABRIK<class_SkeletonModification2DFABRIK>`, mais donne des résultats similaires et naturels.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_bend_direction<class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction>`         | ``false``        |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`target_maximum_distance<class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance>` | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`target_minimum_distance<class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance>` | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DTwoBoneIK_property_target_nodepath>`                 | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_joint_one_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node>`\ (\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_joint_one_bone_idx<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx>`\ (\ ) |const|                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_joint_two_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node>`\ (\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_joint_two_bone_idx<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx>`\ (\ ) |const|                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_one_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node>`\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_one_bone_idx<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_two_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node>`\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_two_bone_idx<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_bend_direction** = ``false`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction>`

.. rst-class:: classref-property-setget

- |void| **set_flip_bend_direction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_bend_direction**\ (\ )

Si ``true``, les os de la modification se plieront vers l'extérieur plutôt que vers l'intérieur lors de la contraction. Si ``false``, les os se plient à l'intérieur lors de la contraction.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_maximum_distance** = ``0.0`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_maximum_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_maximum_distance**\ (\ )

La distance maximale à laquelle la cible peut être. Si la cible est plus loin que cette distance, la modification va se résoudre comme si elle était à cette distance maximale. Lorsque définie à ``0``, la modification va se résoudre sans contraintes de distance.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_minimum_distance** = ``0.0`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_minimum_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_minimum_distance**\ (\ )

La distance minimale à laquelle la cible peut être. Si la cible est plus proche que cette distance, la modification va se résoudre comme si elle était à cette distance minimale. Lorsque définie à ``0``, la modification va se résoudre sans contraintes de distance.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

Le NodePath vers le nœud qui est la cible pour la modification TwoBoneIK. Ce nœud est ce que la modification utilisera lors de la flexion des nœuds :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_joint_one_bone2d_node**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node>`

Renvoie le nœud :ref:`Bone2D<class_Bone2D>` qui est utilisé comme premier os dans la modification TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_one_bone_idx**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx>`

Renvoie l'index du nœud :ref:`Bone2D<class_Bone2D>` qui est utilisé comme premier os dans la modification TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_joint_two_bone2d_node**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node>`

Renvoie le nœud :ref:`Bone2D<class_Bone2D>` qui est utilisé comme second os dans la modification TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_two_bone_idx**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx>`

Renvoie l'index du nœud :ref:`Bone2D<class_Bone2D>` qui est utilisé comme second os dans la modification TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node:

.. rst-class:: classref-method

|void| **set_joint_one_bone2d_node**\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node>`

Définit le nœud :ref:`Bone2D<class_Bone2D>` qui est utilisé comme premier os dans la modification TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx:

.. rst-class:: classref-method

|void| **set_joint_one_bone_idx**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx>`

Définit l'index du nœud :ref:`Bone2D<class_Bone2D>` qui est utilisé comme premier os dans la modification TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node:

.. rst-class:: classref-method

|void| **set_joint_two_bone2d_node**\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node>`

Définit le nœud :ref:`Bone2D<class_Bone2D>` qui est utilisé comme second os dans la modification TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx:

.. rst-class:: classref-method

|void| **set_joint_two_bone_idx**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx>`

Définit le nœud :ref:`Bone2D<class_Bone2D>` qui est utilisé comme second os dans la modification TwoBoneIK.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
