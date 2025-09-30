:github_url: hide

.. _class_EditorNode3DGizmoPlugin:

EditorNode3DGizmoPlugin
=======================

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс, используемый редактором для определения типов гизмо Node3D.

.. rst-class:: classref-introduction-group

Описание
----------------

**EditorNode3DGizmoPlugin** позволяет вам определить новый тип Gizmo. Есть два основных способа сделать это: расширение **EditorNode3DGizmoPlugin** для более простых gizmo или создание нового типа :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`. Для получения дополнительной информации см. руководство в документации.

Чтобы использовать **EditorNode3DGizmoPlugin**, сначала зарегистрируйте его с помощью метода :ref:`EditorPlugin.add_node_3d_gizmo_plugin()<class_EditorPlugin_method_add_node_3d_gizmo_plugin>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Гизмо плагин Node3D <../tutorials/plugins/editor/3d_gizmos>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_begin_handle_action<class_EditorNode3DGizmoPlugin_private_method__begin_handle_action>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_can_be_hidden<class_EditorNode3DGizmoPlugin_private_method__can_be_hidden>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_commit_handle<class_EditorNode3DGizmoPlugin_private_method__commit_handle>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual|                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_commit_subgizmos<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual| |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`   | :ref:`_create_gizmo<class_EditorNode3DGizmoPlugin_private_method__create_gizmo>`\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const|                                                                                                                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                         | :ref:`_get_gizmo_name<class_EditorNode3DGizmoPlugin_private_method__get_gizmo_name>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                         | :ref:`_get_handle_name<class_EditorNode3DGizmoPlugin_private_method__get_handle_name>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`_get_handle_value<class_EditorNode3DGizmoPlugin_private_method__get_handle_value>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_priority<class_EditorNode3DGizmoPlugin_private_method__get_priority>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`_get_subgizmo_transform<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                                                                                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_has_gizmo<class_EditorNode3DGizmoPlugin_private_method__has_gizmo>`\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const|                                                                                                                                                                                               |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_is_handle_highlighted<class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const|                                                                               |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_is_selectable_when_hidden<class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden>`\ (\ ) |virtual| |const|                                                                                                                                                                                                          |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_redraw<class_EditorNode3DGizmoPlugin_private_method__redraw>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ ) |virtual|                                                                                                                                                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_set_handle<class_EditorNode3DGizmoPlugin_private_method__set_handle>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual|                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`_set_subgizmo_transform<class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual|                                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`_subgizmos_intersect_frustum<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, frustum_planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const|                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_subgizmos_intersect_ray<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>`\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const|                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_material<class_EditorNode3DGizmoPlugin_method_add_material>`\ (\ name\: :ref:`String<class_String>`, material\: :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ )                                                                                                                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_handle_material<class_EditorNode3DGizmoPlugin_method_create_handle_material>`\ (\ name\: :ref:`String<class_String>`, billboard\: :ref:`bool<class_bool>` = false, texture\: :ref:`Texture2D<class_Texture2D>` = null\ )                                                                                                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_icon_material<class_EditorNode3DGizmoPlugin_method_create_icon_material>`\ (\ name\: :ref:`String<class_String>`, texture\: :ref:`Texture2D<class_Texture2D>`, on_top\: :ref:`bool<class_bool>` = false, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ )                                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_material<class_EditorNode3DGizmoPlugin_method_create_material>`\ (\ name\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, billboard\: :ref:`bool<class_bool>` = false, on_top\: :ref:`bool<class_bool>` = false, use_vertex_color\: :ref:`bool<class_bool>` = false\ )                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StandardMaterial3D<class_StandardMaterial3D>` | :ref:`get_material<class_EditorNode3DGizmoPlugin_method_get_material>`\ (\ name\: :ref:`String<class_String>`, gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` = null\ )                                                                                                                                                          |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorNode3DGizmoPlugin_private_method__begin_handle_action:

.. rst-class:: classref-method

|void| **_begin_handle_action**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__begin_handle_action>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__can_be_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_be_hidden**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__can_be_hidden>`

Переопределите этот метод, чтобы определить, могут ли быть скрыты обрабатываемые этим плагином гизмо. Возвращает ``true``, если не переопределено.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__commit_handle:

.. rst-class:: classref-method

|void| **_commit_handle**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, restore\: :ref:`Variant<class_Variant>`, cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__commit_handle>`

Переопределите этот метод для фиксации редактируемого дескриптора (дескрипторы должны быть ранее добавлены :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` во время :ref:`_redraw()<class_EditorNode3DGizmoPlugin_private_method__redraw>`). Обычно это означает создание действия :ref:`UndoRedo<class_UndoRedo>` для изменения, используя текущее значение дескриптора как «do» и аргумент ``restore`` как «undo».

Если аргумент ``cancel`` равен ``true``, значение ``restore`` должно быть установлено напрямую, без какого-либо действия :ref:`UndoRedo<class_UndoRedo>`.

Аргумент ``secondary`` равен ``true``, когда зафиксированный дескриптор является вторичным (см. :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` для получения дополнительной информации).

Вызывается для активных гизмо этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos:

.. rst-class:: classref-method

|void| **_commit_subgizmos**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, ids\: :ref:`PackedInt32Array<class_PackedInt32Array>`, restores\: :ref:`Array<class_Array>`\[:ref:`Transform3D<class_Transform3D>`\], cancel\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`

Переопределите этот метод, чтобы зафиксировать группу редактируемых subgizmos (см. :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>` и :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`). Обычно это означает создание действия :ref:`UndoRedo<class_UndoRedo>` для изменения, используя текущие преобразования как «do» и преобразования ``restores`` как «undo».

Если аргумент ``cancel`` равен ``true``, преобразования ``restores`` должны быть установлены напрямую, без какого-либо действия :ref:`UndoRedo<class_UndoRedo>`. Как и во всех методах subgizmo, преобразования задаются в локальном пространстве относительно Node3D gizmo. Вызывается для активных gizmos этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__create_gizmo:

.. rst-class:: classref-method

:ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` **_create_gizmo**\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__create_gizmo>`

Переопределите этот метод, чтобы вернуть пользовательский :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` для 3D-узлов по вашему выбору, верните ``null`` для остальных узлов. См. также :ref:`_has_gizmo()<class_EditorNode3DGizmoPlugin_private_method__has_gizmo>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_gizmo_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_gizmo_name**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_gizmo_name>`

Переопределите этот метод, чтобы указать имя, которое будет отображаться в меню видимости гизмо.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_handle_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_handle_name**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_handle_name>`

Переопределите этот метод, чтобы предоставить имена дескрипторов gizmo. Аргумент ``secondary`` равен ``true``, когда запрошенный дескриптор является вторичным (см. :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` для получения дополнительной информации). Вызывается для активных gizmo этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_handle_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_handle_value**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_handle_value>`

Переопределите этот метод, чтобы вернуть текущее значение дескриптора. Это значение будет запрошено в начале редактирования и использовано как аргумент ``restore`` в :ref:`_commit_handle()<class_EditorNode3DGizmoPlugin_private_method__commit_handle>`.

Аргумент ``secondary`` равен ``true``, когда запрошенный дескриптор является вторичным (см. :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` для получения дополнительной информации).

Вызывается для активных гизмо этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_priority:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_priority>`

Переопределите этот метод, чтобы задать приоритет гизмо. Гизмо с более высоким приоритетом будут иметь приоритет при обработке входных данных, таких как маркеры или выбор подгизмо.

Все встроенные гизмо редактора возвращают приоритет ``-1``. Если не переопределено, этот метод вернет ``0``, что означает, что пользовательские гизмо автоматически получат более высокий приоритет, чем встроенные гизмо.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **_get_subgizmo_transform**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>`

Переопределите этот метод, чтобы вернуть текущее преобразование subgizmo. Как и все методы subgizmo, преобразование должно быть в локальном пространстве относительно Node3D gizmo. Это преобразование будет запрошено в начале редактирования и использовано в аргументе ``restore`` в :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`. Вызывается для активных gizmos этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__has_gizmo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_gizmo**\ (\ for_node_3d\: :ref:`Node3D<class_Node3D>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__has_gizmo>`

Переопределите этот метод, чтобы определить, какие узлы Node3D имеют гизмо из этого плагина. Этот метод вызывается всякий раз, когда узел :ref:`Node3D<class_Node3D>` добавляется к сцене, если он возвращает ``true``, узлу назначается общий :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` и он добавляется в список активных гизмо этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_handle_highlighted**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__is_handle_highlighted>`

Переопределите этот метод, чтобы он возвращал ``true`` всякий раз, когда указанный дескриптор должен быть выделен в редакторе. Аргумент ``secondary`` равен ``true``, когда запрошенный дескриптор является вторичным (см. :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` для получения дополнительной информации). Вызывается для активных гизмо этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_selectable_when_hidden**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__is_selectable_when_hidden>`

Переопределите этот метод, чтобы определить, должен ли Node3D с этим гизмо быть доступным для выбора, даже если гизмо скрыто.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__redraw:

.. rst-class:: classref-method

|void| **_redraw**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__redraw>`

Переопределите этот метод, чтобы добавлять все элементы гизмо всякий раз, когда запрашивается обновление гизмо. Обычно вызывают :ref:`EditorNode3DGizmo.clear()<class_EditorNode3DGizmo_method_clear>` в начале этого метода, а затем добавляют визуальные элементы в зависимости от свойств узла.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__set_handle:

.. rst-class:: classref-method

|void| **_set_handle**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, handle_id\: :ref:`int<class_int>`, secondary\: :ref:`bool<class_bool>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__set_handle>`

Переопределите этот метод, чтобы обновить свойства узла, когда пользователь перетаскивает ручку гизмо (ранее добавленную с помощью :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`). Предоставленный ``screen_pos`` — это положение мыши в экранных координатах, а ``camera`` можно использовать для преобразования его в лучевые потоки.

Аргумент ``secondary`` равен ``true``, когда редактируемый дескриптор является вторичным (см. :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>` для получения дополнительной информации).

Вызывается для активных гизмо этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform:

.. rst-class:: classref-method

|void| **_set_subgizmo_transform**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, subgizmo_id\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) |virtual| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__set_subgizmo_transform>`

Переопределите этот метод для обновления свойств узла во время редактирования subgizmo (см. :ref:`_subgizmos_intersect_ray()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>` и :ref:`_subgizmos_intersect_frustum()<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`). ``transform`` задается в локальной системе координат Node3D. Вызывается для активных gizmos этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_subgizmos_intersect_frustum**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, frustum_planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_frustum>`

Переопределите этот метод, чтобы разрешить выбор подобъектов с помощью выделения области перетаскивания мыши. При наличии ``camera`` и ``frustum_planes`` этот метод должен возвращать, какие подобъекты содержатся в усеченных пирамидах. Аргумент ``frustum_planes`` состоит из массива со всеми :ref:`Plane<class_Plane>`, которые составляют усеченную пирамиду выбора. Возвращаемое значение должно содержать список уникальных идентификаторов подобъектов, эти идентификаторы могут иметь любое неотрицательное значение и будут использоваться в других виртуальных методах, таких как :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>` или :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`. Вызывается для активных гизмо этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray:

.. rst-class:: classref-method

:ref:`int<class_int>` **_subgizmos_intersect_ray**\ (\ gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, camera\: :ref:`Camera3D<class_Camera3D>`, screen_pos\: :ref:`Vector2<class_Vector2>`\ ) |virtual| |const| :ref:`🔗<class_EditorNode3DGizmoPlugin_private_method__subgizmos_intersect_ray>`

Переопределите этот метод, чтобы разрешить выбор подгимов с помощью щелчков мыши. При наличии ``camera`` и ``screen_pos`` в экранных координатах этот метод должен возвращать, какой подгимов следует выбрать. Возвращаемое значение должно быть уникальным идентификатором подгимов, который может иметь любое неотрицательное значение и будет использоваться в других виртуальных методах, таких как :ref:`_get_subgizmo_transform()<class_EditorNode3DGizmoPlugin_private_method__get_subgizmo_transform>` или :ref:`_commit_subgizmos()<class_EditorNode3DGizmoPlugin_private_method__commit_subgizmos>`. Вызывается для активных подгимов этого плагина.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_add_material:

.. rst-class:: classref-method

|void| **add_material**\ (\ name\: :ref:`String<class_String>`, material\: :ref:`StandardMaterial3D<class_StandardMaterial3D>`\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_add_material>`

Добавляет новый материал во внутренний список материалов для плагина. Затем к нему можно получить доступ с помощью :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>`. Не следует переопределять.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_handle_material:

.. rst-class:: classref-method

|void| **create_handle_material**\ (\ name\: :ref:`String<class_String>`, billboard\: :ref:`bool<class_bool>` = false, texture\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_handle_material>`

Создает материал ручки с его вариантами (выбранными и/или редактируемыми) и добавляет их во внутренний список материалов. Затем к ним можно получить доступ с помощью :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` и использовать в :ref:`EditorNode3DGizmo.add_handles()<class_EditorNode3DGizmo_method_add_handles>`. Не следует переопределять.

При желании можно указать текстуру для использования вместо значка по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_icon_material:

.. rst-class:: classref-method

|void| **create_icon_material**\ (\ name\: :ref:`String<class_String>`, texture\: :ref:`Texture2D<class_Texture2D>`, on_top\: :ref:`bool<class_bool>` = false, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1)\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_icon_material>`

Создает материал значка с его вариантами (выбранными и/или редактируемыми) и добавляет их во внутренний список материалов. Затем к ним можно получить доступ с помощью :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` и использовать в :ref:`EditorNode3DGizmo.add_unscaled_billboard()<class_EditorNode3DGizmo_method_add_unscaled_billboard>`. Не следует переопределять.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_create_material:

.. rst-class:: classref-method

|void| **create_material**\ (\ name\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, billboard\: :ref:`bool<class_bool>` = false, on_top\: :ref:`bool<class_bool>` = false, use_vertex_color\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_create_material>`

Создает незатененный материал с его вариантами (выбранными и/или редактируемыми) и добавляет их во внутренний список материалов. Затем к ним можно получить доступ с помощью :ref:`get_material()<class_EditorNode3DGizmoPlugin_method_get_material>` и использовать в :ref:`EditorNode3DGizmo.add_mesh()<class_EditorNode3DGizmo_method_add_mesh>` и :ref:`EditorNode3DGizmo.add_lines()<class_EditorNode3DGizmo_method_add_lines>`. Не следует переопределять.

.. rst-class:: classref-item-separator

----

.. _class_EditorNode3DGizmoPlugin_method_get_material:

.. rst-class:: classref-method

:ref:`StandardMaterial3D<class_StandardMaterial3D>` **get_material**\ (\ name\: :ref:`String<class_String>`, gizmo\: :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>` = null\ ) :ref:`🔗<class_EditorNode3DGizmoPlugin_method_get_material>`

Получает материал из внутреннего списка материалов. Если предоставлен :ref:`EditorNode3DGizmo<class_EditorNode3DGizmo>`, он попытается получить соответствующий вариант (выбранный и/или редактируемый).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
