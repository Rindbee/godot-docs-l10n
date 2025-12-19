:github_url: hide

.. _class_FileDialog:

FileDialog
==========

**Успадковує:** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`EditorFileDialog<class_EditorFileDialog>`

Діалогове вікно вибору файлів або каталогів у файловій системі.

.. rst-class:: classref-introduction-group

Опис
--------

**FileDialog** is a preset dialog used to choose files and directories in the filesystem. It supports filter masks. **FileDialog** automatically sets its window title according to the :ref:`file_mode<class_FileDialog_property_file_mode>`. If you want to use a custom title, disable this by setting :ref:`mode_overrides_title<class_FileDialog_property_mode_overrides_title>` to ``false``.

\ **Note:** **FileDialog** is invisible by default. To make it visible, call one of the ``popup_*`` methods from :ref:`Window<class_Window>` on the node, such as :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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
   | :ref:`bool<class_bool>`                           | :ref:`deleting_enabled<class_FileDialog_property_deleting_enabled>`                       | ``true``                                                                                 |
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
   | :ref:`bool<class_bool>`                           | :ref:`overwrite_warning_enabled<class_FileDialog_property_overwrite_warning_enabled>`     | ``true``                                                                                 |
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

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_filter<class_FileDialog_method_add_filter>`\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = "", mime_type\: :ref:`String<class_String>` = ""\ )          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_option<class_FileDialog_method_add_option>`\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_filename_filter<class_FileDialog_method_clear_filename_filter>`\ (\ )                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_filters<class_FileDialog_method_clear_filters>`\ (\ )                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`deselect_all<class_FileDialog_method_deselect_all>`\ (\ )                                                                                                                                          |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_favorite_list<class_FileDialog_method_get_favorite_list>`\ (\ ) |static|                                                                                                                       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LineEdit<class_LineEdit>`                   | :ref:`get_line_edit<class_FileDialog_method_get_line_edit>`\ (\ )                                                                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_option_default<class_FileDialog_method_get_option_default>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_option_name<class_FileDialog_method_get_option_name>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                            |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_option_values<class_FileDialog_method_get_option_values>`\ (\ option\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_recent_list<class_FileDialog_method_get_recent_list>`\ (\ ) |static|                                                                                                                           |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`get_selected_options<class_FileDialog_method_get_selected_options>`\ (\ ) |const|                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VBoxContainer<class_VBoxContainer>`         | :ref:`get_vbox<class_FileDialog_method_get_vbox>`\ (\ )                                                                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`invalidate<class_FileDialog_method_invalidate>`\ (\ )                                                                                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`is_customization_flag_enabled<class_FileDialog_method_is_customization_flag_enabled>`\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`popup_file_dialog<class_FileDialog_method_popup_file_dialog>`\ (\ )                                                                                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_customization_flag_enabled<class_FileDialog_method_set_customization_flag_enabled>`\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )       |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_favorite_list<class_FileDialog_method_set_favorite_list>`\ (\ favorites\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |static|                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_get_icon_callback<class_FileDialog_method_set_get_icon_callback>`\ (\ callback\: :ref:`Callable<class_Callable>`\ ) |static|                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_get_thumbnail_callback<class_FileDialog_method_set_get_thumbnail_callback>`\ (\ callback\: :ref:`Callable<class_Callable>`\ ) |static|                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_default<class_FileDialog_method_set_option_default>`\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ )                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_name<class_FileDialog_method_set_option_name>`\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_option_values<class_FileDialog_method_set_option_values>`\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ )                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_recent_list<class_FileDialog_method_set_recent_list>`\ (\ recents\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |static|                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Властивості теми
--------------------------------

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

Сигнали
--------------

.. _class_FileDialog_signal_dir_selected:

.. rst-class:: classref-signal

**dir_selected**\ (\ dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_dir_selected>`

Увімкніть, коли користувач вибирає каталог.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_file_selected:

.. rst-class:: classref-signal

**file_selected**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_file_selected>`

Увімкніть, коли користувач вибирає файл, натиснувши кнопку **OK**.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_filename_filter_changed:

.. rst-class:: classref-signal

**filename_filter_changed**\ (\ filter\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_filename_filter_changed>`

Видається, коли змінюється фільтр імен файлів.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_files_selected:

.. rst-class:: classref-signal

**files_selected**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileDialog_signal_files_selected>`

Увімкнено, коли користувач вибирає декілька файлів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_FileDialog_FileMode:

.. rst-class:: classref-enumeration

enum **FileMode**: :ref:`🔗<enum_FileDialog_FileMode>`

.. _class_FileDialog_constant_FILE_MODE_OPEN_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_FILE** = ``0``

Діалогове вікно дозволяє вибрати один, і тільки один файл.

.. _class_FileDialog_constant_FILE_MODE_OPEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_FILES** = ``1``

Діалогове вікно дозволяє вибрати декілька файлів.

.. _class_FileDialog_constant_FILE_MODE_OPEN_DIR:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_DIR** = ``2``

Діалогове вікно дозволяє вибрати каталог, вимкнути вибір будь-якого файлу.

.. _class_FileDialog_constant_FILE_MODE_OPEN_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_ANY** = ``3``

Діалогове вікно дозволяє вибрати один файл або каталог.

.. _class_FileDialog_constant_FILE_MODE_SAVE_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_SAVE_FILE** = ``4``

У діалоговому вікні буде попереджати, коли існує файл.

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_Access:

.. rst-class:: classref-enumeration

enum **Access**: :ref:`🔗<enum_FileDialog_Access>`

.. _class_FileDialog_constant_ACCESS_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_RESOURCES** = ``0``

Діалогове вікно дозволяє отримати доступ до файлів за допомогою :ref:`Resource<class_Resource>` (``res://``).

.. _class_FileDialog_constant_ACCESS_USERDATA:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_USERDATA** = ``1``

Діалогове вікно дозволяє отримати доступ до файлів під шляхом даних користувача (``user://``).

.. _class_FileDialog_constant_ACCESS_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_FILESYSTEM** = ``2``

Діалогове вікно дозволяє отримати доступ до файлів на всій файловій системі.

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_DisplayMode:

.. rst-class:: classref-enumeration

enum **DisplayMode**: :ref:`🔗<enum_FileDialog_DisplayMode>`

.. _class_FileDialog_constant_DISPLAY_THUMBNAILS:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **DISPLAY_THUMBNAILS** = ``0``

У діалоговому вікні файли відображаються у вигляді сітки мініатюр. Використовуйте :ref:`thumbnail_size<class_FileDialog_theme_constant_thumbnail_size>`, щоб налаштувати їхній розмір.

.. _class_FileDialog_constant_DISPLAY_LIST:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **DISPLAY_LIST** = ``1``

У діалоговому вікні файли відображаються у вигляді списку імен файлів.

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_Customization:

.. rst-class:: classref-enumeration

enum **Customization**: :ref:`🔗<enum_FileDialog_Customization>`

.. _class_FileDialog_constant_CUSTOMIZATION_HIDDEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_HIDDEN_FILES** = ``0``

Вмикає/вимикає видимість кнопки обраного та списку обраного в лівій частині діалогового вікна.

Еквівалентно :ref:`hidden_files_toggle_enabled<class_FileDialog_property_hidden_files_toggle_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_CREATE_FOLDER:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_CREATE_FOLDER** = ``1``

Якщо ввімкнено, відображається кнопка для створення нових каталогів (при використанні :ref:`FILE_MODE_OPEN_DIR<class_FileDialog_constant_FILE_MODE_OPEN_DIR>`, :ref:`FILE_MODE_OPEN_ANY<class_FileDialog_constant_FILE_MODE_OPEN_ANY>` або :ref:`FILE_MODE_SAVE_FILE<class_FileDialog_constant_FILE_MODE_SAVE_FILE>`).

Еквівалентно :ref:`folder_creation_enabled<class_FileDialog_property_folder_creation_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_FILE_FILTER:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FILE_FILTER** = ``2``

Якщо ввімкнено, відображається кнопка перемикання фільтра файлів.

Еквівалентно :ref:`file_filter_toggle_enabled<class_FileDialog_property_file_filter_toggle_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_FILE_SORT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FILE_SORT** = ``3``

Якщо ввімкнено, відображається кнопка параметрів сортування файлів.

Еквівалентно :ref:`file_sort_options_enabled<class_FileDialog_property_file_sort_options_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_FAVORITES:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FAVORITES** = ``4``

Якщо ввімкнено, відображається кнопка перемикання обраного та список обраного в лівій частині діалогового вікна.

Еквівалентно :ref:`favorites_enabled<class_FileDialog_property_favorites_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_RECENT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_RECENT** = ``5``

Якщо увімкнено, список нещодавно використаних каталогів відображається у лівій частині діалогового вікна.

Еквівалентно :ref:`recent_list_enabled<class_FileDialog_property_recent_list_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_LAYOUT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_LAYOUT** = ``6``

Якщо ввімкнено, відображається кнопка перемикання розкладки (список/мініатюри).

Еквівалентно :ref:`layout_toggle_enabled<class_FileDialog_property_layout_toggle_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_OVERWRITE_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_OVERWRITE_WARNING** = ``7``

If enabled, the **FileDialog** will warn the user before overwriting files in save mode.

Equivalent to :ref:`overwrite_warning_enabled<class_FileDialog_property_overwrite_warning_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_DELETE:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_DELETE** = ``8``

If enabled, the context menu will show the "Delete" option, which allows moving files and folders to trash.

Equivalent to :ref:`deleting_enabled<class_FileDialog_property_deleting_enabled>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_FileDialog_property_access:

.. rst-class:: classref-property

:ref:`Access<enum_FileDialog_Access>` **access** = ``0`` :ref:`🔗<class_FileDialog_property_access>`

.. rst-class:: classref-property-setget

- |void| **set_access**\ (\ value\: :ref:`Access<enum_FileDialog_Access>`\ )
- :ref:`Access<enum_FileDialog_Access>` **get_access**\ (\ )

Область доступу до файлової системи.

\ **Попередження:** У веб-збірках FileDialog не може отримати доступ до файлової системи хоста. В ізольованих середовищах Linux та macOS :ref:`use_native_dialog<class_FileDialog_property_use_native_dialog>` автоматично використовується для обмеження доступу до файлової системи хоста.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_dir:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_dir** :ref:`🔗<class_FileDialog_property_current_dir>`

.. rst-class:: classref-property-setget

- |void| **set_current_dir**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_dir**\ (\ )

Поточний робочий каталог файлового діалогу.

\ **Примітка:** Для рідних діалогів файлів, ця властивість тільки обробляється як підказка, і не може бути поважаний конкретними впровадженнями ОС.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_file** :ref:`🔗<class_FileDialog_property_current_file>`

.. rst-class:: classref-property-setget

- |void| **set_current_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_file**\ (\ )

В даний час вибраний файл діалогу файлів.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_path** :ref:`🔗<class_FileDialog_property_current_path>`

.. rst-class:: classref-property-setget

- |void| **set_current_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_path**\ (\ )

В даний час вибраний шлях файлу діалогу.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_deleting_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deleting_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_deleting_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

If ``true``, the context menu will show the "Delete" option, which allows moving files and folders to trash.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_display_mode:

.. rst-class:: classref-property

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **display_mode** = ``0`` :ref:`🔗<class_FileDialog_property_display_mode>`

.. rst-class:: classref-property-setget

- |void| **set_display_mode**\ (\ value\: :ref:`DisplayMode<enum_FileDialog_DisplayMode>`\ )
- :ref:`DisplayMode<enum_FileDialog_DisplayMode>` **get_display_mode**\ (\ )

Режим відображення списку файлів у діалоговому вікні.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_favorites_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **favorites_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_favorites_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Якщо ``true``, відображається кнопка перемикання обраного та список обраного у лівій частині діалогового вікна.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_filter_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **file_filter_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_file_filter_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Якщо ``true``, відображається кнопка перемикання фільтра файлів.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_mode:

.. rst-class:: classref-property

:ref:`FileMode<enum_FileDialog_FileMode>` **file_mode** = ``4`` :ref:`🔗<class_FileDialog_property_file_mode>`

.. rst-class:: classref-property-setget

- |void| **set_file_mode**\ (\ value\: :ref:`FileMode<enum_FileDialog_FileMode>`\ )
- :ref:`FileMode<enum_FileDialog_FileMode>` **get_file_mode**\ (\ )

Режим відкриття або збереження діалогового вікна, який впливає на поведінку вибору.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_sort_options_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **file_sort_options_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_file_sort_options_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Якщо ``true``, відображається кнопка параметрів сортування файлів.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_filename_filter:

.. rst-class:: classref-property

:ref:`String<class_String>` **filename_filter** = ``""`` :ref:`🔗<class_FileDialog_property_filename_filter>`

.. rst-class:: classref-property-setget

- |void| **set_filename_filter**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_filename_filter**\ (\ )

Фільтр імен файлів (незалежний від регістру). Якщо встановлено непорожній рядок, відображатимуться лише файли, які містять цей підрядок. :ref:`filename_filter<class_FileDialog_property_filename_filter>` користувач може редагувати за допомогою кнопки фільтра у верхній частині діалогового вікна файлу.

Дивіться також :ref:`filters<class_FileDialog_property_filters>`, який слід використовувати для обмеження типів файлів, які можна вибрати, замість :ref:`filename_filter<class_FileDialog_property_filename_filter>`, який має встановлювати користувач.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_filters:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **filters** = ``PackedStringArray()`` :ref:`🔗<class_FileDialog_property_filters>`

.. rst-class:: classref-property-setget

- |void| **set_filters**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_filters**\ (\ )

The available file type filters. Each filter string in the array should be formatted like this: ``*.png,*.jpg,*.jpeg;Image Files;image/png,image/jpeg``. The description text of the filter is optional and can be omitted. Both file extensions and MIME type should be always set.

\ **Note:** Embedded file dialogs and Windows file dialogs support only file extensions, while Android, Linux, and macOS file dialogs also support MIME types.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_folder_creation_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **folder_creation_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_folder_creation_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

If ``true``, shows the button for creating new directories (when using :ref:`FILE_MODE_OPEN_DIR<class_FileDialog_constant_FILE_MODE_OPEN_DIR>`, :ref:`FILE_MODE_OPEN_ANY<class_FileDialog_constant_FILE_MODE_OPEN_ANY>`, or :ref:`FILE_MODE_SAVE_FILE<class_FileDialog_constant_FILE_MODE_SAVE_FILE>`), and the context menu will have the "New Folder..." option.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_hidden_files_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hidden_files_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_hidden_files_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Якщо ``true``, відображається кнопка перемикання прихованих файлів.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_layout_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **layout_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_layout_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Якщо ``true``, відображається кнопка перемикання розкладки (список/мініатюри).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_mode_overrides_title:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mode_overrides_title** = ``true`` :ref:`🔗<class_FileDialog_property_mode_overrides_title>`

.. rst-class:: classref-property-setget

- |void| **set_mode_overrides_title**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mode_overriding_title**\ (\ )

Якщо ``true``, змінивши ``пам'ятний файл_mode`` майно буде встановлено назву вікна відповідно (наприклад, налаштування :ref:`file_mode<class_FileDialog_property_file_mode>` до :ref:`FILE_MODE_OPEN_FILE<class_FileDialog_constant_FILE_MODE_OPEN_FILE>` змінить назву вікна для "Відкрити файл").

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_option_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **option_count** = ``0`` :ref:`🔗<class_FileDialog_property_option_count>`

.. rst-class:: classref-property-setget

- |void| **set_option_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_option_count**\ (\ )

Кількість додаткових :ref:`OptionButton<class_OptionButton>`\ s і :ref:`CheckBox<class_CheckBox>`\ es в діалоговому вікні.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_overwrite_warning_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **overwrite_warning_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_overwrite_warning_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

If ``true``, the **FileDialog** will warn the user before overwriting files in save mode.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_recent_list_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recent_list_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_recent_list_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Якщо значення ``true``, список нещодавно використаних каталогів відображається у лівій частині діалогового вікна.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_root_subfolder:

.. rst-class:: classref-property

:ref:`String<class_String>` **root_subfolder** = ``""`` :ref:`🔗<class_FileDialog_property_root_subfolder>`

.. rst-class:: classref-property-setget

- |void| **set_root_subfolder**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_root_subfolder**\ (\ )

Якщо не спрага, то заданий підпам'як буде "роот" цього **FileDialog**, тобто користувач не зможе перейти до свого батьківського каталогу.

\ **Примітка:** Ця властивість ігнорується рідними діалогами файлів.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_show_hidden_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_hidden_files** = ``false`` :ref:`🔗<class_FileDialog_property_show_hidden_files>`

.. rst-class:: classref-property-setget

- |void| **set_show_hidden_files**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_hidden_files**\ (\ )

Якщо ``true``, діалогове вікно покаже приховані файли.

\ **Примітка:** Ця властивість ігнорується рідними діалоговими вікнами файлів на Android і Linux.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_use_native_dialog:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_native_dialog** = ``false`` :ref:`🔗<class_FileDialog_property_use_native_dialog>`

.. rst-class:: classref-property-setget

- |void| **set_use_native_dialog**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_native_dialog**\ (\ )

If ``true``, and if supported by the current :ref:`DisplayServer<class_DisplayServer>`, OS native dialog will be used instead of custom one.

\ **Note:** On Android, it is only supported for Android 10+ devices and when using :ref:`ACCESS_FILESYSTEM<class_FileDialog_constant_ACCESS_FILESYSTEM>`. For access mode :ref:`ACCESS_RESOURCES<class_FileDialog_constant_ACCESS_RESOURCES>` and :ref:`ACCESS_USERDATA<class_FileDialog_constant_ACCESS_USERDATA>`, the system will fall back to custom FileDialog.

\ **Note:** On Linux and macOS, sandboxed apps always use native dialogs to access the host file system.

\ **Note:** On macOS, sandboxed apps will save security-scoped bookmarks to retain access to the opened folders across multiple sessions. Use :ref:`OS.get_granted_permissions()<class_OS_method_get_granted_permissions>` to get a list of saved bookmarks.

\ **Note:** Native dialogs are isolated from the base process, file dialog properties can't be modified once the dialog is shown.

\ **Note:** This property is ignored in :ref:`EditorFileDialog<class_EditorFileDialog>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_FileDialog_method_add_filter:

.. rst-class:: classref-method

|void| **add_filter**\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = "", mime_type\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_FileDialog_method_add_filter>`

Adds a comma-separated file extension ``filter`` and comma-separated MIME type ``mime_type`` option to the **FileDialog** with an optional ``description``, which restricts what files can be picked.

A ``filter`` should be of the form ``"filename.extension"``, where filename and extension can be ``*`` to match any string. Filters starting with ``.`` (i.e. empty filenames) are not allowed.

For example, a ``filter`` of ``"*.png, *.jpg"``, a ``mime_type`` of ``image/png, image/jpeg``, and a ``description`` of ``"Images"`` results in filter text "Images (\*.png, \*.jpg)".

\ **Note:** Embedded file dialogs and Windows file dialogs support only file extensions, while Android, Linux, and macOS file dialogs also support MIME types.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_add_option:

.. rst-class:: classref-method

|void| **add_option**\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FileDialog_method_add_option>`

Додає додатковий :ref:`OptionButton<class_OptionButton>` до діалогу файлів. Якщо ``values`` порожній, то замість цього додається :ref:`CheckBox<class_CheckBox>`.

\ ``default_value_index`` повинен бути індексом значення в ``values``. Якщо ``values`` є порожнім, він повинен бути або ``1`` (увімкнений), або ``0`` (вимкнений).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_clear_filename_filter:

.. rst-class:: classref-method

|void| **clear_filename_filter**\ (\ ) :ref:`🔗<class_FileDialog_method_clear_filename_filter>`

Очистіть фільтр імен файлів.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_clear_filters:

.. rst-class:: classref-method

|void| **clear_filters**\ (\ ) :ref:`🔗<class_FileDialog_method_clear_filters>`

Очистити всі додані фільтри в діалоговому вікні.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_deselect_all:

.. rst-class:: classref-method

|void| **deselect_all**\ (\ ) :ref:`🔗<class_FileDialog_method_deselect_all>`

Очистити всі вибрані елементи в діалоговому вікні.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_favorite_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_favorite_list**\ (\ ) |static| :ref:`🔗<class_FileDialog_method_get_favorite_list>`

Returns the list of favorite directories, which is shared by all **FileDialog** nodes. Useful to store the list of favorites between project sessions. This method can be called only from the main thread.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_FileDialog_method_get_line_edit>`

Повертає рядок редагування для вибраного файлу.

\ **Налаштування:** Це необхідний внутрішній вузол, видаляючи і звільняючи його може призвести до аварії. Якщо ви хочете приховати його або будь-який з своїх дітей, скористайтеся їх :ref:`CanvasItem.pic<class_CanvasItem_property_pic>`.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_default:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_default**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_default>`

Повертає значення за замовчуванням індексу :ref:`OptionButton<class_OptionButton>` або :ref:`CheckBox<class_CheckBox>` з індексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_option_name**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_name>`

Повертає назву :ref:`OptionButton<class_OptionButton>` або :ref:`CheckBox<class_CheckBox>` з індексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_values:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_option_values**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_values>`

Повертає масив значень :ref:`OptionButton<class_OptionButton>` з індексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_recent_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recent_list**\ (\ ) |static| :ref:`🔗<class_FileDialog_method_get_recent_list>`

Returns the list of recent directories, which is shared by all **FileDialog** nodes. Useful to store the list of recents between project sessions. This method can be called only from the main thread.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_selected_options:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_selected_options**\ (\ ) |const| :ref:`🔗<class_FileDialog_method_get_selected_options>`

Повертає :ref:`Dictionary<class_Dictionary>` з вибраними значеннями додаткових :ref:`OptionButton<class_OptionButton>` та/або :ref:`CheckBox<class_CheckBox>`. Ключі :ref:`Dictionary<class_Dictionary>` – це імена, а значення – індекси вибраних значень.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_vbox:

.. rst-class:: classref-method

:ref:`VBoxContainer<class_VBoxContainer>` **get_vbox**\ (\ ) :ref:`🔗<class_FileDialog_method_get_vbox>`

Повертає вертикальний контейнер коробки діалогу, користувацькі елементи керування можна додавати до нього.

\ **Попередження:** Це необхідний внутрішній вузол, видаляючи і звільняючи його може призвести до аварії. Якщо ви хочете приховати його або будь-який з своїх дітей, скористайтеся їх :ref:`CanvasItem.pic<class_CanvasItem_property_pic>`.

\ **Примітка:** Зміни до цієї вершини ігноруються рідними діалогами файлів, використовуйте :ref:`add_option()<class_FileDialog_method_add_option>`, щоб додати користувацькі елементи до діалогу замість.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_invalidate:

.. rst-class:: classref-method

|void| **invalidate**\ (\ ) :ref:`🔗<class_FileDialog_method_invalidate>`

Invalidates and updates this dialog's content list.

\ **Note:** This method does nothing on native file dialogs.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_is_customization_flag_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const| :ref:`🔗<class_FileDialog_method_is_customization_flag_enabled>`

Повертає ``true``, якщо вказаний ``flag`` увімкнено.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_popup_file_dialog:

.. rst-class:: classref-method

|void| **popup_file_dialog**\ (\ ) :ref:`🔗<class_FileDialog_method_popup_file_dialog>`

Shows the **FileDialog** using the default size and position for file dialogs, and selects the file name if there is a current file.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_customization_flag_enabled:

.. rst-class:: classref-method

|void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_FileDialog_method_set_customization_flag_enabled>`

Sets the specified customization ``flag``, allowing to customize the features available in this **FileDialog**.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_favorite_list:

.. rst-class:: classref-method

|void| **set_favorite_list**\ (\ favorites\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |static| :ref:`🔗<class_FileDialog_method_set_favorite_list>`

Sets the list of favorite directories, which is shared by all **FileDialog** nodes. Useful to restore the list of favorites saved with :ref:`get_favorite_list()<class_FileDialog_method_get_favorite_list>`. This method can be called only from the main thread.

\ **Note:** **FileDialog** will update its internal :ref:`ItemList<class_ItemList>` of favorites when its visibility changes. Be sure to call this method earlier if you want your changes to have effect.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_get_icon_callback:

.. rst-class:: classref-method

|void| **set_get_icon_callback**\ (\ callback\: :ref:`Callable<class_Callable>`\ ) |static| :ref:`🔗<class_FileDialog_method_set_get_icon_callback>`

Sets the callback used by the **FileDialog** nodes to get a file icon, when :ref:`DISPLAY_LIST<class_FileDialog_constant_DISPLAY_LIST>` mode is used. The callback should take a single :ref:`String<class_String>` argument (file path), and return a :ref:`Texture2D<class_Texture2D>`. If an invalid texture is returned, the :ref:`file<class_FileDialog_theme_icon_file>` icon will be used instead.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_get_thumbnail_callback:

.. rst-class:: classref-method

|void| **set_get_thumbnail_callback**\ (\ callback\: :ref:`Callable<class_Callable>`\ ) |static| :ref:`🔗<class_FileDialog_method_set_get_thumbnail_callback>`

Sets the callback used by the **FileDialog** nodes to get a file icon, when :ref:`DISPLAY_THUMBNAILS<class_FileDialog_constant_DISPLAY_THUMBNAILS>` mode is used. The callback should take a single :ref:`String<class_String>` argument (file path), and return a :ref:`Texture2D<class_Texture2D>`. If an invalid texture is returned, the :ref:`file_thumbnail<class_FileDialog_theme_icon_file_thumbnail>` icon will be used instead.

Thumbnails are usually more complex and may take a while to load. To avoid stalling the application, you can use :ref:`ImageTexture<class_ImageTexture>` to asynchronously create the thumbnail.

::

    func _ready():
        FileDialog.set_get_thumbnail_callback(thumbnail_method)

    func thumbnail_method(path):
        var image_texture = ImageTexture.new()
        make_thumbnail_async(path, image_texture)
        return image_texture

    func make_thumbnail_async(path, image_texture):
        var thumbnail_texture = await generate_thumbnail(path) # Some method that generates a thumbnail.
        image_texture.set_image(thumbnail_texture.get_image())

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_default:

.. rst-class:: classref-method

|void| **set_option_default**\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_FileDialog_method_set_option_default>`

Встановлює індекс значення за замовчуванням для :ref:`OptionButton<class_OptionButton>` або :ref:`CheckBox<class_CheckBox>` з індексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_name:

.. rst-class:: classref-method

|void| **set_option_name**\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_method_set_option_name>`

Встановлює назву :ref:`OptionButton<class_OptionButton>` або :ref:`CheckBox<class_CheckBox>` з індексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_values:

.. rst-class:: classref-method

|void| **set_option_values**\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileDialog_method_set_option_values>`

Встановлює значення параметрів :ref:`OptionButton<class_OptionButton>` з індексом ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_recent_list:

.. rst-class:: classref-method

|void| **set_recent_list**\ (\ recents\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |static| :ref:`🔗<class_FileDialog_method_set_recent_list>`

Sets the list of recent directories, which is shared by all **FileDialog** nodes. Useful to restore the list of recents saved with :ref:`set_recent_list()<class_FileDialog_method_set_recent_list>`. This method can be called only from the main thread.

\ **Note:** **FileDialog** will update its internal :ref:`ItemList<class_ItemList>` of recent directories when its visibility changes. Be sure to call this method earlier if you want your changes to have effect.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи тематичної нерухомості
--------------------------------------------------------

.. _class_FileDialog_theme_color_file_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **file_disabled_color** = ``Color(1, 1, 1, 0.25)`` :ref:`🔗<class_FileDialog_theme_color_file_disabled_color>`

Колірний відтінок для відключених файлів (коли **FileDialog** використовується в режимі відкритої папки).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_color_file_icon_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **file_icon_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FileDialog_theme_color_file_icon_color>`

Кольорова модуляція наноситься на іконку файлу.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_color_folder_icon_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **folder_icon_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FileDialog_theme_color_folder_icon_color>`

Кольорова модуляція наноситься на іконку папки.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_constant_thumbnail_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **thumbnail_size** = ``64`` :ref:`🔗<class_FileDialog_theme_constant_thumbnail_size>`

Розмір мініатюр, коли ввімкнено :ref:`DISPLAY_THUMBNAILS<class_FileDialog_constant_DISPLAY_THUMBNAILS>`.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_back_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **back_folder** :ref:`🔗<class_FileDialog_theme_icon_back_folder>`

Спеціальна ікона для стріли.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_create_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **create_folder** :ref:`🔗<class_FileDialog_theme_icon_create_folder>`

Спеціальна ікона для створення кнопки папки.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite** :ref:`🔗<class_FileDialog_theme_icon_favorite>`

Спеціальна іконка для кнопки улюбленої папки.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite_down:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite_down** :ref:`🔗<class_FileDialog_theme_icon_favorite_down>`

Спеціальна піктограма для кнопки переміщення вниз по обраному запису.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite_up:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite_up** :ref:`🔗<class_FileDialog_theme_icon_favorite_up>`

Спеціальна піктограма для кнопки переміщення вгору по обраному запису.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_file:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **file** :ref:`🔗<class_FileDialog_theme_icon_file>`

Спеціальна ікона для файлів.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_file_thumbnail:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **file_thumbnail** :ref:`🔗<class_FileDialog_theme_icon_file_thumbnail>`

Піктограма файлів у режимі мініатюр.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folder** :ref:`🔗<class_FileDialog_theme_icon_folder>`

Спеціальна ікона для папок.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_folder_thumbnail:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folder_thumbnail** :ref:`🔗<class_FileDialog_theme_icon_folder_thumbnail>`

Піктограма папок у режимі мініатюр.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_forward_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **forward_folder** :ref:`🔗<class_FileDialog_theme_icon_forward_folder>`

Користувальницькі іконки для стрілки.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_list_mode:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **list_mode** :ref:`🔗<class_FileDialog_theme_icon_list_mode>`

Піктограма кнопки, яка вмикає режим списку.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_parent_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **parent_folder** :ref:`🔗<class_FileDialog_theme_icon_parent_folder>`

Користувальницькі іконки для стрілки папки батьків.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_reload:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **reload** :ref:`🔗<class_FileDialog_theme_icon_reload>`

Настроювання іконки для кнопки перевантаження.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_sort:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sort** :ref:`🔗<class_FileDialog_theme_icon_sort>`

Спеціальна піктограма для меню параметрів сортування.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_thumbnail_mode:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **thumbnail_mode** :ref:`🔗<class_FileDialog_theme_icon_thumbnail_mode>`

Піктограма кнопки, яка вмикає режим мініатюр.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_toggle_filename_filter:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **toggle_filename_filter** :ref:`🔗<class_FileDialog_theme_icon_toggle_filename_filter>`

Настроювана піктограма для кнопки-перемикача фільтра імен файлів.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_toggle_hidden:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **toggle_hidden** :ref:`🔗<class_FileDialog_theme_icon_toggle_hidden>`

Користувальницька ікона для окуляри прихована кнопка.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
