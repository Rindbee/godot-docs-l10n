:github_url: hide

.. _class_SkeletonModifier3D:

SkeletonModifier3D
==================

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`BoneConstraint3D<class_BoneConstraint3D>`, :ref:`BoneTwistDisperser3D<class_BoneTwistDisperser3D>`, :ref:`IKModifier3D<class_IKModifier3D>`, :ref:`LimitAngularVelocityModifier3D<class_LimitAngularVelocityModifier3D>`, :ref:`LookAtModifier3D<class_LookAtModifier3D>`, :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`, :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>`, :ref:`RetargetModifier3D<class_RetargetModifier3D>`, :ref:`SkeletonIK3D<class_SkeletonIK3D>`, :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, :ref:`XRBodyModifier3D<class_XRBodyModifier3D>`, :ref:`XRHandModifier3D<class_XRHandModifier3D>`

Un nœud qui peut modifier les os d'un Skeleton3D.

.. rst-class:: classref-introduction-group

Description
-----------

**SkeletonModifier3D** récupère un :ref:`Skeleton3D<class_Skeleton3D>` cible en ayant un :ref:`Skeleton3D<class_Skeleton3D>` parent.

S'il y a un :ref:`AnimationMixer<class_AnimationMixer>`, une modification s'effectue toujours après le processus de lecture de l':ref:`AnimationMixer<class_AnimationMixer>`.

Ce nœud devrait être utilisé pour implémenter des solveur d'IK, des contraintes ou de la physique de squelette personnalisés.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Conception du Skeleton Modifier 3D <https://godotengine.org/article/design-of-the-skeleton-modifier-3d/>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`active<class_SkeletonModifier3D_property_active>`       | ``true`` |
   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`influence<class_SkeletonModifier3D_property_influence>` | ``1.0``  |
   +---------------------------+---------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification<class_SkeletonModifier3D_private_method__process_modification>`\ (\ ) |virtual|                                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification_with_delta<class_SkeletonModifier3D_private_method__process_modification_with_delta>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_skeleton_changed<class_SkeletonModifier3D_private_method__skeleton_changed>`\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_validate_bone_names<class_SkeletonModifier3D_private_method__validate_bone_names>`\ (\ ) |virtual|                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SkeletonModifier3D_method_get_skeleton>`\ (\ ) |const|                                                                                                                             |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_SkeletonModifier3D_signal_modification_processed:

.. rst-class:: classref-signal

**modification_processed**\ (\ ) :ref:`🔗<class_SkeletonModifier3D_signal_modification_processed>`

Notifie quand la modification a été terminée.

\ **Note :** Si vous voulez obtenir la pose d'os modifiée par le modificateur, vous devez utiliser :ref:`Skeleton3D.get_bone_pose()<class_Skeleton3D_method_get_bone_pose>` ou :ref:`Skeleton3D.get_bone_global_pose()<class_Skeleton3D_method_get_bone_global_pose>` au moment où ce signal est tiré.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_SkeletonModifier3D_BoneAxis:

.. rst-class:: classref-enumeration

enum **BoneAxis**: :ref:`🔗<enum_SkeletonModifier3D_BoneAxis>`

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_X** = ``0``

Valeur d'énumération pour l'axe +X.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_X** = ``1``

Valeur d'énumération pour l'axe -X.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Y** = ``2``

Valeur d'énumération pour l'axe +Y.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Y** = ``3``

Valeur d'énumération pour l'axe -Y.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Z** = ``4``

Valeur d'énumération pour l'axe +Z.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Z** = ``5``

Valeur d'énumération pour l'axe -Z.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_BoneDirection:

.. rst-class:: classref-enumeration

enum **BoneDirection**: :ref:`🔗<enum_SkeletonModifier3D_BoneDirection>`

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_X** = ``0``

Valeur d'énumération pour l'axe +X.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_X** = ``1``

Valeur d'énumération pour l'axe -X.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_Y** = ``2``

Valeur d'énumération pour l'axe +Y.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_Y** = ``3``

Valeur d'énumération pour l'axe -Y.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_PLUS_Z** = ``4``

Valeur d'énumération pour l'axe +Z.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_MINUS_Z** = ``5``

Valeur d'énumération pour l'axe -Z.

.. _class_SkeletonModifier3D_constant_BONE_DIRECTION_FROM_PARENT:

.. rst-class:: classref-enumeration-constant

:ref:`BoneDirection<enum_SkeletonModifier3D_BoneDirection>` **BONE_DIRECTION_FROM_PARENT** = ``6``

Valeur d’énumération pour l'axe qui va d'un os parent vers l'os enfant.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_SecondaryDirection:

.. rst-class:: classref-enumeration

enum **SecondaryDirection**: :ref:`🔗<enum_SkeletonModifier3D_SecondaryDirection>`

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_NONE** = ``0``

Enumerated value for the case when the axis is undefined.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_X** = ``1``

Valeur d'énumération pour l'axe +X.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_X** = ``2``

Valeur d'énumération pour l'axe -X.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_Y** = ``3``

Valeur d'énumération pour l'axe +Y.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_Y** = ``4``

Valeur d'énumération pour l'axe -Y.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_PLUS_Z** = ``5``

Valeur d'énumération pour l'axe +Z.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_MINUS_Z** = ``6``

Valeur d'énumération pour l'axe -Z.

.. _class_SkeletonModifier3D_constant_SECONDARY_DIRECTION_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`SecondaryDirection<enum_SkeletonModifier3D_SecondaryDirection>` **SECONDARY_DIRECTION_CUSTOM** = ``7``

Enumerated value for an optional axis.

.. rst-class:: classref-item-separator

----

.. _enum_SkeletonModifier3D_RotationAxis:

.. rst-class:: classref-enumeration

enum **RotationAxis**: :ref:`🔗<enum_SkeletonModifier3D_RotationAxis>`

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_X** = ``0``

Valeur d'énumération pour la rotation de l'axe X.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_Y** = ``1``

Valeur d'énumération pour la rotation de l'axe Y.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_Z** = ``2``

Valeur d'énumération pour la rotation de l'axe Z.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_ALL** = ``3``

Valeur d'énumération pour la rotation sans contraintes.

.. _class_SkeletonModifier3D_constant_ROTATION_AXIS_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`RotationAxis<enum_SkeletonModifier3D_RotationAxis>` **ROTATION_AXIS_CUSTOM** = ``4``

Enumerated value for an optional rotation axis.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SkeletonModifier3D_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_SkeletonModifier3D_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Si ``true``, le **SkeletonModifier3D** traitera.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_property_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **influence** = ``1.0`` :ref:`🔗<class_SkeletonModifier3D_property_influence>`

.. rst-class:: classref-property-setget

- |void| **set_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_influence**\ (\ )

Définit l'influence de la modification.

\ **Note :** Cette valeur est utilisée par :ref:`Skeleton3D<class_Skeleton3D>` pour mélanger, de sorte que le **SkeletonModifier3D** devrait toujours seulement appliquer 100% du résultat sans interpolation.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkeletonModifier3D_private_method__process_modification:

.. rst-class:: classref-method

|void| **_process_modification**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification>`

**Obsolète :** Use :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` instead.

Redéfinissez cette méthode virtuelle pour implémenter un modificateur de squelette personnalisé. Vous devriez faire des choses comme obtenir la pose actuelle du :ref:`Skeleton3D<class_Skeleton3D>` et appliquer la pose ici.

\ :ref:`_process_modification()<class_SkeletonModifier3D_private_method__process_modification>` ne doit pas appliquer :ref:`influence<class_SkeletonModifier3D_property_influence>` aux poses des os car le :ref:`Skeleton3D<class_Skeleton3D>` applique automatiquement l'influence à toutes les poses des os définies par le modificateur.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__process_modification_with_delta:

.. rst-class:: classref-method

|void| **_process_modification_with_delta**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification_with_delta>`

Redéfinissez cette méthode virtuelle pour implémenter un modificateur de squelette personnalisé. Vous devriez faire des choses comme obtenir la pose actuelle du :ref:`Skeleton3D<class_Skeleton3D>` et appliquer la pose ici.

\ :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` ne doit pas appliquer :ref:`influence<class_SkeletonModifier3D_property_influence>` aux poses des os car le :ref:`Skeleton3D<class_Skeleton3D>` applique automatiquement l'influence à toutes les poses des os définies par le modificateur.

\ ``delta`` est passé depuis le :ref:`Skeleton3D<class_Skeleton3D>` parent. Voir aussi :ref:`Skeleton3D.advance()<class_Skeleton3D_method_advance>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__skeleton_changed:

.. rst-class:: classref-method

|void| **_skeleton_changed**\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__skeleton_changed>`

Appelée quand le squelette est changé.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__validate_bone_names:

.. rst-class:: classref-method

|void| **_validate_bone_names**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__validate_bone_names>`

Called when bone names and indices need to be validated, such as when entering the scene tree or changing skeleton.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModifier3D_method_get_skeleton>`

Returns the parent :ref:`Skeleton3D<class_Skeleton3D>` node if it exists. Otherwise, returns ``null``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
