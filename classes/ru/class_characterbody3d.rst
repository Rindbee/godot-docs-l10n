:github_url: hide

.. _class_CharacterBody3D:

CharacterBody3D
===============

**Наследует:** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Трехмерное физическое тело, специально разработанное для персонажей, перемещаемых по сценарию.

.. rst-class:: classref-introduction-group

Описание
----------------

**CharacterBody3D** — это специализированный класс для физических тел, которые должны контролироваться пользователем. Они вообще не подвержены влиянию физики, но влияют на другие физические тела на своем пути. Они в основном используются для предоставления высокоуровневого API для перемещения объектов с обнаружением стен и склонов (метод :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`) в дополнение к общему обнаружению столкновений, предоставляемому :ref:`PhysicsBody3D.move_and_collide()<class_PhysicsBody3D_method_move_and_collide>`. Это делает его полезным для высоконастраиваемых физических тел, которые должны двигаться определенным образом и сталкиваться с миром, как это часто бывает с персонажами, контролируемыми пользователем.

Для игровых объектов, которые не требуют сложного движения или обнаружения столкновений, таких как движущиеся платформы, :ref:`AnimatableBody3D<class_AnimatableBody3D>` проще в настройке.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Введение в физику <../tutorials/physics/physics_introduction>`

- :doc:`Устранение неполадок в физике <../tutorials/physics/troubleshooting_physics_issues>`

- :doc:`Кинематический персонаж (2D) <../tutorials/physics/kinematic_character_2d>`

- `Демонстрация 3D-кинематического персонажа <https://godotengine.org/asset-library/asset/2739>`__

- `Демо-версия 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демоверсия 3D вокселей <https://godotengine.org/asset-library/asset/2755>`__

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_block_on_wall<class_CharacterBody3D_property_floor_block_on_wall>`     | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_constant_speed<class_CharacterBody3D_property_floor_constant_speed>`   | ``false``            |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>`             | ``0.7853982``        |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`floor_snap_length<class_CharacterBody3D_property_floor_snap_length>`         | ``0.1``              |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`floor_stop_on_slope<class_CharacterBody3D_property_floor_stop_on_slope>`     | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`max_slides<class_CharacterBody3D_property_max_slides>`                       | ``6``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`MotionMode<enum_CharacterBody3D_MotionMode>`           | :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>`                     | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`platform_floor_layers<class_CharacterBody3D_property_platform_floor_layers>` | ``4294967295``       |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` | :ref:`platform_on_leave<class_CharacterBody3D_property_platform_on_leave>`         | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                        | :ref:`platform_wall_layers<class_CharacterBody3D_property_platform_wall_layers>`   | ``0``                |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`safe_margin<class_CharacterBody3D_property_safe_margin>`                     | ``0.001``            |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`slide_on_ceiling<class_CharacterBody3D_property_slide_on_ceiling>`           | ``true``             |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`up_direction<class_CharacterBody3D_property_up_direction>`                   | ``Vector3(0, 1, 0)`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`velocity<class_CharacterBody3D_property_velocity>`                           | ``Vector3(0, 0, 0)`` |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                                    | :ref:`wall_min_slide_angle<class_CharacterBody3D_property_wall_min_slide_angle>`   | ``0.2617994``        |
   +--------------------------------------------------------------+------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`apply_floor_snap<class_CharacterBody3D_method_apply_floor_snap>`\ (\ )                                                                        |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | :ref:`get_floor_angle<class_CharacterBody3D_method_get_floor_angle>`\ (\ up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_floor_normal<class_CharacterBody3D_method_get_floor_normal>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_last_motion<class_CharacterBody3D_method_get_last_motion>`\ (\ ) |const|                                                                  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision3D<class_KinematicCollision3D>` | :ref:`get_last_slide_collision<class_CharacterBody3D_method_get_last_slide_collision>`\ (\ )                                                        |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_platform_angular_velocity<class_CharacterBody3D_method_get_platform_angular_velocity>`\ (\ ) |const|                                      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_platform_velocity<class_CharacterBody3D_method_get_platform_velocity>`\ (\ ) |const|                                                      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_position_delta<class_CharacterBody3D_method_get_position_delta>`\ (\ ) |const|                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_real_velocity<class_CharacterBody3D_method_get_real_velocity>`\ (\ ) |const|                                                              |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`KinematicCollision3D<class_KinematicCollision3D>` | :ref:`get_slide_collision<class_CharacterBody3D_method_get_slide_collision>`\ (\ slide_idx\: :ref:`int<class_int>`\ )                               |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                   | :ref:`get_slide_collision_count<class_CharacterBody3D_method_get_slide_collision_count>`\ (\ ) |const|                                              |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                           | :ref:`get_wall_normal<class_CharacterBody3D_method_get_wall_normal>`\ (\ ) |const|                                                                  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_ceiling<class_CharacterBody3D_method_is_on_ceiling>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_ceiling_only<class_CharacterBody3D_method_is_on_ceiling_only>`\ (\ ) |const|                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_floor<class_CharacterBody3D_method_is_on_floor>`\ (\ ) |const|                                                                          |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_floor_only<class_CharacterBody3D_method_is_on_floor_only>`\ (\ ) |const|                                                                |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_wall<class_CharacterBody3D_method_is_on_wall>`\ (\ ) |const|                                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_on_wall_only<class_CharacterBody3D_method_is_on_wall_only>`\ (\ ) |const|                                                                  |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`move_and_slide<class_CharacterBody3D_method_move_and_slide>`\ (\ )                                                                            |
   +---------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_CharacterBody3D_MotionMode:

.. rst-class:: classref-enumeration

enum **MotionMode**: :ref:`🔗<enum_CharacterBody3D_MotionMode>`

.. _class_CharacterBody3D_constant_MOTION_MODE_GROUNDED:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **MOTION_MODE_GROUNDED** = ``0``

Применять, когда важны понятия стен, потолка и пола. В этом режиме движение тела будет реагировать на наклоны (ускорение/замедление). Этот режим подходит для игр с приземлением, таких как платформеры.

.. _class_CharacterBody3D_constant_MOTION_MODE_FLOATING:

.. rst-class:: classref-enumeration-constant

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **MOTION_MODE_FLOATING** = ``1``

Применять, когда нет понятия пола или потолка. Все столкновения будут сообщаться как ``on_wall``. В этом режиме при скольжении скорость всегда будет постоянной. Этот режим подходит для игр без земли, например, космических игр.

.. rst-class:: classref-item-separator

----

.. _enum_CharacterBody3D_PlatformOnLeave:

.. rst-class:: classref-enumeration

enum **PlatformOnLeave**: :ref:`🔗<enum_CharacterBody3D_PlatformOnLeave>`

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_ADD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_VELOCITY** = ``0``

Добавьте последнюю скорость платформы к :ref:`velocity<class_CharacterBody3D_property_velocity>`, когда вы покидаете движущуюся платформу.

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY** = ``1``

Добавьте последнюю скорость платформы к :ref:`velocity<class_CharacterBody3D_property_velocity>`, когда вы покидаете движущуюся платформу, но любое движение вниз игнорируется. Полезно сохранять полную высоту прыжка, даже когда платформа движется вниз.

.. _class_CharacterBody3D_constant_PLATFORM_ON_LEAVE_DO_NOTHING:

.. rst-class:: classref-enumeration-constant

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **PLATFORM_ON_LEAVE_DO_NOTHING** = ``2``

Покидая платформу, не предпринимайте никаких действий.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CharacterBody3D_property_floor_block_on_wall:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_block_on_wall** = ``true`` :ref:`🔗<class_CharacterBody3D_property_floor_block_on_wall>`

.. rst-class:: classref-property-setget

- |void| **set_floor_block_on_wall_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_block_on_wall_enabled**\ (\ )

Если ``true``, тело сможет двигаться только по полу. Эта опция исключает возможность ходить по стенам, однако позволяет скользить по ним.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_constant_speed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_constant_speed** = ``false`` :ref:`🔗<class_CharacterBody3D_property_floor_constant_speed>`

.. rst-class:: classref-property-setget

- |void| **set_floor_constant_speed_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_constant_speed_enabled**\ (\ )

Если ``false`` (по умолчанию), тело будет двигаться быстрее на спусках и медленнее на подъемах.

Если ``true``, тело всегда будет двигаться с одинаковой скоростью на земле, независимо от уклона. Обратите внимание, что вам нужно использовать :ref:`floor_snap_length<class_CharacterBody3D_property_floor_snap_length>`, чтобы придерживаться спуска с постоянной скоростью.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_max_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_max_angle** = ``0.7853982`` :ref:`🔗<class_CharacterBody3D_property_floor_max_angle>`

.. rst-class:: classref-property-setget

- |void| **set_floor_max_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_max_angle**\ (\ )

Максимальный угол (в радианах), при котором наклон все еще считается полом (или потолком), а не стеной, при вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Значение по умолчанию равно 45 градусам.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_snap_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **floor_snap_length** = ``0.1`` :ref:`🔗<class_CharacterBody3D_property_floor_snap_length>`

.. rst-class:: classref-property-setget

- |void| **set_floor_snap_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_floor_snap_length**\ (\ )

Устанавливает расстояние привязки. Если установлено значение, отличное от ``0.0``, тело остается прикрепленным к склонам при вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Вектор привязки определяется заданным расстоянием вдоль противоположного направления :ref:`up_direction<class_CharacterBody3D_property_up_direction>`.

Пока вектор привязки находится в контакте с землей и тело движется против :ref:`up_direction<class_CharacterBody3D_property_up_direction>`, тело будет оставаться прикрепленным к поверхности. Привязка не применяется, если тело движется вдоль :ref:`up_direction<class_CharacterBody3D_property_up_direction>`, то есть оно содержит вертикальную скорость подъема, поэтому оно сможет оторваться от земли при прыжке или когда тело что-то толкает вверх. Если вы хотите применить привязку без учета скорости, используйте :ref:`apply_floor_snap()<class_CharacterBody3D_method_apply_floor_snap>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_floor_stop_on_slope:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **floor_stop_on_slope** = ``true`` :ref:`🔗<class_CharacterBody3D_property_floor_stop_on_slope>`

.. rst-class:: classref-property-setget

- |void| **set_floor_stop_on_slope_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_floor_stop_on_slope_enabled**\ (\ )

Если ``true``, тело не будет скользить по склонам при вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`, когда тело стоит на месте.

Если ``false``, тело будет скользить по склонам пола, когда :ref:`velocity<class_CharacterBody3D_property_velocity>` прикладывает направленную вниз силу.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_max_slides:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_slides** = ``6`` :ref:`🔗<class_CharacterBody3D_property_max_slides>`

.. rst-class:: classref-property-setget

- |void| **set_max_slides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_slides**\ (\ )

Максимальное количество раз, которое тело может изменить направление, прежде чем оно остановится при вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Должно быть больше нуля.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_motion_mode:

.. rst-class:: classref-property

:ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **motion_mode** = ``0`` :ref:`🔗<class_CharacterBody3D_property_motion_mode>`

.. rst-class:: classref-property-setget

- |void| **set_motion_mode**\ (\ value\: :ref:`MotionMode<enum_CharacterBody3D_MotionMode>`\ )
- :ref:`MotionMode<enum_CharacterBody3D_MotionMode>` **get_motion_mode**\ (\ )

Устанавливает режим движения, который определяет поведение :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_floor_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_floor_layers** = ``4294967295`` :ref:`🔗<class_CharacterBody3D_property_platform_floor_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_floor_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_floor_layers**\ (\ )

Слои столкновений, которые будут включены для обнаружения тел пола, которые будут действовать как движущиеся платформы, за которыми будет следовать **CharacterBody3D**. По умолчанию все тела пола обнаруживаются и распространяют свою скорость.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_on_leave:

.. rst-class:: classref-property

:ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **platform_on_leave** = ``0`` :ref:`🔗<class_CharacterBody3D_property_platform_on_leave>`

.. rst-class:: classref-property-setget

- |void| **set_platform_on_leave**\ (\ value\: :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>`\ )
- :ref:`PlatformOnLeave<enum_CharacterBody3D_PlatformOnLeave>` **get_platform_on_leave**\ (\ )

Устанавливает поведение, применяемое при покидании движущейся платформы. По умолчанию, для физической точности, при покидании применяется последняя скорость платформы.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_platform_wall_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **platform_wall_layers** = ``0`` :ref:`🔗<class_CharacterBody3D_property_platform_wall_layers>`

.. rst-class:: classref-property-setget

- |void| **set_platform_wall_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_platform_wall_layers**\ (\ )

Слои столкновений, которые будут включены для обнаружения тел стен, которые будут действовать как движущиеся платформы, за которыми будет следовать **CharacterBody3D**. По умолчанию все тела стен игнорируются.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_safe_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **safe_margin** = ``0.001`` :ref:`🔗<class_CharacterBody3D_property_safe_margin>`

.. rst-class:: classref-property-setget

- |void| **set_safe_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_safe_margin**\ (\ )

Дополнительный запас используется для восстановления столкновений при вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

Если тело находится как минимум на таком расстоянии от другого тела, оно будет считать их сталкивающимися и будет оттолкнуто перед выполнением фактического движения.

Более высокое значение означает большую гибкость для обнаружения столкновений, что помогает последовательно обнаруживать стены и полы.

Более низкое значение заставляет алгоритм столкновений использовать более точное обнаружение, поэтому его можно использовать в случаях, когда требуется особая точность, например, в очень низком масштабе, чтобы избежать видимого дрожания, или для стабильности со стопкой тел персонажей.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_slide_on_ceiling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **slide_on_ceiling** = ``true`` :ref:`🔗<class_CharacterBody3D_property_slide_on_ceiling>`

.. rst-class:: classref-property-setget

- |void| **set_slide_on_ceiling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_slide_on_ceiling_enabled**\ (\ )

Если ``true``, то при прыжке у потолка тело будет скользить, если ``false`` — остановится и упадет вертикально.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_up_direction:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **up_direction** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_CharacterBody3D_property_up_direction>`

.. rst-class:: classref-property-setget

- |void| **set_up_direction**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_up_direction**\ (\ )

Вектор, направленный вверх, используется для определения того, что является стеной, а что полом (или потолком) при вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. По умолчанию :ref:`Vector3.UP<class_Vector3_constant_UP>`. Поскольку вектор будет нормализован, он не может быть равен :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`, если вы хотите, чтобы все столкновения были зарегистрированы как стены, рассмотрите возможность использования :ref:`MOTION_MODE_FLOATING<class_CharacterBody3D_constant_MOTION_MODE_FLOATING>` в качестве :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_CharacterBody3D_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_velocity**\ (\ )

Current velocity vector (typically meters per second), used and modified during calls to :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

\ **Note:** A common mistake is setting this property to the desired velocity multiplied by ``delta``, which produces a motion vector (typically in meters).

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_property_wall_min_slide_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wall_min_slide_angle** = ``0.2617994`` :ref:`🔗<class_CharacterBody3D_property_wall_min_slide_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wall_min_slide_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wall_min_slide_angle**\ (\ )

Минимальный угол (в радианах), под которым тело может скользить при столкновении со стеной. Значение по умолчанию равно 15 градусам. Когда :ref:`motion_mode<class_CharacterBody3D_property_motion_mode>` равно :ref:`MOTION_MODE_GROUNDED<class_CharacterBody3D_constant_MOTION_MODE_GROUNDED>`, это влияет на движение только в том случае, если :ref:`floor_block_on_wall<class_CharacterBody3D_property_floor_block_on_wall>` равно ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_CharacterBody3D_method_apply_floor_snap:

.. rst-class:: classref-method

|void| **apply_floor_snap**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_apply_floor_snap>`

Позволяет вручную применить привязку к полу независимо от скорости тела. Эта функция ничего не делает, когда :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` возвращает ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_floor_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_floor_angle**\ (\ up_direction\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0)\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_floor_angle>`

Возвращает угол столкновения пола в последней точке столкновения в соответствии с ``up_direction``, который по умолчанию равен :ref:`Vector3.UP<class_Vector3_constant_UP>`. Это значение всегда положительно и действительно только после вызова :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` и когда :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` возвращает ``true``.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_floor_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_floor_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_floor_normal>`

Возвращает нормаль столкновения пола в последней точке столкновения. Действительно только после вызова :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` и когда :ref:`is_on_floor()<class_CharacterBody3D_method_is_on_floor>` возвращает ``true``.

\ **Предупреждение:** Нормаль столкновения не всегда совпадает с нормалью поверхности.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_last_motion:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_last_motion**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_last_motion>`

Возвращает последнее движение, примененное к **CharacterBody3D** во время последнего вызова :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Движение может быть разделено на несколько движений, когда происходит скольжение, и этот метод возвращает последнее, что полезно для получения текущего направления движения.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_last_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **get_last_slide_collision**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_get_last_slide_collision>`

Returns a :ref:`KinematicCollision3D<class_KinematicCollision3D>` if a collision occurred. The returned value contains information about the latest collision that occurred during the last call to :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Returns ``null`` if no collision occurred. See also :ref:`get_slide_collision()<class_CharacterBody3D_method_get_slide_collision>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_platform_angular_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_platform_angular_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_platform_angular_velocity>`

Возвращает угловую скорость платформы в последней точке столкновения. Действует только после вызова :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_platform_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_platform_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_platform_velocity>`

Возвращает линейную скорость платформы в последней точке столкновения. Действительно только после вызова :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_position_delta:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_position_delta**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_position_delta>`

Возвращает перемещение (дельту положения), произошедшее во время последнего вызова :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_real_velocity:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_real_velocity**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_real_velocity>`

Возвращает текущую реальную скорость с момента последнего вызова :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Например, когда вы поднимаетесь по склону, вы будете двигаться по диагонали, даже если скорость горизонтальная. Этот метод возвращает диагональное движение, в отличие от :ref:`velocity<class_CharacterBody3D_property_velocity>`, который возвращает запрошенную скорость.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_slide_collision:

.. rst-class:: classref-method

:ref:`KinematicCollision3D<class_KinematicCollision3D>` **get_slide_collision**\ (\ slide_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CharacterBody3D_method_get_slide_collision>`

Returns a :ref:`KinematicCollision3D<class_KinematicCollision3D>`, which contains information about a collision that occurred during the last call to :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. Since the body can collide several times in a single call to :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`, you must specify the index of the collision in the range 0 to (:ref:`get_slide_collision_count()<class_CharacterBody3D_method_get_slide_collision_count>` - 1). See also :ref:`get_last_slide_collision()<class_CharacterBody3D_method_get_last_slide_collision>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_slide_collision_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_slide_collision_count**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_slide_collision_count>`

Возвращает количество столкновений тела и изменение его направления во время последнего вызова :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_get_wall_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_wall_normal**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_get_wall_normal>`

Возвращает нормаль столкновения стены в последней точке столкновения. Действительно только после вызова :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>` и когда :ref:`is_on_wall()<class_CharacterBody3D_method_is_on_wall>` возвращает ``true``.

\ **Предупреждение:** Нормаль столкновения не всегда совпадает с нормалью поверхности.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_ceiling:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_ceiling>`

Возвращает ``true``, если тело столкнулось с потолком при последнем вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. В противном случае возвращает ``false``. :ref:`up_direction<class_CharacterBody3D_property_up_direction>` и :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` используются для определения того, является ли поверхность «потолком» или нет.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_ceiling_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_ceiling_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_ceiling_only>`

Возвращает ``true``, если тело столкнулось только с потолком при последнем вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. В противном случае возвращает ``false``. :ref:`up_direction<class_CharacterBody3D_property_up_direction>` и :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` используются для определения того, является ли поверхность «потолком» или нет.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_floor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_floor>`

Возвращает ``true``, если тело столкнулось с полом при последнем вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. В противном случае возвращает ``false``. :ref:`up_direction<class_CharacterBody3D_property_up_direction>` и :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` используются для определения того, является ли поверхность «полом» или нет.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_floor_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_floor_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_floor_only>`

Возвращает ``true``, если тело столкнулось только с полом при последнем вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. В противном случае возвращает ``false``. :ref:`up_direction<class_CharacterBody3D_property_up_direction>` и :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` используются для определения того, является ли поверхность «полом» или нет.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_wall:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_wall>`

Возвращает ``true``, если тело столкнулось со стеной при последнем вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. В противном случае возвращает ``false``. ``Member up_direction`` и :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` используются для определения того, является ли поверхность «стеной» или нет.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_is_on_wall_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_wall_only**\ (\ ) |const| :ref:`🔗<class_CharacterBody3D_method_is_on_wall_only>`

Возвращает ``true``, если тело столкнулось только со стеной при последнем вызове :ref:`move_and_slide()<class_CharacterBody3D_method_move_and_slide>`. В противном случае возвращает ``false``. ``Member up_direction`` и :ref:`floor_max_angle<class_CharacterBody3D_property_floor_max_angle>` используются для определения того, является ли поверхность «стеной» или нет.

.. rst-class:: classref-item-separator

----

.. _class_CharacterBody3D_method_move_and_slide:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **move_and_slide**\ (\ ) :ref:`🔗<class_CharacterBody3D_method_move_and_slide>`

Перемещает тело на основе :ref:`speed<class_CharacterBody3D_property_speed>`. При столкновении с другим телом оно будет скользить вдоль другого тела, а не останавливаться немедленно. В случие других тел — **CharacterBody3D** или :ref:`RigidBody3D<class_RigidBody3D>`, оно также будет подвержено влиянию движения другого тела. Это можно использовать для создания движущихся и вращающихся платформ, а также для того, чтобы узлы толкали другие узлы.

Этот метод следует использовать в :ref:`Node._physics_process()<class_Node_private_method__physics_process>` (или в методе, вызываемом :ref:`Node._physics_process()<class_Node_private_method__physics_process>`), так как он автоматически использует значение ``delta`` шага физики в расчётах. В противном случае моделирование будет выполняться с неверной скоростью.

Изменяет :ref:`velocity<class_CharacterBody3D_property_velocity>`, если произошло скользящее столкновение. Чтобы получить последнее столкновение, вызовите :ref:`get_last_slide_collision()<class_CharacterBody3D_method_get_last_slide_collision>`. Для получения более подробной информации о произошедших столкновениях используйте :ref:`get_slide_collision()<class_CharacterBody3D_method_get_slide_collision>`. 

При касании телом движущейся платформы скорость платформы автоматически добавляется к движению тела. Если столкновение происходит из-за движения платформы, оно всегда будет первым в списке столкновений при скольжении.

Возвращает ``true``, если тело столкнулось, в противном случае возвращает ``false``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
