:github_url: hide

.. _class_ConvertTransformModifier3D:

ConvertTransformModifier3D
==========================

**Hérite de :** :ref:`BoneConstraint3D<class_BoneConstraint3D>` **<** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` that apply transform to the bone which converted from reference.

.. rst-class:: classref-introduction-group

Description
-----------

Apply the copied transform of the bone set by :ref:`BoneConstraint3D.set_reference_bone()<class_BoneConstraint3D_method_set_reference_bone>` to the bone set by :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` about the specific axis with remapping it with some options.

There are 4 ways to apply the transform, depending on the combination of :ref:`set_relative()<class_ConvertTransformModifier3D_method_set_relative>` and :ref:`set_additive()<class_ConvertTransformModifier3D_method_set_additive>`.

\ **Relative + Additive:**\ 

- Extract reference pose relative to the rest and add it to the apply bone's pose.

\ **Relative + Not Additive:**\ 

- Extract reference pose relative to the rest and add it to the apply bone's rest.

\ **Not Relative + Additive:**\ 

- Extract reference pose absolutely and add it to the apply bone's pose.

\ **Not Relative + Not Additive:**\ 

- Extract reference pose absolutely and the apply bone's pose is replaced with it.

\ **Note:** Relative option is available only in the case :ref:`BoneConstraint3D.get_reference_type()<class_BoneConstraint3D_method_get_reference_type>` is :ref:`BoneConstraint3D.REFERENCE_TYPE_BONE<class_BoneConstraint3D_constant_REFERENCE_TYPE_BONE>`. See also :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

\ **Note:** If there is a rotation greater than ``180`` degrees with constrained axes, flipping may occur.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`setting_count<class_ConvertTransformModifier3D_property_setting_count>` | ``0`` |
   +-----------------------+-------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                      | :ref:`get_apply_axis<class_ConvertTransformModifier3D_method_get_apply_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                           |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_apply_range_max<class_ConvertTransformModifier3D_method_get_apply_range_max>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_apply_range_min<class_ConvertTransformModifier3D_method_get_apply_range_min>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` | :ref:`get_apply_transform_mode<class_ConvertTransformModifier3D_method_get_apply_transform_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                       |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                      | :ref:`get_reference_axis<class_ConvertTransformModifier3D_method_get_reference_axis>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                   |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_reference_range_max<class_ConvertTransformModifier3D_method_get_reference_range_max>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`get_reference_range_min<class_ConvertTransformModifier3D_method_get_reference_range_min>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` | :ref:`get_reference_transform_mode<class_ConvertTransformModifier3D_method_get_reference_transform_mode>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`is_additive<class_ConvertTransformModifier3D_method_is_additive>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`is_relative<class_ConvertTransformModifier3D_method_is_relative>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_additive<class_ConvertTransformModifier3D_method_set_additive>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_axis<class_ConvertTransformModifier3D_method_set_apply_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )                                                                            |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_range_max<class_ConvertTransformModifier3D_method_set_apply_range_max>`\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ )                                                                  |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_range_min<class_ConvertTransformModifier3D_method_set_apply_range_min>`\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ )                                                                  |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_apply_transform_mode<class_ConvertTransformModifier3D_method_set_apply_transform_mode>`\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ )         |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_axis<class_ConvertTransformModifier3D_method_set_reference_axis>`\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ )                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_range_max<class_ConvertTransformModifier3D_method_set_reference_range_max>`\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_range_min<class_ConvertTransformModifier3D_method_set_reference_range_min>`\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ )                                                          |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_reference_transform_mode<class_ConvertTransformModifier3D_method_set_reference_transform_mode>`\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                              | :ref:`set_relative<class_ConvertTransformModifier3D_method_set_relative>`\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )                                                                                    |
   +---------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ConvertTransformModifier3D_TransformMode:

.. rst-class:: classref-enumeration

enum **TransformMode**: :ref:`🔗<enum_ConvertTransformModifier3D_TransformMode>`

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_POSITION** = ``0``

Convertir avec la position. Transférer la différence.

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_ROTATION:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_ROTATION** = ``1``

Convertir avec la rotation. L'angle est le roulis de l'axe spécifié.

.. _class_ConvertTransformModifier3D_constant_TRANSFORM_MODE_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **TRANSFORM_MODE_SCALE** = ``2``

Convertir avec l'échelle. Transférer le facteur, pas la différence.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ConvertTransformModifier3D_property_setting_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **setting_count** = ``0`` :ref:`🔗<class_ConvertTransformModifier3D_property_setting_count>`

.. rst-class:: classref-property-setget

- |void| **set_setting_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_setting_count**\ (\ )

Le nombre de réglages dans le modificateur.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ConvertTransformModifier3D_method_get_apply_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_apply_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_axis>`

Returns the axis of the remapping destination transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_range_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_apply_range_max**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_range_max>`

Returns the maximum value of the remapping destination range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_range_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_apply_range_min**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_range_min>`

Returns the minimum value of the remapping destination range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_apply_transform_mode:

.. rst-class:: classref-method

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **get_apply_transform_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_apply_transform_mode>`

Returns the operation of the remapping destination transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_axis:

.. rst-class:: classref-method

:ref:`Axis<enum_Vector3_Axis>` **get_reference_axis**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_axis>`

Returns the axis of the remapping source transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_range_max:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_reference_range_max**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_range_max>`

Returns the maximum value of the remapping source range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_range_min:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_reference_range_min**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_range_min>`

Returns the minimum value of the remapping source range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_get_reference_transform_mode:

.. rst-class:: classref-method

:ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>` **get_reference_transform_mode**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_get_reference_transform_mode>`

Returns the operation of the remapping source transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_is_additive:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_additive**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_is_additive>`

Renvoie ``true`` si l'option Additive est activée dans le paramètre à l'index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_is_relative:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_relative**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ConvertTransformModifier3D_method_is_relative>`

Renvoie ``true`` si l'option Relative est activée dans le paramètre à l'index ``index``.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_additive:

.. rst-class:: classref-method

|void| **set_additive**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_additive>`

Définit l'option Additive dans le paramètre à l'index ``index`` à la valeur ``enabled``. Cela affecte principalement le processus d'application de la transformation à l'os de :ref:`BoneConstraint3D.set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>`.

Si ``enabled`` est défini à ``true``, la transformation traitée est ajoutée à la pose de l'os appliqué actuel.

Si ``enabled`` est défini à ``false``, la pose de l'os appliqué actuel est remplacée par la transformation traitée. Toutefois, si :ref:`set_relative()<class_ConvertTransformModifier3D_method_set_relative>` est défini à ``true``, la transformation est relative au repos.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_axis:

.. rst-class:: classref-method

|void| **set_apply_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_axis>`

Sets the axis of the remapping destination transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_range_max:

.. rst-class:: classref-method

|void| **set_apply_range_max**\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_range_max>`

Sets the maximum value of the remapping destination range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_range_min:

.. rst-class:: classref-method

|void| **set_apply_range_min**\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_range_min>`

Sets the minimum value of the remapping destination range.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_apply_transform_mode:

.. rst-class:: classref-method

|void| **set_apply_transform_mode**\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_apply_transform_mode>`

Sets the operation of the remapping destination transform.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_axis:

.. rst-class:: classref-method

|void| **set_reference_axis**\ (\ index\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_axis>`

Définit l'axe de la transformation source de la ré-association.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_range_max:

.. rst-class:: classref-method

|void| **set_reference_range_max**\ (\ index\: :ref:`int<class_int>`, range_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_range_max>`

Définit la valeur maximale de l'intervalle source de la ré-association.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_range_min:

.. rst-class:: classref-method

|void| **set_reference_range_min**\ (\ index\: :ref:`int<class_int>`, range_min\: :ref:`float<class_float>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_range_min>`

Définit la valeur minimale de l'intervalle source de la ré-association.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_reference_transform_mode:

.. rst-class:: classref-method

|void| **set_reference_transform_mode**\ (\ index\: :ref:`int<class_int>`, transform_mode\: :ref:`TransformMode<enum_ConvertTransformModifier3D_TransformMode>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_reference_transform_mode>`

Définit l'opération de la transformation source de la ré-association.

.. rst-class:: classref-item-separator

----

.. _class_ConvertTransformModifier3D_method_set_relative:

.. rst-class:: classref-method

|void| **set_relative**\ (\ index\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_ConvertTransformModifier3D_method_set_relative>`

Sets relative option in the setting at ``index`` to ``enabled``.

If sets ``enabled`` to ``true``, the extracted and applying transform is relative to the rest.

If sets ``enabled`` to ``false``, the extracted transform is absolute.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
