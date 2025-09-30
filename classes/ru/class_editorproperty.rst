:github_url: hide

.. _class_EditorProperty:

EditorProperty
==============

**Наследует:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Пользовательский элемент управления для редактирования свойств, который можно добавить в :ref:`EditorInspector<class_EditorInspector>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Пользовательский элемент управления для редактирования свойств, который можно добавить в :ref:`EditorInspector<class_EditorInspector>`. Он добавляется через :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`checkable<class_EditorProperty_property_checkable>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`checked<class_EditorProperty_property_checked>`                   | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`deletable<class_EditorProperty_property_deletable>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_background<class_EditorProperty_property_draw_background>`   | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_label<class_EditorProperty_property_draw_label>`             | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`draw_warning<class_EditorProperty_property_draw_warning>`         | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>` | focus_mode                                                              | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`) |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`keying<class_EditorProperty_property_keying>`                     | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`label<class_EditorProperty_property_label>`                       | ``""``                                                              |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`float<class_float>`                | :ref:`name_split_ratio<class_EditorProperty_property_name_split_ratio>` | ``0.5``                                                             |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`read_only<class_EditorProperty_property_read_only>`               | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`selectable<class_EditorProperty_property_selectable>`             | ``true``                                                            |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`use_folding<class_EditorProperty_property_use_folding>`           | ``false``                                                           |
   +------------------------------------------+-------------------------------------------------------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_set_read_only<class_EditorProperty_private_method__set_read_only>`\ (\ read_only\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                            |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_update_property<class_EditorProperty_private_method__update_property>`\ (\ ) |virtual|                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`add_focusable<class_EditorProperty_method_add_focusable>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                            |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`deselect<class_EditorProperty_method_deselect>`\ (\ )                                                                                                                                                                                               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`emit_changed<class_EditorProperty_method_emit_changed>`\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>` = &"", changing\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_edited_object<class_EditorProperty_method_get_edited_object>`\ (\ )                                                                                                                                                                             |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_edited_property<class_EditorProperty_method_get_edited_property>`\ (\ ) |const|                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_selected<class_EditorProperty_method_is_selected>`\ (\ ) |const|                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`select<class_EditorProperty_method_select>`\ (\ focusable\: :ref:`int<class_int>` = -1\ )                                                                                                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_bottom_editor<class_EditorProperty_method_set_bottom_editor>`\ (\ editor\: :ref:`Control<class_Control>`\ )                                                                                                                                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_label_reference<class_EditorProperty_method_set_label_reference>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                                                                                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_object_and_property<class_EditorProperty_method_set_object_and_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ )                                                                           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`update_property<class_EditorProperty_method_update_property>`\ (\ )                                                                                                                                                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_EditorProperty_signal_multiple_properties_changed:

.. rst-class:: classref-signal

**multiple_properties_changed**\ (\ properties\: :ref:`PackedStringArray<class_PackedStringArray>`, value\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_EditorProperty_signal_multiple_properties_changed>`

Выдайте его, если хотите, чтобы несколько свойств были изменены одновременно. Не используйте, если добавлено через :ref:`EditorInspectorPlugin._parse_property()<class_EditorInspectorPlugin_private_method__parse_property>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_object_id_selected:

.. rst-class:: classref-signal

**object_id_selected**\ (\ property\: :ref:`StringName<class_StringName>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorProperty_signal_object_id_selected>`

Используется субинспекторами. Выдает его, если выбранным был идентификатор объекта.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_can_revert_changed:

.. rst-class:: classref-signal

**property_can_revert_changed**\ (\ property\: :ref:`StringName<class_StringName>`, can_revert\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_can_revert_changed>`

Генерируется, когда изменилась возможность возврата (т. е. имеет ли свойство значение, отличное от значения по умолчанию, и поэтому отображается со значком возврата).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_changed:

.. rst-class:: classref-signal

**property_changed**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>`, changing\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_changed>`

Не вызывайте его вручную, вместо этого используйте метод :ref:`emit_changed()<class_EditorProperty_method_emit_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_checked:

.. rst-class:: classref-signal

**property_checked**\ (\ property\: :ref:`StringName<class_StringName>`, checked\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_checked>`

Выдается при проверке свойства. Используется внутри.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_deleted:

.. rst-class:: classref-signal

**property_deleted**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_signal_property_deleted>`

Выдается при удалении свойства. Используется внутри.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_favorited:

.. rst-class:: classref-signal

**property_favorited**\ (\ property\: :ref:`StringName<class_StringName>`, favorited\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_favorited>`

Используйте его, если вы хотите отметить свойство как избранное и отобразить его в верхней части инспектора.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_keyed:

.. rst-class:: classref-signal

**property_keyed**\ (\ property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_signal_property_keyed>`

Выдайте его, если вы хотите добавить это значение в качестве ключа анимации (сначала проверьте, включено ли ключевое воздействие).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_keyed_with_value:

.. rst-class:: classref-signal

**property_keyed_with_value**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorProperty_signal_property_keyed_with_value>`

Используйте его, если вы хотите присвоить свойству ключ с одним значением.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_overridden:

.. rst-class:: classref-signal

**property_overridden**\ (\ ) :ref:`🔗<class_EditorProperty_signal_property_overridden>`

Выдает при запросе переопределения настроек для текущего проекта.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_property_pinned:

.. rst-class:: classref-signal

**property_pinned**\ (\ property\: :ref:`StringName<class_StringName>`, pinned\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorProperty_signal_property_pinned>`

Выдайте его, если вы хотите пометить (или снять пометку) значение свойства для сохранения независимо от того, равно ли оно значению по умолчанию.

Значение по умолчанию — это то, которое свойство получит, когда узел только что инстанцируется, и может быть получено из родительской сцены в цепочке наследования/инстанцирования, скрипта или встроенного класса.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_resource_selected:

.. rst-class:: classref-signal

**resource_selected**\ (\ path\: :ref:`String<class_String>`, resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_EditorProperty_signal_resource_selected>`

Если вы хотите, чтобы подресурс был отредактирован, отправьте этот сигнал вместе с ресурсом.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_signal_selected:

.. rst-class:: classref-signal

**selected**\ (\ path\: :ref:`String<class_String>`, focusable_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorProperty_signal_selected>`

Выдается при выборе. Используется внутри.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_EditorProperty_property_checkable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **checkable** = ``false`` :ref:`🔗<class_EditorProperty_property_checkable>`

.. rst-class:: classref-property-setget

- |void| **set_checkable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_checkable**\ (\ )

Используется инспектором, устанавливается в ``true``, когда свойство можно проверить.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_checked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **checked** = ``false`` :ref:`🔗<class_EditorProperty_property_checked>`

.. rst-class:: classref-property-setget

- |void| **set_checked**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_checked**\ (\ )

Используется инспектором, устанавливается в ``true`` при проверке свойства.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_deletable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deletable** = ``false`` :ref:`🔗<class_EditorProperty_property_deletable>`

.. rst-class:: classref-property-setget

- |void| **set_deletable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deletable**\ (\ )

Используется инспектором, устанавливается в ``true``, когда свойство может быть удалено пользователем.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_background:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_background** = ``true`` :ref:`🔗<class_EditorProperty_property_draw_background>`

.. rst-class:: classref-property-setget

- |void| **set_draw_background**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_background**\ (\ )

Используется инспектором, устанавливается в ``true`` при прорисовке фона свойства.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_label:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_label** = ``true`` :ref:`🔗<class_EditorProperty_property_draw_label>`

.. rst-class:: classref-property-setget

- |void| **set_draw_label**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_label**\ (\ )

Используется инспектором, устанавливается в ``true`` при рисовании метки свойства.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_draw_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_warning** = ``false`` :ref:`🔗<class_EditorProperty_property_draw_warning>`

.. rst-class:: classref-property-setget

- |void| **set_draw_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_warning**\ (\ )

Используется инспектором, устанавливается в ``true``, когда свойство отображается с предупреждающим цветом темы редактора. Используется для редактируемых дочерних свойств.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_keying:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keying** = ``false`` :ref:`🔗<class_EditorProperty_property_keying>`

.. rst-class:: classref-property-setget

- |void| **set_keying**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keying**\ (\ )

Используется инспектором, устанавливается в ``true``, когда свойство может добавлять ключи для анимации.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **label** = ``""`` :ref:`🔗<class_EditorProperty_property_label>`

.. rst-class:: classref-property-setget

- |void| **set_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_label**\ (\ )

Установите это свойство, чтобы изменить метку (если вы хотите ее отобразить).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_name_split_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **name_split_ratio** = ``0.5`` :ref:`🔗<class_EditorProperty_property_name_split_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_name_split_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_name_split_ratio**\ (\ )

Соотношение распределения пространства между меткой и полем редактирования.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_read_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **read_only** = ``false`` :ref:`🔗<class_EditorProperty_property_read_only>`

.. rst-class:: classref-property-setget

- |void| **set_read_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_read_only**\ (\ )

Используется инспектором, устанавливается в ``true``, когда свойство доступно только для чтения.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_selectable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **selectable** = ``true`` :ref:`🔗<class_EditorProperty_property_selectable>`

.. rst-class:: classref-property-setget

- |void| **set_selectable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_selectable**\ (\ )

Используется инспектором, устанавливается в ``true``, когда свойство можно выбрать.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_property_use_folding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_folding** = ``false`` :ref:`🔗<class_EditorProperty_property_use_folding>`

.. rst-class:: classref-property-setget

- |void| **set_use_folding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_folding**\ (\ )

Используется инспектором, устанавливается в ``true``, когда свойство использует свертывание.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorProperty_private_method__set_read_only:

.. rst-class:: classref-method

|void| **_set_read_only**\ (\ read_only\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorProperty_private_method__set_read_only>`

Вызывается при изменении статуса свойства «только для чтения». Может использоваться для изменения пользовательских элементов управления в состояние «только для чтения» или «изменяемое».

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_private_method__update_property:

.. rst-class:: classref-method

|void| **_update_property**\ (\ ) |virtual| :ref:`🔗<class_EditorProperty_private_method__update_property>`

При вызове этой виртуальной функции вам необходимо обновить свой редактор.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_add_focusable:

.. rst-class:: classref-method

|void| **add_focusable**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_add_focusable>`

Если какой-либо из добавленных элементов управления может получить фокус клавиатуры, добавьте его здесь. Это гарантирует, что фокус будет восстановлен при обновлении инспектора.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_deselect:

.. rst-class:: classref-method

|void| **deselect**\ (\ ) :ref:`🔗<class_EditorProperty_method_deselect>`

Рисовать свойство как не выбранное. Используется инспектором.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_emit_changed:

.. rst-class:: classref-method

|void| **emit_changed**\ (\ property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`, field\: :ref:`StringName<class_StringName>` = &"", changing\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EditorProperty_method_emit_changed>`

Если одно или несколько свойств изменились, это должно быть вызвано. ``field`` используется в случае, если ваш редактор может изменять поля по отдельности (например, Vector3.x). Аргумент ``changing`` позволяет избежать запроса редактора на обновление этого свойства (оставьте как ``false``, если не уверены).

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_get_edited_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_edited_object**\ (\ ) :ref:`🔗<class_EditorProperty_method_get_edited_object>`

Возвращает отредактированный объект.

\ **Примечание:** Этот метод может вернуть ``null``, если редактор еще не был связан со свойством. Однако в :ref:`_update_property()<class_EditorProperty_private_method__update_property>` и :ref:`_set_read_only()<class_EditorProperty_private_method__set_read_only>` это значение *гарантированно* не будет ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_get_edited_property:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_edited_property**\ (\ ) |const| :ref:`🔗<class_EditorProperty_method_get_edited_property>`

Возвращает отредактированное свойство. Если ваш редактор предназначен для одного свойства (добавленного через :ref:`EditorInspectorPlugin._parse_property()<class_EditorInspectorPlugin_private_method__parse_property>`), то это вернет свойство.

\ **Примечание:** Этот метод может вернуть ``null``, если редактор еще не был связан со свойством. Однако в :ref:`_update_property()<class_EditorProperty_private_method__update_property>` и :ref:`_set_read_only()<class_EditorProperty_private_method__set_read_only>` это значение *гарантированно* не будет ``null``.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_is_selected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_selected**\ (\ ) |const| :ref:`🔗<class_EditorProperty_method_is_selected>`

Возвращает ``true``, если свойство нарисовано как выбранное. Используется инспектором.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_select:

.. rst-class:: classref-method

|void| **select**\ (\ focusable\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_EditorProperty_method_select>`

Свойство рисования выбрано. Используется инспектором.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_bottom_editor:

.. rst-class:: classref-method

|void| **set_bottom_editor**\ (\ editor\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_set_bottom_editor>`

Размещает элемент управления ``editor`` под меткой свойства. Элемент управления должен быть предварительно добавлен с помощью :ref:`Node.add_child()<class_Node_method_add_child>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_label_reference:

.. rst-class:: classref-method

|void| **set_label_reference**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorProperty_method_set_label_reference>`

Используется инспектором, задает элемент управления, который будет использоваться в качестве эталона для расчета размера этикетки.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_set_object_and_property:

.. rst-class:: classref-method

|void| **set_object_and_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EditorProperty_method_set_object_and_property>`

Назначает объект и свойство для редактирования.

.. rst-class:: classref-item-separator

----

.. _class_EditorProperty_method_update_property:

.. rst-class:: classref-method

|void| **update_property**\ (\ ) :ref:`🔗<class_EditorProperty_method_update_property>`

Принудительно обновляет отображение свойств.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
