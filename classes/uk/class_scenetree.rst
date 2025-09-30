:github_url: hide

.. _class_SceneTree:

SceneTree
=========

**Успадковує:** :ref:`MainLoop<class_MainLoop>` **<** :ref:`Object<class_Object>`

Управління ігровою петлею через ієрархію вузлів.

.. rst-class:: classref-introduction-group

Опис
--------

Як один з найважливіших класів, **SceneTree** керує ієрархією вершин на сцені, а також своїми сценами. Ноди можна додавати, зануритися і видалити. Уся сцена дерево (і таким чином, поточна сцена) може бути використана. Сцени можуть бути завантажені, перевантажені і перезавантажені.

Ви також можете використовувати **SceneTree** для організації вузлів в **групи**: Кожна вершина може бути додана в стільки груп, як ви хочете створити, наприклад, групу "неемі". Ви можете потім ітерувати ці групи або навіть викликати методи і встановити властивості на всі вузли, що належать до будь-якої даної групи.

\ **SceneTree** є за замовчуванням :ref:`MainLoop<class_MainLoop>` впровадження, що використовується двигуном, і, таким чином, заряджається ігровою петлею.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Дерево Сцен <../tutorials/scripting/scene_tree>`

- :doc:`Кілька роздільних здатностей <../tutorials/rendering/multiple_resolutions>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`auto_accept_quit<class_SceneTree_property_auto_accept_quit>`           | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Node<class_Node>`     | :ref:`current_scene<class_SceneTree_property_current_scene>`                 |           |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>` | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`debug_paths_hint<class_SceneTree_property_debug_paths_hint>`           | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Node<class_Node>`     | :ref:`edited_scene_root<class_SceneTree_property_edited_scene_root>`         |           |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`multiplayer_poll<class_SceneTree_property_multiplayer_poll>`           | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`paused<class_SceneTree_property_paused>`                               | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`physics_interpolation<class_SceneTree_property_physics_interpolation>` | ``false`` |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`quit_on_go_back<class_SceneTree_property_quit_on_go_back>`             | ``true``  |
   +-----------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Window<class_Window>` | :ref:`root<class_SceneTree_property_root>`                                   |           |
   +-----------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`call_group<class_SceneTree_method_call_group>`\ (\ group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                                                              |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`call_group_flags<class_SceneTree_method_call_group_flags>`\ (\ flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg|                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`change_scene_to_file<class_SceneTree_method_change_scene_to_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                                               |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`change_scene_to_packed<class_SceneTree_method_change_scene_to_packed>`\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`\ )                                                                                                                         |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneTreeTimer<class_SceneTreeTimer>`            | :ref:`create_timer<class_SceneTree_method_create_timer>`\ (\ time_sec\: :ref:`float<class_float>`, process_always\: :ref:`bool<class_bool>` = true, process_in_physics\: :ref:`bool<class_bool>` = false, ignore_time_scale\: :ref:`bool<class_bool>` = false\ ) |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Tween<class_Tween>`                              | :ref:`create_tween<class_SceneTree_method_create_tween>`\ (\ )                                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                | :ref:`get_first_node_in_group<class_SceneTree_method_get_first_node_in_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ )                                                                                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_frame<class_SceneTree_method_get_frame>`\ (\ ) |const|                                                                                                                                                                                                 |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MultiplayerAPI<class_MultiplayerAPI>`            | :ref:`get_multiplayer<class_SceneTree_method_get_multiplayer>`\ (\ for_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) |const|                                                                                                                          |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_node_count<class_SceneTree_method_get_node_count>`\ (\ ) |const|                                                                                                                                                                                       |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_node_count_in_group<class_SceneTree_method_get_node_count_in_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                        |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\]   | :ref:`get_nodes_in_group<class_SceneTree_method_get_nodes_in_group>`\ (\ group\: :ref:`StringName<class_StringName>`\ )                                                                                                                                          |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Tween<class_Tween>`\] | :ref:`get_processed_tweens<class_SceneTree_method_get_processed_tweens>`\ (\ )                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`has_group<class_SceneTree_method_has_group>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                     |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_accessibility_enabled<class_SceneTree_method_is_accessibility_enabled>`\ (\ ) |const|                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`is_accessibility_supported<class_SceneTree_method_is_accessibility_supported>`\ (\ ) |const|                                                                                                                                                               |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`notify_group<class_SceneTree_method_notify_group>`\ (\ group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ )                                                                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`notify_group_flags<class_SceneTree_method_notify_group_flags>`\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ )                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`queue_delete<class_SceneTree_method_queue_delete>`\ (\ obj\: :ref:`Object<class_Object>`\ )                                                                                                                                                                |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`quit<class_SceneTree_method_quit>`\ (\ exit_code\: :ref:`int<class_int>` = 0\ )                                                                                                                                                                            |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                  | :ref:`reload_current_scene<class_SceneTree_method_reload_current_scene>`\ (\ )                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_group<class_SceneTree_method_set_group>`\ (\ group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                             |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_group_flags<class_SceneTree_method_set_group_flags>`\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                             |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`set_multiplayer<class_SceneTree_method_set_multiplayer>`\ (\ multiplayer\: :ref:`MultiplayerAPI<class_MultiplayerAPI>`, root_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ )                                                                      |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                 | :ref:`unload_current_scene<class_SceneTree_method_unload_current_scene>`\ (\ )                                                                                                                                                                                   |
   +--------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_SceneTree_signal_node_added:

.. rst-class:: classref-signal

**node_added**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_added>`

Викликається при вході ``node`` до дерева.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_configuration_warning_changed:

.. rst-class:: classref-signal

**node_configuration_warning_changed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_configuration_warning_changed>`

Увімкнено, коли ``node`` :ref:`Node.update_configuration_warning_warnings()<class_Node_method_update_configuration_warning_warnings>`. Тільки вказаний в редакторі редактор.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_removed:

.. rst-class:: classref-signal

**node_removed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_removed>`

Увімкнено, коли ``node`` виходить це дерево.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_renamed:

.. rst-class:: classref-signal

**node_renamed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_renamed>`

Викликається, коли змінюється :ref:`Node.name<class_Node_property_name>` вузла ``node``.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_physics_frame:

.. rst-class:: classref-signal

**physics_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_physics_frame>`

Викликається безпосередньо перед викликом методу :ref:`Node._physics_process()<class_Node_private_method__physics_process>` на кожному вузлі цього дерева.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_process_frame:

.. rst-class:: classref-signal

**process_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_process_frame>`

Випробувано безпосередньо перед :ref:`Node._process()<class_Node_private_method__process>` на кожному вершині в цьому дереві.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_scene_changed:

.. rst-class:: classref-signal

**scene_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_scene_changed>`

Викликається після додавання нової сцени до дерева сцен та її ініціалізації. Може використовуватися для надійного доступу до :ref:`current_scene<class_SceneTree_property_current_scene>` під час зміни сцен.

::

    # Цей код має бути всередині автозавантаження.
    get_tree().change_scene_to_file(other_scene_path)
    await get_tree().scene_changed
    print(get_tree().current_scene) # Друкує нову сцену.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_changed:

.. rst-class:: classref-signal

**tree_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_changed>`

Випробувано будь-який час ієрархії дерева (повідомлення, перейменування тощо).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_process_mode_changed:

.. rst-class:: classref-signal

**tree_process_mode_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_process_mode_changed>`

Випробувано при зміні ``пам'яті Node.process_mode`` будь-якого вузла всередині дерева. Тільки вказаний в редакторі, для оновлення видимості відключених вузлів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_SceneTree_GroupCallFlags:

.. rst-class:: classref-enumeration

enum **GroupCallFlags**: :ref:`🔗<enum_SceneTree_GroupCallFlags>`

.. _class_SceneTree_constant_GROUP_CALL_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFAULT** = ``0``

Дзвоните до вершини в групі без особливої поведінки (default).

.. _class_SceneTree_constant_GROUP_CALL_REVERSE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_REVERSE** = ``1``

Дзвоните до вершини в групі в зворотному дереві ієрархії порядку (всіх дітей називаються перед їх відповідними материнськими вершинами).

.. _class_SceneTree_constant_GROUP_CALL_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFERRED** = ``2``

Дзвоните до вершини в групі в кінці поточного кадру (може бути або процесом або фізичним каркасом), схожим на :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. _class_SceneTree_constant_GROUP_CALL_UNIQUE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_UNIQUE** = ``4``

Дзвоните до вершини в групі тільки один раз, навіть якщо виклик виконується багато разів в одному кадрі. Поєднуватися з :ref:`GROUP_CALL_DEFERRED<class_SceneTree_constant_GROUP_CALL_DEFERRED>` для роботи.

\ **Note:** Різні аргументи не враховуються. Таким чином, коли той самий виклик виконується з різними аргументами, буде виконуватися тільки перший дзвінок.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_SceneTree_property_auto_accept_quit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_accept_quit** = ``true`` :ref:`🔗<class_SceneTree_property_auto_accept_quit>`

.. rst-class:: classref-property-setget

- |void| **set_auto_accept_quit**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_accept_quit**\ (\ )

Якщо ``true``, програма автоматично приймає запити на вихід.

Для мобільних платформ див. :ref:`quit_on_go_back<class_SceneTree_property_quit_on_go_back>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_current_scene:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **current_scene** :ref:`🔗<class_SceneTree_property_current_scene>`

.. rst-class:: classref-property-setget

- |void| **set_current_scene**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_current_scene**\ (\ )

Кореневий вузол поточної завантаженої головної сцени, зазвичай як прямий дочірній вузол :ref:`root<class_SceneTree_property_root>`. Див. також :ref:`change_scene_to_file()<class_SceneTree_method_change_scene_to_file>`, :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>` та :ref:`reload_current_scene()<class_SceneTree_method_reload_current_scene>`.

\ **Попередження:** Безпосереднє встановлення цієї властивості може працювати неналежним чином, оскільки воно *не* додає та не видаляє жодних вузлів з цього дерева.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_collisions_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_collisions_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_collisions_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_collisions_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_collisions_hint**\ (\ )

Якщо значення ``true``, форми зіткнень будуть видимими під час запуску гри з редактора для цілей налагодження.

\ **Примітка:** Цю властивість не призначено для зміни під час виконання. Зміна значення :ref:`debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` під час роботи проєкту не матиме бажаного ефекту.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_navigation_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_navigation_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_navigation_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_navigation_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_navigation_hint**\ (\ )

Якщо значення ``true``, полігони навігації будуть видимими під час запуску гри з редактора для цілей налагодження.

\ **Примітка:** Цю властивість не призначено для зміни під час виконання. Зміна значення :ref:`debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>` під час роботи проєкту не матиме бажаного ефекту.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_paths_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_paths_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_paths_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_paths_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_paths_hint**\ (\ )

Якщо значення ``true``, криві з вузлів :ref:`Path2D<class_Path2D>` та :ref:`Path3D<class_Path3D>` будуть видимі під час запуску гри з редактора для цілей налагодження.

\ **Примітка:** Цю властивість не призначено для зміни під час виконання. Зміна значення :ref:`debug_paths_hint<class_SceneTree_property_debug_paths_hint>` під час роботи проєкту не матиме бажаного ефекту.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_edited_scene_root:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **edited_scene_root** :ref:`🔗<class_SceneTree_property_edited_scene_root>`

.. rst-class:: classref-property-setget

- |void| **set_edited_scene_root**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_edited_scene_root**\ (\ )

Корінь сцени в даний час редагується в редакторі. Це, як правило, безпосередня дитина :ref:`root<class_SceneTree_property_root>`.

\ **Примітка:** Ця властивість не робить нічого в зборах.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_multiplayer_poll:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multiplayer_poll** = ``true`` :ref:`🔗<class_SceneTree_property_multiplayer_poll>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_poll_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_multiplayer_poll_enabled**\ (\ )

Якщо ``true`` (за замовчуванням значення), дозволяє автоматичне опитування :ref:`MultiplayerAPI<class_MultiplayerAPI>` для цього SceneTree під час :ref:`process_frame<class_SceneTree_signal_process_frame>`.

Якщо ``false``, вам потрібно вручну викликати :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>` для обробки мережевих пакетів і доставки RPCs. Це дозволяє запустити RPCs в різній петлі (наприклад, фізики, нитки, специфічний крок часу) і для керівництва :ref:`Mutex<class_Mutex>` захист при переході :ref:`MultiplayerAPI<class_MultiplayerAPI>` з ниток.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_SceneTree_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_pause**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Якщо ``true``, дерево сцени вважається призупиненим. Це призводить до такої поведінки:

- 2D та 3D фізика буде зупинена, як і виявлення зіткнень та пов'язані з ними сигнали.

- Залежно від :ref:`Node.process_mode<class_Node_property_process_mode>` кожного вузла, їхні методи зворотного виклику :ref:`Node._process()<class_Node_private_method__process>`, :ref:`Node._physics_process()<class_Node_private_method__physics_process>` та :ref:`Node._input()<class_Node_private_method__input>` можуть більше не викликатися.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_physics_interpolation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **physics_interpolation** = ``false`` :ref:`🔗<class_SceneTree_property_physics_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_physics_interpolation_enabled**\ (\ )

Якщо значення ``true``, рендерер інтерполюватиме перетворення об'єктів (як фізичних, так і нефізичних) між двома останніми перетвореннями, щоб плавний рух спостерігався навіть тоді, коли фізичні такти не збігаються з відрендереними кадрами.

Значення цієї властивості за замовчуванням контролюється параметром :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>`.

\ **Примітка:** Хоча це глобальний параметр, точніший контроль окремих гілок **SceneTree** можливий за допомогою параметра :ref:`Node.physics_interpolation_mode<class_Node_property_physics_interpolation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_quit_on_go_back:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **quit_on_go_back** = ``true`` :ref:`🔗<class_SceneTree_property_quit_on_go_back>`

.. rst-class:: classref-property-setget

- |void| **set_quit_on_go_back**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_quit_on_go_back**\ (\ )

Якщо ``true``, програма автоматично висувається при навігації спини (наприклад, за допомогою системи "Back" на Андроїд).

Щоб впоратися з кнопкою «Повернутися назад», коли цей параметр вимкнено, скористайтеся :ref:`DisplayServer.WINDOW_EVENT_GO_BACK_REQUEST<class_DisplayServer_constant_WINDOW_EVENT_GO_BACK_REQUEST>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_root:

.. rst-class:: classref-property

:ref:`Window<class_Window>` **root** :ref:`🔗<class_SceneTree_property_root>`

.. rst-class:: classref-property-setget

- :ref:`Window<class_Window>` **get_root**\ (\ )

Корінь дерева :ref:`Window<class_Window>`. Це найбільша :ref:`Node<class_Node>` ялинки, і завжди присутній. Абсолютний :ref:`NodePath<class_NodePath>` завжди починається з цього вузла. Діти кореневого вузла можуть включати завантажені :ref:`current_scene<class_SceneTree_property_current_scene>`, а також будь-які :doc:`AutoLoad <../tutorials/scriptingletons_autoload>` налаштовані в налаштуваннях проекту.

\ **Попередження:** Не видаляти цей вузол. Це призведе до нестійкої поведінки, після чого збій.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_SceneTree_method_call_group:

.. rst-class:: classref-method

|void| **call_group**\ (\ group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group>`

Викликає метод ``method`` на кожному вузлі в цьому дереві, доданому до заданої групи ``group``. Ви можете передавати аргументи методу ``method``, вказавши їх в кінці виклику цього методу. Вузли, які не можуть викликати метод ``method`` (або тому, що метод не існує, або аргументи не збігаються), ігноруються. Див. також метод :ref:`set_group()<class_SceneTree_method_set_group>` та метод :ref:`notify_group()<class_SceneTree_method_notify_group>`.

\ **Примітка:** Цей метод діє негайно на всі вибрані вузли одночасно, що може спричинити заїкання в деяких ситуаціях, що потребують підвищеної продуктивності.

\ **Примітка:** У C# метод ``method`` має бути в snake_case під час звернення до вбудованих методів Godot. Надайте перевагу використанню імен, наведених у класі ``MethodName``, щоб уникнути виділення нового :ref:`StringName<class_StringName>` при кожному виклику.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_call_group_flags:

.. rst-class:: classref-method

|void| **call_group_flags**\ (\ flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group_flags>`

Викликає заданий метод ``method`` на кожному вузлі всередині цього дерева, доданому до заданої групи ``group``. Використовуйте ``flags`` для налаштування поведінки цього методу (див. :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`). Додаткові аргументи для методу ``method`` можна передати в кінці цього методу. Вузли, які не можуть викликати метод ``method`` (або тому, що метод не існує, або аргументи не збігаються), ігноруються.

::

    # Викликає "hide" для всіх вузлів групи "enemies", в кінці кадру та у зворотному порядку дерева.
    get_tree().call_group_flags(
    SceneTree.GROUP_CALL_DEFERRED | SceneTree.GROUP_CALL_REVERSE,
    "enemies", "hide")

\ **Примітка:** У C# метод ``method`` має бути в snake_case при зверненні до вбудованих методів Godot. Надайте перевагу використанню імен, наданих у класі ``MethodName``, щоб уникнути виділення нового :ref:`StringName<class_StringName>` при кожному виклику.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_file>`

Змінює запущену сцену на ту, що знаходиться за вказаним ``path``, після завантаження її в :ref:`PackedScene<class_PackedScene>` та створення нового екземпляра.

Повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` у разі успіху, :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>`, якщо ``path`` не може бути завантажений в :ref:`PackedScene<class_PackedScene>`, або :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`, якщо цю сцену не можна створити.

\ **Примітка:** Див. :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>` для отримання детальної інформації про порядок операцій.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_packed:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_packed**\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_packed>`

Змінює поточну сцену на новий екземпляр заданого :ref:`PackedScene<class_PackedScene>` (який має бути дійсним).

Повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` у разі успіху, :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`, якщо сцену неможливо створити, або :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`, якщо сцена недійсна.

\ **Примітка:** Операції відбуваються в такому порядку, коли викликається :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>`:

1. Поточний вузол сцени негайно видаляється з дерева. З цього моменту :ref:`Node.get_tree()<class_Node_method_get_tree>`, викликаний для поточної (вихідної) сцени, поверне ``null``. :ref:`current_scene<class_SceneTree_property_current_scene>` також буде ``null``, оскільки нова сцена ще недоступна.

2. В кінці кадру попередня поточна сцена, вже видалена з дерева, буде видалена (звільнена з пам'яті), а потім нова сцена буде створена та додана до дерева. Метод :ref:`Node.get_tree()<class_Node_method_get_tree>` та :ref:`current_scene<class_SceneTree_property_current_scene>` знову працюватимуть у звичайному режимі.

Це гарантує, що обидві сцени не працюють одночасно, водночас звільняючи попередню сцену безпечним способом, подібним до методу :ref:`Node.queue_free()<class_Node_method_queue_free>`.

Якщо ви хочете надійно отримати доступ до нової сцени, зачекайте сигналу :ref:`scene_changed<class_SceneTree_signal_scene_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_timer:

.. rst-class:: classref-method

:ref:`SceneTreeTimer<class_SceneTreeTimer>` **create_timer**\ (\ time_sec\: :ref:`float<class_float>`, process_always\: :ref:`bool<class_bool>` = true, process_in_physics\: :ref:`bool<class_bool>` = false, ignore_time_scale\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SceneTree_method_create_timer>`

Повертає новий :ref:`SceneTreeTimer<class_SceneTreeTimer>`. Після того, як мине ``time_sec`` у секундах, таймер видасть ``сигнал SceneTreeTimer.timeout`` і автоматично звільниться. 

Якщо ``process_always`` має значення ``false``, таймер буде призупинено, коли для :ref:`paused<class_SceneTree_property_paused>` встановлено значення ``true``. 

Якщо ``process_in_physics`` має значення ``true``, таймер оновлюватиметься в кінці кадру фізики, а не кадру процесу. 

Якщо ``ignore_time_scale`` має значення ``true``, таймер ігноруватиме :ref:`Engine.time_scale<class_Engine_property_time_scale>` і оновлюватиме реальний час, що минув. 

Цей метод зазвичай використовується для створення одноразового таймера затримки, як у наступному прикладі: 


.. tabs:: 

 .. code-tab:: gdscript
 
    func some_function(): 
        print("старт") 
        await get_tree().create_timer(1.0).timeout 
        print("кінець")  

 .. code-tab:: csharp
 
    public async Task SomeFunction() 
    {
        GD.Print("початок"); 
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout); 
        GD.Print("кінець"); 
    } 

 

\ **Примітка:** Таймер завжди оновлюється *після* всіх вузлів у дереві. Метод :ref:`Node._process()<class_Node_private_method__process>` вузла буде викликано перед оновленням таймера (або :ref:`Node._physics_process()<class_Node_private_method__physics_process>`, якщо ``process_in_physics`` має значення ``true``).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_tween:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **create_tween**\ (\ ) :ref:`🔗<class_SceneTree_method_create_tween>`

Створює і повертає нову :ref:`Tween<class_Tween>`, оброблену в цьому дереві. Tween автоматично почнеться на наступному етапі рамки або фізиці (в залежності від його :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`).

\ **Примітка:** A :ref:`Tween<class_Tween>` створений за допомогою цього методу не межує з будь-яким :ref:`Node<class_Node>`. Це може тримати роботу до тих пір, поки не залишилося нікому. Якщо ви хочете, щоб :ref:`Tween<class_Tween>` автоматично загинув, коли :ref:`Node<class_Node>` звільняється, використовуйте :ref:`Node.create_tween()<class_Node_method_create_tween>` або :ref:`Tween.bind_node()<class_Tween_method_bind_node>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_first_node_in_group:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_first_node_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_first_node_in_group>`

Повертаємо першу :ref:`Node<class_Node>`, знайдену всередині дерева, яка додана до даної ``group``, в сценах ієрархії порядку. Повернення ``null`` якщо не знайдено матчу. Дивитися також :ref:`get_nodes_in_group()<class_SceneTree_method_get_nodes_in_group>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_frame:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_frame>`

Повертає, скільки кроків фізичного процесу було оброблено з моменту запуску програми. Це *не* є вимірюванням часу, що минув. Див. також :ref:`physics_frame<class_SceneTree_signal_physics_frame>`. Щоб дізнатися кількість відрендерених кадрів, див. :ref:`Engine.get_process_frames()<class_Engine_method_get_process_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_multiplayer:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **get_multiplayer**\ (\ for_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) |const| :ref:`🔗<class_SceneTree_method_get_multiplayer>`

Шукає :ref:`MultiplayerAPI<class_MultiplayerAPI>`, налаштований для заданого шляху. Якщо такого не існує, виконується пошук у батьківських шляхах, доки не буде знайдено потрібний. Якщо шлях порожній або не знайдено жодного, повертається шлях за замовчуванням. Див. :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count>`

Повертає кількість вузлів всередині цього дерева.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count_in_group:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count_in_group>`

Повертає кількість вузлів, призначених на дану групу.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_nodes_in_group:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_nodes_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_nodes_in_group>`

Повертає :ref:`Array<class_Array>`, що містить усі вузли всередині цього дерева, які були додані до заданої ``group``, у порядку ієрархії сцени.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_processed_tweens:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Tween<class_Tween>`\] **get_processed_tweens**\ (\ ) :ref:`🔗<class_SceneTree_method_get_processed_tweens>`

Повертаємо :ref:`Array<class_Array>` наявних :ref:`Tween<class_Tween>` в дереві, в тому числі паув'язаних твітів.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_has_group:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_group**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_has_group>`

Повертає ``true``, якщо вершина додана до даної групи ``name`` існує в дереві.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_enabled**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_enabled>`

Повертає ``true``, якщо функції спеціальних можливостей увімкнено, а оновлення інформації про спеціальні можливості активно обробляються.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_supported**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_supported>`

Повертає ``true``, якщо функції доступності підтримуються ОС та ввімкнені в налаштуваннях проєкту.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group:

.. rst-class:: classref-method

|void| **notify_group**\ (\ group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group>`

Викликає метод ``Object.notification`` з заданим параметром ``notification`` для всіх вузлів у цьому дереві, доданих до групи ``group``. Див. також :doc:`Сповіщення Godot <../tutorials/best_practices/godot_notifications>` та :ref:`call_group()<class_SceneTree_method_call_group>` та :ref:`set_group()<class_SceneTree_method_set_group>`.

\ **Примітка:** Цей метод діє негайно на всі вибрані вузли одночасно, що може спричинити заїкання в деяких ситуаціях, що потребують високих вимог до продуктивності.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group_flags:

.. rst-class:: classref-method

|void| **notify_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group_flags>`

Викликає метод ``Object.notification`` з заданим параметром ``notification`` для всіх вузлів у цьому дереві, доданих до групи ``group``. Використовуйте ``call_flags`` для налаштування поведінки цього методу (див. :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_queue_delete:

.. rst-class:: classref-method

|void| **queue_delete**\ (\ obj\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_SceneTree_method_queue_delete>`

Ставить заданий ``obj`` у чергу на видалення, викликаючи його :ref:`Object.free()<class_Object_method_free>` в кінці поточного кадру. Цей метод схожий на :ref:`Node.queue_free()<class_Node_method_queue_free>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_quit:

.. rst-class:: classref-method

|void| **quit**\ (\ exit_code\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneTree_method_quit>`

Прийміть програму в кінці поточної ітерації, з заданим ``exit_code``.

За конвенцією, вихідний код ``0`` вказує на успіх, тоді як будь-який інший вихідний код вказує на помилку. З причин перенесення, це повинно бути між ``0`` і ``125`` (включаючи).

\ **Примітка:** На iOS цей метод не працює. А, як рекомендується `iOS Настанови інтерфейсу користувача  <https://developer.apple.com/library/archive/qa/qa1561/_index.html>`__ користувач очікується закривати програми за допомогою кнопки «Домашній».

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_reload_current_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_reload_current_scene>`

Перезавантажує поточну активну сцену, замінюючи :ref:`current_scene<class_SceneTree_property_current_scene>` новим екземпляром її оригінального :ref:`PackedScene<class_PackedScene>`.

Повертає :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` у разі успіху, :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>`, якщо :ref:`current_scene<class_SceneTree_property_current_scene>` не визначено, :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>`, якщо :ref:`current_scene<class_SceneTree_property_current_scene>` не може бути завантажений у :ref:`PackedScene<class_PackedScene>`, або :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`, якщо сцену не можна створити.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group>`

Встановлює задану властивість ``property`` на значення ``value`` для всіх вузлів у цьому дереві, доданих до заданої групи ``group``. Вузли, які не мають властивості ``property``, ігноруються. Див. також метод ``call_group`` та метод ``notify_group``.

\ **Примітка:** Цей метод діє негайно на всі вибрані вузли одночасно, що може спричинити заїкання в деяких ситуаціях, що потребують підвищеної продуктивності.

\ **Примітка:** У C# властивість ``property`` має бути в snake_case під час звернення до вбудованих властивостей Godot. Надайте перевагу використанню імен, наведених у класі ``PropertyName``, щоб уникнути виділення нового :ref:`StringName<class_StringName>` при кожному виклику.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group_flags:

.. rst-class:: classref-method

|void| **set_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group_flags>`

Встановлює задану властивість ``property`` на ``value`` на всіх вузлах у цьому дереві, доданих до заданої групи ``group``. Вузли, які не мають властивості ``property``, ігноруються. Використовуйте ``call_flags`` для налаштування поведінки цього методу (див. :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`).

\ **Примітка:** У C# властивість ``property`` має бути в snake_case під час звернення до вбудованих властивостей Godot. Надайте перевагу використанню імен, наведених у класі ``PropertyName``, щоб уникнути виділення нового :ref:`StringName<class_StringName>` при кожному виклику.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_multiplayer:

.. rst-class:: classref-method

|void| **set_multiplayer**\ (\ multiplayer\: :ref:`MultiplayerAPI<class_MultiplayerAPI>`, root_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) :ref:`🔗<class_SceneTree_method_set_multiplayer>`

Встановлює користувацький :ref:`MultiplayerAPI<class_MultiplayerAPI>` із заданим ``root_path`` (керуючи також відносними підшляхами) або перезаписує значення за замовчуванням, якщо ``root_path`` порожній.

\ **Примітка:** Для підшляху, що містить ``root_path``, не потрібно налаштовувати :ref:`MultiplayerAPI<class_MultiplayerAPI>`, вкладені користувацькі багатокористувацькі ігри не дозволені. Тобто, якщо один налаштовано для ``"/root/Foo"``, встановлення для ``"/root/Foo/Bar"`` призведе до помилки.

\ **Примітка:** :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>` слід викликати *до* того, як дочірні вузли будуть готові за заданим ``root_path``. Якщо багатокористувацькі вузли, такі як :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` або :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`, додаються до дерева до встановлення користувацького багатокористувацького API, вони не працюватимуть.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_unload_current_scene:

.. rst-class:: classref-method

|void| **unload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_unload_current_scene>`

Якщо поточна сцена завантажується, викликаючи цей метод буде перевантажувати його.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
