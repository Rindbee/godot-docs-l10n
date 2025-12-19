:github_url: hide

.. _class_IKModifier3D:

IKModifier3D
============

**Наследует:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`ChainIK3D<class_ChainIK3D>`, :ref:`TwoBoneIK3D<class_TwoBoneIK3D>`

A node for inverse kinematics which may modify more than one bone.

.. rst-class:: classref-introduction-group

Описание
----------------

Base class of :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`\ s that has some joint lists and applies inverse kinematics. This class has some structs, enums, and helper methods which are useful to solve inverse kinematics.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`mutable_bone_axes<class_IKModifier3D_property_mutable_bone_axes>` | ``true`` |
   +-------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методы
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

Описания свойств
--------------------------------

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

Описания метода
------------------------------

.. _class_IKModifier3D_method_clear_settings:

.. rst-class:: classref-method

|void| **clear_settings**\ (\ ) :ref:`🔗<class_IKModifier3D_method_clear_settings>`

Очищает все настройки.

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

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
