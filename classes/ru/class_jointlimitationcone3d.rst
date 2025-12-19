:github_url: hide

.. _class_JointLimitationCone3D:

JointLimitationCone3D
=====================

**Наследует:** :ref:`JointLimitation3D<class_JointLimitation3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A cone shape limitation that interacts with :ref:`ChainIK3D<class_ChainIK3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

A cone shape limitation that interacts with :ref:`ChainIK3D<class_ChainIK3D>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius_range<class_JointLimitationCone3D_property_radius_range>` | ``0.25`` |
   +---------------------------+------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_JointLimitationCone3D_property_radius_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius_range** = ``0.25`` :ref:`🔗<class_JointLimitationCone3D_property_radius_range>`

.. rst-class:: classref-property-setget

- |void| **set_radius_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius_range**\ (\ )

The size of the hole made by the cone.

\ ``0`` is no hole, ``0.5`` makes a hemisphere, and ``1.0`` makes a sphere (no limitation).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
