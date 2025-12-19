:github_url: hide

.. _class_BoneConstraint3D:

BoneConstraint3D
================

**Успадковує:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`AimModifier3D<class_AimModifier3D>`, :ref:`ConvertTransformModifier3D<class_ConvertTransformModifier3D>`, :ref:`CopyTransformModifier3D<class_CopyTransformModifier3D>`

Вузол, який може змінювати кістку Skeleton3D, пов'язуючи дві кістки.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий клас :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`, який змінює набір кісток у методі :ref:`set_apply_bone()<class_BoneConstraint3D_method_set_apply_bone>` на основі перетворення кістки, отриманого методом :ref:`get_reference_bone()<class_BoneConstraint3D_method_get_reference_bone>`.

.. rst-class:: classref-reftable-group

Методи
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

Переліки
----------------

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

Описи методів
--------------------------

.. _class_BoneConstraint3D_method_clear_setting:

.. rst-class:: classref-method

|void| **clear_setting**\ (\ ) :ref:`🔗<class_BoneConstraint3D_method_clear_setting>`

Очищає всі налаштування.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_amount:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_amount**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_amount>`

Повертає застосовану величину налаштування в ``index``.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_apply_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_apply_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_apply_bone>`

Повертає кістку, що застосовується для налаштування за адресою ``index``. Цю кістку буде змінено.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_apply_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_apply_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_apply_bone_name>`

Повертає назву кістки, що застосовується для налаштування за адресою ``index``. Цю кістку буде змінено.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_bone:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_reference_bone**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_bone>`

Повертає кістку посилання на налаштування за адресою ``index``.

На цю кістку буде лише посилання, а не зміна цим модифікатором.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_get_reference_bone_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_reference_bone_name**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BoneConstraint3D_method_get_reference_bone_name>`

Повертає назву кістки, на яку посилається параметр у ``index``.

На цю кістку буде лише посилання, а не зміна цим модифікатором.

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

Повертає кількість налаштувань у модифікаторі.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_amount:

.. rst-class:: classref-method

|void| **set_amount**\ (\ index\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_amount>`

Встановлює величину застосування налаштування в ``index`` на ``amount``.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_apply_bone:

.. rst-class:: classref-method

|void| **set_apply_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_apply_bone>`

Встановлює кістку застосування налаштування в ``index`` на ``bone``. Цю кістку буде змінено.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_apply_bone_name:

.. rst-class:: classref-method

|void| **set_apply_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_apply_bone_name>`

Встановлює кістку, що застосовується для налаштування ``index``, на ``bone_name``. Цю кістку буде змінено.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_bone:

.. rst-class:: classref-method

|void| **set_reference_bone**\ (\ index\: :ref:`int<class_int>`, bone\: :ref:`int<class_int>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_bone>`

Встановлює опорну кістку налаштування в ``index`` на ``bone``.

На цю кістку буде лише посилання, а не зміна цим модифікатором.

.. rst-class:: classref-item-separator

----

.. _class_BoneConstraint3D_method_set_reference_bone_name:

.. rst-class:: classref-method

|void| **set_reference_bone_name**\ (\ index\: :ref:`int<class_int>`, bone_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_BoneConstraint3D_method_set_reference_bone_name>`

Встановлює опорну кістку налаштування в ``index`` на ``bone_name``.

На цю кістку буде лише посилання, а не зміна цим модифікатором.

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

Встановлює кількість налаштувань у модифікаторі.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
