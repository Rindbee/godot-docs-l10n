:github_url: hide

.. meta::
	:keywords: ragdoll

.. _class_PhysicalBone3D:

PhysicalBone3D
==============

**Наследует:** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Физическое тело, используемое для того, чтобы кости в :ref:`Skeleton3D<class_Skeleton3D>` реагировали на физику.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел **PhysicalBone3D** — это физическое тело, которое можно использовать для того, чтобы кости в :ref:`Skeleton3D<class_Skeleton3D>` реагировали на физику.

\ **Примечание:** Для обнаружения физических костей с помощью raycasts свойство :ref:`SkeletonModifier3D.active<class_SkeletonModifier3D_property_active>` родительского :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>` должно быть ``true``, а кость :ref:`Skeleton3D<class_Skeleton3D>` должна быть правильно назначена **PhysicalBone3D**; это означает, что :ref:`get_bone_id()<class_PhysicalBone3D_method_get_bone_id>` должен возвращать действительный идентификатор (``>= 0``).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Ragdoll System <../tutorials/physics/ragdoll_system>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>`           | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`DampMode<enum_PhysicalBone3D_DampMode>`   | :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>` | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`angular_velocity<class_PhysicalBone3D_property_angular_velocity>`   | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`body_offset<class_PhysicalBone3D_property_body_offset>`             | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`bounce<class_PhysicalBone3D_property_bounce>`                       | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`can_sleep<class_PhysicalBone3D_property_can_sleep>`                 | ``true``                                            |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`custom_integrator<class_PhysicalBone3D_property_custom_integrator>` | ``false``                                           |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`friction<class_PhysicalBone3D_property_friction>`                   | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`gravity_scale<class_PhysicalBone3D_property_gravity_scale>`         | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`           | :ref:`joint_offset<class_PhysicalBone3D_property_joint_offset>`           | ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`joint_rotation<class_PhysicalBone3D_property_joint_rotation>`       | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`JointType<enum_PhysicalBone3D_JointType>` | :ref:`joint_type<class_PhysicalBone3D_property_joint_type>`               | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>`             | ``0.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`DampMode<enum_PhysicalBone3D_DampMode>`   | :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>`   | ``0``                                               |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                   | :ref:`linear_velocity<class_PhysicalBone3D_property_linear_velocity>`     | ``Vector3(0, 0, 0)``                                |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+
   | :ref:`float<class_float>`                       | :ref:`mass<class_PhysicalBone3D_property_mass>`                           | ``1.0``                                             |
   +-------------------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`_integrate_forces<class_PhysicalBone3D_private_method__integrate_forces>`\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual|    |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`apply_central_impulse<class_PhysicalBone3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`apply_impulse<class_PhysicalBone3D_method_apply_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_bone_id<class_PhysicalBone3D_method_get_bone_id>`\ (\ ) |const|                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_simulate_physics<class_PhysicalBone3D_method_get_simulate_physics>`\ (\ )                                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_simulating_physics<class_PhysicalBone3D_method_is_simulating_physics>`\ (\ )                                                                                       |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_PhysicalBone3D_DampMode:

.. rst-class:: classref-enumeration

enum **DampMode**: :ref:`🔗<enum_PhysicalBone3D_DampMode>`

.. _class_PhysicalBone3D_constant_DAMP_MODE_COMBINE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **DAMP_MODE_COMBINE** = ``0``

В этом режиме значение демпфирования тела добавляется к любому значению, заданному в областях, или к значению по умолчанию.

.. _class_PhysicalBone3D_constant_DAMP_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **DAMP_MODE_REPLACE** = ``1``

В этом режиме значение демпфирования тела заменяет любое значение, заданное в областях, или значение по умолчанию.

.. rst-class:: classref-item-separator

----

.. _enum_PhysicalBone3D_JointType:

.. rst-class:: classref-enumeration

enum **JointType**: :ref:`🔗<enum_PhysicalBone3D_JointType>`

.. _class_PhysicalBone3D_constant_JOINT_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_NONE** = ``0``

К PhysicsBone3D не применяется ни одного сочленения.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_PIN:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_PIN** = ``1``

К PhysicsBone3D применено штифтовое соединение.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_CONE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_CONE** = ``2``

К PhysicsBone3D применено коническое соединение.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_HINGE:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_HINGE** = ``3``

К PhysicsBone3D применено шарнирное соединение.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_SLIDER:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_SLIDER** = ``4``

К PhysicsBone3D применено скользящее соединение.

.. _class_PhysicalBone3D_constant_JOINT_TYPE_6DOF:

.. rst-class:: classref-enumeration-constant

:ref:`JointType<enum_PhysicalBone3D_JointType>` **JOINT_TYPE_6DOF** = ``5``

К PhysicsBone3D применено соединение с 6 степенями свободы.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PhysicalBone3D_property_angular_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **angular_damp** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_angular_damp>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_angular_damp**\ (\ )

Демпфирует вращение тела. По умолчанию тело будет использовать настройку проекта :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>` или любое переопределение значения, заданное :ref:`Area3D<class_Area3D>`, в котором находится тело. В зависимости от :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>` вы можете задать :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>` для добавления или замены значения демпфирования тела.

Подробнее о демпфировании см. в :ref:`ProjectSettings.physics/3d/default_angular_damp<class_ProjectSettings_property_physics/3d/default_angular_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_angular_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **angular_damp_mode** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_angular_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_angular_damp_mode**\ (\ value\: :ref:`DampMode<enum_PhysicalBone3D_DampMode>`\ )
- :ref:`DampMode<enum_PhysicalBone3D_DampMode>` **get_angular_damp_mode**\ (\ )

Определяет, как применяется :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

Скорость вращения PhysicalBone3D в *радианах* в секунду.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_body_offset:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **body_offset** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_body_offset>`

.. rst-class:: classref-property-setget

- |void| **set_body_offset**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_body_offset**\ (\ )

Устанавливает трансформацию тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_bounce:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_bounce>`

.. rst-class:: classref-property-setget

- |void| **set_bounce**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce**\ (\ )

Упругость тела. Значения варьируются от ``0`` (без отскока) до ``1`` (полная упругость).

\ **Примечание:** Даже если :ref:`bounce<class_PhysicalBone3D_property_bounce>` установлен на ``1.0``, часть энергии будет потеряна со временем из-за линейного и углового затухания. Чтобы иметь **PhysicalBone3D**, который сохраняет всю свою энергию с течением времени, установите :ref:`bounce<class_PhysicalBone3D_property_bounce>` на ``1.0``, :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>` на :ref:`DAMP_MODE_REPLACE<class_PhysicalBone3D_constant_DAMP_MODE_REPLACE>`, :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>` на ``0.0``, :ref:`angular_damp_mode<class_PhysicalBone3D_property_angular_damp_mode>` на :ref:`DAMP_MODE_REPLACE<class_PhysicalBone3D_constant_DAMP_MODE_REPLACE>` и :ref:`angular_damp<class_PhysicalBone3D_property_angular_damp>` на ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_can_sleep:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_sleep** = ``true`` :ref:`🔗<class_PhysicalBone3D_property_can_sleep>`

.. rst-class:: classref-property-setget

- |void| **set_can_sleep**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_able_to_sleep**\ (\ )

Если ``true``, тело деактивируется при отсутствии движения, поэтому оно не будет участвовать в симуляции, пока не будет разбужено внешней силой.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_custom_integrator:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **custom_integrator** = ``false`` :ref:`🔗<class_PhysicalBone3D_property_custom_integrator>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_integrator**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_integrator**\ (\ )

Если ``true``, стандартная интеграция силы (например, гравитация или демпфирование) будет отключена для этого тела. За исключением реакции на столкновение, тело будет двигаться только так, как определено методом :ref:`_integrate_forces()<class_PhysicalBone3D_private_method__integrate_forces>`, если этот виртуальный метод переопределен.

Установка этого свойства вызовет метод :ref:`PhysicsServer3D.body_set_omit_force_integration()<class_PhysicsServer3D_method_body_set_omit_force_integration>` внутренне.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_friction:

.. rst-class:: classref-property

:ref:`float<class_float>` **friction** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_friction>`

.. rst-class:: classref-property-setget

- |void| **set_friction**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction**\ (\ )

Трение тела от ``0`` (отсутствие трения) до ``1`` (максимальное трение).

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_gravity_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gravity_scale** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_gravity_scale>`

.. rst-class:: classref-property-setget

- |void| **set_gravity_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gravity_scale**\ (\ )

Это умножается на :ref:`ProjectSettings.physics/3d/default_gravity<class_ProjectSettings_property_physics/3d/default_gravity>`, чтобы получить гравитацию этого тела. Например, значение ``1.0`` применит нормальную гравитацию, ``2.0`` применит двойную гравитацию, а ``0.5`` применит половину гравитации к этому телу.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_offset:

.. rst-class:: classref-property

:ref:`Transform3D<class_Transform3D>` **joint_offset** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_joint_offset>`

.. rst-class:: classref-property-setget

- |void| **set_joint_offset**\ (\ value\: :ref:`Transform3D<class_Transform3D>`\ )
- :ref:`Transform3D<class_Transform3D>` **get_joint_offset**\ (\ )

Устанавливает преобразование сочленения.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_rotation:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **joint_rotation** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_joint_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_joint_rotation**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_joint_rotation**\ (\ )

Задает угол поворота сочленения в радианах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_joint_type:

.. rst-class:: classref-property

:ref:`JointType<enum_PhysicalBone3D_JointType>` **joint_type** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_joint_type>`

.. rst-class:: classref-property-setget

- |void| **set_joint_type**\ (\ value\: :ref:`JointType<enum_PhysicalBone3D_JointType>`\ )
- :ref:`JointType<enum_PhysicalBone3D_JointType>` **get_joint_type**\ (\ )

Устанавливает тип соединения.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_damp:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_damp** = ``0.0`` :ref:`🔗<class_PhysicalBone3D_property_linear_damp>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_damp**\ (\ )

Демпфирует движение тела. По умолчанию тело будет использовать :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>` или любое переопределение значения, заданное :ref:`Area3D<class_Area3D>`, в котором находится тело. В зависимости от :ref:`linear_damp_mode<class_PhysicalBone3D_property_linear_damp_mode>`, :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>` может быть добавлен или заменен значением демпфирования тела.

Подробнее о демпфировании см. :ref:`ProjectSettings.physics/3d/default_linear_damp<class_ProjectSettings_property_physics/3d/default_linear_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_damp_mode:

.. rst-class:: classref-property

:ref:`DampMode<enum_PhysicalBone3D_DampMode>` **linear_damp_mode** = ``0`` :ref:`🔗<class_PhysicalBone3D_property_linear_damp_mode>`

.. rst-class:: classref-property-setget

- |void| **set_linear_damp_mode**\ (\ value\: :ref:`DampMode<enum_PhysicalBone3D_DampMode>`\ )
- :ref:`DampMode<enum_PhysicalBone3D_DampMode>` **get_linear_damp_mode**\ (\ )

Определяет, как применяется :ref:`linear_damp<class_PhysicalBone3D_property_linear_damp>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_PhysicalBone3D_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

Линейная скорость тела в единицах в секунду. Может использоваться спорадически, но **не устанавливайте это в каждом кадре**, потому что физика может работать в другом потоке и работать с другой гранулярностью. Используйте :ref:`_integrate_forces()<class_PhysicalBone3D_private_method__integrate_forces>` в качестве цикла процесса для точного управления состоянием тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_PhysicalBone3D_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

Масса тела.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PhysicalBone3D_private_method__integrate_forces:

.. rst-class:: classref-method

|void| **_integrate_forces**\ (\ state\: :ref:`PhysicsDirectBodyState3D<class_PhysicsDirectBodyState3D>`\ ) |virtual| :ref:`🔗<class_PhysicalBone3D_private_method__integrate_forces>`

Вызывается во время обработки физики, позволяя вам читать и безопасно изменять состояние симуляции для объекта. По умолчанию он вызывается перед стандартной интеграцией силы, но свойство :ref:`custom_integrator<class_PhysicalBone3D_property_custom_integrator>` позволяет вам отключить стандартную интеграцию силы и выполнить полностью настраиваемую интеграцию силы для тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_PhysicalBone3D_method_apply_central_impulse>`

Применяет направленный импульс, не влияя на вращение.

Импульс не зависит от времени! Применение импульса в каждом кадре приведет к силе, зависящей от частоты кадров. По этой причине его следует использовать только при моделировании одноразовых ударов (в противном случае используйте функции "_integrate_forces").

Это эквивалентно использованию :ref:`apply_impulse()<class_PhysicalBone3D_method_apply_impulse>` в центре масс тела.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`, position\: :ref:`Vector3<class_Vector3>` = Vector3(0, 0, 0)\ ) :ref:`🔗<class_PhysicalBone3D_method_apply_impulse>`

Применяет позиционированный импульс к PhysicsBone3D.

Импульс не зависит от времени! Применение импульса в каждом кадре приведет к силе, зависящей от частоты кадров. По этой причине его следует использовать только при моделировании одноразовых ударов (в противном случае используйте функции "_integrate_forces").

\ ``position`` — это смещение от начала координат PhysicsBone3D в глобальных координатах.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_get_bone_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bone_id**\ (\ ) |const| :ref:`🔗<class_PhysicalBone3D_method_get_bone_id>`

Возвращает уникальный идентификатор PhysicsBone3D.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_get_simulate_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_simulate_physics**\ (\ ) :ref:`🔗<class_PhysicalBone3D_method_get_simulate_physics>`

Возвращает ``true``, если PhysicsBone3D разрешено моделировать физику.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone3D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) :ref:`🔗<class_PhysicalBone3D_method_is_simulating_physics>`

Возвращает ``true``, если PhysicsBone3D в данный момент моделирует физику.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
