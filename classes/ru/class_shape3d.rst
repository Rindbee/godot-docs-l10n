:github_url: hide

.. _class_Shape3D:

Shape3D
=======

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`BoxShape3D<class_BoxShape3D>`, :ref:`CapsuleShape3D<class_CapsuleShape3D>`, :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`, :ref:`CylinderShape3D<class_CylinderShape3D>`, :ref:`HeightMapShape3D<class_HeightMapShape3D>`, :ref:`SeparationRayShape3D<class_SeparationRayShape3D>`, :ref:`SphereShape3D<class_SphereShape3D>`, :ref:`WorldBoundaryShape3D<class_WorldBoundaryShape3D>`

Абстрактный базовый класс для трехмерных фигур, используемых для физических столкновений.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстрактный базовый класс для всех 3D-фигур, предназначенный для использования в физике.

\ **Производительность:** Примитивные формы, особенно :ref:`SphereShape3D<class_SphereShape3D>`, быстро проверяются на столкновения. :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` и :ref:`HeightMapShape3D<class_HeightMapShape3D>` медленнее, а :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` — самый медленный.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Введение в физику <../tutorials/physics/physics_introduction>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`custom_solver_bias<class_Shape3D_property_custom_solver_bias>` | ``0.0``  |
   +---------------------------+----------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`margin<class_Shape3D_property_margin>`                         | ``0.04`` |
   +---------------------------+----------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>` | :ref:`get_debug_mesh<class_Shape3D_method_get_debug_mesh>`\ (\ ) |
   +-----------------------------------+------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Shape3D_property_custom_solver_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **custom_solver_bias** = ``0.0`` :ref:`🔗<class_Shape3D_property_custom_solver_bias>`

.. rst-class:: classref-property-setget

- |void| **set_custom_solver_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_custom_solver_bias**\ (\ )

Пользовательское смещение решателя формы. Определяет, насколько тела реагируют, чтобы обеспечить разделение контактов, когда задействована эта форма.

Если установлено значение ``0``, используется значение по умолчанию из :ref:`ProjectSettings.physics/3d/solver/default_contact_bias<class_ProjectSettings_property_physics/3d/solver/default_contact_bias>`.

.. rst-class:: classref-item-separator

----

.. _class_Shape3D_property_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **margin** = ``0.04`` :ref:`🔗<class_Shape3D_property_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_margin**\ (\ )

Граница столкновения для формы. Это не используется в Godot Physics.

Граница столкновения позволяет повысить эффективность обнаружения столкновений, добавляя дополнительную оболочку вокруг форм. Алгоритмы столкновений становятся более затратными, когда объекты перекрываются больше, чем их граница, поэтому более высокое значение границ лучше для производительности, за счет точности вокруг краев, поскольку это делает их менее острыми.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Shape3D_method_get_debug_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **get_debug_mesh**\ (\ ) :ref:`🔗<class_Shape3D_method_get_debug_mesh>`

Возвращает :ref:`ArrayMesh<class_ArrayMesh>`, используемый для отрисовки отладочного столкновения для этого **Shape3D**.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
