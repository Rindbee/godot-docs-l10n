:github_url: hide

.. _class_SpringArm3D:

SpringArm3D
===========

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

3D-рейкаст, который динамически перемещает свои дочерние элементы вблизи точки столкновения.

.. rst-class:: classref-introduction-group

Описание
----------------

**SpringArm3D** проецирует луч или форму вдоль своей оси Z и перемещает всех своих прямых потомков в точку столкновения с необязательным полем. Это полезно для камер от третьего лица, которые приближаются к игроку, когда он находится в тесном пространстве (вам может потребоваться исключить коллайдер игрока из проверки столкновений **SpringArm3D**).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Камера от третьего лица с пружинным рычагом <../tutorials/3d/spring_arm>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Описания свойств
--------------------------------

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

При проверке столкновения задается длина кандидата для SpringArm3D.

Затем поле вычитается из этой длины, и перемещение применяется к дочерним объектам SpringArm3D.

Это поле полезно, когда у SpringArm3D есть :ref:`Camera3D<class_Camera3D>` в качестве дочернего узла: без поля :ref:`Camera3D<class_Camera3D>` будет размещено точно в точке столкновения, тогда как с полем :ref:`Camera3D<class_Camera3D>` будет размещено близко к точке столкновения.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_SpringArm3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

:ref:`Shape3D<class_Shape3D>` для использования в SpringArm3D.

Когда форма задана, SpringArm3D будет отбрасывать :ref:`Shape3D<class_Shape3D>` на свою ось z вместо выполнения отбрасывания луча.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_property_spring_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **spring_length** = ``1.0`` :ref:`🔗<class_SpringArm3D_property_spring_length>`

.. rst-class:: classref-property-setget

- |void| **set_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_length**\ (\ )

Максимальный размер SpringArm3D. Используется как длина как для луча, так и для приведения формы, используемого внутренне для расчета желаемого положения дочерних узлов SpringArm3D.

Чтобы узнать больше о том, как выполнить приведение формы или луча, обратитесь к документации :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SpringArm3D_method_add_excluded_object:

.. rst-class:: classref-method

|void| **add_excluded_object**\ (\ RID\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_SpringArm3D_method_add_excluded_object>`

Добавляет объект :ref:`PhysicsBody3D<class_PhysicsBody3D>` с заданным :ref:`RID<class_RID>` в список объектов :ref:`PhysicsBody3D<class_PhysicsBody3D>`, исключенных из проверки столкновений.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_clear_excluded_objects:

.. rst-class:: classref-method

|void| **clear_excluded_objects**\ (\ ) :ref:`🔗<class_SpringArm3D_method_clear_excluded_objects>`

Очищает список объектов :ref:`PhysicsBody3D<class_PhysicsBody3D>`, исключенных из проверки столкновений.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_get_hit_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_hit_length**\ (\ ) :ref:`🔗<class_SpringArm3D_method_get_hit_length>`

Возвращает текущую длину пружинного рычага.

.. rst-class:: classref-item-separator

----

.. _class_SpringArm3D_method_remove_excluded_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **remove_excluded_object**\ (\ RID\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_SpringArm3D_method_remove_excluded_object>`

Удаляет указанный :ref:`RID<class_RID>` из списка объектов :ref:`PhysicsBody3D<class_PhysicsBody3D>`, исключенных из проверки столкновений.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
