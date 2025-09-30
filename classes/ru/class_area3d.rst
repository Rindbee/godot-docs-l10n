:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/Area3D.xml.

.. _class_Area3D:

Area3D
======

**Наследует:** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Область трехмерного пространства, которая обнаруживает другие :ref:`CollisionObject3D<class_CollisionObject3D>`, входящие в нее или выходящие из нее.

.. rst-class:: classref-introduction-group

Описание
----------------

**Area3D** — это область трехмерного пространства, определяемая одним или несколькими дочерними узлами :ref:`CollisionShape3D<class_CollisionShape3D>` или :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`. Он определяет, когда другие :ref:`CollisionObject3D<class_CollisionObject3D>` входят в него или выходят из него, а также отслеживает, какие объекты столкновения еще не вышли из него (т. е. какие из них перекрывают его).

Этот узел также может локально изменять или переопределять физические параметры (гравитация, затухание) и направлять звук на пользовательские аудиошины.

\ **Примечание:** Области и тела, созданные с помощью :ref:`PhysicsServer3D<class_PhysicsServer3D>`, могут не взаимодействовать с **Area3D** так, как ожидается, и могут не испускать сигналы или не отслеживать объекты правильно.

\ **Предупреждение:** Использование :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` внутри дочернего узла :ref:`CollisionShape3D<class_CollisionShape3D>` этого узла (созданного, например, с помощью параметра **Create Trimesh Collision Sibling** в меню **Mesh**, которое появляется при выборе узла :ref:`MeshInstance3D<class_MeshInstance3D>`) может дать неожиданные результаты, поскольку эта форма столкновения полая. Если это нежелательно, ее следует разделить на несколько :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` или примитивных форм, таких как :ref:`BoxShape3D<class_BoxShape3D>`, или в некоторых случаях ее можно заменить на :ref:`CollisionPolygon3D<class_CollisionPolygon3D>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование Area2D <../tutorials/physics/using_area_2d>`

- `Демо-версия 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демонстрация графического интерфейса пользователя в 3D-окне просмотра <https://godotengine.org/asset-library/asset/2807>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_Area3D_property_angular_damp>`                               | ``0.1``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`angular_damp_space_override<class_Area3D_property_angular_damp_space_override>` | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`audio_bus_name<class_Area3D_property_audio_bus_name>`                           | ``&"Master"``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`audio_bus_override<class_Area3D_property_audio_bus_override>`                   | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity<class_Area3D_property_gravity>`                                         | ``9.8``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`gravity_direction<class_Area3D_property_gravity_direction>`                     | ``Vector3(0, -1, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`gravity_point<class_Area3D_property_gravity_point>`                             | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`gravity_point_center<class_Area3D_property_gravity_point_center>`               | ``Vector3(0, -1, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_point_unit_distance<class_Area3D_property_gravity_point_unit_distance>` | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`gravity_space_override<class_Area3D_property_gravity_space_override>`           | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_Area3D_property_linear_damp>`                                 | ``0.1``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` | :ref:`linear_damp_space_override<class_Area3D_property_linear_damp_space_override>`   | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitorable<class_Area3D_property_monitorable>`                                 | ``true``              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitoring<class_Area3D_property_monitoring>`                                   | ``true``              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                           | :ref:`priority<class_Area3D_property_priority>`                                       | ``0``                 |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`reverb_bus_amount<class_Area3D_property_reverb_bus_amount>`                     | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                         | :ref:`reverb_bus_enabled<class_Area3D_property_reverb_bus_enabled>`                   | ``false``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`reverb_bus_name<class_Area3D_property_reverb_bus_name>`                         | ``&"Master"``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`reverb_bus_uniformity<class_Area3D_property_reverb_bus_uniformity>`             | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`wind_attenuation_factor<class_Area3D_property_wind_attenuation_factor>`         | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                       | :ref:`wind_force_magnitude<class_Area3D_property_wind_force_magnitude>`               | ``0.0``               |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`wind_source_path<class_Area3D_property_wind_source_path>`                       | ``NodePath("")``      |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Area3D<class_Area3D>`\] | :ref:`get_overlapping_areas<class_Area3D_method_get_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] | :ref:`get_overlapping_bodies<class_Area3D_method_get_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_areas<class_Area3D_method_has_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_bodies<class_Area3D_method_has_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_area<class_Area3D_method_overlaps_area>`\ (\ area\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_body<class_Area3D_method_overlaps_body>`\ (\ body\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_Area3D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_entered>`

Выдается, когда полученный ``area`` входит в эту область. Требуется, чтобы :ref:`monitoring<class_Area3D_property_monitoring>` был установлен в ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area3D<class_Area3D>`\ ) :ref:`🔗<class_Area3D_signal_area_exited>`

Выдается, когда полученная ``area`` выходит из этой области. Требует, чтобы :ref:`monitoring<class_Area3D_property_monitoring>` был установлен на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area3D<class_Area3D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_area_shape_entered>`

Выдается, когда :ref:`Shape3D<class_Shape3D>` полученного ``area`` входит в форму этой области. Требует, чтобы :ref:`monitoring<class_Area3D_property_monitoring>` был установлен в ``true``.

\ ``local_shape_index`` и ``area_shape_index`` содержат индексы взаимодействующих фигур из этой области и другой области соответственно. ``area_rid`` содержит :ref:`RID<class_RID>` другой области. Эти значения можно использовать с :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

\ **Пример:** Получить узел :ref:`CollisionShape3D<class_CollisionShape3D>` из индекса формы:


.. tabs::

 .. code-tab:: gdscript

    var other_shape_owner = area.shape_find_owner(area_shape_index)
    var other_shape_node = area.shape_owner_get_owner(other_shape_owner)

    var local_shape_owner = shape_find_owner(local_shape_index)
    var local_shape_node = shape_owner_get_owner(local_shape_owner)



.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_area_shape_exited:

.. rst-class:: classref-signal

**area_shape_exited**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area3D<class_Area3D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_area_shape_exited>`

Выдается, когда :ref:`Shape3D<class_Shape3D>` полученной ``area`` выходит из формы этой области. Требует, чтобы :ref:`monitoring<class_Area3D_property_monitoring>` был установлен на ``true``.

См. также :ref:`area_shape_entered<class_Area3D_signal_area_shape_entered>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_entered>`

Вызывается, когда полученное ``body`` попадает в эту область. ``body`` может быть :ref:`PhysicsBody3D<class_PhysicsBody3D>` или :ref:`GridMap<class_GridMap>`. :ref:`GridMap<class_GridMap>` обнаруживаются, если в их :ref:`MeshLibrary<class_MeshLibrary>` настроены формы столкновений. Требуется, чтобы :ref:`monitoring<class_Area3D_property_monitoring>` был установлен на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node3D<class_Node3D>`\ ) :ref:`🔗<class_Area3D_signal_body_exited>`

Вызывается, когда полученное ``body`` покидает эту область. ``body`` может быть :ref:`PhysicsBody3D<class_PhysicsBody3D>` или :ref:`GridMap<class_GridMap>`. :ref:`GridMap<class_GridMap>` обнаруживаются, если в их :ref:`MeshLibrary<class_MeshLibrary>` настроены формы столкновений. Требуется, чтобы :ref:`monitoring<class_Area3D_property_monitoring>` был установлен на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node3D<class_Node3D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_body_shape_entered>`

Выдается, когда :ref:`Shape3D<class_Shape3D>` полученного ``body`` входит в форму этой области. ``body`` может быть :ref:`PhysicsBody3D<class_PhysicsBody3D>` или :ref:`GridMap<class_GridMap>`. :ref:`GridMap<class_GridMap>` обнаруживаются, если в их :ref:`MeshLibrary<class_MeshLibrary>` настроены формы столкновений. Требует, чтобы :ref:`monitoring<class_Area3D_property_monitoring>` был установлен на ``true``.

\ ``local_shape_index`` и ``body_shape_index`` содержат индексы взаимодействующих форм из этой области и взаимодействующего тела соответственно. ``body_rid`` содержит :ref:`RID<class_RID>` тела. Эти значения можно использовать с :ref:`PhysicsServer3D<class_PhysicsServer3D>`.

\ **Пример:** Получите узел :ref:`CollisionShape3D<class_CollisionShape3D>` из индекса формы:


.. tabs::

 .. code-tab:: gdscript

    var body_shape_owner = body.shape_find_owner(body_shape_index)
    var body_shape_node = body.shape_owner_get_owner(body_shape_owner)

    var local_shape_owner = shape_find_owner(local_shape_index)
    var local_shape_node = shape_owner_get_owner(local_shape_owner)



.. rst-class:: classref-item-separator

----

.. _class_Area3D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node3D<class_Node3D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area3D_signal_body_shape_exited>`

Выдается, когда :ref:`Shape3D<class_Shape3D>` полученного ``body`` выходит из формы этой области. ``body`` может быть :ref:`PhysicsBody3D<class_PhysicsBody3D>` или :ref:`GridMap<class_GridMap>`. :ref:`GridMap<class_GridMap>` обнаруживаются, если в их :ref:`MeshLibrary<class_MeshLibrary>` настроены формы столкновений. Требуется, чтобы :ref:`monitoring<class_Area3D_property_monitoring>` был установлен на ``true``.

См. также :ref:`body_shape_entered<class_Area3D_signal_body_shape_entered>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Area3D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area3D_SpaceOverride>`

.. _class_Area3D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

Эта область не влияет на гравитацию/демпфирование.

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

Эта область добавляет свои значения гравитации/затухания ко всему, что было рассчитано до сих пор (в порядке :ref:`priority<class_Area3D_property_priority>`).

.. _class_Area3D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

Эта область добавляет свои значения гравитации/демпфирования ко всему, что было рассчитано до сих пор (в порядке :ref:`priority<class_Area3D_property_priority>`), игнорируя любые области с более низким приоритетом.

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

Эта область заменяет любую гравитацию/демпфирование, даже значения по умолчанию, игнорируя любые области с более низким приоритетом.

.. _class_Area3D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

Эта область заменяет все рассчитанные до сих пор значения гравитации/демпфирования (в порядке :ref:`priority<class_Area3D_property_priority>`), но продолжает рассчитывать остальные области.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Area3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Скорость, с которой объекты прекращают вращаться в этой области. Представляет угловую скорость, потерянную в секунду.

Подробнее о затухании см. :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

Режим переопределения для расчетов углового демпфирования в этой области.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

Название аудио-шины этой области.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area3D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

Если ``true``, аудиошина области переопределяет аудиошину по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``9.8`` :ref:`🔗<class_Area3D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

Интенсивность гравитации области (в метрах в секунду в квадрате). Это значение умножает направление гравитации. Это полезно для изменения силы гравитации без изменения ее направления.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_direction** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_direction**\ (\ )

Вектор силы тяжести области (не нормализован).

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area3D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

Если ``true``, гравитация рассчитывается из точки (задается через :ref:`gravity_point_center<class_Area3D_property_gravity_point_center>`). См. также :ref:`gravity_space_override<class_Area3D_property_gravity_space_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **gravity_point_center** = ``Vector3(0, -1, 0)`` :ref:`🔗<class_Area3D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_gravity_point_center**\ (\ )

Если гравитация — это точка (см. ``membergravity_point``), то это будет точка притяжения.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area3D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

Расстояние, на котором сила гравитации равна :ref:`gravity<class_Area3D_property_gravity>`. Например, на планете радиусом 100 метров с поверхностной силой гравитации 4,0 м/с² установите :ref:`gravity<class_Area3D_property_gravity>` на 4,0, а единичное расстояние на 100,0. Сила гравитации будет падать в соответствии с законом обратных квадратов, поэтому в этом примере на расстоянии 200 метров от центра сила гравитации составит 1,0 м/с² (в два раза больше расстояния, 1/4 силы гравитации), на расстоянии 50 метров она составит 16,0 м/с² (в два раза больше расстояния, 4x силы гравитации) и т. д. 

Вышесказанное верно только тогда, когда единичное расстояние является положительным числом. Если оно установлено на 0,0, сила гравитации будет постоянной независимо от расстояния.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area3D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

Режим переопределения для расчетов гравитации в этой области.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Скорость, с которой объекты прекращают движение в этой области. Представляет собой потерю линейной скорости в секунду.

Подробнее о затухании см. :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area3D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area3D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area3D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

Режим переопределения для расчетов линейного затухания в этой области.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area3D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

Если ``true``, другие области мониторинга могут обнаружить эту область.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area3D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

Если ``true``, область обнаруживает входящие и выходящие из нее тела или области.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area3D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

Приоритет области. Области с более высоким приоритетом обрабатываются в первую очередь. Физика :ref:`World3D<class_World3D>` всегда обрабатывается в последнюю очередь, после всех областей.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_amount:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_amount** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_amount>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_amount**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_amount**\ (\ )

Степень, в которой эта область применяет реверберацию к связанному с ней аудио. Диапазон от ``0`` до ``1`` с точностью ``0.1``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverb_bus_enabled** = ``false`` :ref:`🔗<class_Area3D_property_reverb_bus_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_use_reverb_bus**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_reverb_bus**\ (\ )

Если ``true``, область применяет реверберацию (reverb) к связанному с ней звуку.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **reverb_bus_name** = ``&"Master"`` :ref:`🔗<class_Area3D_property_reverb_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_reverb_bus_name**\ (\ )

Имя шины реверберации, используемой для звука, связанного с этой областью.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_reverb_bus_uniformity:

.. rst-class:: classref-property

:ref:`float<class_float>` **reverb_bus_uniformity** = ``0.0`` :ref:`🔗<class_Area3D_property_reverb_bus_uniformity>`

.. rst-class:: classref-property-setget

- |void| **set_reverb_uniformity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_reverb_uniformity**\ (\ )

Степень, в которой реверберация этой области является равномерным эффектом. Диапазон от ``0`` до ``1`` с точностью ``0.1``.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_attenuation_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_attenuation_factor** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_attenuation_factor>`

.. rst-class:: classref-property-setget

- |void| **set_wind_attenuation_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_attenuation_factor**\ (\ )

Экспоненциальная скорость, с которой сила ветра уменьшается с расстоянием от ее источника.

\ **Примечание:** Эта сила ветра применяется только к узлам :ref:`SoftBody3D<class_SoftBody3D>`. Другие физические тела в настоящее время не подвержены влиянию ветра.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_force_magnitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **wind_force_magnitude** = ``0.0`` :ref:`🔗<class_Area3D_property_wind_force_magnitude>`

.. rst-class:: classref-property-setget

- |void| **set_wind_force_magnitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wind_force_magnitude**\ (\ )

Величина силы ветра, специфичной для данной области.

\ **Примечание:** Эта сила ветра применяется только к узлам :ref:`SoftBody3D<class_SoftBody3D>`. Другие физические тела в настоящее время не подвержены влиянию ветра.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_property_wind_source_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **wind_source_path** = ``NodePath("")`` :ref:`🔗<class_Area3D_property_wind_source_path>`

.. rst-class:: classref-property-setget

- |void| **set_wind_source_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_wind_source_path**\ (\ )

:ref:`Node3D<class_Node3D>`, который используется для указания направления и источника силы ветра, специфичной для области. Направление противоположно оси z локального преобразования :ref:`Node3D<class_Node3D>`, а его источник является источником локального преобразования :ref:`Node3D<class_Node3D>`.

\ **Примечание:** Эта сила ветра применяется только к узлам :ref:`SoftBody3D<class_SoftBody3D>`. Другие физические тела в настоящее время не подвержены влиянию ветра.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Area3D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area3D<class_Area3D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_areas>`

Возвращает список пересекающихся **Area3D**-ов. ``Member CollisionObject3D.collision_layer`` перекрывающейся области должен быть частью :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` этой области, чтобы быть обнаруженным.

Из соображений производительности (все столкновения обрабатываются одновременно) этот список изменяется один раз во время шага физики, а не сразу после перемещения объектов. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node3D<class_Node3D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_get_overlapping_bodies>`

Возвращает список пересекающихся :ref:`PhysicsBody3D<class_PhysicsBody3D>`-ов и :ref:`GridMap<class_GridMap>`-ов. ``Member CollisionObject3D.collision_layer`` перекрывающегося тела должен быть частью :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` этой области, чтобы его можно было обнаружить.

Из соображений производительности (все столкновения обрабатываются одновременно) этот список изменяется один раз во время шага физики, а не сразу после перемещения объектов. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_areas>`

Возвращает ``true``, если пересекает какие-либо **Area3D**, в противном случае возвращает ``false``. ``Member CollisionObject3D.collision_layer`` перекрывающейся области должен быть частью :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` этой области, чтобы быть обнаруженным.

Из соображений производительности (все столкновения обрабатываются одновременно) список перекрывающихся областей изменяется один раз во время шага физики, а не сразу после перемещения объектов. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area3D_method_has_overlapping_bodies>`

Возвращает ``true``, если пересекает любые :ref:`PhysicsBody3D<class_PhysicsBody3D>` или :ref:`GridMap<class_GridMap>`, в противном случае возвращает ``false``. ``Member CollisionObject3D.collision_layer`` перекрывающегося тела должен быть частью :ref:`CollisionObject3D.collision_mask<class_CollisionObject3D_property_collision_mask>` этой области, чтобы быть обнаруженным.

Из соображений производительности (все столкновения обрабатываются одновременно) список перекрывающихся тел изменяется один раз во время шага физики, а не сразу после перемещения объектов. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_area>`

Возвращает ``true``, если заданная **Area3D** пересекает или перекрывает эту **Area3D**, ``false`` в противном случае.

\ **Примечание:** Результат этого теста не появляется сразу после перемещения объектов. Для производительности список перекрытий обновляется один раз за кадр и перед шагом физики. Рассмотрите возможность использования сигналов вместо этого.

.. rst-class:: classref-item-separator

----

.. _class_Area3D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area3D_method_overlaps_body>`

Возвращает ``true``, если указанное физическое тело пересекается или перекрывается с этой областью (**Area3D**), иначе ``false``. 

\ **Примечание:** Результат этого теста не обновляется мгновенно после перемещения объектов. Для производительности список перекрытий обновляется один раз за кадр и перед шагом физики. Рекомендуется использовать сигналы.

Аргумент ``body`` может быть либо :ref:`PhysicsBody3D<class_PhysicsBody3D>`, либо экземпляром :ref:`GridMap<class_GridMap>`. Хотя GridMap сам по себе не является физическим телом, он регистрирует свои тайлы с коллизиями как виртуальное физическое тело.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
