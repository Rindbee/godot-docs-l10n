:github_url: hide

.. _class_StaticBody3D:

StaticBody3D
============

**Наследует:** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AnimatableBody3D<class_AnimatableBody3D>`

Физическое тело 3D, которое не может быть перемещено внешними силами. При перемещении вручную оно не влияет на другие тела на своем пути.

.. rst-class:: classref-introduction-group

Описание
----------------

Статическое трехмерное физическое тело. Его нельзя перемещать внешними силами или контактами, но можно перемещать вручную другими способами, такими как код, :ref:`AnimationMixer<class_AnimationMixer>` (с :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` установленным на :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`) и :ref:`RemoteTransform3D<class_RemoteTransform3D>`.

При перемещении **StaticBody3D** оно телепортируется в новое положение, не влияя на другие физические тела на своем пути. Если это нежелательно, используйте вместо этого :ref:`AnimatableBody3D<class_AnimatableBody3D>`.

\ **StaticBody3D** полезно для полностью статических объектов, таких как полы и стены, а также для движущихся поверхностей, таких как конвейерные ленты и круговые вращающиеся платформы (с использованием :ref:`constant_linear_velocity<class_StaticBody3D_property_constant_linear_velocity>` и :ref:`constant_angular_velocity<class_StaticBody3D_property_constant_angular_velocity>`).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Введение в физику <../tutorials/physics/physics_introduction>`

- :doc:`Устранение неполадок в физике <../tutorials/physics/troubleshooting_physics_issues>`

- `Демонстрация 3D-физических тестов <https://godotengine.org/asset-library/asset/2747>`__

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

- `Демоверсия 3D вокселей <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                 | :ref:`constant_angular_velocity<class_StaticBody3D_property_constant_angular_velocity>` | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                 | :ref:`constant_linear_velocity<class_StaticBody3D_property_constant_linear_velocity>`   | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>` | :ref:`physics_material_override<class_StaticBody3D_property_physics_material_override>` |                      |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_StaticBody3D_property_constant_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_StaticBody3D_property_constant_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_angular_velocity**\ (\ )

Постоянная угловая скорость тела. Это не вращает тело, но действует на соприкасающиеся тела, как если бы оно вращалось.

.. rst-class:: classref-item-separator

----

.. _class_StaticBody3D_property_constant_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_StaticBody3D_property_constant_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_linear_velocity**\ (\ )

Постоянная линейная скорость тела. Она не двигает само тело, но воздействует на соприкасающиеся тела, как если бы оно двигалось.

.. rst-class:: classref-item-separator

----

.. _class_StaticBody3D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_StaticBody3D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

Переопределение физического материала для тела.

Если материал назначен этому свойству, он будет использоваться вместо любого другого физического материала, например унаследованного.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
