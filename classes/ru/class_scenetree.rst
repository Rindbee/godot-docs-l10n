:github_url: hide

.. _class_SceneTree:

SceneTree
=========

**Наследует:** :ref:`MainLoop<class_MainLoop>` **<** :ref:`Object<class_Object>`

Управляет игровым циклом через иерархию узлов.

.. rst-class:: classref-introduction-group

Описание
----------------

Как один из самых важных классов, **SceneTree** управляет иерархией узлов в сцене, а также самими сценами. Узлы можно добавлять, извлекать и удалять. Все дерево сцены (и, следовательно, текущую сцену) можно приостанавливать. Сцены можно загружать, переключать и перезагружать.

Вы также можете использовать **SceneTree** для организации узлов в **groups**: каждый узел можно добавлять в столько групп, сколько вы хотите создать, например, в группу «enemy». Затем вы можете перебирать эти группы или даже вызывать методы и задавать свойства для всех узлов, принадлежащих любой заданной группе.

\ **SceneTree** — это реализация :ref:`MainLoop<class_MainLoop>` по умолчанию, используемая движком, и, таким образом, отвечает за игровой цикл.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Дерево сцены <../tutorials/scripting/scene_tree>`

- :doc:`Несколько резолюций <../tutorials/rendering/multiple_resolutions>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
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

Сигналы
--------------

.. _class_SceneTree_signal_node_added:

.. rst-class:: classref-signal

**node_added**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_added>`

Выдается, когда ``node`` входит в это дерево.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_configuration_warning_changed:

.. rst-class:: classref-signal

**node_configuration_warning_changed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_configuration_warning_changed>`

Выдается при вызове :ref:`Node.update_configuration_warnings()<class_Node_method_update_configuration_warnings>` ``node``. Выдается только в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_removed:

.. rst-class:: classref-signal

**node_removed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_removed>`

Вызывается, когда ``node`` покидает это дерево.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_renamed:

.. rst-class:: classref-signal

**node_renamed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_renamed>`

Вызывается при изменении :ref:`Node.name<class_Node_property_name>` ``node``.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_physics_frame:

.. rst-class:: classref-signal

**physics_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_physics_frame>`

Создается непосредственно перед вызовом :ref:`Node._physics_process()<class_Node_private_method__physics_process>` на каждом узле в этом дереве.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_process_frame:

.. rst-class:: classref-signal

**process_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_process_frame>`

Создается непосредственно перед вызовом :ref:`Node._process()<class_Node_private_method__process>` на каждом узле в этом дереве.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_scene_changed:

.. rst-class:: classref-signal

**scene_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_scene_changed>`

Выдается после добавления новой сцены в дерево сцен и ее инициализации. Может использоваться для надежного доступа к :ref:`current_scene<class_SceneTree_property_current_scene>` при смене сцен.

::

    # Этот код должен быть внутри автозагрузки.
    get_tree().change_scene_to_file(other_scene_path)
    await get_tree().scene_changed
    print(get_tree().current_scene) # Выводит новую сцену.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_changed:

.. rst-class:: classref-signal

**tree_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_changed>`

Генерируется каждый раз при изменении иерархии дерева (перемещении, переименовании узлов и т. д.).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_process_mode_changed:

.. rst-class:: classref-signal

**tree_process_mode_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_process_mode_changed>`

Выдается при изменении :ref:`Node.process_mode<class_Node_property_process_mode>` любого узла внутри дерева. Выдается только в редакторе для обновления видимости отключенных узлов.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_SceneTree_GroupCallFlags:

.. rst-class:: classref-enumeration

enum **GroupCallFlags**: :ref:`🔗<enum_SceneTree_GroupCallFlags>`

.. _class_SceneTree_constant_GROUP_CALL_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFAULT** = ``0``

Вызов узлов внутри группы без специального поведения (по умолчанию).

.. _class_SceneTree_constant_GROUP_CALL_REVERSE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_REVERSE** = ``1``

Вызов узлов внутри группы в обратном порядке иерархии дерева (все вложенные дочерние узлы вызываются раньше соответствующих им родительских узлов).

.. _class_SceneTree_constant_GROUP_CALL_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFERRED** = ``2``

Вызов узлов внутри группы в конце текущего кадра (может быть как кадр процесса, так и физический кадр), аналогично :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. _class_SceneTree_constant_GROUP_CALL_UNIQUE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_UNIQUE** = ``4``

Вызывайте узлы внутри группы только один раз, даже если вызов выполняется много раз в одном кадре. Для работы необходимо объединить с :ref:`GROUP_CALL_DEFERRED<class_SceneTree_constant_GROUP_CALL_DEFERRED>`.

\ **Примечание:** Различные аргументы не учитываются. Поэтому, когда один и тот же вызов выполняется с разными аргументами, будет выполнен только первый вызов.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SceneTree_property_auto_accept_quit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_accept_quit** = ``true`` :ref:`🔗<class_SceneTree_property_auto_accept_quit>`

.. rst-class:: classref-property-setget

- |void| **set_auto_accept_quit**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_accept_quit**\ (\ )

Если ``true``, приложение автоматически принимает запросы на выход.

Для мобильных платформ см. :ref:`quit_on_go_back<class_SceneTree_property_quit_on_go_back>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_current_scene:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **current_scene** :ref:`🔗<class_SceneTree_property_current_scene>`

.. rst-class:: classref-property-setget

- |void| **set_current_scene**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_current_scene**\ (\ )

Корневой узел текущей загруженной основной сцены, обычно как прямой потомок :ref:`root<class_SceneTree_property_root>`. См. также :ref:`change_scene_to_file()<class_SceneTree_method_change_scene_to_file>`, :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>` и :ref:`reload_current_scene()<class_SceneTree_method_reload_current_scene>`.

\ **Предупреждение:** Установка этого свойства напрямую может не работать так, как ожидается, поскольку она *не* добавляет и не удаляет какие-либо узлы из этого дерева.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_collisions_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_collisions_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_collisions_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_collisions_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_collisions_hint**\ (\ )

Если ``true``, формы столкновений будут видны при запуске игры из редактора для целей отладки.

\ **Примечание:** Это свойство не предназначено для изменения во время выполнения. Изменение значения :ref:`debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` во время выполнения проекта не даст желаемого эффекта.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_navigation_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_navigation_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_navigation_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_navigation_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_navigation_hint**\ (\ )

Если ``true``, навигационные полигоны будут видны при запуске игры из редактора для целей отладки.

\ **Примечание:** Это свойство не предназначено для изменения во время выполнения. Изменение значения :ref:`debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>` во время выполнения проекта не даст желаемого эффекта.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_paths_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_paths_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_paths_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_paths_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_paths_hint**\ (\ )

Если ``true``, кривые от :ref:`Path2D<class_Path2D>` и :ref:`Path3D<class_Path3D>` будут видимы во время работы игры из редактора для откладки.

\ **Примечание:** Это свойство не изменяемо по время выполнения. Попытки изменить значение :ref:`debug_paths_hint<class_SceneTree_property_debug_paths_hint>` пока проект выполняется не приведёт к желательному эффекту.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_edited_scene_root:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **edited_scene_root** :ref:`🔗<class_SceneTree_property_edited_scene_root>`

.. rst-class:: classref-property-setget

- |void| **set_edited_scene_root**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_edited_scene_root**\ (\ )

Корень сцены, которая в данный момент редактируется в редакторе. Обычно это прямой потомок :ref:`root<class_SceneTree_property_root>`.

\ **Примечание:** Это свойство ничего не делает в сборках релиза.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_multiplayer_poll:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multiplayer_poll** = ``true`` :ref:`🔗<class_SceneTree_property_multiplayer_poll>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_poll_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_multiplayer_poll_enabled**\ (\ )

Если ``true`` (значение по умолчанию), включает автоматический опрос :ref:`MultiplayerAPI<class_MultiplayerAPI>` для этого SceneTree во время :ref:`process_frame<class_SceneTree_signal_process_frame>`.

Если ``false``, вам необходимо вручную вызвать :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>` для обработки сетевых пакетов и доставки RPC. Это позволяет запускать RPC в другом цикле (например, физика, поток, определенный временной шаг) и для ручной защиты :ref:`Mutex<class_Mutex>` при доступе к :ref:`MultiplayerAPI<class_MultiplayerAPI>` из потоков.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_SceneTree_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_pause**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Если ``true``, дерево сцены считается приостановленным. Это приводит к следующему поведению:

- 2D и 3D физика будут остановлены, а также обнаружение столкновений и связанные с ними сигналы.

- В зависимости от :ref:`Node.process_mode<class_Node_property_process_mode>` каждого узла, их методы обратного вызова :ref:`Node._process()<class_Node_private_method__process>`, :ref:`Node._physics_process()<class_Node_private_method__physics_process>` и :ref:`Node._input()<class_Node_private_method__input>` могут больше не вызываться.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_physics_interpolation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **physics_interpolation** = ``false`` :ref:`🔗<class_SceneTree_property_physics_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_physics_interpolation_enabled**\ (\ )

Если ``true``, рендерер будет интерполировать преобразования объектов (как физических, так и не физических) между двумя последними преобразованиями, так что плавное движение будет видно даже тогда, когда физические тики не совпадают с отрисованными кадрами.

Значение этого свойства по умолчанию контролируется :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>`.

\ **Примечание:** Хотя это глобальная настройка, более точное управление отдельными ветвями **SceneTree** возможно с помощью :ref:`Node.physics_interpolation_mode<class_Node_property_physics_interpolation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_quit_on_go_back:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **quit_on_go_back** = ``true`` :ref:`🔗<class_SceneTree_property_quit_on_go_back>`

.. rst-class:: classref-property-setget

- |void| **set_quit_on_go_back**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_quit_on_go_back**\ (\ )

Если ``true``, приложение автоматически завершает работу при возврате назад (например, с помощью системной кнопки «Назад» на Android).

Для обработки кнопки «Назад», когда эта опция отключена, используйте :ref:`DisplayServer.WINDOW_EVENT_GO_BACK_REQUEST<class_DisplayServer_constant_WINDOW_EVENT_GO_BACK_REQUEST>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_root:

.. rst-class:: classref-property

:ref:`Window<class_Window>` **root** :ref:`🔗<class_SceneTree_property_root>`

.. rst-class:: classref-property-setget

- :ref:`Window<class_Window>` **get_root**\ (\ )

Корень дерева :ref:`Window<class_Window>`. Это самый верхний :ref:`Node<class_Node>` дерева сцены, и он всегда присутствует. Абсолютный :ref:`NodePath<class_NodePath>` всегда начинается с этого узла. Потомки корневого узла могут включать загруженный :ref:`current_scene<class_SceneTree_property_current_scene>`, а также любой :doc:`AutoLoad <../tutorials/scripting/singletons_autoload>`, настроенный в настройках проекта.

\ **Предупреждение:** Не удаляйте этот узел. Это приведет к нестабильному поведению, за которым последует сбой.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SceneTree_method_call_group:

.. rst-class:: classref-method

|void| **call_group**\ (\ group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group>`

Вызывает ``method`` для каждого узла внутри этого дерева, добавленного в заданную ``group``. Вы можете передать аргументы в ``method``, указав их в конце вызова этого метода. Узлы, которые не могут вызвать ``method`` (либо потому, что метод не существует, либо аргументы не совпадают), игнорируются. См. также :ref:`set_group()<class_SceneTree_method_set_group>` и :ref:`notify_group()<class_SceneTree_method_notify_group>`.

\ **Примечание:** Этот метод немедленно действует на все выбранные узлы одновременно, что может вызвать подтормаживание в некоторых ситуациях, требующих высокой производительности.

\ **Примечание:** В C# ``method`` должен быть в snake_case при ссылке на встроенные методы Godot. Предпочитайте использовать имена, представленные в классе ``MethodName``, чтобы избежать выделения нового :ref:`StringName<class_StringName>` при каждом вызове.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_call_group_flags:

.. rst-class:: classref-method

|void| **call_group_flags**\ (\ flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group_flags>`

Вызывает заданный ``method`` для каждого узла внутри этого дерева, добавленного в заданную ``group``. Используйте ``flags`` для настройки поведения этого метода (см. :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`). Дополнительные аргументы для ``method`` могут быть переданы в конце этого метода. Узлы, которые не могут вызвать ``method`` (либо потому, что метод не существует, либо аргументы не совпадают), игнорируются.

::

    # Вызывает "hide" для всех узлов группы "enemies" в конце кадра и в обратном порядке дерева.
    get_tree().call_group_flags(
            SceneTree.GROUP_CALL_DEFERRED | SceneTree.GROUP_CALL_REVERSE,
            "enemies", "hide")

\ **Примечание:** В C# ``method`` должен быть в snake_case при ссылке на встроенные методы Godot. Предпочитайте использовать имена, представленные в классе ``MethodName``, чтобы избежать выделения нового :ref:`StringName<class_StringName>` при каждом вызове.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_file>`

Изменяет запущенную сцену на ту, которая находится по указанному ``path``, после загрузки ее в :ref:`PackedScene<class_PackedScene>` и создания нового экземпляра.

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха, :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>`, если ``path`` не может быть загружен в :ref:`PackedScene<class_PackedScene>`, или :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`, если эта сцена не может быть создана.

\ **Примечание:** Подробности о порядке операций см. в :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_packed:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_packed**\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_packed>`

Изменяет запущенную сцену на новый экземпляр заданного :ref:`PackedScene<class_PackedScene>` (который должен быть допустимым).

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха, :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`, если сцену невозможно создать, или :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>`, если сцена недопустима.

\ **Примечание:** Операции происходят в следующем порядке при вызове :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>`:

1. Текущий узел сцены немедленно удаляется из дерева. С этого момента :ref:`Node.get_tree()<class_Node_method_get_tree>`, вызванный на текущей (исходящей) сцене, вернет ``null``. :ref:`current_scene<class_SceneTree_property_current_scene>` также будет ``null``, поскольку новая сцена еще недоступна.

2. В конце кадра ранее текущая сцена, уже удаленная из дерева, будет удалена (освобождена из памяти), а затем новая сцена будет инстанцирована и добавлена в дерево. :ref:`Node.get_tree()<class_Node_method_get_tree>` и :ref:`current_scene<class_SceneTree_property_current_scene>` вернутся к работе в обычном режиме.

Это гарантирует, что обе сцены не будут запущены одновременно, при этом предыдущая сцена будет безопасно освобождена, аналогично :ref:`Node.queue_free()<class_Node_method_queue_free>`.

Если вы хотите надежно получить доступ к новой сцене, дождитесь сигнала :ref:`scene_changed<class_SceneTree_signal_scene_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_timer:

.. rst-class:: classref-method

:ref:`SceneTreeTimer<class_SceneTreeTimer>` **create_timer**\ (\ time_sec\: :ref:`float<class_float>`, process_always\: :ref:`bool<class_bool>` = true, process_in_physics\: :ref:`bool<class_bool>` = false, ignore_time_scale\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SceneTree_method_create_timer>`

Возвращает новый :ref:`SceneTreeTimer<class_SceneTreeTimer>`. По истечении ``time_sec`` в секундах таймер выдаст :ref:`SceneTreeTimer.timeout<class_SceneTreeTimer_signal_timeout>` и будет автоматически освобожден.

Если ``process_always`` равен ``false``, таймер будет остановлен при установке :ref:`paused<class_SceneTree_property_paused>` в ``true``.

Если ``process_in_physics`` равен ``true``, таймер обновится в конце кадра физики, а не кадра процесса.

Если ``ignore_time_scale`` равен ``true``, таймер проигнорирует :ref:`Engine.time_scale<class_Engine_property_time_scale>` и обновится с реальным, прошедшим временем.

Этот метод обычно используется для создания одноразового таймера задержки, как в следующем примере:


.. tabs::

 .. code-tab:: gdscript

    func some_function():
        print("начало")
        await get_tree().create_timer(1.0).timeout
        print("конец")

 .. code-tab:: csharp

    public async Task SomeFunction()
    {
        GD.Print("начало");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("конец");
    }



\ **Примечание:** Таймер всегда обновляется *после* всех узлов в дереве. Метод :ref:`Node._process()<class_Node_private_method__process>` узла будет вызван до обновления таймера (или :ref:`Node._physics_process()<class_Node_private_method__physics_process>`, если ``process_in_physics`` установлен в ``true``).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_tween:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **create_tween**\ (\ ) :ref:`🔗<class_SceneTree_method_create_tween>`

Создает и возвращает новый :ref:`Tween<class_Tween>`, обработанный в этом дереве. Tween автоматически запустится на следующем кадре процесса или физическом кадре (в зависимости от его :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`).

\ **Примечание:** :ref:`Tween<class_Tween>`, созданный с помощью этого метода, не привязан ни к одному :ref:`Node<class_Node>`. Он может продолжать работать до тех пор, пока не останется ничего для анимации. Если вы хотите, чтобы :ref:`Tween<class_Tween>` автоматически уничтожался при освобождении :ref:`Node<class_Node>`, используйте :ref:`Node.create_tween()<class_Node_method_create_tween>` или :ref:`Tween.bind_node()<class_Tween_method_bind_node>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_first_node_in_group:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_first_node_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_first_node_in_group>`

Возвращает первый :ref:`Node<class_Node>`, найденный внутри дерева, который был добавлен в заданную ``group`` в порядке иерархии сцены. Возвращает ``null``, если совпадений не найдено. См. также :ref:`get_nodes_in_group()<class_SceneTree_method_get_nodes_in_group>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_frame:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_frame>`

Возвращает количество обработанных шагов физического процесса с момента запуска приложения. Это *не* измерение прошедшего времени. См. также :ref:`physics_frame<class_SceneTree_signal_physics_frame>`. Количество отрисованных кадров см. в :ref:`Engine.get_process_frames()<class_Engine_method_get_process_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_multiplayer:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **get_multiplayer**\ (\ for_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) |const| :ref:`🔗<class_SceneTree_method_get_multiplayer>`

Ищет :ref:`MultiplayerAPI<class_MultiplayerAPI>`, настроенный для указанного пути, если он не существует, он ищет родительские пути, пока не найдет его. Если путь пустой или ничего не найдено, возвращается путь по умолчанию. См. :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count>`

Возвращает количество узлов внутри этого дерева.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count_in_group:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count_in_group>`

Возвращает количество узлов, назначенных данной группе.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_nodes_in_group:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_nodes_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_nodes_in_group>`

Возвращает :ref:`Array<class_Array>`, содержащий все узлы внутри этого дерева, которые были добавлены в заданную ``group``, в порядке иерархии сцены.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_processed_tweens:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Tween<class_Tween>`\] **get_processed_tweens**\ (\ ) :ref:`🔗<class_SceneTree_method_get_processed_tweens>`

Возвращает :ref:`Array<class_Array>` существующих в данный момент :ref:`Tween<class_Tween>`-ов в дереве, включая приостановленные твины.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_has_group:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_group**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_has_group>`

Возвращает ``true``, если узел, добавленный в заданную группу ``name``, существует в дереве.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_enabled**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_enabled>`

Возвращает ``true``, если функции доступности включены и обновления информации о доступности активно обрабатываются.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_supported**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_supported>`

Возвращает ``true``, если специальные возможности поддерживаются ОС и включены в настройках проекта.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group:

.. rst-class:: classref-method

|void| **notify_group**\ (\ group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group>`

Вызывает :ref:`Object.notification()<class_Object_method_notification>` с заданным ``notification`` для всех узлов внутри этого дерева, добавленных в ``group``. См. также :doc:`уведомления Godot <../tutorials/best_practices/godot_notifications>` и :ref:`call_group()<class_SceneTree_method_call_group>` и :ref:`set_group()<class_SceneTree_method_set_group>`.

\ **Примечание:** Этот метод действует немедленно на все выбранные узлы одновременно, что может вызвать заикание в некоторых ситуациях, требующих высокой производительности.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group_flags:

.. rst-class:: classref-method

|void| **notify_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group_flags>`

Вызывает :ref:`Object.notification()<class_Object_method_notification>` с заданным ``notification`` для всех узлов внутри этого дерева, добавленных в ``group``. Используйте ``call_flags`` для настройки поведения этого метода (см. :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_queue_delete:

.. rst-class:: classref-method

|void| **queue_delete**\ (\ obj\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_SceneTree_method_queue_delete>`

Ставит в очередь указанный ``obj`` для удаления, вызывая его :ref:`Object.free()<class_Object_method_free>` в конце текущего кадра. Этот метод похож на :ref:`Node.queue_free()<class_Node_method_queue_free>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_quit:

.. rst-class:: classref-method

|void| **quit**\ (\ exit_code\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneTree_method_quit>`

Завершает работу приложения в конце текущей итерации с заданным ``exit_code``.

По соглашению код выхода ``0`` указывает на успех, тогда как любой другой код выхода указывает на ошибку. Из соображений переносимости он должен быть между ``0`` и ``125`` (включительно).

\ **Примечание:** На iOS этот метод не работает. Вместо этого, как рекомендуется в `iOS Human Interface Guidelines <https://developer.apple.com/library/archive/qa/qa1561/_index.html>`__, пользователь должен закрывать приложения с помощью кнопки «Домой».

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_reload_current_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_reload_current_scene>`

Перезагружает текущую активную сцену, заменяя :ref:`current_scene<class_SceneTree_property_current_scene>` новым экземпляром ее исходного :ref:`PackedScene<class_PackedScene>`.

Возвращает :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` в случае успеха, :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>`, если :ref:`current_scene<class_SceneTree_property_current_scene>` не определен, :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>`, если :ref:`current_scene<class_SceneTree_property_current_scene>` не может быть загружен в :ref:`PackedScene<class_PackedScene>`, или :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>`, если сцена не может быть создана.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group>`

Устанавливает заданное ``property`` в ``value`` для всех узлов внутри этого дерева, добавленных в заданную ``group``. Узлы, не имеющие ``property``, игнорируются. См. также :ref:`call_group()<class_SceneTree_method_call_group>` и :ref:`notify_group()<class_SceneTree_method_notify_group>`.

\ **Примечание:** Этот метод немедленно действует на все выбранные узлы одновременно, что может вызвать подтормаживание в некоторых ситуациях, требующих высокой производительности.

\ **Примечание:** В C# ``property`` должно быть в snake_case при ссылке на встроенные свойства Godot. Предпочитайте использовать имена, представленные в классе ``PropertyName``, чтобы избежать выделения нового :ref:`StringName<class_StringName>` при каждом вызове.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group_flags:

.. rst-class:: classref-method

|void| **set_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group_flags>`

Устанавливает заданное ``property`` в ``value`` на всех узлах внутри этого дерева, добавленных в заданную ``group``. Узлы, не имеющие ``property``, игнорируются. Используйте ``call_flags`` для настройки поведения этого метода (см. :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`).

\ **Примечание:** В C# ``property`` должно быть в snake_case при ссылке на встроенные свойства Godot. Предпочитайте использовать имена, представленные в классе ``PropertyName``, чтобы избежать выделения нового :ref:`StringName<class_StringName>` при каждом вызове.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_multiplayer:

.. rst-class:: classref-method

|void| **set_multiplayer**\ (\ multiplayer\: :ref:`MultiplayerAPI<class_MultiplayerAPI>`, root_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) :ref:`🔗<class_SceneTree_method_set_multiplayer>`

Устанавливает пользовательский :ref:`MultiplayerAPI<class_MultiplayerAPI>` с заданным ``root_path`` (управляя также относительными подпутями) или переопределяет стандартный, если ``root_path`` пуст.

\ **Примечание:** Не нужно настраивать :ref:`MultiplayerAPI<class_MultiplayerAPI>` для подпути, содержащей ``root_path``, вложенные пользовательские многопользовательские режимы не допускаются. То есть, если один настроен для ``"/root/Foo"``, установка одного для ``"/root/Foo/Bar"`` приведет к ошибке.

\ **Примечание:** :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>` следует вызывать *до* готовности дочерних узлов в заданном ``root_path``. Если многопользовательские узлы, такие как :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` или :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>`, добавляются в дерево до установки пользовательского многопользовательского API, они не будут работать.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_unload_current_scene:

.. rst-class:: classref-method

|void| **unload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_unload_current_scene>`

Если текущая сцена загружена, вызов этого метода выгрузит ее.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
