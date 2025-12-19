:github_url: hide

.. _class_RigidBody2D:

RigidBody2D
===========

**Успадковує:** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`PhysicalBone2D<class_PhysicalBone2D>`

Корпус фізики 2D, який переміщається за допомогою фізкультури.

.. rst-class:: classref-introduction-group

Опис
--------

**RigidBody2D** реалізує повну двовимірну фізику. Ним не можна керувати безпосередньо, натомість до нього потрібно прикладати сили (гравітацію, імпульси тощо), а фізичне моделювання розрахує результуючий рух, обертання, реагуватиме на зіткнення та впливатиме на інші фізичні тіла на своєму шляху.

Поведінку тіла можна регулювати за допомогою :ref:`lock_rotation<class_RigidBody2D_property_lock_rotation>`, :ref:`freeze<class_RigidBody2D_property_freeze>` та :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>`. Змінюючи різні властивості об'єкта, такі як :ref:`mass<class_RigidBody2D_property_mass>`, можна контролювати, як фізичне моделювання діє на нього.

Тверде тіло завжди зберігатиме свою форму та розмір, навіть коли до нього прикладаються сили. Це корисно для об'єктів, з якими можна взаємодіяти в середовищі, таких як дерево, яке можна перекинути, або стопка ящиків, які можна штовхати.

Якщо вам потрібно безпосередньо впливати на тіло, віддайте перевагу :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`, оскільки це дозволяє вам безпосередньо отримати доступ до фізичного стану.

Якщо вам потрібно змінити поведінку фізики за замовчуванням, ви можете написати власну функцію інтегрування сил. Див. :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>`.

\ **Примітка:** Часта зміна 2D-перетворення або :ref:`linear_velocity<class_RigidBody2D_property_linear_velocity>` об'єкта **RigidBody2D** може призвести до непередбачуваної поведінки. Це також трапляється, коли **RigidBody2D** є нащадком постійно рухомого вузла, такого як інший **RigidBody2D**, оскільки це призведе до встановлення його глобального перетворення щоразу, коли рухається його предок.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запровадження фізики <../tutorials/physics/physics_introduction>`

- :doc:`Вирішення проблем з фізики <../tutorials/physics/troubleshooting_physics_issues>`

- `2D фізики Платформа Демо <https://godotengine.org/asset-library/asset/2725>`__

- `Instancing Демо <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`angular_damp<class_RigidBody2D_property_angular_damp>`                           | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`DampMode<enum_RigidBody2D_DampMode>`                 | :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>`                 | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`angular_velocity<class_RigidBody2D_property_angular_velocity>`                   | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`can_sleep<class_RigidBody2D_property_can_sleep>`                                 | ``true``          |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`                       | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` | :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>`             | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`constant_force<class_RigidBody2D_property_constant_force>`                       | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`constant_torque<class_RigidBody2D_property_constant_torque>`                     | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`                     | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`CCDMode<enum_RigidBody2D_CCDMode>`                   | :ref:`continuous_cd<class_RigidBody2D_property_continuous_cd>`                         | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>`                 | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`freeze<class_RigidBody2D_property_freeze>`                                       | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>`             | :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>`                             | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`gravity_scale<class_RigidBody2D_property_gravity_scale>`                         | ``1.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`inertia<class_RigidBody2D_property_inertia>`                                     | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`linear_damp<class_RigidBody2D_property_linear_damp>`                             | ``0.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`DampMode<enum_RigidBody2D_DampMode>`                 | :ref:`linear_damp_mode<class_RigidBody2D_property_linear_damp_mode>`                   | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`linear_velocity<class_RigidBody2D_property_linear_velocity>`                     | ``Vector2(0, 0)`` |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`lock_rotation<class_RigidBody2D_property_lock_rotation>`                         | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                  | :ref:`mass<class_RigidBody2D_property_mass>`                                           | ``1.0``           |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                      | :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>`         | ``0``             |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>`              | :ref:`physics_material_override<class_RigidBody2D_property_physics_material_override>` |                   |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`sleeping<class_RigidBody2D_property_sleeping>`                                   | ``false``         |
   +------------------------------------------------------------+----------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`_integrate_forces<class_RigidBody2D_private_method__integrate_forces>`\ (\ state\: :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ) |virtual|         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_central_force<class_RigidBody2D_method_add_constant_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ )                                           |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_force<class_RigidBody2D_method_add_constant_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`add_constant_torque<class_RigidBody2D_method_add_constant_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                            |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_central_force<class_RigidBody2D_method_apply_central_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`\ )                                                         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_central_impulse<class_RigidBody2D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                                   |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_force<class_RigidBody2D_method_apply_force>`\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )               |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_impulse<class_RigidBody2D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )         |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_torque<class_RigidBody2D_method_apply_torque>`\ (\ torque\: :ref:`float<class_float>`\ )                                                                          |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`apply_torque_impulse<class_RigidBody2D_method_apply_torque_impulse>`\ (\ torque\: :ref:`float<class_float>`\ )                                                          |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] | :ref:`get_colliding_bodies<class_RigidBody2D_method_get_colliding_bodies>`\ (\ ) |const|                                                                                      |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                    | :ref:`get_contact_count<class_RigidBody2D_method_get_contact_count>`\ (\ ) |const|                                                                                            |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                   | :ref:`set_axis_velocity<class_RigidBody2D_method_set_axis_velocity>`\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ )                                                     |
   +----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_RigidBody2D_signal_body_entered:

.. rst-class:: classref-signal

**body_entered**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_entered>`

Випробувано при зіткненні з іншим :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`. ``true`` і :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` для виявлення всіх зіткнень. :ref:`TileMap<class_TileMap>` виявляються, якщо :ref:`TileSet<class_TileSet>` має Collision :ref:`Shape2D<class_Shape2D>`\ s.

\ ``body`` the :ref:`Node<class_Node>`, якщо він існує в дереві, з іншого :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_exited:

.. rst-class:: classref-signal

**body_exited**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_exited>`

Викликається, коли завершується колізія з іншим :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`. Потрібно, щоб :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` було встановлено на ``true``, а :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` було встановлено на достатньо високе значення для виявлення всіх колізій. :ref:`TileMap<class_TileMap>` виявляються, якщо :ref:`TileSet<class_TileSet>` має колізії :ref:`Shape2D<class_Shape2D>`.

\ ``body`` :ref:`Node<class_Node>`, якщо він існує в дереві, іншого :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_entered:

.. rst-class:: classref-signal

**body_shape_entered**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_entered>`

Виникає, коли один з елементів :ref:`Shape2D<class_Shape2D>` цього RigidBody2D стикається з елементами :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`Shape2D<class_Shape2D>` з :ref:`TileMap<class_TileMap>`. Потрібно, щоб :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` було встановлено на ``true``, а :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` було встановлено на достатньо високе значення для виявлення всіх колізій. :ref:`TileMap<class_TileMap>` виявляються, якщо :ref:`TileSet<class_TileSet>` має колізії :ref:`Shape2D<class_Shape2D>`.

\ ``body_rid`` – :ref:`RID<class_RID>` іншого :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`CollisionObject2D<class_CollisionObject2D>` з :ref:`TileSet<class_TileSet>`, що використовується :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ ``body`` – :ref:`Node<class_Node>`, якщо він існує в дереві, іншого :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`.

\ ``body_shape_index`` – індекс :ref:`Shape2D<class_Shape2D>` іншого :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`, що використовується :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Отримайте вузол :ref:`CollisionShape2D<class_CollisionShape2D>` за допомогою ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))``.

\ ``local_shape_index`` – індекс :ref:`Shape2D<class_Shape2D>` цього RigidBody2D, що використовується :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Отримайте вузол :ref:`CollisionShape2D<class_CollisionShape2D>` за допомогою ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_body_shape_exited:

.. rst-class:: classref-signal

**body_shape_exited**\ (\ body_rid\: :ref:`RID<class_RID>`, body\: :ref:`Node<class_Node>`, body_shape_index\: :ref:`int<class_int>`, local_shape_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_RigidBody2D_signal_body_shape_exited>`

Виникає, коли закінчується колізія між одним із :ref:`Shape2D<class_Shape2D>` цього RigidBody2D та :ref:`Shape2D<class_Shape2D>` іншого :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`. Потрібно, щоб :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` було встановлено на ``true``, а :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` було встановлено на достатньо високе значення для виявлення всіх колізій. :ref:`TileMap<class_TileMap>` виявляються, якщо :ref:`TileSet<class_TileSet>` має колізії :ref:`Shape2D<class_Shape2D>`.

\ ``body_rid`` – :ref:`RID<class_RID>` іншого :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`CollisionObject2D<class_CollisionObject2D>` :ref:`TileSet<class_TileSet>`, що використовується :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

\ ``body`` – :ref:`Node<class_Node>`, якщо він існує в дереві, іншого :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`.

\ ``body_shape_index`` – індекс :ref:`Shape2D<class_Shape2D>` іншого :ref:`PhysicsBody2D<class_PhysicsBody2D>` або :ref:`TileMap<class_TileMap>`, що використовується :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Отримайте вузол :ref:`CollisionShape2D<class_CollisionShape2D>` за допомогою ``body.shape_owner_get_owner(body.shape_find_owner(body_shape_index))``.

\ ``local_shape_index`` – індекс :ref:`Shape2D<class_Shape2D>` цього RigidBody2D, що використовується :ref:`PhysicsServer2D<class_PhysicsServer2D>`. Отримайте вузол :ref:`CollisionShape2D<class_CollisionShape2D>` за допомогою ``self.shape_owner_get_owner(self.shape_find_owner(local_shape_index))``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_signal_sleeping_state_changed:

.. rst-class:: classref-signal

**sleeping_state_changed**\ (\ ) :ref:`🔗<class_RigidBody2D_signal_sleeping_state_changed>`

Випробувано, коли фізичний двигун змінює стан сну тіла.

\ **Примітка:** Зміна значення :ref:`sleeping<class_RigidBody2D_property_sleeping>` не запускати цей сигнал. Випробувано тільки якщо використовується сплячий стан за допомогою фізичного двигуна або ``emit_signal("sleeping_state_changed")``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_RigidBody2D_FreezeMode:

.. rst-class:: classref-enumeration

enum **FreezeMode**: :ref:`🔗<enum_RigidBody2D_FreezeMode>`

.. _class_RigidBody2D_constant_FREEZE_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_STATIC** = ``0``

Статичний режим замерзання тіла (default). Тіло не впливає на тяжіння і сили. Ви можете переміщатися тільки за допомогою коду користувача і не співвідноситься з іншими органами.

.. _class_RigidBody2D_constant_FREEZE_MODE_KINEMATIC:

.. rst-class:: classref-enumeration-constant

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **FREEZE_MODE_KINEMATIC** = ``1``

Режим замерзання кінематичного тіла. Схожі до :ref:`FREEZE_MODE_STATIC<class_RigidBody2D_constant_FREEZE_MODE_STATIC>`, але колоїди з іншими тілами по шляху переміщення. Корисно для замороженого тіла, який повинен бути анімованим.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CenterOfMassMode:

.. rst-class:: classref-enumeration

enum **CenterOfMassMode**: :ref:`🔗<enum_RigidBody2D_CenterOfMassMode>`

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_AUTO** = ``0``

У цьому режимі центр маси тіла обчислюється автоматично на основі його форм. Припустимо, що витоки форм також є центром маси.

.. _class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **CENTER_OF_MASS_MODE_CUSTOM** = ``1``

У цьому режимі центр мас тіла встановлюється через :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`. За замовчуванням використовується початкове положення тіла.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_RigidBody2D_DampMode>`

.. _class_RigidBody2D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

У цьому режимі значення пошкодження тіла додається до будь-якого значення, встановленого в областях або значення за замовчуванням.

.. _class_RigidBody2D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_RigidBody2D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

У цьому режимі значення пошкодження тіла замінює будь-яке значення, встановлене в областях або значення за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _enum_RigidBody2D_CCDMode:

.. rst-class:: classref-enumeration

enum **CCDMode**: :ref:`🔗<enum_RigidBody2D_CCDMode>`

.. _class_RigidBody2D_constant_CCD_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_DISABLED** = ``0``

Безперервне виявлення зітків. Це найшвидший спосіб виявлення зіткнень тіла, але може пропустити невеликі, швидко знімаючи предмети.

.. _class_RigidBody2D_constant_CCD_MODE_CAST_RAY:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_RAY** = ``1``

Безперервне виявлення зіткнень увімкнено з використанням зондування. Це швидше, ніж формулювання, але менш точний.

.. _class_RigidBody2D_constant_CCD_MODE_CAST_SHAPE:

.. rst-class:: classref-enumeration-constant

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **CCD_MODE_CAST_SHAPE** = ``2``

Безперервне виявлення зіткнень увімкнено за допомогою формулювання. Це повільний метод CCD і найбільш точний.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_RigidBody2D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Гасить обертання тіла. За замовчуванням тіло використовуватиме параметр :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>` або будь-яке перевизначення значення, встановлене :ref:`Area2D<class_Area2D>`, у якому знаходиться тіло. Залежно від :ref:`angular_damp_mode<class_RigidBody2D_property_angular_damp_mode>`, ви можете встановити :ref:`angular_damp<class_RigidBody2D_property_angular_damp>`, щоб додати або замінити значення демпфування тіла. 

Перегляньте :ref:`ProjectSettings.physics/2d/default_angular_damp<class_ProjectSettings_property_physics/2d/default_angular_damp>`, щоб дізнатися більше про демпфування.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_angular_damp_mode**\ (\ )

Визначає, як застосовується :ref:`angular_damp<class_RigidBody2D_property_angular_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_velocity** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_velocity**\ (\ )

Швидкість обертання тіла в *radians* за секунду.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_RigidBody2D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

Якщо ``true``, тіло може перейти в режим сну, коли немає руху. Див. :ref:`sleeping<class_RigidBody2D_property_sleeping>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **center_of_mass** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_center_of_mass**\ (\ )

Індивідуальний центр маси тіла відносно вихідного положення тіла, коли :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` встановлено на :ref:`CENTER_OF_MASS_MODE_CUSTOM<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_CUSTOM>`. Це точка рівноваги тіла, в якій прикладені сили викликають тільки лінійне прискорення. Прикладання сил поза центром маси викликає кутове прискорення.

Коли :ref:`center_of_mass_mode<class_RigidBody2D_property_center_of_mass_mode>` встановлено на :ref:`CENTER_OF_MASS_MODE_AUTO<class_RigidBody2D_constant_CENTER_OF_MASS_MODE_AUTO>` (значення за замовчуванням), центр маси визначається автоматично, але це не оновлює значення :ref:`center_of_mass<class_RigidBody2D_property_center_of_mass>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_center_of_mass_mode:

.. rst-class:: classref-property

:ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **center_of_mass_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_center_of_mass_mode>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass_mode**\ (\ value\: :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>`\ )
- :ref:`CenterOfMassMode<enum_RigidBody2D_CenterOfMassMode>` **get_center_of_mass_mode**\ (\ )

Визначає спосіб встановлення центру мас тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_force:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **constant_force** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_constant_force>`

.. rst-class:: classref-property-setget

- |void| **set_constant_force**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_constant_force**\ (\ )

Загальні постійні позиційні сили тіла, що застосовуються під час кожного оновлення фізики.

Див. :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>` та :ref:`add_constant_central_force()<class_RigidBody2D_method_add_constant_central_force>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_constant_torque:

.. rst-class:: classref-property

:ref:`float<class_float>` **constant_torque** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_constant_torque>`

.. rst-class:: classref-property-setget

- |void| **set_constant_torque**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_constant_torque**\ (\ )

Загальні постійні сили обертання тіла, що застосовуються під час кожного оновлення фізики.

Див. :ref:`add_constant_torque()<class_RigidBody2D_method_add_constant_torque>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_contact_monitor:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **contact_monitor** = ``false`` :ref:`🔗<class_RigidBody2D_property_contact_monitor>`

.. rst-class:: classref-property-setget

- |void| **set_contact_monitor**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_contact_monitor_enabled**\ (\ )

``true``, RigidBody2D буде випромінювати сигнали, коли він співає з іншим тілом.

\ **Примітка:** У зв'язку з тим, як ми використовуємо файли cookie, щоб надати вам інформацію про файли cookie.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_continuous_cd:

.. rst-class:: classref-property

:ref:`CCDMode<enum_RigidBody2D_CCDMode>` **continuous_cd** = ``0`` :ref:`🔗<class_RigidBody2D_property_continuous_cd>`

.. rst-class:: classref-property-setget

- |void| **set_continuous_collision_detection_mode**\ (\ value\: :ref:`CCDMode<enum_RigidBody2D_CCDMode>`\ )
- :ref:`CCDMode<enum_RigidBody2D_CCDMode>` **get_continuous_collision_detection_mode**\ (\ )

Режим безперервного виявлення зіткнень.

Безперервне виявлення зіткнень намагається передбачити, де зіткнеться рухоме тіло, замість того, щоб переміщувати його та коригувати його рух після зіткнення. Безперервне виявлення зіткнень повільніше, але точніше та пропускає менше зіткнень з малими, швидкорухомими об'єктами. Доступні методи raycasting та shapecasting.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_RigidBody2D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

Якщо значення ``true``, стандартне інтегрування сил (наприклад, гравітації або демпфування) буде вимкнено для цього тіла. Окрім реакції на зіткнення, тіло рухатиметься лише так, як визначено методом :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>`, якщо цей віртуальний метод перевизначено.

Встановлення цієї властивості призведе до внутрішнього виклику методу :ref:`PhysicsServer2D.body_set_omit_force_integration()<class_PhysicsServer2D_method_body_set_omit_force_integration>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **freeze** = ``false`` :ref:`🔗<class_RigidBody2D_property_freeze>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_freeze_enabled**\ (\ )

If ``true``, the body is frozen. Gravity and forces are not applied anymore.

See :ref:`freeze_mode<class_RigidBody2D_property_freeze_mode>` to set the body's behavior when frozen.

\ **Note:** For a body that is always frozen, use :ref:`StaticBody2D<class_StaticBody2D>` or :ref:`AnimatableBody2D<class_AnimatableBody2D>` instead.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_freeze_mode:

.. rst-class:: classref-property

:ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **freeze_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_freeze_mode>`

.. rst-class:: classref-property-setget

- |void| **set_freeze_mode**\ (\ value\: :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>`\ )
- :ref:`FreezeMode<enum_RigidBody2D_FreezeMode>` **get_freeze_mode**\ (\ )

The body's freeze mode. Determines the body's behavior when :ref:`freeze<class_RigidBody2D_property_freeze>` is ``true``.

\ **Note:** For a body that is always frozen, use :ref:`StaticBody2D<class_StaticBody2D>` or :ref:`AnimatableBody2D<class_AnimatableBody2D>` instead.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

Збільшує силу тяжіння, прикладену до тіла. Сила тяжіння тіла обчислюється на основі налаштувань проекту :ref:`ProjectSettings.physics/2d/default_gravity<class_ProjectSettings_property_physics/2d/default_gravity>` та/або будь-якого додаткового вектора гравітації, застосованого :ref:`Area2D<class_Area2D>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_inertia:

.. rst-class:: classref-property

:ref:`float<class_float>` **inertia** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_inertia>`

.. rst-class:: classref-property-setget

- |void| **set_inertia**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inertia**\ (\ )

Момент інерції тіла. Це як маса, але для обертання: вона визначає, який крутний момент потрібен для обертання тіла. Момент інерції зазвичай обчислюється автоматично на основі маси та форм, але ця властивість дозволяє встановити власне значення. 

Якщо встановлено значення ``0``, інерція обчислюється автоматично (значення за замовчуванням). 

\ **Примітка.** Це значення не змінюється, коли інерція обчислюється автоматично. Використовуйте :ref:`PhysicsServer2D<class_PhysicsServer2D>`, щоб отримати обчислену інерцію. 


.. tabs:: 

 .. code-tab:: gdscript
 
    @onready var ball = $Ball 

    функція get_ball_inertia(): 
        return 1.0 / PhysicsServer2D.body_get_direct_state(ball.get_rid()).inverse_inertia  

 .. code-tab:: csharp
 
    private RigidBody2D _ball;

    public override void _Ready() 
    {
        _ball = GetNode<RigidBody2D>("Ball"); 
    }

    private float GetBallInertia() 
    {
        return 1.0f / PhysicsServer2D.BodyGetDirectState(_ball.GetRid()).InverseInertia; 
    } 



.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.0`` :ref:`🔗<class_RigidBody2D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Гасить рухи тіла. За замовчуванням тіло використовуватиме параметр :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>` або будь-яке перевизначення значення, встановлене :ref:`Area2D<class_Area2D>`, у якому знаходиться тіло. Залежно від :ref:`linear_damp_mode<class_RigidBody2D_property_linear_damp_mode>`, ви можете встановити :ref:`linear_damp<class_RigidBody2D_property_linear_damp>`, щоб додати або замінити значення демпфування тіла. 

Перегляньте :ref:`ProjectSettings.physics/2d/default_linear_damp<class_ProjectSettings_property_physics/2d/default_linear_damp>`, щоб дізнатися більше про демпфування.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_RigidBody2D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_RigidBody2D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_RigidBody2D_DampMode>`\ )
- :ref:`DampMode<enum_RigidBody2D_DampMode>` **get_linear_damp_mode**\ (\ )

Визначає, як застосовується :ref:`linear_damp<class_RigidBody2D_property_linear_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **linear_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_RigidBody2D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_linear_velocity**\ (\ )

Лінійна швидкість тіла в пікселях на секунду. Чи можна використовувати спорадочно, але **Не встановити цей кожен кадр**, оскільки фізика може працювати в іншій нитки і працює на різних гранульованих умовах. Використовуйте :ref:`_integrate_forces()<class_RigidBody2D_private_method__integrate_forces>` в якості вашої технологічної петлі для точного контролю стану тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_lock_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **lock_rotation** = ``false`` :ref:`🔗<class_RigidBody2D_property_lock_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_lock_rotation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_lock_rotation_enabled**\ (\ )

Якщо ``true``, тіло не може обертати. Гравітність і сили застосовуються тільки лінійний рух.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_RigidBody2D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

Маса тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_max_contacts_reported:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_contacts_reported** = ``0`` :ref:`🔗<class_RigidBody2D_property_max_contacts_reported>`

.. rst-class:: classref-property-setget

- |void| **set_max_contacts_reported**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_contacts_reported**\ (\ )

Максимальна кількість контактів, які будуть записані. Вимагає значення більше 0 і :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`, щоб встановити до ``true``, щоб почати реєструвати контакти. Використовуйте :ref:`Get_contact_count()<class_RigidBody2D_method_Get_contact_count>` для отримання облікового запису або :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>` для отримання тіл, які були зібрані.

\ **Примітка:** Кількість контактів відрізняється від кількості зіткнення. З’єднання між паралельними краями призведе до двох контактів (один на кожному кінці), а зіткнення між паралельними гранями призведе до чотирьох контактів (один на кожному куті).

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_RigidBody2D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

Фізичний матеріал для тіла.

Якщо матеріал присвоюється цій власності, він буде використовуватися замість будь-якого іншого фізичного матеріалу, таких як спадковість.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_property_sleeping:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sleeping** = ``false`` :ref:`🔗<class_RigidBody2D_property_sleeping>`

.. rst-class:: classref-property-setget

- |void| **set_sleeping**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sleeping**\ (\ )

Якщо значення ``true``, тіло не рухатиметься та не розраховуватиме сили, доки його не розбудить інше тіло, наприклад, через зіткнення, або за допомогою методів :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>` або :ref:`apply_force()<class_RigidBody2D_method_apply_force>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_RigidBody2D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState2D<class_PhysicsDirectBodyState2D>`\ ) |virtual| :ref:`🔗<class_RigidBody2D_private_method__integrate_forces>`

Викликається під час обробки фізики, що дозволяє читати і безпечно модифікувати стан імітації об'єкта. За замовчуванням, він називається до стандартної інтеграції сили, але :ref:`custom_integrator<class_RigidBody2D_property_custom_integrator>` має можливість вимкнути стандартну інтеграцію сил і повністю налаштувати силу інтеграції для тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_central_force:

.. rst-class:: classref-method

|void| **add_constant_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_central_force>`

Додавання постійної спрямованої сили без ударної обертання, яка зберігає час, поки не очищається ``constant_force = Vector2(0, 0)``.

Це еквівалентно використанню :ref:`add_constant_force()<class_RigidBody2D_method_add_constant_force>` в центрі маси тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_force:

.. rst-class:: classref-method

|void| **add_constant_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_force>`

Додавання постійної позиціонованої сили до тіла, яка зберігає час, поки не очищається ``constant_force = Vector2(0, 0)``.

\ ``position`` – це зміщення з організму в глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_add_constant_torque:

.. rst-class:: classref-method

|void| **add_constant_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_add_constant_torque>`

Додає постійної обертальної сили, не впливаючи на позицію, яка зберігає час, поки не очищається ``constant_torque = 0``.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_force>`

Застосовується спрямована сила без ударного обертання. Знаряддя часу залежна і означена для кожного оновлення фізики.

Це еквівалентно використання :ref:`apply_force()<class_RigidBody2D_method_apply_force>` в центрі маси тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_central_impulse>`

Застосовується спрямований імпульс без впливу обертання.

Імпульс часозалежний! Нанесення імпульсу кожного кадру призведе до каркасно-залежної сили. З цієї причини слід використовувати тільки при симуляції одноразових ударів (користування функції "_сил" інакше).

Це еквівалентно використання :ref:`apply_impulse()<class_RigidBody2D_method_apply_impulse>` в центрі маси тіла.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ force\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_force>`

Застосовується сила позиціонування організму. Знаряддя часу залежна і означена для кожного оновлення фізики.

\ ``position`` – це зміщення з організму в глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector2<class_Vector2>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_RigidBody2D_method_apply_impulse>`

Застосує поміщений імпульс до тіла.

Імпульс часозалежний! Нанесення імпульсу кожного кадру призведе до каркасно-залежної сили. З цієї причини слід використовувати тільки при симуляції одноразових ударів (користування функції "_сил" інакше).

\ ``position`` – це зміщення з організму в глобальних координатах.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque:

.. rst-class:: classref-method

|void| **apply_torque**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque>`

Застосовує обертальну силу, не впливаючи на положення. Сила залежить від часу та має застосовуватися під час кожного оновлення фізики.

\ **Примітка:** Для роботи потрібен :ref:`inerty<class_RigidBody2D_property_inerty>`. Щоб мати :ref:`inerty<class_RigidBody2D_property_inerty>`, активний :ref:`CollisionShape2D<class_CollisionShape2D>` має бути дочірнім елементом вузла, або ви можете вручну встановити :ref:`inerty<class_RigidBody2D_property_inerty>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_apply_torque_impulse:

.. rst-class:: classref-method

|void| **apply_torque_impulse**\ (\ torque\: :ref:`float<class_float>`\ ) :ref:`🔗<class_RigidBody2D_method_apply_torque_impulse>`

Застосовує обертальний імпульс до тіла без впливу на положення.

Імпульс часозалежний! Нанесення імпульсу кожного кадру призведе до каркасно-залежної сили. З цієї причини слід використовувати тільки при симуляції одноразових ударів (користування функції "_сил" інакше).

\ **Примітка:** :ref:`inertia<class_RigidBody2D_property_inertia>` обов'язкова для роботи. Для того, щоб мати :ref:`inertia<class_RigidBody2D_property_inertia>`, активний :ref:`CollisionShape2D<class_CollisionShape2D>` повинен бути дитиною вузла, або ви можете вручну встановити :ref:`inertia<class_RigidBody2D_property_inertia>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_colliding_bodies:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node2D<class_Node2D>`\] **get_colliding_bodies**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_colliding_bodies>`

Повертає список тіл, що стикаються з цим. Потрібно, щоб :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>` було встановлено на ``true``, а :ref:`max_contacts_reported<class_RigidBody2D_property_max_contacts_reported>` було встановлено на достатньо високе значення для виявлення всіх зіткнень.

\ **Примітка:** Результат цього тесту не відображається одразу після переміщення об'єктів. Для підвищення продуктивності список зіткнень оновлюється один раз за кадр і перед кроком фізики. Натомість розгляньте можливість використання сигналів.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_get_contact_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_contact_count**\ (\ ) |const| :ref:`🔗<class_RigidBody2D_method_get_contact_count>`

Повертає кількість контактів цього тіла з іншими тілами. За замовчуванням повертає 0, якщо тіла не налаштовані на моніторинг контактів (див. :ref:`contact_monitor<class_RigidBody2D_property_contact_monitor>`).

\ **Примітка:** Щоб отримати тіла, що зіштовхуються, використовуйте :ref:`get_colliding_bodies()<class_RigidBody2D_method_get_colliding_bodies>`.

.. rst-class:: classref-item-separator

----

.. _class_RigidBody2D_method_set_axis_velocity:

.. rst-class:: classref-method

|void| **set_axis_velocity**\ (\ axis_velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_RigidBody2D_method_set_axis_velocity>`

Встановлює швидкість тіла на даній осі. Швидкість в заданій векторній віссі буде встановлена в якості заданої довжини вектора. Це корисно для стрибків поведінки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
