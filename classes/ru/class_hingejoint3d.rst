:github_url: hide

.. _class_HingeJoint3D:

HingeJoint3D
============

**Наследует:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Физический сустав, ограничивающий вращение трехмерного физического тела вокруг оси относительно другого физического тела.

.. rst-class:: classref-introduction-group

Описание
----------------

Физический сустав, который ограничивает вращение трехмерного физического тела вокруг оси относительно другого физического тела. Например, Тело A может быть :ref:`StaticBody3D<class_StaticBody3D>`, представляющим дверную петлю, вокруг которой вращается :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/bias<class_HingeJoint3D_property_angular_limit/bias>`             | ``0.3``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`bool<class_bool>`   | :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>`         | ``false``      |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>`           | ``-1.5707964`` |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/relaxation<class_HingeJoint3D_property_angular_limit/relaxation>` | ``1.0``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/softness<class_HingeJoint3D_property_angular_limit/softness>`     | ``0.9``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>`           | ``1.5707964``  |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`bool<class_bool>`   | :ref:`motor/enable<class_HingeJoint3D_property_motor/enable>`                         | ``false``      |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`motor/max_impulse<class_HingeJoint3D_property_motor/max_impulse>`               | ``1.0``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`motor/target_velocity<class_HingeJoint3D_property_motor/target_velocity>`       | ``1.0``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`params/bias<class_HingeJoint3D_property_params/bias>`                           | ``0.3``        |
   +---------------------------+---------------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`get_flag<class_HingeJoint3D_method_get_flag>`\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|                                 |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_HingeJoint3D_method_get_param>`\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|                            |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_flag<class_HingeJoint3D_method_set_flag>`\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_HingeJoint3D_method_set_param>`\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_HingeJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_HingeJoint3D_Param>`

.. _class_HingeJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_BIAS** = ``0``

Скорость, с которой два тела притягиваются друг к другу, когда они движутся в разных направлениях.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_UPPER** = ``1``

Максимальное вращение. Активно только если :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` равен ``true``.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_LOWER** = ``2``

Минимальное вращение. Активно только если :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` равен ``true``.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_BIAS** = ``3``

Скорость, с которой корректируется вращение по оси, перпендикулярной шарниру.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_SOFTNESS** = ``4``

**Устарело:** This property is never used by the engine and is kept for compatibility purpose.



.. _class_HingeJoint3D_constant_PARAM_LIMIT_RELAXATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_RELAXATION** = ``5``

Чем ниже это значение, тем сильнее замедляется вращение.

.. _class_HingeJoint3D_constant_PARAM_MOTOR_TARGET_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MOTOR_TARGET_VELOCITY** = ``6``

Целевая скорость двигателя.

.. _class_HingeJoint3D_constant_PARAM_MOTOR_MAX_IMPULSE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MOTOR_MAX_IMPULSE** = ``7``

Максимальное ускорение двигателя.

.. _class_HingeJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MAX** = ``8``

Представляет размер перечисления :ref:`Param<enum_HingeJoint3D_Param>`.

.. rst-class:: classref-item-separator

----

.. _enum_HingeJoint3D_Flag:

.. rst-class:: classref-enumeration

enum **Flag**: :ref:`🔗<enum_HingeJoint3D_Flag>`

.. _class_HingeJoint3D_constant_FLAG_USE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_USE_LIMIT** = ``0``

Если ``true``, то максимальный и минимальный поворот шарниров, определяемый :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>` и :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>`, имеет значение.

.. _class_HingeJoint3D_constant_FLAG_ENABLE_MOTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_ENABLE_MOTOR** = ``1``

При активации двигатель поворачивает шарнир.

.. _class_HingeJoint3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_MAX** = ``2``

Представляет размер перечисления :ref:`Flag<enum_HingeJoint3D_Flag>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_HingeJoint3D_property_angular_limit/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/bias** = ``0.3`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Скорость, с которой корректируется вращение по оси, перпендикулярной шарниру.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit/enable** = ``false`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/enable>`

.. rst-class:: classref-property-setget

- |void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|

Если ``true``, то максимальный и минимальный поворот шарниров, определяемый :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>` и :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>`, имеет значение.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/lower:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/lower** = ``-1.5707964`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/lower>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Минимальное вращение. Активно только если :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/relaxation** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Чем ниже это значение, тем сильнее замедляется вращение.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/softness** = ``0.9`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

**Устарело:** This property is never set by the engine and is kept for compatibility purposes.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/upper:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/upper** = ``1.5707964`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/upper>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Максимальное вращение. Активно только если :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **motor/enable** = ``false`` :ref:`🔗<class_HingeJoint3D_property_motor/enable>`

.. rst-class:: classref-property-setget

- |void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|

При активации двигатель поворачивает шарнир.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/max_impulse:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor/max_impulse** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_motor/max_impulse>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Максимальное ускорение двигателя.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor/target_velocity** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_motor/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Целевая скорость двигателя.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_params/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/bias** = ``0.3`` :ref:`🔗<class_HingeJoint3D_property_params/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Скорость, с которой два тела притягиваются друг к другу, когда они движутся в разных направлениях.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_HingeJoint3D_method_get_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const| :ref:`🔗<class_HingeJoint3D_method_get_flag>`

Возвращает значение указанного флага.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const| :ref:`🔗<class_HingeJoint3D_method_get_param>`

Возвращает значение указанного параметра.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_set_flag:

.. rst-class:: classref-method

|void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_HingeJoint3D_method_set_flag>`

Если ``true``, включает указанный флаг.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HingeJoint3D_method_set_param>`

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
