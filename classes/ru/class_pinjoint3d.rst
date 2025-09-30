:github_url: hide

.. _class_PinJoint3D:

PinJoint3D
==========

**Наследует:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Физический шарнир, который соединяет два трехмерных физических тела в одной точке, позволяя им свободно вращаться.

.. rst-class:: classref-introduction-group

Описание
----------------

Физический сустав, который соединяет два 3D физических тела в одной точке, позволяя им свободно вращаться. Например, :ref:`RigidBody3D<class_RigidBody3D>` можно присоединить к :ref:`StaticBody3D<class_StaticBody3D>`, чтобы создать маятник или качели.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/bias<class_PinJoint3D_property_params/bias>`                   | ``0.3`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/damping<class_PinJoint3D_property_params/damping>`             | ``1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`params/impulse_clamp<class_PinJoint3D_property_params/impulse_clamp>` | ``0.0`` |
   +---------------------------+-----------------------------------------------------------------------------+---------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_PinJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_PinJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_PinJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_PinJoint3D_Param>`

.. _class_PinJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_BIAS** = ``0``

Сила, с которой прижатые объекты удерживаются в позиционном отношении друг к другу. Чем выше, тем сильнее.

.. _class_PinJoint3D_constant_PARAM_DAMPING:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_DAMPING** = ``1``

Сила, с которой прижатые объекты удерживаются в скоростном отношении друг к другу. Чем выше, тем сильнее.

.. _class_PinJoint3D_constant_PARAM_IMPULSE_CLAMP:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_PinJoint3D_Param>` **PARAM_IMPULSE_CLAMP** = ``2``

Если значение больше 0, то это максимальное значение импульса, создаваемого данным Joint3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PinJoint3D_property_params/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/bias** = ``0.3`` :ref:`🔗<class_PinJoint3D_property_params/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

Сила, с которой прижатые объекты удерживаются в позиционном отношении друг к другу. Чем выше, тем сильнее.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_property_params/damping:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/damping** = ``1.0`` :ref:`🔗<class_PinJoint3D_property_params/damping>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

Сила, с которой прижатые объекты удерживаются в скоростном отношении друг к другу. Чем выше, тем сильнее.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_property_params/impulse_clamp:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/impulse_clamp** = ``0.0`` :ref:`🔗<class_PinJoint3D_property_params/impulse_clamp>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const|

Если значение больше 0, то это максимальное значение импульса, создаваемого данным Joint3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PinJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`\ ) |const| :ref:`🔗<class_PinJoint3D_method_get_param>`

Возвращает значение указанного параметра.

.. rst-class:: classref-item-separator

----

.. _class_PinJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_PinJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PinJoint3D_method_set_param>`

Устанавливает значение указанного параметра.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
