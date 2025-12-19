:github_url: hide

.. _class_IKModifier3D:

IKModifier3D
============

**Успадковує:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`ChainIK3D<class_ChainIK3D>`, :ref:`TwoBoneIK3D<class_TwoBoneIK3D>`

A node for inverse kinematics which may modify more than one bone.

.. rst-class:: classref-introduction-group

Опис
--------

Base class of :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ s that has some joint lists and applies inverse kinematics. This class has some structs, enums, and helper methods which are useful to solve inverse kinematics.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`mutable_bone_axes<class_IKModifier3D_property_mutable_bone_axes>` | ``true`` |
   +-------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`clear_settings<class_IKModifier3D_method_clear_settings>`\ (\ )                                      |
   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_setting_count<class_IKModifier3D_method_get_setting_count>`\ (\ ) |const|                        |
   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`reset<class_IKModifier3D_method_reset>`\ (\ )                                                        |
   +-----------------------+------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_setting_count<class_IKModifier3D_method_set_setting_count>`\ (\ count\: :ref:`int<class_int>`\ ) |
   +-----------------------+------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_IKModifier3D_property_mutable_bone_axes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mutable_bone_axes** = ``true`` :ref:`🔗<class_IKModifier3D_property_mutable_bone_axes>`

.. rst-class:: classref-property-setget

- |void| **set_mutable_bone_axes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_bone_axes_mutable**\ (\ )

If ``true``, the solver retrieves the bone axis from the bone pose every frame.

If ``false``, the solver retrieves the bone axis from the bone rest and caches it, which increases performance slightly, but position changes in the bone pose made before processing this **IKModifier3D** are ignored.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_IKModifier3D_method_clear_settings:

.. rst-class:: classref-method

|void| **clear_settings**\ (\ ) :ref:`🔗<class_IKModifier3D_method_clear_settings>`

Очищає всі налаштування.

.. rst-class:: classref-item-separator

----

.. _class_IKModifier3D_method_get_setting_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_setting_count**\ (\ ) |const| :ref:`🔗<class_IKModifier3D_method_get_setting_count>`

Returns the number of settings.

.. rst-class:: classref-item-separator

----

.. _class_IKModifier3D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_IKModifier3D_method_reset>`

Resets a state with respect to the current bone pose.

.. rst-class:: classref-item-separator

----

.. _class_IKModifier3D_method_set_setting_count:

.. rst-class:: classref-method

|void| **set_setting_count**\ (\ count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_IKModifier3D_method_set_setting_count>`

Sets the number of settings.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
