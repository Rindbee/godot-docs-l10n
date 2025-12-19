:github_url: hide

.. _class_BoneConstraint3D:

BoneConstraint3D
================

**Наследует:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AimModifier3D<class_AimModifier3D>`, :ref:`ConvertTransformModifier3D<class_ConvertTransformModifier3D>`, :ref:`CopyTransformModifier3D<class_CopyTransformModifier3D>`

Узел, который может модифицировать кость Skeleton3D, связывая две кости.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый класс :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, который изменяет набор костей в :ref:`set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` на основе преобразования кости, полученного с помощью :ref:`get_reference_bone()<class_BoneConstraint3D_method_get_reference_bone>`.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`clear_setting<class_BoneConstraint3D_method_clear_setting>`\ (\ )                                                                                                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`get_amount<class_BoneConstraint3D_method_get_amount>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_apply_bone<class_BoneConstraint3D_method_get_apply_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                                   |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`get_apply_bone_name<class_BoneConstraint3D_method_get_apply_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                         |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_reference_bone<class_BoneConstraint3D_method_get_reference_bone>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                               | :ref:`get_reference_bone_name<class_BoneConstraint3D_method_get_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                 |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                           | :ref:`get_reference_node<class_BoneConstraint3D_method_get_reference_node>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` | :ref:`get_reference_type<class_BoneConstraint3D_method_get_reference_type>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_setting_count<class_BoneConstraint3D_method_get_setting_count>`\ (\ ) |const|                                                                                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_amount<class_BoneConstraint3D_method_set_amount>`\ (\ index\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ )                                               |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_apply_bone<class_BoneConstraint3D_method_set_apply_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                             |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_apply_bone_name<class_BoneConstraint3D_method_set_apply_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                        |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_bone<class_BoneConstraint3D_method_set_reference_bone>`\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ )                                     |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_bone_name<class_BoneConstraint3D_method_set_reference_bone_name>`\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ )                |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_node<class_BoneConstraint3D_method_set_reference_node>`\ (\ index\: :ref:`int<class_int>`, node\: :ref:`NodePath<class_NodePath>`\ )                           |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_reference_type<class_BoneConstraint3D_method_set_reference_type>`\ (\ index\: :ref:`int<class_int>`, type\: :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`\ ) |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_setting_count<class_BoneConstraint3D_method_set_setting_count>`\ (\ count\: :ref:`int<class_int>`\ )                                                                     |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_BoneConstraint3D_ReferenceType:

.. rst-class:: classref-enumeration

enum **ReferenceType**: :ref:`🔗<enum_BoneConstraint3D_ReferenceType>`

.. _class_BoneConstraint3D_constant_REFERENCE_TYPE_BONE:

.. rst-class:: classref-enumeration-constant

:ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` **REFERENCE_TYPE_BONE** = ``0``

The reference target is a bone. In this case, the reference target spaces is local space.

.. _class_BoneConstraint3D_constant_REFERENCE_TYPE_NODE:

.. rst-class:: classref-enumeration-constant

:ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` **REFERENCE_TYPE_NODE** = ``1``

The reference target is a :ref:`Node3D<class_Node3D>`. In this case, the reference target spaces is model space.

In other words, the reference target's coordinates are treated as if it were placed directly under :ref:`Skeleton3D<class_Skeleton3D>` which parent of the **BoneConstraint3D**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_BoneConstraint3D_method_clear_setting:

.. rst-class:: classref-method

|void| **clear_setting**\ (\ ) :ref:`🔗<class_BoneConstraint3D_method_clear_setting>`

Очистить все настройки.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_amount:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_amount**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_amount>`

Возвращает примененную величину настройки в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_apply_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_apply_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_apply_bone>`

Возвращает применённую настройку кости в ``index``. Эта кость будет изменена.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_apply_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_apply_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_apply_bone_name>`

Возвращает имя применяемой кости настройки в ``index``. Эта кость будет изменена.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_bone>`

Возвращает опорную кость настройки в ``index``.

Эта кость будет только ссылаться на нее, но не будет изменена этим модификатором.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_reference_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_bone_name>`

Возвращает имя опорной кости настройки в ``index``.

Эта кость будет только ссылаться на нее, но не будет изменена этим модификатором.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_reference_node**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_node>`

Returns the reference node path of the setting at ``index``.

This node will be only referenced and not modified by this modifier.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_type:

.. rst-class:: classref-method

:ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>` **get_reference_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_type>`

Returns the reference target type of the setting at ``index``. See also :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_setting_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_setting_count**\ (\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_setting_count>`

Возвращает количество настроек в модификаторе.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_amount:

.. rst-class:: classref-method

|void| **set_amount**\ (\ index\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_amount>`

Устанавливает применяемое значение параметра ``index`` на ``amount``.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_apply_bone:

.. rst-class:: classref-method

|void| **set_apply_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_apply_bone>`

Устанавливает применяемую кость настройки в ``index`` на ``bone``. Эта кость будет изменена.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_apply_bone_name:

.. rst-class:: classref-method

|void| **set_apply_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_apply_bone_name>`

Устанавливает применяемую кость настройки в ``index`` на ``bone_name``. Эта кость будет изменена.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_bone:

.. rst-class:: classref-method

|void| **set_reference_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_bone>`

Устанавливает опорную кость настройки в ``index`` на ``bone``.

Эта кость будет только ссылаться на нее, но не будет изменена этим модификатором.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_bone_name:

.. rst-class:: classref-method

|void| **set_reference_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_bone_name>`

Устанавливает опорную кость настройки в ``index`` на ``bone_name``.

Эта кость будет только ссылаться на нее, но не будет изменена этим модификатором.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_node:

.. rst-class:: classref-method

|void| **set_reference_node**\ (\ index\: :ref:`int<class_int>`, node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_node>`

Sets the reference node path of the setting at ``index`` to ``node``.

This node will be only referenced and not modified by this modifier.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_type:

.. rst-class:: classref-method

|void| **set_reference_type**\ (\ index\: :ref:`int<class_int>`, type\: :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_type>`

Sets the reference target type of the setting at ``index`` to ``type``. See also :ref:`ReferenceType<enum_BoneConstraint3D_ReferenceType>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_setting_count:

.. rst-class:: classref-method

|void| **set_setting_count**\ (\ count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_setting_count>`

Задает количество настроек в модификаторе.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
