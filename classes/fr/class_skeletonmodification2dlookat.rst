:github_url: hide

.. _class_SkeletonModification2DLookAt:

SkeletonModification2DLookAt
============================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A modification that rotates a :ref:`Bone2D<class_Bone2D>` node to look at a target.

.. rst-class:: classref-introduction-group

Description
-----------

This :ref:`SkeletonModification2D<class_SkeletonModification2D>` rotates a bone to look a target. This is extremely helpful for moving character's head to look at the player, rotating a turret to look at a target, or any other case where you want to make a bone rotate towards something quickly and easily.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`bone2d_node<class_SkeletonModification2DLookAt_property_bone2d_node>`         | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`bone_index<class_SkeletonModification2DLookAt_property_bone_index>`           | ``-1``           |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DLookAt_property_target_nodepath>` | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_additional_rotation<class_SkeletonModification2DLookAt_method_get_additional_rotation>`\ (\ ) |const|                                   |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_constraint_angle_invert<class_SkeletonModification2DLookAt_method_get_constraint_angle_invert>`\ (\ ) |const|                           |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_constraint_angle_max<class_SkeletonModification2DLookAt_method_get_constraint_angle_max>`\ (\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_constraint_angle_min<class_SkeletonModification2DLookAt_method_get_constraint_angle_min>`\ (\ ) |const|                                 |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_enable_constraint<class_SkeletonModification2DLookAt_method_get_enable_constraint>`\ (\ ) |const|                                       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_additional_rotation<class_SkeletonModification2DLookAt_method_set_additional_rotation>`\ (\ rotation\: :ref:`float<class_float>`\ )     |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_invert<class_SkeletonModification2DLookAt_method_set_constraint_angle_invert>`\ (\ invert\: :ref:`bool<class_bool>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_max<class_SkeletonModification2DLookAt_method_set_constraint_angle_max>`\ (\ angle_max\: :ref:`float<class_float>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_constraint_angle_min<class_SkeletonModification2DLookAt_method_set_constraint_angle_min>`\ (\ angle_min\: :ref:`float<class_float>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_enable_constraint<class_SkeletonModification2DLookAt_method_set_enable_constraint>`\ (\ enable_constraint\: :ref:`bool<class_bool>`\ )  |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SkeletonModification2DLookAt_property_bone2d_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **bone2d_node** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DLookAt_property_bone2d_node>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_bone2d_node**\ (\ )

The :ref:`Bone2D<class_Bone2D>` node that the modification will operate on.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_property_bone_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_index** = ``-1`` :ref:`🔗<class_SkeletonModification2DLookAt_property_bone_index>`

.. rst-class:: classref-property-setget

- |void| **set_bone_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_index**\ (\ )

The index of the :ref:`Bone2D<class_Bone2D>` node that the modification will operate on.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DLookAt_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

The NodePath to the node that is the target for the LookAt modification. This node is what the modification will rotate the :ref:`Bone2D<class_Bone2D>` to.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkeletonModification2DLookAt_method_get_additional_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_additional_rotation**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_additional_rotation>`

Renvoie le montant de rotation supplémentaire qui est appliqué après que la modification LookAt s'exécute.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_invert:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_constraint_angle_invert**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_invert>`

Renvoie si les contraintes à cette modification sont inversées ou non.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constraint_angle_max**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_max>`

Renvoie l'angle maximal autorisé de la contrainte.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_constraint_angle_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constraint_angle_min**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_constraint_angle_min>`

Renvoie l'angle minimum autorisé de la contrainte.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_get_enable_constraint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_enable_constraint**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DLookAt_method_get_enable_constraint>`

Renvoie ``true`` si la modification LookAt utilise des contraintes.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_additional_rotation:

.. rst-class:: classref-method

|void| **set_additional_rotation**\ (\ rotation\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_additional_rotation>`

Sets the amount of additional rotation that is to be applied after executing the modification. This allows for offsetting the results by the inputted rotation amount.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_invert:

.. rst-class:: classref-method

|void| **set_constraint_angle_invert**\ (\ invert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_invert>`

When ``true``, the modification will use an inverted joint constraint.

An inverted joint constraint only constraints the :ref:`Bone2D<class_Bone2D>` to the angles *outside of* the inputted minimum and maximum angles. For this reason, it is referred to as an inverted joint constraint, as it constraints the joint to the outside of the inputted values.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_max:

.. rst-class:: classref-method

|void| **set_constraint_angle_max**\ (\ angle_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_max>`

Définit l'angle maximal autorisé de la contrainte.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_constraint_angle_min:

.. rst-class:: classref-method

|void| **set_constraint_angle_min**\ (\ angle_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_constraint_angle_min>`

Définit l'angle minimum autorisé de la contrainte.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DLookAt_method_set_enable_constraint:

.. rst-class:: classref-method

|void| **set_enable_constraint**\ (\ enable_constraint\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SkeletonModification2DLookAt_method_set_enable_constraint>`

Sets whether this modification will use constraints or not. When ``true``, constraints will be applied when solving the LookAt modification.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
