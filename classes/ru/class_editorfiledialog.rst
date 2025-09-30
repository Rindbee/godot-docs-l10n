:github_url: hide

.. _class_EditorFileDialog:

EditorFileDialog
================

**Наследует:** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Модифицированная версия :ref:`FileDialog<class_FileDialog>`, используемая редактором.

.. rst-class:: classref-introduction-group

Описание
----------------

**EditorFileDialog** — это расширенная версия :ref:`FileDialog<class_FileDialog>`, доступная только для плагинов редактора. Дополнительные функции включают список избранных/недавних файлов и возможность просмотра файлов в виде сетки миниатюр вместо списка.

В отличие от :ref:`FileDialog<class_FileDialog>`, **EditorFileDialog** не имеет свойства для использования собственных диалогов. Вместо этого собственные диалоги можно включить глобально с помощью настройки редактора :ref:`EditorSettings.interface/editor/use_native_file_dialogs<class_EditorSettings_property_interface/editor/use_native_file_dialogs>`. Они также включаются автоматически при запуске в песочнице (например, в macOS).

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`Access<enum_EditorFileDialog_Access>`           | :ref:`access<class_EditorFileDialog_property_access>`                                       | ``0``                                                                                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`current_dir<class_EditorFileDialog_property_current_dir>`                             |                                                                                          |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`current_file<class_EditorFileDialog_property_current_file>`                           |                                                                                          |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`current_path<class_EditorFileDialog_property_current_path>`                           |                                                                                          |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | dialog_hide_on_ok                                                                           | ``false`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_dialog_hide_on_ok>`) |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`disable_overwrite_warning<class_EditorFileDialog_property_disable_overwrite_warning>` | ``false``                                                                                |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` | :ref:`display_mode<class_EditorFileDialog_property_display_mode>`                           | ``0``                                                                                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`FileMode<enum_EditorFileDialog_FileMode>`       | :ref:`file_mode<class_EditorFileDialog_property_file_mode>`                                 | ``4``                                                                                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`filters<class_EditorFileDialog_property_filters>`                                     | ``PackedStringArray()``                                                                  |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`option_count<class_EditorFileDialog_property_option_count>`                           | ``0``                                                                                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`show_hidden_files<class_EditorFileDialog_property_show_hidden_files>`                 | ``false``                                                                                |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | title                                                                                       | ``"Save a File"`` (overrides :ref:`Window<class_Window_property_title>`)                 |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_filter<class_EditorFileDialog_method_add_filter>`\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = ""\ )                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_option<class_EditorFileDialog_method_add_option>`\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_side_menu<class_EditorFileDialog_method_add_side_menu>`\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ )                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_filename_filter<class_EditorFileDialog_method_clear_filename_filter>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_filters<class_EditorFileDialog_method_clear_filters>`\ (\ )                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_filename_filter<class_EditorFileDialog_method_get_filename_filter>`\ (\ ) |const|                                                                                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LineEdit<class_LineEdit>`                   | :ref:`get_line_edit<class_EditorFileDialog_method_get_line_edit>`\ (\ )                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_option_default<class_EditorFileDialog_method_get_option_default>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_option_name<class_EditorFileDialog_method_get_option_name>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_option_values<class_EditorFileDialog_method_get_option_values>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`get_selected_options<class_EditorFileDialog_method_get_selected_options>`\ (\ ) |const|                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VBoxContainer<class_VBoxContainer>`         | :ref:`get_vbox<class_EditorFileDialog_method_get_vbox>`\ (\ )                                                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`invalidate<class_EditorFileDialog_method_invalidate>`\ (\ )                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`popup_file_dialog<class_EditorFileDialog_method_popup_file_dialog>`\ (\ )                                                                                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_filename_filter<class_EditorFileDialog_method_set_filename_filter>`\ (\ filter\: :ref:`String<class_String>`\ )                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_default<class_EditorFileDialog_method_set_option_default>`\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ )                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_name<class_EditorFileDialog_method_set_option_name>`\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_values<class_EditorFileDialog_method_set_option_values>`\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ )                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_EditorFileDialog_signal_dir_selected:

.. rst-class:: classref-signal

**dir_selected**\ (\ dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_signal_dir_selected>`

Выдается при выборе каталога.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_signal_file_selected:

.. rst-class:: classref-signal

**file_selected**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_signal_file_selected>`

Выдается при выборе файла.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_signal_filename_filter_changed:

.. rst-class:: classref-signal

**filename_filter_changed**\ (\ filter\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_signal_filename_filter_changed>`

Выдается при изменении фильтра имен файлов.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_signal_files_selected:

.. rst-class:: classref-signal

**files_selected**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileDialog_signal_files_selected>`

Выдается при выборе нескольких файлов.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_EditorFileDialog_FileMode:

.. rst-class:: classref-enumeration

enum **FileMode**: :ref:`🔗<enum_EditorFileDialog_FileMode>`

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_FILE** = ``0``

**EditorFileDialog** может выбрать только один файл. Принятие окна откроет файл.

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_FILES** = ``1``

**EditorFileDialog** может выбрать несколько файлов. Принятие окна откроет все файлы.

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_DIR:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_DIR** = ``2``

**EditorFileDialog** может выбрать только один каталог. Принятие окна откроет каталог.

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_ANY** = ``3``

**EditorFileDialog** может выбрать файл или каталог. Принятие окна откроет его.

.. _class_EditorFileDialog_constant_FILE_MODE_SAVE_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_SAVE_FILE** = ``4``

**EditorFileDialog** может выбрать только один файл. Принятие окна сохранит файл.

.. rst-class:: classref-item-separator

----

.. _enum_EditorFileDialog_Access:

.. rst-class:: classref-enumeration

enum **Access**: :ref:`🔗<enum_EditorFileDialog_Access>`

.. _class_EditorFileDialog_constant_ACCESS_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_EditorFileDialog_Access>` **ACCESS_RESOURCES** = ``0``

**EditorFileDialog** может просматривать только содержимое каталога ``res://``.

.. _class_EditorFileDialog_constant_ACCESS_USERDATA:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_EditorFileDialog_Access>` **ACCESS_USERDATA** = ``1``

**EditorFileDialog** может просматривать только содержимое каталога ``user://``.

.. _class_EditorFileDialog_constant_ACCESS_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_EditorFileDialog_Access>` **ACCESS_FILESYSTEM** = ``2``

**EditorFileDialog** может просматривать всю локальную файловую систему.

.. rst-class:: classref-item-separator

----

.. _enum_EditorFileDialog_DisplayMode:

.. rst-class:: classref-enumeration

enum **DisplayMode**: :ref:`🔗<enum_EditorFileDialog_DisplayMode>`

.. _class_EditorFileDialog_constant_DISPLAY_THUMBNAILS:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **DISPLAY_THUMBNAILS** = ``0``

**EditorFileDialog** отображает ресурсы в виде миниатюр.

.. _class_EditorFileDialog_constant_DISPLAY_LIST:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **DISPLAY_LIST** = ``1``

**EditorFileDialog** отображает ресурсы в виде списка имен файлов.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_EditorFileDialog_property_access:

.. rst-class:: classref-property

:ref:`Access<enum_EditorFileDialog_Access>` **access** = ``0`` :ref:`🔗<class_EditorFileDialog_property_access>`

.. rst-class:: classref-property-setget

- |void| **set_access**\ (\ value\: :ref:`Access<enum_EditorFileDialog_Access>`\ )
- :ref:`Access<enum_EditorFileDialog_Access>` **get_access**\ (\ )

Расположение, из которого пользователь может выбрать файл, включая ``res://``, ``user://`` и локальную файловую систему.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_current_dir:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_dir** :ref:`🔗<class_EditorFileDialog_property_current_dir>`

.. rst-class:: classref-property-setget

- |void| **set_current_dir**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_dir**\ (\ )

Текущий занятый каталог.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_current_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_file** :ref:`🔗<class_EditorFileDialog_property_current_file>`

.. rst-class:: classref-property-setget

- |void| **set_current_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_file**\ (\ )

Текущий выбранный файл.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_current_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_path** :ref:`🔗<class_EditorFileDialog_property_current_path>`

.. rst-class:: classref-property-setget

- |void| **set_current_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_path**\ (\ )

Путь файловой системы в адресной строке.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_disable_overwrite_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_overwrite_warning** = ``false`` :ref:`🔗<class_EditorFileDialog_property_disable_overwrite_warning>`

.. rst-class:: classref-property-setget

- |void| **set_disable_overwrite_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overwrite_warning_disabled**\ (\ )

Если ``true``, **EditorFileDialog** не будет предупреждать пользователя перед перезаписью файлов.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_display_mode:

.. rst-class:: classref-property

:ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **display_mode** = ``0`` :ref:`🔗<class_EditorFileDialog_property_display_mode>`

.. rst-class:: classref-property-setget

- |void| **set_display_mode**\ (\ value\: :ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>`\ )
- :ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **get_display_mode**\ (\ )

Формат представления, в котором **EditorFileDialog** отображает ресурсы пользователю.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_file_mode:

.. rst-class:: classref-property

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **file_mode** = ``4`` :ref:`🔗<class_EditorFileDialog_property_file_mode>`

.. rst-class:: classref-property-setget

- |void| **set_file_mode**\ (\ value\: :ref:`FileMode<enum_EditorFileDialog_FileMode>`\ )
- :ref:`FileMode<enum_EditorFileDialog_FileMode>` **get_file_mode**\ (\ )

Режим открытия или сохранения диалогового окна, который влияет на поведение выбора.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_filters:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **filters** = ``PackedStringArray()`` :ref:`🔗<class_EditorFileDialog_property_filters>`

.. rst-class:: classref-property-setget

- |void| **set_filters**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_filters**\ (\ )

Доступные фильтры типов файлов. Например, здесь отображаются только файлы ``.png`` и ``.gd``: ``set_filters(PackedStringArray(["*.png ; PNG Images","*.gd ; GDScript Files"]))``. Несколько типов файлов также можно указать в одном фильтре. ``"*.png, *.jpg, *.jpeg ; Поддерживаемые изображения"`` при выборе отобразит как файлы PNG, так и файлы JPEG.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_option_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **option_count** = ``0`` :ref:`🔗<class_EditorFileDialog_property_option_count>`

.. rst-class:: classref-property-setget

- |void| **set_option_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_option_count**\ (\ )

Количество дополнительных :ref:`OptionButton<class_OptionButton>` и :ref:`CheckBox<class_CheckBox>`-ов в диалоговом окне.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_show_hidden_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_hidden_files** = ``false`` :ref:`🔗<class_EditorFileDialog_property_show_hidden_files>`

.. rst-class:: classref-property-setget

- |void| **set_show_hidden_files**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_hidden_files**\ (\ )

Если ``true``, скрытые файлы и каталоги будут видны в **EditorFileDialog**. Это свойство синхронизируется с :ref:`EditorSettings.filesystem/file_dialog/show_hidden_files<class_EditorSettings_property_filesystem/file_dialog/show_hidden_files>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorFileDialog_method_add_filter:

.. rst-class:: classref-method

|void| **add_filter**\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_filter>`

Добавляет параметр ``filter`` с именем файла, разделённым запятыми, в **EditorFileDialog** с необязательным параметром ``description``, который ограничивает выбор файлов.

\ ``filter`` должен иметь вид ``"имя_файла.расширение"``, где имя_файла и расширение могут быть ``*`` для соответствия любой строке. Фильтры, начинающиеся с ``.`` (т.е. пустые имена файлов), не допускаются.

Например, ``filter`` со значением ``"*.tscn, *.scn"`` и ``description`` со значением ``"Сцены"`` приведут к появлению текста фильтра "Сцены (\*.tscn, \*.scn)".

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_add_option:

.. rst-class:: classref-method

|void| **add_option**\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorFileDialog_method_add_option>`

Добавляет дополнительный :ref:`OptionButton<class_OptionButton>` в диалоговое окно файла. Если ``values`` пусто, вместо него добавляется :ref:`CheckBox<class_CheckBox>`.

\ ``default_value_index`` должен быть индексом значения в ``values``. Если ``values`` пусто, он должен быть либо ``1`` (отмечено), либо ``0`` (не отмечено).

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_add_side_menu:

.. rst-class:: classref-method

|void| **add_side_menu**\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_side_menu>`

Добавляет заданное ``menu`` в сторону диалога файла с заданным текстом ``title`` сверху. Разрешено только одно боковое меню.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_clear_filename_filter:

.. rst-class:: classref-method

|void| **clear_filename_filter**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_clear_filename_filter>`

Очистить фильтр по именам файлов.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_clear_filters:

.. rst-class:: classref-method

|void| **clear_filters**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_clear_filters>`

Удаляет все фильтры, кроме "All Files (\*.\*)".

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_filename_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_filename_filter**\ (\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_filename_filter>`

Возвращает значение фильтра для имен файлов.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_get_line_edit>`

Возвращает LineEdit для выбранного файла.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите скрыть его или любой из его дочерних элементов, используйте их свойство :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_option_default:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_default**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_option_default>`

Возвращает индекс значения по умолчанию для :ref:`OptionButton<class_OptionButton>` или :ref:`CheckBox<class_CheckBox>` с индексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_option_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_option_name**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_option_name>`

Возвращает имя :ref:`OptionButton<class_OptionButton>` или :ref:`CheckBox<class_CheckBox>` с индексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_option_values:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_option_values**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_option_values>`

Возвращает массив значений :ref:`OptionButton<class_OptionButton>` с индексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_selected_options:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_selected_options**\ (\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_selected_options>`

Возвращает :ref:`Dictionary<class_Dictionary>` с выбранными значениями дополнительных :ref:`OptionButton<class_OptionButton>` и/или :ref:`CheckBox<class_CheckBox>`. Ключи :ref:`Dictionary<class_Dictionary>` — это имена, а значения — это выбранные индексы значений.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_vbox:

.. rst-class:: classref-method

:ref:`VBoxContainer<class_VBoxContainer>` **get_vbox**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_get_vbox>`

Возвращает :ref:`VBoxContainer<class_VBoxContainer>`, используемый для отображения файловой системы.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите скрыть его или любой из его дочерних элементов, используйте их свойство :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_invalidate:

.. rst-class:: classref-method

|void| **invalidate**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_invalidate>`

Уведомить **EditorFileDialog**, что его представление данных больше не является точным. Обновляет содержимое представления при следующем обновлении представления.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_popup_file_dialog:

.. rst-class:: classref-method

|void| **popup_file_dialog**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_popup_file_dialog>`

Показывает **EditorFileDialog** с размером и положением по умолчанию для диалоговых окон файлов в редакторе и выбирает имя файла, если есть текущий файл.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_filename_filter:

.. rst-class:: classref-method

|void| **set_filename_filter**\ (\ filter\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_filename_filter>`

Устанавливает значение фильтра для имен файлов.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_option_default:

.. rst-class:: classref-method

|void| **set_option_default**\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_option_default>`

Устанавливает индекс значения по умолчанию для :ref:`OptionButton<class_OptionButton>` или :ref:`CheckBox<class_CheckBox>` с индексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_option_name:

.. rst-class:: classref-method

|void| **set_option_name**\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_option_name>`

Задает имя :ref:`OptionButton<class_OptionButton>` или :ref:`CheckBox<class_CheckBox>` с индексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_option_values:

.. rst-class:: classref-method

|void| **set_option_values**\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_option_values>`

Устанавливает значения параметров :ref:`OptionButton<class_OptionButton>` с индексом ``option``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
