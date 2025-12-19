:github_url: hide

.. _class_CollisionShape3D:

CollisionShape3D
================

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, который предоставляет :ref:`Shape3D<class_Shape3D>` родительскому элементу :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

A node that provides a :ref:`Shape3D<class_Shape3D>` to a :ref:`CollisionObject3D<class_CollisionObject3D>` parent and allows it to be edited. This can give a detection shape to an :ref:`Area3D<class_Area3D>` or turn a :ref:`PhysicsBody3D<class_PhysicsBody3D>` into a solid object.

\ **Warning:** A non-uniformly scaled **CollisionShape3D** will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its :ref:`shape<class_CollisionShape3D_property_shape>` resource instead.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Введение в физику <../tutorials/physics/physics_introduction>`

- `Демонстрация 3D-кинематического персонажа <https://godotengine.org/asset-library/asset/2739>`__

- `Демо-версия 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_color<class_CollisionShape3D_property_debug_color>` | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`debug_fill<class_CollisionShape3D_property_debug_fill>`   | ``true``              |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`disabled<class_CollisionShape3D_property_disabled>`       | ``false``             |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+
   | :ref:`Shape3D<class_Shape3D>` | :ref:`shape<class_CollisionShape3D_property_shape>`             |                       |
   +-------------------------------+-----------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`make_convex_from_siblings<class_CollisionShape3D_method_make_convex_from_siblings>`\ (\ )                           |
   +--------+---------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`resource_changed<class_CollisionShape3D_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CollisionShape3D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionShape3D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

Цвет формы столкновения, отображаемый в редакторе или в запущенном проекте, если **Отладка > Видимые формы столкновения** отмечены в верхней части редактора.

\ **Примечание:** Значение по умолчанию — :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. Значение ``Color(0, 0, 0, 0)``, задокументированное здесь, является заполнителем, а не фактическим цветом отладки по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_debug_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_fill** = ``true`` :ref:`🔗<class_CollisionShape3D_property_debug_fill>`

.. rst-class:: classref-property-setget

- |void| **set_enable_debug_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_debug_fill**\ (\ )

Если ``true``, при отображении фигуры в дополнение к ее каркасу будет отображаться сплошной цвет заливки.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionShape3D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Отключенная форма столкновения не имеет эффекта в мире. Это свойство должно быть изменено с помощью :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_property_shape:

.. rst-class:: classref-property

:ref:`Shape3D<class_Shape3D>` **shape** :ref:`🔗<class_CollisionShape3D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape3D<class_Shape3D>`\ )
- :ref:`Shape3D<class_Shape3D>` **get_shape**\ (\ )

Фактическая форма, принадлежащая этой форме столкновения.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_CollisionShape3D_method_make_convex_from_siblings:

.. rst-class:: classref-method

|void| **make_convex_from_siblings**\ (\ ) :ref:`🔗<class_CollisionShape3D_method_make_convex_from_siblings>`

Устанавливает форму формы столкновения на основе всех ее выпуклых родственных геометрий :ref:`MeshInstance3D<class_MeshInstance3D>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape3D_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_CollisionShape3D_method_resource_changed>`

**Устарело:** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Этот метод ничего не даёт.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
