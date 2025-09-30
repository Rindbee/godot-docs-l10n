:github_url: hide

.. _class_FileDialog:

FileDialog
==========

**Наследует:** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Диалоговое окно для выбора файлов или каталогов в файловой системе.

.. rst-class:: classref-introduction-group

Описание
----------------

**FileDialog** — это предустановленный диалог, используемый для выбора файлов и каталогов в файловой системе. Он поддерживает маски фильтров. **FileDialog** автоматически устанавливает заголовок окна в соответствии с :ref:`file_mode<class_FileDialog_property_file_mode>`. Если вы хотите использовать пользовательский заголовок, отключите его, установив :ref:`mode_overrides_title<class_FileDialog_property_mode_overrides_title>` на ``false``.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`Access<enum_FileDialog_Access>`             | :ref:`access<class_FileDialog_property_access>`                                           | ``0``                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`current_dir<class_FileDialog_property_current_dir>`                                 |                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`current_file<class_FileDialog_property_current_file>`                               |                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`current_path<class_FileDialog_property_current_path>`                               |                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | dialog_hide_on_ok                                                                         | ``false`` (overrides :ref:`AcceptDialog<class_AcceptDialog_property_dialog_hide_on_ok>`) |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`DisplayMode<enum_FileDialog_DisplayMode>`   | :ref:`display_mode<class_FileDialog_property_display_mode>`                               | ``0``                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`favorites_enabled<class_FileDialog_property_favorites_enabled>`                     | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_filter_toggle_enabled<class_FileDialog_property_file_filter_toggle_enabled>`   | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`FileMode<enum_FileDialog_FileMode>`         | :ref:`file_mode<class_FileDialog_property_file_mode>`                                     | ``4``                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`file_sort_options_enabled<class_FileDialog_property_file_sort_options_enabled>`     | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`filename_filter<class_FileDialog_property_filename_filter>`                         | ``""``                                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`filters<class_FileDialog_property_filters>`                                         | ``PackedStringArray()``                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`folder_creation_enabled<class_FileDialog_property_folder_creation_enabled>`         | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`hidden_files_toggle_enabled<class_FileDialog_property_hidden_files_toggle_enabled>` | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`layout_toggle_enabled<class_FileDialog_property_layout_toggle_enabled>`             | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`mode_overrides_title<class_FileDialog_property_mode_overrides_title>`               | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`option_count<class_FileDialog_property_option_count>`                               | ``0``                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`recent_list_enabled<class_FileDialog_property_recent_list_enabled>`                 | ``true``                                                                                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`root_subfolder<class_FileDialog_property_root_subfolder>`                           | ``""``                                                                                   |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`show_hidden_files<class_FileDialog_property_show_hidden_files>`                     | ``false``                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                   | size                                                                                      | ``Vector2i(640, 360)`` (overrides :ref:`Window<class_Window_property_size>`)             |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | title                                                                                     | ``"Save a File"`` (overrides :ref:`Window<class_Window_property_title>`)                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`use_native_dialog<class_FileDialog_property_use_native_dialog>`                     | ``false``                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_filter<class_FileDialog_method_add_filter>`\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = ""\ )                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_option<class_FileDialog_method_add_option>`\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_filename_filter<class_FileDialog_method_clear_filename_filter>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_filters<class_FileDialog_method_clear_filters>`\ (\ )                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`deselect_all<class_FileDialog_method_deselect_all>`\ (\ )                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LineEdit<class_LineEdit>`                   | :ref:`get_line_edit<class_FileDialog_method_get_line_edit>`\ (\ )                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_option_default<class_FileDialog_method_get_option_default>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_option_name<class_FileDialog_method_get_option_name>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_option_values<class_FileDialog_method_get_option_values>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`get_selected_options<class_FileDialog_method_get_selected_options>`\ (\ ) |const|                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VBoxContainer<class_VBoxContainer>`         | :ref:`get_vbox<class_FileDialog_method_get_vbox>`\ (\ )                                                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`invalidate<class_FileDialog_method_invalidate>`\ (\ )                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_customization_flag_enabled<class_FileDialog_method_is_customization_flag_enabled>`\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_customization_flag_enabled<class_FileDialog_method_set_customization_flag_enabled>`\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_default<class_FileDialog_method_set_option_default>`\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ )                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_name<class_FileDialog_method_set_option_name>`\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_values<class_FileDialog_method_set_option_values>`\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ )                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`         | :ref:`file_disabled_color<class_FileDialog_theme_color_file_disabled_color>`      | ``Color(1, 1, 1, 0.25)`` |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`         | :ref:`file_icon_color<class_FileDialog_theme_color_file_icon_color>`              | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Color<class_Color>`         | :ref:`folder_icon_color<class_FileDialog_theme_color_folder_icon_color>`          | ``Color(1, 1, 1, 1)``    |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`int<class_int>`             | :ref:`thumbnail_size<class_FileDialog_theme_constant_thumbnail_size>`             | ``64``                   |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`back_folder<class_FileDialog_theme_icon_back_folder>`                       |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`create_folder<class_FileDialog_theme_icon_create_folder>`                   |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`favorite<class_FileDialog_theme_icon_favorite>`                             |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`favorite_down<class_FileDialog_theme_icon_favorite_down>`                   |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`favorite_up<class_FileDialog_theme_icon_favorite_up>`                       |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`file<class_FileDialog_theme_icon_file>`                                     |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`file_thumbnail<class_FileDialog_theme_icon_file_thumbnail>`                 |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folder<class_FileDialog_theme_icon_folder>`                                 |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folder_thumbnail<class_FileDialog_theme_icon_folder_thumbnail>`             |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`forward_folder<class_FileDialog_theme_icon_forward_folder>`                 |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`list_mode<class_FileDialog_theme_icon_list_mode>`                           |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`parent_folder<class_FileDialog_theme_icon_parent_folder>`                   |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`reload<class_FileDialog_theme_icon_reload>`                                 |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sort<class_FileDialog_theme_icon_sort>`                                     |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`thumbnail_mode<class_FileDialog_theme_icon_thumbnail_mode>`                 |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`toggle_filename_filter<class_FileDialog_theme_icon_toggle_filename_filter>` |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`toggle_hidden<class_FileDialog_theme_icon_toggle_hidden>`                   |                          |
   +-----------------------------------+-----------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_FileDialog_signal_dir_selected:

.. rst-class:: classref-signal

**dir_selected**\ (\ dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_dir_selected>`

Выдается, когда пользователь выбирает каталог.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_file_selected:

.. rst-class:: classref-signal

**file_selected**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_file_selected>`

Генерируется, когда пользователь выбирает файл двойным щелчком или нажимает кнопку **ОК**.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_filename_filter_changed:

.. rst-class:: classref-signal

**filename_filter_changed**\ (\ filter\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_filename_filter_changed>`

Выдается при изменении фильтра имен файлов.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_files_selected:

.. rst-class:: classref-signal

**files_selected**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileDialog_signal_files_selected>`

Выдается, когда пользователь выбирает несколько файлов.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_FileDialog_FileMode:

.. rst-class:: classref-enumeration

enum **FileMode**: :ref:`🔗<enum_FileDialog_FileMode>`

.. _class_FileDialog_constant_FILE_MODE_OPEN_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_FILE** = ``0``

Диалоговое окно позволяет выбрать один и только один файл.

.. _class_FileDialog_constant_FILE_MODE_OPEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_FILES** = ``1``

Диалоговое окно позволяет выбрать несколько файлов.

.. _class_FileDialog_constant_FILE_MODE_OPEN_DIR:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_DIR** = ``2``

В диалоговом окне можно выбрать только каталог, но не файл.

.. _class_FileDialog_constant_FILE_MODE_OPEN_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_ANY** = ``3``

Диалог позволяет выбрать один файл или каталог.

.. _class_FileDialog_constant_FILE_MODE_SAVE_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_SAVE_FILE** = ``4``

Диалоговое окно выдаст предупреждение, если файл уже существует.

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_Access:

.. rst-class:: classref-enumeration

enum **Access**: :ref:`🔗<enum_FileDialog_Access>`

.. _class_FileDialog_constant_ACCESS_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_RESOURCES** = ``0``

Диалоговое окно позволяет получить доступ только к файлам, находящимся по пути :ref:`Resource<class_Resource>` (``res://``).

.. _class_FileDialog_constant_ACCESS_USERDATA:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_USERDATA** = ``1``

Диалоговое окно позволяет получить доступ только к файлам, находящимся по пути к данным пользователя (``user://``).

.. _class_FileDialog_constant_ACCESS_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_FILESYSTEM** = ``2``

Диалоговое окно позволяет получить доступ к файлам во всей файловой системе.

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_DisplayMode:

.. rst-class:: classref-enumeration

enum **DisplayMode**: :ref:`🔗<enum_FileDialog_DisplayMode>`

.. _class_FileDialog_constant_DISPLAY_THUMBNAILS:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **DISPLAY_THUMBNAILS** = ``0``

Диалог отображает файлы в виде сетки миниатюр. Используйте :ref:`thumbnail_size<class_FileDialog_theme_constant_thumbnail_size>` для настройки их размера.

.. _class_FileDialog_constant_DISPLAY_LIST:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **DISPLAY_LIST** = ``1``

В диалоговом окне файлы отображаются в виде списка имен файлов.

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_Customization:

.. rst-class:: classref-enumeration

enum **Customization**: :ref:`🔗<enum_FileDialog_Customization>`

.. _class_FileDialog_constant_CUSTOMIZATION_HIDDEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_HIDDEN_FILES** = ``0``

Включает/выключает видимость кнопки «Избранное» и списка избранного в левой части диалогового окна.

Эквивалентно :ref:`hidden_files_toggle_enabled<class_FileDialog_property_hidden_files_toggle_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_CREATE_FOLDER:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_CREATE_FOLDER** = ``1``

Если включено, отображает кнопку для создания новых каталогов (при использовании :ref:`FILE_MODE_OPEN_DIR<class_FileDialog_constant_FILE_MODE_OPEN_DIR>`, :ref:`FILE_MODE_OPEN_ANY<class_FileDialog_constant_FILE_MODE_OPEN_ANY>` или :ref:`FILE_MODE_SAVE_FILE<class_FileDialog_constant_FILE_MODE_SAVE_FILE>`).

Эквивалентно :ref:`folder_creation_enabled<class_FileDialog_property_folder_creation_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_FILE_FILTER:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FILE_FILTER** = ``2``

Если включено, отображается кнопка переключения фильтра файлов.

Эквивалентно :ref:`file_filter_toggle_enabled<class_FileDialog_property_file_filter_toggle_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_FILE_SORT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FILE_SORT** = ``3``

Если включено, отображает кнопку параметров сортировки файлов.

Эквивалентно :ref:`file_sort_options_enabled<class_FileDialog_property_file_sort_options_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_FAVORITES:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FAVORITES** = ``4``

Если включено, в левой части диалогового окна отображается кнопка переключения избранного и список избранного.

Эквивалентно :ref:`favorites_enabled<class_FileDialog_property_favorites_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_RECENT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_RECENT** = ``5``

Если включено, отображает список последних каталогов в левой части диалогового окна.

Эквивалентно :ref:`recent_list_enabled<class_FileDialog_property_recent_list_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_LAYOUT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_LAYOUT** = ``6``

Если включено, отображаются кнопки переключения макета (список/миниатюры).

Эквивалентно :ref:`layout_toggle_enabled<class_FileDialog_property_layout_toggle_enabled>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_FileDialog_property_access:

.. rst-class:: classref-property

:ref:`Access<enum_FileDialog_Access>` **access** = ``0`` :ref:`🔗<class_FileDialog_property_access>`

.. rst-class:: classref-property-setget

- |void| **set_access**\ (\ value\: :ref:`Access<enum_FileDialog_Access>`\ )
- :ref:`Access<enum_FileDialog_Access>` **get_access**\ (\ )

Область доступа к файловой системе.

\ **Предупреждение:** В веб-сборках FileDialog не может получить доступ к файловой системе хоста. В изолированных средах Linux и macOS :ref:`use_native_dialog<class_FileDialog_property_use_native_dialog>` автоматически используется для разрешения ограниченного доступа к файловой системе хоста.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_dir:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_dir** :ref:`🔗<class_FileDialog_property_current_dir>`

.. rst-class:: classref-property-setget

- |void| **set_current_dir**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_dir**\ (\ )

Текущий рабочий каталог диалога файлов.

\ **Примечание:** Для собственных диалогов файлов это свойство рассматривается только как подсказка и может не учитываться определенными реализациями ОС.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_file** :ref:`🔗<class_FileDialog_property_current_file>`

.. rst-class:: classref-property-setget

- |void| **set_current_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_file**\ (\ )

Текущий выбранный файл в диалоговом окне.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_path** :ref:`🔗<class_FileDialog_property_current_path>`

.. rst-class:: classref-property-setget

- |void| **set_current_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_path**\ (\ )

Текущий выбранный путь к файлу в диалоговом окне.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_display_mode:

.. rst-class:: classref-property

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **display_mode** = ``0`` :ref:`🔗<class_FileDialog_property_display_mode>`

.. rst-class:: classref-property-setget

- |void| **set_display_mode**\ (\ value\: :ref:`DisplayMode<enum_FileDialog_DisplayMode>`\ )
- :ref:`DisplayMode<enum_FileDialog_DisplayMode>` **get_display_mode**\ (\ )

Режим отображения списка файлов диалога.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_favorites_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **favorites_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_favorites_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Если ``true``, то на левой стороне диалогового окна отображаются кнопка переключения избранного и список избранного.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_filter_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **file_filter_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_file_filter_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Если ``true``, отображается кнопка переключения фильтра файлов.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_mode:

.. rst-class:: classref-property

:ref:`FileMode<enum_FileDialog_FileMode>` **file_mode** = ``4`` :ref:`🔗<class_FileDialog_property_file_mode>`

.. rst-class:: classref-property-setget

- |void| **set_file_mode**\ (\ value\: :ref:`FileMode<enum_FileDialog_FileMode>`\ )
- :ref:`FileMode<enum_FileDialog_FileMode>` **get_file_mode**\ (\ )

Режим открытия или сохранения диалогового окна, который влияет на поведение выбора.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_sort_options_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **file_sort_options_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_file_sort_options_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Если ``true``, показывает кнопку параметров сортировки файлов.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_filename_filter:

.. rst-class:: classref-property

:ref:`String<class_String>` **filename_filter** = ``""`` :ref:`🔗<class_FileDialog_property_filename_filter>`

.. rst-class:: classref-property-setget

- |void| **set_filename_filter**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_filename_filter**\ (\ )

Фильтр для имен файлов (без учета регистра). Если задана непустая строка, будут показаны только файлы, содержащие подстроку. :ref:`filename_filter<class_FileDialog_property_filename_filter>` может редактироваться пользователем с помощью кнопки фильтра в верхней части диалогового окна файла.

См. также :ref:`filters<class_FileDialog_property_filters>`, которые следует использовать для ограничения типов файлов, которые можно выбрать, вместо :ref:`filename_filter<class_FileDialog_property_filename_filter>`, который должен устанавливаться пользователем.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_filters:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **filters** = ``PackedStringArray()`` :ref:`🔗<class_FileDialog_property_filters>`

.. rst-class:: classref-property-setget

- |void| **set_filters**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_filters**\ (\ )

Доступные фильтры типов файлов. Каждая строка фильтра в массиве должна быть отформатирована следующим образом:``*.png,*.jpg,*.jpeg;Image Files;image/png,image/jpeg``. Текст описания фильтра необязателен и может быть опущен. Всегда следует устанавливать как расширения файлов, так и тип MIME.

\ **Примечание:** Встроенный файловый диалог и файловый диалог Windows поддерживают только расширения файлов, тогда как файловые диалоги Android, Linux и macOS также поддерживают типы MIME.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_folder_creation_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **folder_creation_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_folder_creation_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Если ``true``, показывает кнопку для создания новых каталогов (при использовании :ref:`FILE_MODE_OPEN_DIR<class_FileDialog_constant_FILE_MODE_OPEN_DIR>`, :ref:`FILE_MODE_OPEN_ANY<class_FileDialog_constant_FILE_MODE_OPEN_ANY>` или :ref:`FILE_MODE_SAVE_FILE<class_FileDialog_constant_FILE_MODE_SAVE_FILE>`).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_hidden_files_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hidden_files_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_hidden_files_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Если ``true``, отображается кнопка переключения скрытых файлов.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_layout_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **layout_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_layout_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Если ``true``, отображаются кнопки переключения макета (список/миниатюры).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_mode_overrides_title:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mode_overrides_title** = ``true`` :ref:`🔗<class_FileDialog_property_mode_overrides_title>`

.. rst-class:: classref-property-setget

- |void| **set_mode_overrides_title**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mode_overriding_title**\ (\ )

Если ``true``, изменение свойства :ref:`file_mode<class_FileDialog_property_file_mode>` соответствующим образом установит заголовок окна (например, установка :ref:`file_mode<class_FileDialog_property_file_mode>` на :ref:`FILE_MODE_OPEN_FILE<class_FileDialog_constant_FILE_MODE_OPEN_FILE>` изменит заголовок окна на «Открыть файл»).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_option_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **option_count** = ``0`` :ref:`🔗<class_FileDialog_property_option_count>`

.. rst-class:: classref-property-setget

- |void| **set_option_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_option_count**\ (\ )

Количество дополнительных :ref:`OptionButton<class_OptionButton>` и :ref:`CheckBox<class_CheckBox>`-ов в диалоговом окне.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_recent_list_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recent_list_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_recent_list_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Если ``true``, отображает список последних каталогов в левой части диалогового окна.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_root_subfolder:

.. rst-class:: classref-property

:ref:`String<class_String>` **root_subfolder** = ``""`` :ref:`🔗<class_FileDialog_property_root_subfolder>`

.. rst-class:: classref-property-setget

- |void| **set_root_subfolder**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_root_subfolder**\ (\ )

Если не пусто, указанная подпапка будет «корневой» для этого **FileDialog**, т. е. пользователь не сможет перейти в ее родительский каталог.

\ **Примечание:** Это свойство игнорируется для собственных файловых диалогов.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_show_hidden_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_hidden_files** = ``false`` :ref:`🔗<class_FileDialog_property_show_hidden_files>`

.. rst-class:: classref-property-setget

- |void| **set_show_hidden_files**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_hidden_files**\ (\ )

Если ``true``, диалоговое окно покажет скрытые файлы.

\ **Примечание:** Это свойство игнорируется собственными диалоговыми окнами файлов на Android и Linux.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_use_native_dialog:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_native_dialog** = ``false`` :ref:`🔗<class_FileDialog_property_use_native_dialog>`

.. rst-class:: classref-property-setget

- |void| **set_use_native_dialog**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_native_dialog**\ (\ )

Если ``true`` и поддерживается текущим :ref:`DisplayServer<class_DisplayServer>`, вместо пользовательского диалогового окна будет использоваться нативное диалоговое окно ОС.

\ **Примечание:** На Android это поддерживается только для устройств Android 10+ и при использовании :ref:`ACCESS_FILESYSTEM<class_FileDialog_constant_ACCESS_FILESYSTEM>`. Для режима доступа :ref:`ACCESS_RESOURCES<class_FileDialog_constant_ACCESS_RESOURCES>` и :ref:`ACCESS_USERDATA<class_FileDialog_constant_ACCESS_USERDATA>` система перейдет к пользовательскому диалоговому окну FileDialog.

\ **Примечание:** В Linux и macOS изолированные приложения всегда используют нативные диалоговые окна для доступа к файловой системе хоста.

\ **Примечание:** В macOS изолированные приложения сохраняют закладки с областью безопасности, чтобы сохранить доступ к открытым папкам в течение нескольких сеансов. Используйте :ref:`OS.get_granted_permissions()<class_OS_method_get_granted_permissions>` для получения списка сохранённых закладок.

\ **Примечание:** Собственные диалоги изолированы от базового процесса, свойства диалога файла не могут быть изменены после отображения диалога.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_FileDialog_method_add_filter:

.. rst-class:: classref-method

|void| **add_filter**\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_FileDialog_method_add_filter>`

Добавляет параметр ``filter`` с именем файла, разделённым запятыми, в **FileDialog** с необязательным параметром ``description``, который ограничивает выбор файлов.

\ ``filter`` должен иметь вид ``"имя_файла.расширение"``, где имя_файла и расширение могут быть представлены в виде ``*`` для соответствия любой строке. Фильтры, начинающиеся с ``.`` (т.е. пустые имена файлов), не допускаются.

Например, ``filter`` со значением ``"*.png, *.jpg"`` и ``description`` со значением ``"Изображения"`` приведут к появлению текста фильтра "Изображения (\*.png, \*.jpg)".

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_add_option:

.. rst-class:: classref-method

|void| **add_option**\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FileDialog_method_add_option>`

Добавляет дополнительный :ref:`OptionButton<class_OptionButton>` в диалоговое окно файла. Если ``values`` пусто, вместо него добавляется :ref:`CheckBox<class_CheckBox>`.

\ ``default_value_index`` должен быть индексом значения в ``values``. Если ``values`` пусто, он должен быть либо ``1`` (отмечено), либо ``0`` (не отмечено).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_clear_filename_filter:

.. rst-class:: classref-method

|void| **clear_filename_filter**\ (\ ) :ref:`🔗<class_FileDialog_method_clear_filename_filter>`

Очистить фильтр по именам файлов.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_clear_filters:

.. rst-class:: classref-method

|void| **clear_filters**\ (\ ) :ref:`🔗<class_FileDialog_method_clear_filters>`

Очистите все добавленные фильтры в диалоговом окне.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_deselect_all:

.. rst-class:: classref-method

|void| **deselect_all**\ (\ ) :ref:`🔗<class_FileDialog_method_deselect_all>`

Очистить все выбранные элементы в диалоговом окне.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_FileDialog_method_get_line_edit>`

Возвращает LineEdit для выбранного файла.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите скрыть его или любой из его дочерних элементов, используйте их свойство :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_default:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_default**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_default>`

Возвращает индекс значения по умолчанию для :ref:`OptionButton<class_OptionButton>` или :ref:`CheckBox<class_CheckBox>` с индексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_option_name**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_name>`

Возвращает имя :ref:`OptionButton<class_OptionButton>` или :ref:`CheckBox<class_CheckBox>` с индексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_values:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_option_values**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_values>`

Возвращает массив значений :ref:`OptionButton<class_OptionButton>` с индексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_selected_options:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_selected_options**\ (\ ) |const| :ref:`🔗<class_FileDialog_method_get_selected_options>`

Возвращает :ref:`Dictionary<class_Dictionary>` с выбранными значениями дополнительных :ref:`OptionButton<class_OptionButton>` и/или :ref:`CheckBox<class_CheckBox>`. Ключи :ref:`Dictionary<class_Dictionary>` — это имена, а значения — это выбранные индексы значений.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_vbox:

.. rst-class:: classref-method

:ref:`VBoxContainer<class_VBoxContainer>` **get_vbox**\ (\ ) :ref:`🔗<class_FileDialog_method_get_vbox>`

Возвращает вертикальный контейнер диалога, в него можно добавлять пользовательские элементы управления.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите скрыть его или любой из его дочерних элементов, используйте их свойство :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

\ **Примечание:** Изменения этого узла игнорируются собственными файловыми диалогами, используйте :ref:`add_option()<class_FileDialog_method_add_option>` для добавления пользовательских элементов в диалог.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_invalidate:

.. rst-class:: classref-method

|void| **invalidate**\ (\ ) :ref:`🔗<class_FileDialog_method_invalidate>`

Отменить и обновить текущий список содержимого диалога.

\ **Примечание:** Этот метод ничего не делает в собственных файловых диалогах.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_is_customization_flag_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const| :ref:`🔗<class_FileDialog_method_is_customization_flag_enabled>`

Возвращает ``true``, если указанный ``flag`` включен.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_customization_flag_enabled:

.. rst-class:: classref-method

|void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_FileDialog_method_set_customization_flag_enabled>`

Включает/выключает указанную настройку ``flag``, позволяя настраивать функции, доступные в этом **FileDialog**. См. :ref:`Customization<enum_FileDialog_Customization>` для получения информации о параметрах.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_default:

.. rst-class:: classref-method

|void| **set_option_default**\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FileDialog_method_set_option_default>`

Устанавливает индекс значения по умолчанию для :ref:`OptionButton<class_OptionButton>` или :ref:`CheckBox<class_CheckBox>` с индексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_name:

.. rst-class:: classref-method

|void| **set_option_name**\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_method_set_option_name>`

Задает имя :ref:`OptionButton<class_OptionButton>` или :ref:`CheckBox<class_CheckBox>` с индексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_values:

.. rst-class:: classref-method

|void| **set_option_values**\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileDialog_method_set_option_values>`

Устанавливает значения параметров :ref:`OptionButton<class_OptionButton>` с индексом ``option``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_FileDialog_theme_color_file_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **file_disabled_color** = ``Color(1, 1, 1, 0.25)`` :ref:`🔗<class_FileDialog_theme_color_file_disabled_color>`

Цветовой оттенок для отключенных файлов (когда **FileDialog** используется в режиме открытой папки).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_color_file_icon_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **file_icon_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FileDialog_theme_color_file_icon_color>`

Цветовая модуляция, примененная к значку файла.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_color_folder_icon_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **folder_icon_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FileDialog_theme_color_folder_icon_color>`

Цветовая модуляция, примененная к значку папки.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_constant_thumbnail_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **thumbnail_size** = ``64`` :ref:`🔗<class_FileDialog_theme_constant_thumbnail_size>`

Размер миниатюрных значков, когда включен :ref:`DISPLAY_THUMBNAILS<class_FileDialog_constant_DISPLAY_THUMBNAILS>`.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_back_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **back_folder** :ref:`🔗<class_FileDialog_theme_icon_back_folder>`

Пользовательский значок для стрелки «назад».

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_create_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **create_folder** :ref:`🔗<class_FileDialog_theme_icon_create_folder>`

Пользовательский значок для кнопки создания папки.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite** :ref:`🔗<class_FileDialog_theme_icon_favorite>`

Пользовательский значок для кнопки избранной папки.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite_down:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite_down** :ref:`🔗<class_FileDialog_theme_icon_favorite_down>`

Пользовательский значок для кнопки перемещения вниз по избранной записи.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite_up:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite_up** :ref:`🔗<class_FileDialog_theme_icon_favorite_up>`

Пользовательский значок для кнопки перемещения избранной записи вверх.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_file:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **file** :ref:`🔗<class_FileDialog_theme_icon_file>`

Пользовательский значок для файлов.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_file_thumbnail:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **file_thumbnail** :ref:`🔗<class_FileDialog_theme_icon_file_thumbnail>`

Значок для файлов в режиме миниатюр.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folder** :ref:`🔗<class_FileDialog_theme_icon_folder>`

Пользовательский значок для папок.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_folder_thumbnail:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folder_thumbnail** :ref:`🔗<class_FileDialog_theme_icon_folder_thumbnail>`

Значок для папок в режиме миниатюр.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_forward_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **forward_folder** :ref:`🔗<class_FileDialog_theme_icon_forward_folder>`

Пользовательский значок для стрелки "вперед".

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_list_mode:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **list_mode** :ref:`🔗<class_FileDialog_theme_icon_list_mode>`

Значок кнопки, включающей режим списка.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_parent_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **parent_folder** :ref:`🔗<class_FileDialog_theme_icon_parent_folder>`

Пользовательский значок для стрелки родительской папки.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_reload:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **reload** :ref:`🔗<class_FileDialog_theme_icon_reload>`

Пользовательский значок для кнопки "Обновить".

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_sort:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sort** :ref:`🔗<class_FileDialog_theme_icon_sort>`

Пользовательский значок для меню параметров сортировки.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_thumbnail_mode:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **thumbnail_mode** :ref:`🔗<class_FileDialog_theme_icon_thumbnail_mode>`

Значок кнопки, включающей режим миниатюр.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_toggle_filename_filter:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **toggle_filename_filter** :ref:`🔗<class_FileDialog_theme_icon_toggle_filename_filter>`

Пользовательский значок для переключателя фильтра по именам файлов.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_toggle_hidden:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **toggle_hidden** :ref:`🔗<class_FileDialog_theme_icon_toggle_hidden>`

Пользовательский значок для кнопки переключения скрытой информации.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
