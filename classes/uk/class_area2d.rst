:github_url: hide

.. meta::
	:keywords: trigger

.. _class_Area2D:

Area2D
======

**Успадковує:** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Область двовимірного простору, яка виявляє, що інші :ref:`CollisionObject2D<class_CollisionObject2D>` входять або виходять з неї.

.. rst-class:: classref-introduction-group

Опис
--------

**Area2D** — це область 2D-простору, визначена одним або кількома дочірніми вузлами :ref:`CollisionShape2D<class_CollisionShape2D>` або :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`. Він визначає, коли інші :ref:`CollisionObject2D<class_CollisionObject2D>` входять або виходять з нього, а також відстежує, які об’єкти зіткнення ще не вийшли з нього (тобто які з них перекривають його).

 Цей вузол також може локально змінювати або перевизначати фізичні параметри (гравітацію, демпфування) і направляти аудіо на спеціальні аудіошини.

\ **Примітка: ** Області та тіла, створені за допомогою :ref:`PhysicsServer2D<class_PhysicsServer2D>`, можуть не взаємодіяти з **Area2D** належним чином, видавати сигнали або неправильно відстежувати об’єкти.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Area2D <../tutorials/physics/using_area_2d>`

- `2D демонстрація Dodge The Creeps <https://godotengine.org/asset-library/asset/2712>`__

- `Демонстрація 2D понгу <https://godotengine.org/asset-library/asset/2728>`__

- `Демонстрація 2D-платформера <https://godotengine.org/asset-library/asset/2727>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_Area2D_property_angular_damp>`                               | ``1.0``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`angular_damp_space_override<class_Area2D_property_angular_damp_space_override>` | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`audio_bus_name<class_Area2D_property_audio_bus_name>`                           | ``&"Master"``     |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`audio_bus_override<class_Area2D_property_audio_bus_override>`                   | ``false``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity<class_Area2D_property_gravity>`                                         | ``980.0``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`gravity_direction<class_Area2D_property_gravity_direction>`                     | ``Vector2(0, 1)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`gravity_point<class_Area2D_property_gravity_point>`                             | ``false``         |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                   | :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>`               | ``Vector2(0, 1)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_point_unit_distance<class_Area2D_property_gravity_point_unit_distance>` | ``0.0``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`           | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_Area2D_property_linear_damp>`                                 | ``0.1``           |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` | :ref:`linear_damp_space_override<class_Area2D_property_linear_damp_space_override>`   | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitorable<class_Area2D_property_monitorable>`                                 | ``true``          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                         | :ref:`monitoring<class_Area2D_property_monitoring>`                                   | ``true``          |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                           | :ref:`priority<class_Area2D_property_priority>`                                       | ``0``             |
   +-------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] | :ref:`get_overlapping_areas<class_Area2D_method_get_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] | :ref:`get_overlapping_bodies<class_Area2D_method_get_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_areas<class_Area2D_method_has_overlapping_areas>`\ (\ ) |const|                 |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`has_overlapping_bodies<class_Area2D_method_has_overlapping_bodies>`\ (\ ) |const|               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_area<class_Area2D_method_overlaps_area>`\ (\ area\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`overlaps_body<class_Area2D_method_overlaps_body>`\ (\ body\: :ref:`Node<class_Node>`\ ) |const| |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_Area2D_signal_area_entered:

.. rst-class:: classref-signal

**area_entered**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_entered>`

Випромінюється, коли отримана ``area`` потрапляє в цю область. Потребує, щоб :ref:`monitoring<class_Area2D_property_monitoring>` було встановлено на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_exited:

.. rst-class:: classref-signal

**area_exited**\ (\ area\: :ref:`Area2D<class_Area2D>`\ ) :ref:`🔗<class_Area2D_signal_area_exited>`

Випромінюється, коли отримана ``area`` виходить з цієї області. Потребує, щоб :ref:`monitoring<class_Area2D_property_monitoring>` було встановлено на ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_entered:

.. rst-class:: classref-signal

**area_shape_entered**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_entered>`

Видається, коли :ref:`Shape2D<class_Shape2D>` отриманої ``area`` входить у форму цієї області. Для параметра :ref:`monitoring<class_Area2D_property_monitoring>` потрібно встановити значення ``true``. 

\ ``local_shape_index`` і ``area_shape_index`` містять індекси взаємодіючих фігур з цієї та іншої області відповідно. ``area_rid`` містить :ref:`RID<class_RID>` іншої області. Ці значення можна використовувати з :ref:`PhysicsServer2D<class_PhysicsServer2D>`. 

\ **Приклад:** Отримайте вузол :ref:`CollisionShape2D<class_CollisionShape2D>` з індексу форми: 


.. tabs:: 

 .. code-tab:: gdscript
 
    var other_shape_owner = area.shape_find_owner(area_shape_index) 
    var other_shape_node = area.shape_owner_get_owner(other_shape_owner) 

    var local_shape_owner = shape_find_owner(local_shape_index) 
    var local_shape_node = shape_owner_get_owner(local_shape_owner)  



.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_area_shape_exited:

.. rst-class:: classref-signal

**area_shape_exited**\ (\ area_rid\: :ref:`RID<class_RID>`, area\: :ref:`Area2D<class_Area2D>`, area_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_area_shape_exited>`

Випромінюється, коли :ref:`Shape2D<class_Shape2D>` отриманої ``area`` виходить за межі форми цієї області. Потребує, щоб :ref:`monitoring<class_Area2D_property_monitoring>` було встановлено на ``true``.

Дивіться також :ref:`area_shape_shape_entered<class_Area2D_signal_area_shape_shape_entered>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_entered>`

Випромінюється, коли отриманий ``body`` входить в цю область. ``body`` може бути :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`. :ref:`TileMap<class_TileMap>`\ и виявляються, якщо їхній :ref:`TileSet<class_TileSet>` має сконфігуровані форми зіткнення. Вимагає, щоб для :ref:`monitoring<class_Area2D_property_monitoring>` було встановлено значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node2D<class_Node2D>`\ ) :ref:`🔗<class_Area2D_signal_body_exited>`

Випромінюється, коли отримане ``body`` виходить з цієї області. ``body`` може бути :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`. :ref:`TileMap<class_TileMap>`\ и виявляються, якщо їхній :ref:`TileSet<class_TileSet>` має сконфігуровані форми зіткнення. Вимагає, щоб для :ref:`monitoring<class_Area2D_property_monitoring>` було встановлено значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_entered>`

Випускається, коли :ref:`Shape2D<class_Shape2D>` отриманого ``body`` входить у форму цієї області. ``body`` може бути :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`. :ref:`TileMap<class_TileMap>` виявляються, якщо для їх :ref:`TileSet<class_TileSet>` налаштовано форми зіткнення. Для параметра :ref:`monitoring<class_Area2D_property_monitoring>` потрібно встановити значення ``true``. 

\ ``local_shape_index`` і ``body_shape_index`` містять індекси взаємодіючих форм із цієї області та взаємодіючого тіла відповідно. ``body_rid`` містить :ref:`RID<class_RID>` тіла. Ці значення можна використовувати з :ref:`PhysicsServer2D<class_PhysicsServer2D>`. 

\ **Приклад:** Отримайте вузол :ref:`CollisionShape2D<class_CollisionShape2D>` з індексу форми: 


.. tabs:: 

 .. code-tab:: gdscript
 
    var body_shape_owner = body.shape_find_owner(body_shape_index) 
    var body_shape_node = body.shape_owner_get_owner(body_shape_owner) 

    var local_shape_owner = shape_find_owner(local_shape_index) 
    var local_shape_node = shape_owner_get_owner(local_shape_owner)  



.. rst-class:: classref-item-separator

----

.. _class_Area2D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node2D<class_Node2D>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Area2D_signal_body_shape_exited>`

Випромінюється, коли :ref:`Shape2D<class_Shape2D>` отриманого ``body`` виходить з форми цієї області. ``body`` може бути :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`. :ref:`TileMap<class_TileMap>`\ и визначаються, якщо їх :ref:`TileSet<class_TileSet>` має налаштовані форми зіткнення. Потребує, щоб для :ref:`monitoring<class_Area2D_property_monitoring>` було встановлено значення ``true``.

Дивіться також :ref:`body_shape_entered<class_Area2D_signal_body_shape_entered>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Area2D_SpaceOverride:

.. rst-class:: classref-enumeration

enum **SpaceOverride**: :ref:`🔗<enum_Area2D_SpaceOverride>`

.. _class_Area2D_constant_SPACE_OVERRIDE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_DISABLED** = ``0``

Ця область не впливає на гравітацію/демпфування.

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE** = ``1``

Ця область додає свої значення гравітації/демпфування до всього, що було розраховано до цього часу (у порядку :ref:`priority<class_Area2D_property_priority>`).

.. _class_Area2D_constant_SPACE_OVERRIDE_COMBINE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_COMBINE_REPLACE** = ``2``

Ця область додає свої значення гравітації/демпфування до всього, що було розраховано до цього часу (у порядку :ref:`priority<class_Area2D_property_priority>`), ігноруючи всі області з нижчим пріоритетом.

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE** = ``3``

Ця область замінює будь-яку гравітацію/демпфування, навіть за замовчуванням, ігноруючи всі області з нижчим пріоритетом.

.. _class_Area2D_constant_SPACE_OVERRIDE_REPLACE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **SPACE_OVERRIDE_REPLACE_COMBINE** = ``4``

Ця область замінює будь-яку гравітацію/демпфування, обчислену до цього часу (у порядку :ref:`priority<class_Area2D_property_priority>`), але продовжує розраховувати решту областей.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Area2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``1.0`` :ref:`🔗<class_Area2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Швидкість, з якою об'єкти перестають обертатися в цій області. Являє собою кутову швидкість, втрачену за секунду.

Дивіться :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` для більш детальної інформації про демпфування.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_angular_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **angular_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_angular_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_angular_damp_space_override_mode**\ (\ )

Режим перевизначення для розрахунків кутового демпфування в цій області.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **audio_bus_name** = ``&"Master"`` :ref:`🔗<class_Area2D_property_audio_bus_name>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_audio_bus_name**\ (\ )

Назва звукової шини області.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_audio_bus_override:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **audio_bus_override** = ``false`` :ref:`🔗<class_Area2D_property_audio_bus_override>`

.. rst-class:: classref-property-setget

- |void| **set_audio_bus_override**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overriding_audio_bus**\ (\ )

Якщо ``true``, звукова шина області замінює звукову шину за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity** = ``980.0`` :ref:`🔗<class_Area2D_property_gravity>`

.. rst-class:: classref-property-setget

- |void| **set_gravity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity**\ (\ )

Інтенсивність гравітації області (у пікселях на секунду в квадраті). Це значення множить напрямок гравітації. Корисно для зміни сили гравітації без зміни її напрямку.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_direction:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_direction** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_direction>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_direction**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_direction**\ (\ )

Вектор гравітації області (не нормалізований).

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **gravity_point** = ``false`` :ref:`🔗<class_Area2D_property_gravity_point>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_is_point**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_gravity_a_point**\ (\ )

Якщо ``true``, гравітація обчислюється з точки (встановлюється через :ref:`gravity_point_center<class_Area2D_property_gravity_point_center>`). Дивіться також :ref:`gravity_space_override<class_Area2D_property_gravity_space_override>`.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_center:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **gravity_point_center** = ``Vector2(0, 1)`` :ref:`🔗<class_Area2D_property_gravity_point_center>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_center**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_gravity_point_center**\ (\ )

Якщо гравітація є точкою (див. :ref:`gravity_point<class_Area2D_property_gravity_point>`), то це буде точка притягання.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_point_unit_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_point_unit_distance** = ``0.0`` :ref:`🔗<class_Area2D_property_gravity_point_unit_distance>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_point_unit_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_point_unit_distance**\ (\ )

Відстань, на якій сила гравітації дорівнює :ref:`gravity<class_Area2D_property_gravity>`. Наприклад, на планеті радіусом 100 пікселів з поверхневою гравітацією 4.0 px/s², встановіть :ref:`gravity<class_Area2D_property_gravity>` на 4.0 і одиницю відстані на 100.0. Гравітація спадатиме за законом оберненого квадрата, тому у прикладі на відстані 200 пікселів від центру гравітація буде 1.0 px/s² (вдвічі більша відстань, 1/4 гравітації), на відстані 50 пікселів - 16.0 px/s² (вдвічі менша відстань, 4x гравітації), і так далі.

Вищесказане справедливо лише тоді, коли одиниця відстані є додатним числом. Якщо цей параметр встановлено на 0.0, гравітація буде постійною незалежно від відстані.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_gravity_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **gravity_space_override** = ``0`` :ref:`🔗<class_Area2D_property_gravity_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_gravity_space_override_mode**\ (\ )

Режим перевизначення для розрахунків сили тяжіння в цій області.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.1`` :ref:`🔗<class_Area2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Швидкість, з якою об'єкти перестають рухатися в цій області. Являє собою лінійну швидкість, втрачену за секунду.

Дивіться :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` для більш детальної інформації про демпфування.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_linear_damp_space_override:

.. rst-class:: classref-property

:ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **linear_damp_space_override** = ``0`` :ref:`🔗<class_Area2D_property_linear_damp_space_override>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_space_override_mode**\ (\ value\: :ref:`SpaceOverride<enum_Area2D_SpaceOverride>`\ )
- :ref:`SpaceOverride<enum_Area2D_SpaceOverride>` **get_linear_damp_space_override_mode**\ (\ )

Режим перевизначення для розрахунків лінійного демпфування в цій області.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitorable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitorable** = ``true`` :ref:`🔗<class_Area2D_property_monitorable>`

.. rst-class:: classref-property-setget

- |void| **set_monitorable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitorable**\ (\ )

Якщо ``true``, інші області моніторингу можуть виявити цю ділянку.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_monitoring:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **monitoring** = ``true`` :ref:`🔗<class_Area2D_property_monitoring>`

.. rst-class:: classref-property-setget

- |void| **set_monitoring**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_monitoring**\ (\ )

Якщо ``true``, область виявляє тіла або області, які входять і виходять з неї.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_Area2D_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

Пріоритет району. Першочергові ділянки обробляються першими. Фізика :ref:`World2D<class_World2D>` завжди обробляється останньою, після всіх областей.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Area2D_method_get_overlapping_areas:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Area2D<class_Area2D>`\] **get_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_areas>`

Повертає список **Area2D**\ (й), що перетинаються. Для виявлення, :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` області, що перетинається, має бути частиною :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` цієї області.

З міркувань продуктивності (всі зіткнення обробляються одночасно) цей список змінюється один раз під час фізичного кроку, а не одразу після переміщення об'єктів. Подумайте про використання сигналів замість цього.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_get_overlapping_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_get_overlapping_bodies>`

Повертає список тіл :ref:`PhysicsBody2D<class_PhysicsBody2D>` та :ref:`TileMap<class_TileMap>`, що перетинаються. Для виявлення, :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` тіла, що перетинається, має бути частиною :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` цієї області.

З міркувань продуктивності (всі зіткнення обробляються одночасно) цей список змінюється один раз під час фізичного кроку, а не одразу після переміщення об'єктів. Подумайте про використання сигналів замість цього.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_areas:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_areas**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_areas>`

Повертає ``true``, якщо перетинаються будь-які **Area2D**\ і, інакше повертає ``false``. Для виявлення, :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` області, що перетинається, має бути частиною :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` цієї області.

З міркувань продуктивності (всі зіткнення обробляються одночасно) список областей, що перетинаються, змінюється один раз під час фізичного кроку, а не одразу після переміщення об'єктів. Подумайте про використання сигналів замість цього.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_has_overlapping_bodies:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_overlapping_bodies**\ (\ ) |const| :ref:`🔗<class_Area2D_method_has_overlapping_bodies>`

Повертає ``true``, якщо перетинаються будь-які :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`, інакше повертає ``false``. Для виявлення, :ref:`CollisionObject2D.collision_layer<class_CollisionObject2D_property_collision_layer>` тіла, що перетинається, має бути частиною :ref:`CollisionObject2D.collision_mask<class_CollisionObject2D_property_collision_mask>` цієї області.

З міркувань продуктивності (всі зіткнення обробляються одночасно) список тіл, що перетинаються, змінюється один раз під час фізичного кроку, а не одразу після переміщення об'єктів. Подумайте про використання сигналів замість цього.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_area**\ (\ area\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_area>`

Повертає ``true``, якщо задана **Area2D** перетинає або накладається на цю **Area2D**, інакше ``false``.

\ **Примітка:** Цей тест не виконується одразу після переміщення об'єктів. Для підвищення продуктивності список перетинів оновлюється один раз за кадр і перед кроком фізики. Подумайте про використання сигналів замість цього.

.. rst-class:: classref-item-separator

----

.. _class_Area2D_method_overlaps_body:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **overlaps_body**\ (\ body\: :ref:`Node<class_Node>`\ ) |const| :ref:`🔗<class_Area2D_method_overlaps_body>`

Повертає ``true``, якщо задане фізичне тіло перетинає або накладається на цю **Area2D**, інакше ``false``.

\ **Примітка:** Цей тест не виконується одразу після переміщення об'єктів. Для продуктивності список перетинів оновлюється один раз на кадр і перед кроком фізики. Розгляньте можливість використання сигналів замість цього.

Аргумент ``body`` може бути екземпляром :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`. Хоча Карти Плиток самі не є фізичними тілами, вони реєструють свої плитки з формами зіткнень як віртуальні фізичні тіла.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
