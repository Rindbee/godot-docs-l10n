:github_url: hide

.. _class_SoftBody3D:

SoftBody3D
==========

**Успадковує:** :ref:`MeshInstance3D<class_MeshInstance3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Неформована 3D фізика сітки.

.. rst-class:: classref-introduction-group

Опис
--------

Деформована 3D-фізична сітка. Використовується для створення еластичних або деформованих об'єктів, таких як тканина, гума або інші гнучкі матеріали.

Крім того, **SoftBody3D** підлягає силам вітру, визначеним в :ref:`Area3D<class_Area3D>` (див. :ref:`Area3D.wind_source_path<class_Area3D_property_wind_source_path>`, :ref:`Area3D.wind_force_magnitude<class_Area3D_property_wind_force_magnitude>` та :ref:`Area3D.wind_attenuation_factor<class_Area3D_property_wind_attenuation_factor>`).

\ **Примітка:** Рекомендується використовувати Jolt Physics під час використання **SoftBody3D** замість GodotPhysics3D за замовчуванням, оскільки реалізація м'якого тіла в Jolt Physics є швидшою та надійнішою. Ви можете переключити фізичний движок за допомогою налаштування проекту :ref:`ProjectSettings.physics/3d/physics_engine<class_ProjectSettings_property_physics/3d/physics_engine>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`SoftBody <../tutorials/physics/soft_body>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`                 | ``1``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`                   | ``1``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`damping_coefficient<class_SoftBody3D_property_damping_coefficient>`         | ``0.01``         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`DisableMode<enum_SoftBody3D_DisableMode>` | :ref:`disable_mode<class_SoftBody3D_property_disable_mode>`                       | ``0``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`drag_coefficient<class_SoftBody3D_property_drag_coefficient>`               | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`linear_stiffness<class_SoftBody3D_property_linear_stiffness>`               | ``0.5``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`parent_collision_ignore<class_SoftBody3D_property_parent_collision_ignore>` | ``NodePath("")`` |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`pressure_coefficient<class_SoftBody3D_property_pressure_coefficient>`       | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`                         | :ref:`ray_pickable<class_SoftBody3D_property_ray_pickable>`                       | ``true``         |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`shrinking_factor<class_SoftBody3D_property_shrinking_factor>`               | ``0.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`                           | :ref:`simulation_precision<class_SoftBody3D_property_simulation_precision>`       | ``5``            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`                       | :ref:`total_mass<class_SoftBody3D_property_total_mass>`                           | ``1.0``          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`add_collision_exception_with<class_SoftBody3D_method_add_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                          |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_central_force<class_SoftBody3D_method_apply_central_force>`\ (\ force\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                     |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_central_impulse<class_SoftBody3D_method_apply_central_impulse>`\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                               |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_force<class_SoftBody3D_method_apply_force>`\ (\ point_index\: :ref:`int<class_int>`, force\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`apply_impulse<class_SoftBody3D_method_apply_impulse>`\ (\ point_index\: :ref:`int<class_int>`, impulse\: :ref:`Vector3<class_Vector3>`\ )                                                                                                          |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] | :ref:`get_collision_exceptions<class_SoftBody3D_method_get_collision_exceptions>`\ (\ )                                                                                                                                                                  |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_collision_layer_value<class_SoftBody3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`get_collision_mask_value<class_SoftBody3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                                                                                    |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                                  | :ref:`get_physics_rid<class_SoftBody3D_method_get_physics_rid>`\ (\ ) |const|                                                                                                                                                                            |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                          | :ref:`get_point_transform<class_SoftBody3D_method_get_point_transform>`\ (\ point_index\: :ref:`int<class_int>`\ )                                                                                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                | :ref:`is_point_pinned<class_SoftBody3D_method_is_point_pinned>`\ (\ point_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`remove_collision_exception_with<class_SoftBody3D_method_remove_collision_exception_with>`\ (\ body\: :ref:`Node<class_Node>`\ )                                                                                                                    |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_collision_layer_value<class_SoftBody3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                         |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_collision_mask_value<class_SoftBody3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                                                                                           |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                 | :ref:`set_point_pinned<class_SoftBody3D_method_set_point_pinned>`\ (\ point_index\: :ref:`int<class_int>`, pinned\: :ref:`bool<class_bool>`, attachment_path\: :ref:`NodePath<class_NodePath>` = NodePath(""), insert_at\: :ref:`int<class_int>` = -1\ ) |
   +------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_SoftBody3D_DisableMode:

.. rst-class:: classref-enumeration

enum **DisableMode**: :ref:`🔗<enum_SoftBody3D_DisableMode>`

.. _class_SoftBody3D_constant_DISABLE_MODE_REMOVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **DISABLE_MODE_REMOVE** = ``0``

Коли :ref:`Node.process_mode<class_Node_property_process_mode>` встановлюється на :ref:`Node. PROCESS_MODE_DISABLED<class_Node_constant_ PROCESS_MODE_DISABLED>`, видаліть з фізичного моделювання, щоб зупинити всі фізичні взаємодії з цим **SoftBody3D**.

Автоматично відреаговано на фізичну імітацію при обробці :ref:`Node<class_Node>`.

.. _class_SoftBody3D_constant_DISABLE_MODE_KEEP_ACTIVE:

.. rst-class:: classref-enumeration-constant

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **DISABLE_MODE_KEEP_ACTIVE** = ``1``

Коли :ref:`Node.process_mode<class_Node_property_process_mode>` встановлюється на :ref:`Node. PROCESS_MODE_DISABLED<class_Node_constant_ PROCESS_MODE_DISABLED>`, не впливає на фізичне моделювання.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SoftBody3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_SoftBody3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Фізика шарів цього SoftBody3D **is in **. Об'єкти Collision можуть існувати в одному або декількох 32 різних шарів. Дивись також :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`.

\ **Примітка:** Об'єкт A може виявити контакт з об'єктом B тільки якщо об'єкт B знаходиться в будь-якому з шарів, які об'єкт A сканування. Див. `Коллізійні шари та маски <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документації для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_SoftBody3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Фізика шарів цього SoftBody3D **scans**. Об'єкти Collision можуть відсканувати один або більше 32 різних шарів. Дивись також :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`.

\ **Примітка:** Об'єкт A може виявити контакт з об'єктом B тільки якщо об'єкт B знаходиться в будь-якому з шарів, які об'єкт A сканування. Див. `Коллізійні шари та маски <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документації для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_damping_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **damping_coefficient** = ``0.01`` :ref:`🔗<class_SoftBody3D_property_damping_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_damping_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_damping_coefficient**\ (\ )

Коефіцієнт пошкодження тіла. Більш помітно уповільнить тіло при нанесенні сил.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_disable_mode:

.. rst-class:: classref-property

:ref:`DisableMode<enum_SoftBody3D_DisableMode>` **disable_mode** = ``0`` :ref:`🔗<class_SoftBody3D_property_disable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_disable_mode**\ (\ value\: :ref:`DisableMode<enum_SoftBody3D_DisableMode>`\ )
- :ref:`DisableMode<enum_SoftBody3D_DisableMode>` **get_disable_mode**\ (\ )

Визначає поведінку у фізиці, коли :ref:`Node.process_mode<class_Node_property_process_mode>` встановлено на :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_drag_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_coefficient** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_drag_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_drag_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_coefficient**\ (\ )

Коефіцієнт перетягування тіла. Вищі значення підвищують опір повітря цього тіла.

\ **Примітка:** Це значення в даний час невикористане впровадження фізики Godot.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_linear_stiffness:

.. rst-class:: classref-property

:ref:`float<class_float>` **linear_stiffness** = ``0.5`` :ref:`🔗<class_SoftBody3D_property_linear_stiffness>`

.. rst-class:: classref-property-setget

- |void| **set_linear_stiffness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_linear_stiffness**\ (\ )

Більшість значень призведе до жорсткого тіла, при цьому менші значення підвищать здатність тіла до вигину. Значення може бути між ``0.0`` та ``1.0`` (включаючи).

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_parent_collision_ignore:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **parent_collision_ignore** = ``NodePath("")`` :ref:`🔗<class_SoftBody3D_property_parent_collision_ignore>`

.. rst-class:: classref-property-setget

- |void| **set_parent_collision_ignore**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_parent_collision_ignore**\ (\ )

:ref:`NodePath<class_NodePath>` до :ref:`CollisionObject3D<class_CollisionObject3D>` цей SoftBody3D повинен уникнути затискання.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_pressure_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure_coefficient** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_pressure_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_pressure_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure_coefficient**\ (\ )

Коефіцієнт тиску цього м'якого тіла. Симуляційне нарощування тиску зсередини цього тіла. Вищі значення підвищують міцність даного ефекту.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_ray_pickable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ray_pickable** = ``true`` :ref:`🔗<class_SoftBody3D_property_ray_pickable>`

.. rst-class:: classref-property-setget

- |void| **set_ray_pickable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ray_pickable**\ (\ )

``true``, **SoftBody3D** відповідатиме :ref:`RayCast3D<class_RayCast3D>`.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_shrinking_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **shrinking_factor** = ``0.0`` :ref:`🔗<class_SoftBody3D_property_shrinking_factor>`

.. rst-class:: classref-property-setget

- |void| **set_shrinking_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shrinking_factor**\ (\ )

Масштабує решту довжин обмежень ребер **SoftBody3D**. Додатні значення зменшують сітку, а від’ємні – розширюють. Наприклад, значення ``0.1`` скорочує ребра сітки на 10%, тоді як ``-0.1`` розширює ребра на 10%.

\ **Примітка:** :ref:`shrinking_factor<class_SoftBody3D_property_shrinking_factor>` найкраще використовувати на поверхневих сітках із закріпленими точками.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_simulation_precision:

.. rst-class:: classref-property

:ref:`int<class_int>` **simulation_precision** = ``5`` :ref:`🔗<class_SoftBody3D_property_simulation_precision>`

.. rst-class:: classref-property-setget

- |void| **set_simulation_precision**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_simulation_precision**\ (\ )

Збільшення цього значення покращить отримане моделювання, але може вплинути на продуктивність. Використовуйте з обережністю.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_property_total_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **total_mass** = ``1.0`` :ref:`🔗<class_SoftBody3D_property_total_mass>`

.. rst-class:: classref-property-setget

- |void| **set_total_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_total_mass**\ (\ )

Маса SoftBody3D.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SoftBody3D_method_add_collision_exception_with:

.. rst-class:: classref-method

|void| **add_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SoftBody3D_method_add_collision_exception_with>`

Додати тіло до переліку тіл, які це тіло не може поєднуватися з.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_central_force:

.. rst-class:: classref-method

|void| **apply_central_force**\ (\ force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_central_force>`

Розподіляє та застосовує силу до всіх точок. Сила залежить від часу та призначена для застосування під час кожного оновлення фізики.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_central_impulse:

.. rst-class:: classref-method

|void| **apply_central_impulse**\ (\ impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_central_impulse>`

Розподіляє та застосовує імпульс до всіх точок.

Імпульс не залежить від часу! Застосування імпульсу кожного кадру призведе до сили, що залежить від частоти кадрів. З цієї причини його слід використовувати лише під час моделювання одноразових ударів (в іншому випадку використовуйте функції "_force").

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_force:

.. rst-class:: classref-method

|void| **apply_force**\ (\ point_index\: :ref:`int<class_int>`, force\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_force>`

Прикладає силу до точки. Сила залежить від часу та має застосовуватися під час кожного оновлення фізики.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_apply_impulse:

.. rst-class:: classref-method

|void| **apply_impulse**\ (\ point_index\: :ref:`int<class_int>`, impulse\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_SoftBody3D_method_apply_impulse>`

Застосовує імпульс до точки.

Імпульс не залежить від часу! Застосування імпульсу кожного кадру призведе до сили, що залежить від частоти кадрів. З цієї причини його слід використовувати лише під час моделювання одноразових ударів (в іншому випадку використовуйте функції "_force").

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_exceptions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PhysicsBody3D<class_PhysicsBody3D>`\] **get_collision_exceptions**\ (\ ) :ref:`🔗<class_SoftBody3D_method_get_collision_exceptions>`

Повертає масив вузлів, які були додані як виключення зіткнення для цього тіла.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_collision_layer_value>`

Повертаємо, чи не вказаний шар :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`, враховуючи ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_collision_mask_value>`

Повертаємо, чи не вказаний шар :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`, враховуючи ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_physics_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_physics_rid**\ (\ ) |const| :ref:`🔗<class_SoftBody3D_method_get_physics_rid>`

Повертаємо внутрішній :ref:`RID<class_RID>`, який використовується :ref:`PhysicsServer3D<class_PhysicsServer3D>` для цього тіла.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_get_point_transform:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_transform**\ (\ point_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SoftBody3D_method_get_point_transform>`

Повертає локальний переклад вершини в масиві поверхні.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_is_point_pinned:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_pinned**\ (\ point_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SoftBody3D_method_is_point_pinned>`

Повертаємо ``true``, якщо вершина встановлена для шпильки.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_remove_collision_exception_with:

.. rst-class:: classref-method

|void| **remove_collision_exception_with**\ (\ body\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SoftBody3D_method_remove_collision_exception_with>`

Видаліть тіло з переліку тіл, які це тіло не може зв'язатися з.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SoftBody3D_method_set_collision_layer_value>`

На основі ``value``, умикає чи вимикає зазначений шар в :ref:`collision_layer<class_SoftBody3D_property_collision_layer>`, для ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SoftBody3D_method_set_collision_mask_value>`

На основі ``value``, умикає чи вимикає зазначений шар в :ref:`collision_mask<class_SoftBody3D_property_collision_mask>`, для ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_SoftBody3D_method_set_point_pinned:

.. rst-class:: classref-method

|void| **set_point_pinned**\ (\ point_index\: :ref:`int<class_int>`, pinned\: :ref:`bool<class_bool>`, attachment_path\: :ref:`NodePath<class_NodePath>` = NodePath(""), insert_at\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SoftBody3D_method_set_point_pinned>`

Встановлює пінений стан поверхневої вершини. При налаштуванні до ``true``, за бажанням ``пам'ять вкладення_path`` може визначити :ref:`Node3D<class_Node3D>` прикріплену вершину.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
