:github_url: hide

.. _class_HingeJoint3D:

HingeJoint3D
============

**Успадковує:** :ref:`Joint3D<class_Joint3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Фізичне з’єднання, яке обмежує обертання тривимірного фізичного тіла навколо осі відносно іншого фізичного тіла.

.. rst-class:: classref-introduction-group

Опис
--------

Фізичне з’єднання, яке обмежує обертання тривимірного фізичного тіла навколо осі відносно іншого фізичного тіла. Наприклад, Body A може бути :ref:`StaticBody3D<class_StaticBody3D>`, що представляє дверну петлю, навколо якої обертається :ref:`RigidBody3D<class_RigidBody3D>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Переліки
----------------

.. _enum_HingeJoint3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_HingeJoint3D_Param>`

.. _class_HingeJoint3D_constant_PARAM_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_BIAS** = ``0``

Швидкість, з якою два тіла зближуються, коли вони рухаються в різних напрямках.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_UPPER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_UPPER** = ``1``

Максимальне обертання. Активний, лише якщо :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` має значення ``true``.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_LOWER:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_LOWER** = ``2``

Мінімальний оберт. Активний, лише якщо :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` має значення ``true``.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_BIAS** = ``3``

Швидкість, з якою коригується обертання поперек осі, перпендикулярної шарніру.

.. _class_HingeJoint3D_constant_PARAM_LIMIT_SOFTNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_SOFTNESS** = ``4``

**Застаріло:** This property is never used by the engine and is kept for compatibility purpose.



.. _class_HingeJoint3D_constant_PARAM_LIMIT_RELAXATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_LIMIT_RELAXATION** = ``5``

Чим менше це значення, тим більше сповільнюється обертання.

.. _class_HingeJoint3D_constant_PARAM_MOTOR_TARGET_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MOTOR_TARGET_VELOCITY** = ``6``

Цільова швидкість для двигуна.

.. _class_HingeJoint3D_constant_PARAM_MOTOR_MAX_IMPULSE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MOTOR_MAX_IMPULSE** = ``7``

Максимальний розгін для двигуна.

.. _class_HingeJoint3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_HingeJoint3D_Param>` **PARAM_MAX** = ``8``

Представляємо розмір параметра :ref:`Param<enum_HingeJoint3D_Param>`.

.. rst-class:: classref-item-separator

----

.. _enum_HingeJoint3D_Flag:

.. rst-class:: classref-enumeration

enum **Flag**: :ref:`🔗<enum_HingeJoint3D_Flag>`

.. _class_HingeJoint3D_constant_FLAG_USE_LIMIT:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_USE_LIMIT** = ``0``

Якщо ``true``, максимальне та мінімальне обертання петель, визначене :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>` і :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>`, має ефект.

.. _class_HingeJoint3D_constant_FLAG_ENABLE_MOTOR:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_ENABLE_MOTOR** = ``1``

При активації двигун повертає петлю.

.. _class_HingeJoint3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Flag<enum_HingeJoint3D_Flag>` **FLAG_MAX** = ``2``

Представляємо розмір енму Прапор.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_HingeJoint3D_property_angular_limit/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/bias** = ``0.3`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Швидкість, з якою коригується обертання поперек осі, перпендикулярної шарніру.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **angular_limit/enable** = ``false`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/enable>`

.. rst-class:: classref-property-setget

- |void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|

Якщо ``true``, максимальне та мінімальне обертання петель, визначене :ref:`angular_limit/lower<class_HingeJoint3D_property_angular_limit/lower>` і :ref:`angular_limit/upper<class_HingeJoint3D_property_angular_limit/upper>`, має ефект.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/lower:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/lower** = ``-1.5707964`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/lower>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Мінімальний оберт. Активний, лише якщо :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/relaxation:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/relaxation** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/relaxation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Чим менше це значення, тим більше сповільнюється обертання.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/softness:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/softness** = ``0.9`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/softness>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

**Застаріло:** This property is never set by the engine and is kept for compatibility purposes.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_angular_limit/upper:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_limit/upper** = ``1.5707964`` :ref:`🔗<class_HingeJoint3D_property_angular_limit/upper>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Максимальне обертання. Активний, лише якщо :ref:`angular_limit/enable<class_HingeJoint3D_property_angular_limit/enable>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/enable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **motor/enable** = ``false`` :ref:`🔗<class_HingeJoint3D_property_motor/enable>`

.. rst-class:: classref-property-setget

- |void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const|

При активації двигун повертає петлю.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/max_impulse:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor/max_impulse** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_motor/max_impulse>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Максимальний розгін для двигуна.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_motor/target_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **motor/target_velocity** = ``1.0`` :ref:`🔗<class_HingeJoint3D_property_motor/target_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Цільова швидкість для двигуна.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_property_params/bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **params/bias** = ``0.3`` :ref:`🔗<class_HingeJoint3D_property_params/bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const|

Швидкість, з якою два тіла зближуються, коли вони рухаються в різних напрямках.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_HingeJoint3D_method_get_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`\ ) |const| :ref:`🔗<class_HingeJoint3D_method_get_flag>`

Повертає значення вказаного прапора.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`\ ) |const| :ref:`🔗<class_HingeJoint3D_method_get_param>`

Повертає значення вказаного параметра.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_set_flag:

.. rst-class:: classref-method

|void| **set_flag**\ (\ flag\: :ref:`Flag<enum_HingeJoint3D_Flag>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_HingeJoint3D_method_set_flag>`

Якщо ``true``, вмикає вказаний прапор.

.. rst-class:: classref-item-separator

----

.. _class_HingeJoint3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_HingeJoint3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HingeJoint3D_method_set_param>`

Встановлює значення вказаного параметра.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
