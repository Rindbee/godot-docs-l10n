:github_url: hide

.. _class_SpringArm3D:

SpringArm3D
===========

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D-рейка, що динамічно пересуває свої діти біля точки зіткнення.

.. rst-class:: classref-introduction-group

Опис
--------

**SpringArm3D** відкидає промінь або форму вздовж його Ось Z і пересуває всі свої прямі діти до точки зіткнення, з додатковим запасом. Це корисно для 3-х осіб-камер, які переходять ближче до гравця, коли всередині щільного простору (необхідно виключити колорит гравця з контрольного зіткнення **SpringArm3D**).

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Камера від третьої особи з пружинним кронштейном <../tutorials/3d/spring_arm>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_SpringArm3D_property_collision_mask>` | ``1``    |
   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`     | :ref:`margin<class_SpringArm3D_property_margin>`                 | ``0.01`` |
   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`Shape3D<class_Shape3D>` | :ref:`shape<class_SpringArm3D_property_shape>`                   |          |
   +-------------------------------+------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`     | :ref:`spring_length<class_SpringArm3D_property_spring_length>`   | ``1.0``  |
   +-------------------------------+------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_excluded_object<class_SpringArm3D_method_add_excluded_object>`\ (\ RID\: :ref:`RID<class_RID>`\ )       |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_excluded_objects<class_SpringArm3D_method_clear_excluded_objects>`\ (\ )                              |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_hit_length<class_SpringArm3D_method_get_hit_length>`\ (\ )                                              |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`remove_excluded_object<class_SpringArm3D_method_remove_excluded_object>`\ (\ RID\: :ref:`RID<class_RID>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SpringArm3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_SpringArm3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The layers against which the collision check will be done. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.01`` :ref:`🔗<class_SpringArm3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Під час перевірки зіткнення проводиться кандидатська довжина за SpringArm3D.

Після цього слід віднести до цієї довжини, а переклад наноситься на дочірні предмети SpringArm3D.

Цей запас корисний для того, коли SpringArm3D має :ref:`Camera3D<class_Camera3D>` як дочірня вершина: без маржі, :ref:`Camera3D<class_Camera3D>` будуть розміщені на точну точку зіткнення, при цьому з запасом :ref:`Camera3D<class_Camera3D>` буде розміщено близько до точки зіткнення.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_SpringArm3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

:ref:`Shape3D<class_Shape3D>` для використання для SpringArm3D.

Коли форма встановлена, SpringArm3D буде пролити :ref:`Shape3D<class_Shape3D>` на його осі замість виконання променевого лиття.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_spring_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **spring_length** = ``1.0`` :ref:`🔗<class_SpringArm3D_property_spring_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

Максимальна кількість SpringArm3D. Це використовується в якості довжини як для променя, так і для розрахунку бажаної позиції дочірніх вузлів SpringArm3D.

Щоб дізнатися більше про те, як виконати форму литкою або променем, будь ласка, проконсультуйтеся з документацією ``PhysicsDirectState3D``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SpringArm3D_method_add_excluded_object:

.. rst-class:: classref-method

|void| **add_excluded_object**\ (\ RID\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_SpringArm3D_method_add_excluded_object>`

Додає об'єкт :ref:`PhysicsBody3D<class_PhysicsBody3D>` із заданим :ref:`RID<class_RID>` до списку об'єктів :ref:`PhysicsBody3D<class_PhysicsBody3D>`, виключених з перевірки на колізії.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_clear_excluded_objects:

.. rst-class:: classref-method

|void| **clear_excluded_objects**\ (\ ) :ref:`🔗<class_SpringArm3D_method_clear_excluded_objects>`

Очищає список об'єктів :ref:`PhysicsBody3D<class_PhysicsBody3D>`, виключених з перевірки на колізії.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_get_hit_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hit_length**\ (\ ) :ref:`🔗<class_SpringArm3D_method_get_hit_length>`

Повертаємо поточну довжину весняної руки.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_remove_excluded_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **remove_excluded_object**\ (\ RID\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_SpringArm3D_method_remove_excluded_object>`

Вилучає заданий :ref:`RID<class_RID>` з переліку об'єктів :ref:`PhysicsBody3D<class_PhysicsBody3D>`, виключених з перевірки зіткнення.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
