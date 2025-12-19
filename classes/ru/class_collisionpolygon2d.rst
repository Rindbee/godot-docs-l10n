:github_url: hide

.. _class_CollisionPolygon2D:

CollisionPolygon2D
==================

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, который придает многоугольную форму родительскому объекту :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

A node that provides a polygon shape to a :ref:`CollisionObject2D<class_CollisionObject2D>` parent and allows it to be edited. The polygon can be concave or convex. This can give a detection shape to an :ref:`Area2D<class_Area2D>`, turn a :ref:`PhysicsBody2D<class_PhysicsBody2D>` into a solid object, or give a hollow shape to a :ref:`StaticBody2D<class_StaticBody2D>`.

\ **Warning:** A non-uniformly scaled **CollisionPolygon2D** will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its polygon instead.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` | :ref:`build_mode<class_CollisionPolygon2D_property_build_mode>`                             | ``0``                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`disabled<class_CollisionPolygon2D_property_disabled>`                                 | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`one_way_collision<class_CollisionPolygon2D_property_one_way_collision>`               | ``false``                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`one_way_collision_margin<class_CollisionPolygon2D_property_one_way_collision_margin>` | ``1.0``                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`polygon<class_CollisionPolygon2D_property_polygon>`                                   | ``PackedVector2Array()`` |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_CollisionPolygon2D_BuildMode:

.. rst-class:: classref-enumeration

enum **BuildMode**: :ref:`🔗<enum_CollisionPolygon2D_BuildMode>`

.. _class_CollisionPolygon2D_constant_BUILD_SOLIDS:

.. rst-class:: classref-enumeration-constant

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **BUILD_SOLIDS** = ``0``

Столкновения будут включать полигон и его содержащуюся область. В этом режиме узел имеет тот же эффект, что и несколько узлов :ref:`ConvexPolygonShape2D<class_ConvexPolygonShape2D>`, по одному для каждой выпуклой формы в выпуклом разложении полигона (но без накладных расходов нескольких узлов).

.. _class_CollisionPolygon2D_constant_BUILD_SEGMENTS:

.. rst-class:: classref-enumeration-constant

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **BUILD_SEGMENTS** = ``1``

Столкновения будут включать только края полигона. В этом режиме узел имеет тот же эффект, что и один :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, состоящий из сегментов, с ограничением, что каждый сегмент (после первого) начинается там, где заканчивается предыдущий, а последний заканчивается там, где начинается первый (образуя замкнутый, но полый полигон).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CollisionPolygon2D_property_build_mode:

.. rst-class:: classref-property

:ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **build_mode** = ``0`` :ref:`🔗<class_CollisionPolygon2D_property_build_mode>`

.. rst-class:: classref-property-setget

- |void| **set_build_mode**\ (\ value\: :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>`\ )
- :ref:`BuildMode<enum_CollisionPolygon2D_BuildMode>` **get_build_mode**\ (\ )

Режим построения столкновений.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionPolygon2D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Если ``true``, столкновения не будут обнаружены. Это свойство следует изменить с помощью :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_way_collision** = ``false`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_way_collision_enabled**\ (\ )

Если ``true``, только ребра, обращенные вверх относительно поворота **CollisionPolygon2D**, будут сталкиваться с другими объектами.

\ **Примечание:** Это свойство не имеет эффекта, если этот **CollisionPolygon2D** является дочерним узлом :ref:`Area2D<class_Area2D>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_one_way_collision_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **one_way_collision_margin** = ``1.0`` :ref:`🔗<class_CollisionPolygon2D_property_one_way_collision_margin>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_one_way_collision_margin**\ (\ )

Поле, используемое для одностороннего столкновения (в пикселях). Более высокие значения сделают форму толще и будут лучше работать для коллайдеров, которые входят в полигон на высокой скорости.

.. rst-class:: classref-item-separator

----

.. _class_CollisionPolygon2D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array()`` :ref:`🔗<class_CollisionPolygon2D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Список вершин полигона. Каждая точка будет соединена со следующей, а последняя точка будет соединена с первой.

\ **Примечание:** Возвращаемые вершины находятся в локальном координатном пространстве заданного **CollisionPolygon2D**.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
