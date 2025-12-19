:github_url: hide

.. _class_FileDialog:

FileDialog
==========

**Hérite de :** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`EditorFileDialog<class_EditorFileDialog>`

Une boîte de dialogue pour sélectionner des fichiers ou des répertoires dans le système de fichiers.

.. rst-class:: classref-introduction-group

Description
-----------

**FileDialog** is a preset dialog used to choose files and directories in the filesystem. It supports filter masks. **FileDialog** automatically sets its window title according to the :ref:`file_mode<class_FileDialog_property_file_mode>`. If you want to use a custom title, disable this by setting :ref:`mode_overrides_title<class_FileDialog_property_mode_overrides_title>` to ``false``.

\ **Note:** **FileDialog** is invisible by default. To make it visible, call one of the ``popup_*`` methods from :ref:`Window<class_Window>` on the node, such as :ref:`Window.popup_centered_clamped()<class_Window_method_popup_centered_clamped>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Méthodes
----------------

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

Propriétés du thème
--------------------------------------

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

Signaux
--------------

.. _class_FileDialog_signal_dir_selected:

.. rst-class:: classref-signal

**dir_selected**\ (\ dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_dir_selected>`

Émis quand l'utilisateur sélectionne un dossier.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_file_selected:

.. rst-class:: classref-signal

**file_selected**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_file_selected>`

Émis lorsque l'utilisateur sélectionne un fichier en le double-cliquant ou en appuyant sur le bouton **OK**.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_filename_filter_changed:

.. rst-class:: classref-signal

**filename_filter_changed**\ (\ filter\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_signal_filename_filter_changed>`

Émis lorsque le filtre pour les noms de fichiers change.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_signal_files_selected:

.. rst-class:: classref-signal

**files_selected**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileDialog_signal_files_selected>`

Émis quand l'utilisateur sélectionne plusieurs fichiers.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_FileDialog_FileMode:

.. rst-class:: classref-enumeration

enum **FileMode**: :ref:`🔗<enum_FileDialog_FileMode>`

.. _class_FileDialog_constant_FILE_MODE_OPEN_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_FILE** = ``0``

Le dialogue n'autorise la sélection que d'un seul fichier.

.. _class_FileDialog_constant_FILE_MODE_OPEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_FILES** = ``1``

Le dialogue permet de sélectionner plusieurs fichiers.

.. _class_FileDialog_constant_FILE_MODE_OPEN_DIR:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_DIR** = ``2``

Le dialogue ne permet de sélectionner que des dossiers, et aucun fichier.

.. _class_FileDialog_constant_FILE_MODE_OPEN_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_OPEN_ANY** = ``3``

Le dialogue permet de sélectionner un fichier ou dossier.

.. _class_FileDialog_constant_FILE_MODE_SAVE_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_FileDialog_FileMode>` **FILE_MODE_SAVE_FILE** = ``4``

Le dialogue avertira si un fichier existe déjà.

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_Access:

.. rst-class:: classref-enumeration

enum **Access**: :ref:`🔗<enum_FileDialog_Access>`

.. _class_FileDialog_constant_ACCESS_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_RESOURCES** = ``0``

Cette fenêtre ne permet d'uniquement d'accéder qu'aux fichiers sous le chemin :ref:`Resource<class_Resource>` (``res://``).

.. _class_FileDialog_constant_ACCESS_USERDATA:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_USERDATA** = ``1``

Cette fenêtre ne permet d'uniquement d'accéder qu'aux fichiers sous le chemin des données utilisateur (``user://``).

.. _class_FileDialog_constant_ACCESS_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_FileDialog_Access>` **ACCESS_FILESYSTEM** = ``2``

Le dialogue permet d'accéder à tous les fichiers du système de fichiers.

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_DisplayMode:

.. rst-class:: classref-enumeration

enum **DisplayMode**: :ref:`🔗<enum_FileDialog_DisplayMode>`

.. _class_FileDialog_constant_DISPLAY_THUMBNAILS:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **DISPLAY_THUMBNAILS** = ``0``

Le dialogue affiche les fichiers en tant que grille de miniatures. Utilisez :ref:`thumbnail_size<class_FileDialog_theme_constant_thumbnail_size>` pour ajuster leur taille.

.. _class_FileDialog_constant_DISPLAY_LIST:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_FileDialog_DisplayMode>` **DISPLAY_LIST** = ``1``

La fenêtre affiche les fichier en tant que liste de noms de fichier.

.. rst-class:: classref-item-separator

----

.. _enum_FileDialog_Customization:

.. rst-class:: classref-enumeration

enum **Customization**: :ref:`🔗<enum_FileDialog_Customization>`

.. _class_FileDialog_constant_CUSTOMIZATION_HIDDEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_HIDDEN_FILES** = ``0``

Toggles visibility of the favorite button, and the favorite list on the left side of the dialog.

Equivalent to :ref:`hidden_files_toggle_enabled<class_FileDialog_property_hidden_files_toggle_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_CREATE_FOLDER:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_CREATE_FOLDER** = ``1``

If enabled, shows the button for creating new directories (when using :ref:`FILE_MODE_OPEN_DIR<class_FileDialog_constant_FILE_MODE_OPEN_DIR>`, :ref:`FILE_MODE_OPEN_ANY<class_FileDialog_constant_FILE_MODE_OPEN_ANY>`, or :ref:`FILE_MODE_SAVE_FILE<class_FileDialog_constant_FILE_MODE_SAVE_FILE>`).

Equivalent to :ref:`folder_creation_enabled<class_FileDialog_property_folder_creation_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_FILE_FILTER:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FILE_FILTER** = ``2``

If enabled, shows the toggle file filter button.

Equivalent to :ref:`file_filter_toggle_enabled<class_FileDialog_property_file_filter_toggle_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_FILE_SORT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FILE_SORT** = ``3``

If enabled, shows the file sorting options button.

Equivalent to :ref:`file_sort_options_enabled<class_FileDialog_property_file_sort_options_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_FAVORITES:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_FAVORITES** = ``4``

If enabled, shows the toggle favorite button and favorite list on the left side of the dialog.

Equivalent to :ref:`favorites_enabled<class_FileDialog_property_favorites_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_RECENT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_RECENT** = ``5``

If enabled, shows the recent directories list on the left side of the dialog.

Equivalent to :ref:`recent_list_enabled<class_FileDialog_property_recent_list_enabled>`.

.. _class_FileDialog_constant_CUSTOMIZATION_LAYOUT:

.. rst-class:: classref-enumeration-constant

:ref:`Customization<enum_FileDialog_Customization>` **CUSTOMIZATION_LAYOUT** = ``6``

If enabled, shows the layout switch buttons (list/thumbnails).

Equivalent to :ref:`layout_toggle_enabled<class_FileDialog_property_layout_toggle_enabled>`.

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

Descriptions des propriétés
------------------------------------------------------

.. _class_FileDialog_property_access:

.. rst-class:: classref-property

:ref:`Access<enum_FileDialog_Access>` **access** = ``0`` :ref:`🔗<class_FileDialog_property_access>`

.. rst-class:: classref-property-setget

- |void| **set_access**\ (\ value\: :ref:`Access<enum_FileDialog_Access>`\ )
- :ref:`Access<enum_FileDialog_Access>` **get_access**\ (\ )

The file system access scope.

\ **Warning:** In Web builds, FileDialog cannot access the host file system. In sandboxed Linux and macOS environments, :ref:`use_native_dialog<class_FileDialog_property_use_native_dialog>` is automatically used to allow limited access to host file system.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_dir:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_dir** :ref:`🔗<class_FileDialog_property_current_dir>`

.. rst-class:: classref-property-setget

- |void| **set_current_dir**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_dir**\ (\ )

The current working directory of the file dialog.

\ **Note:** For native file dialogs, this property is only treated as a hint and may not be respected by specific OS implementations.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_file** :ref:`🔗<class_FileDialog_property_current_file>`

.. rst-class:: classref-property-setget

- |void| **set_current_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_file**\ (\ )

L'actuel fichier sélectionné dans le dialogue de choix de fichier.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_current_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_path** :ref:`🔗<class_FileDialog_property_current_path>`

.. rst-class:: classref-property-setget

- |void| **set_current_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_path**\ (\ )

L'actuel chemin de fichier sélectionné dans le dialogue de fichier.

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

Mode d'affichage de la liste des fichiers de la boîte de dialogue.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_favorites_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **favorites_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_favorites_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

If ``true``, shows the toggle favorite button and favorite list on the left side of the dialog.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_filter_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **file_filter_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_file_filter_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

If ``true``, shows the toggle file filter button.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_mode:

.. rst-class:: classref-property

:ref:`FileMode<enum_FileDialog_FileMode>` **file_mode** = ``4`` :ref:`🔗<class_FileDialog_property_file_mode>`

.. rst-class:: classref-property-setget

- |void| **set_file_mode**\ (\ value\: :ref:`FileMode<enum_FileDialog_FileMode>`\ )
- :ref:`FileMode<enum_FileDialog_FileMode>` **get_file_mode**\ (\ )

Le mode d'ouverture ou de sauvegarde de la fenêtre, qui affecte le comportement de la sélection.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_file_sort_options_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **file_sort_options_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_file_sort_options_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

If ``true``, shows the file sorting options button.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_filename_filter:

.. rst-class:: classref-property

:ref:`String<class_String>` **filename_filter** = ``""`` :ref:`🔗<class_FileDialog_property_filename_filter>`

.. rst-class:: classref-property-setget

- |void| **set_filename_filter**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_filename_filter**\ (\ )

The filter for file names (case-insensitive). When set to a non-empty string, only files that contains the substring will be shown. :ref:`filename_filter<class_FileDialog_property_filename_filter>` can be edited by the user with the filter button at the top of the file dialog.

See also :ref:`filters<class_FileDialog_property_filters>`, which should be used to restrict the file types that can be selected instead of :ref:`filename_filter<class_FileDialog_property_filename_filter>` which is meant to be set by the user.

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

Si ``true``, affiche le bouton pour activer/désactiver les fichiers cachés.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_layout_toggle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **layout_toggle_enabled** = ``true`` :ref:`🔗<class_FileDialog_property_layout_toggle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_customization_flag_enabled**\ (\ flag\: :ref:`Customization<enum_FileDialog_Customization>`\ ) |const|

Si ``true``, affiche les boutons pour changer de disposition (liste/aperçus).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_mode_overrides_title:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mode_overrides_title** = ``true`` :ref:`🔗<class_FileDialog_property_mode_overrides_title>`

.. rst-class:: classref-property-setget

- |void| **set_mode_overrides_title**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mode_overriding_title**\ (\ )

Si ``true``, changer la propriété :ref:`file_mode<class_FileDialog_property_file_mode>` définira le titre de la fenêtre en conséquence (par exemple, définir :ref:`file_mode<class_FileDialog_property_file_mode>` à :ref:`FILE_MODE_OPEN_FILE<class_FileDialog_constant_FILE_MODE_OPEN_FILE>` modifiera le titre de la fenêtre en "Ouvrir un fichier").

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_option_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **option_count** = ``0`` :ref:`🔗<class_FileDialog_property_option_count>`

.. rst-class:: classref-property-setget

- |void| **set_option_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_option_count**\ (\ )

Le nombre d':ref:`OptionButton<class_OptionButton>`\ s et de :ref:`CheckBox<class_CheckBox>`\ s supplémentaires dans la fenêtre.

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

Si ``true``, affiche la liste des répertoires récents sur le côté gauche de la fenêtre.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_root_subfolder:

.. rst-class:: classref-property

:ref:`String<class_String>` **root_subfolder** = ``""`` :ref:`🔗<class_FileDialog_property_root_subfolder>`

.. rst-class:: classref-property-setget

- |void| **set_root_subfolder**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_root_subfolder**\ (\ )

Si non vide, le sous-dossier donné sera la "racine" de ce **FileDialog**, c'est-à-dire que l'utilisateur ne pourra pas accéder à son répertoire parent.

\ **Note :** Cette propriété est ignorée par les boîtes de dialogue de fichier natives.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_property_show_hidden_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_hidden_files** = ``false`` :ref:`🔗<class_FileDialog_property_show_hidden_files>`

.. rst-class:: classref-property-setget

- |void| **set_show_hidden_files**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_hidden_files**\ (\ )

Si ``true``, la fenêtre affichera les fichiers cachés.

\ **Note :** Cette propriété est ignorée par les boîtes de dialogue de fichier natives sur Android et Linux.

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

Descriptions des méthodes
--------------------------------------------------

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

Ajoute un :ref:`OptionButton<class_OptionButton>` supplémentaire au dialogue de fichier. Si ``values`` est vide, une :ref:`CheckBox<class_CheckBox>` est ajoutée à la place.

\ ``default_value_index`` devrait être un index de la valeur dans les ``values``. Si ``values`` est vide, il doit valoir soit ``1`` (coché), soit ``0`` (non coché).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_clear_filename_filter:

.. rst-class:: classref-method

|void| **clear_filename_filter**\ (\ ) :ref:`🔗<class_FileDialog_method_clear_filename_filter>`

Vide le filtre pour les noms de fichier.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_clear_filters:

.. rst-class:: classref-method

|void| **clear_filters**\ (\ ) :ref:`🔗<class_FileDialog_method_clear_filters>`

Efface tous les filtres ajoutés au dialogue.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_deselect_all:

.. rst-class:: classref-method

|void| **deselect_all**\ (\ ) :ref:`🔗<class_FileDialog_method_deselect_all>`

Clear all currently selected items in the dialog.

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

Renvoie le LineEdit pour le fichier sélectionné.

\ **Avertissement :** Il s'agit d'un nœud interne nécessaire, le retirer et le libérer peut causer un plantage. Si vous voulez le cacher lui ou l'un de ses enfants, utilisez plutôt :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_default:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_default**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_default>`

Renvoie l'index de valeur par défaut de l':ref:`OptionButton<class_OptionButton>` ou de la :ref:`CheckBox<class_CheckBox>` avec l'index ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_option_name**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_name>`

Renvoie le nom de l':ref:`OptionButton<class_OptionButton>` ou de la :ref:`CheckBox<class_CheckBox>` avec l'index ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_option_values:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_option_values**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_FileDialog_method_get_option_values>`

Renvoie un tableau des valeurs de l':ref:`OptionButton<class_OptionButton>` avec l'index ``option``.

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

Renvoie un :ref:`Dictionary<class_Dictionary>` avec les valeurs sélectionnées des :ref:`OptionButton<class_OptionButton>`\ s et/ou des :ref:`CheckBox<class_CheckBox>`\ s supplémentaires. Les clés du :ref:`Dictionary<class_Dictionary>` sont des noms et les valeurs sont les indices des valeur sélectionnées.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_get_vbox:

.. rst-class:: classref-method

:ref:`VBoxContainer<class_VBoxContainer>` **get_vbox**\ (\ ) :ref:`🔗<class_FileDialog_method_get_vbox>`

Returns the vertical box container of the dialog, custom controls can be added to it.

\ **Warning:** This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` property.

\ **Note:** Changes to this node are ignored by native file dialogs, use :ref:`add_option()<class_FileDialog_method_add_option>` to add custom elements to the dialog instead.

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

Returns ``true`` if the provided ``flag`` is enabled.

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

Définit l'index de valeur par défaut de l':ref:`OptionButton<class_OptionButton>` ou de la :ref:`CheckBox<class_CheckBox>` avec l'index ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_name:

.. rst-class:: classref-method

|void| **set_option_name**\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileDialog_method_set_option_name>`

Définit le nom de l':ref:`OptionButton<class_OptionButton>` ou de la :ref:`CheckBox<class_CheckBox>` avec l'index ``option``.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_method_set_option_values:

.. rst-class:: classref-method

|void| **set_option_values**\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileDialog_method_set_option_values>`

Définit les valeurs des options de l':ref:`OptionButton<class_OptionButton>` avec l'index ``option``.

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

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_FileDialog_theme_color_file_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **file_disabled_color** = ``Color(1, 1, 1, 0.25)`` :ref:`🔗<class_FileDialog_theme_color_file_disabled_color>`

La teinte de couleur pour les fichiers désactivés (lorsque le **FileDialog** est utilisé en mode ouverture de dossier).

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_color_file_icon_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **file_icon_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FileDialog_theme_color_file_icon_color>`

La couleur de modulation appliquée à l'icône de fichier.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_color_folder_icon_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **folder_icon_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FileDialog_theme_color_folder_icon_color>`

La couleur de modulation appliquée à l'icône de dossier.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_constant_thumbnail_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **thumbnail_size** = ``64`` :ref:`🔗<class_FileDialog_theme_constant_thumbnail_size>`

The size of thumbnail icons when :ref:`DISPLAY_THUMBNAILS<class_FileDialog_constant_DISPLAY_THUMBNAILS>` is enabled.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_back_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **back_folder** :ref:`🔗<class_FileDialog_theme_icon_back_folder>`

Icône personnalisée pour la flèche arrière.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_create_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **create_folder** :ref:`🔗<class_FileDialog_theme_icon_create_folder>`

Icône personnalisée pour le bouton de création de dossier.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite** :ref:`🔗<class_FileDialog_theme_icon_favorite>`

Icône personnalisée pour le bouton de dossier favori.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite_down:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite_down** :ref:`🔗<class_FileDialog_theme_icon_favorite_down>`

Custom icon for button to move down a favorite entry.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_favorite_up:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **favorite_up** :ref:`🔗<class_FileDialog_theme_icon_favorite_up>`

Custom icon for button to move up a favorite entry.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_file:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **file** :ref:`🔗<class_FileDialog_theme_icon_file>`

Icône personnalisée pour les fichiers.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_file_thumbnail:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **file_thumbnail** :ref:`🔗<class_FileDialog_theme_icon_file_thumbnail>`

Icône pour les fichiers en mode miniatures.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folder** :ref:`🔗<class_FileDialog_theme_icon_folder>`

Icône personnalisée pour les dossiers.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_folder_thumbnail:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folder_thumbnail** :ref:`🔗<class_FileDialog_theme_icon_folder_thumbnail>`

Icône pour les dossiers en mode miniatures.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_forward_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **forward_folder** :ref:`🔗<class_FileDialog_theme_icon_forward_folder>`

Icône personnalisée pour la flèche avant.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_list_mode:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **list_mode** :ref:`🔗<class_FileDialog_theme_icon_list_mode>`

Icon for the button that enables list mode.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_parent_folder:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **parent_folder** :ref:`🔗<class_FileDialog_theme_icon_parent_folder>`

L'icône personnalisée pour la flèche du dossier parent.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_reload:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **reload** :ref:`🔗<class_FileDialog_theme_icon_reload>`

Icône personnalisée pour le bouton de rechargement.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_sort:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sort** :ref:`🔗<class_FileDialog_theme_icon_sort>`

Custom icon for the sorting options menu.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_thumbnail_mode:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **thumbnail_mode** :ref:`🔗<class_FileDialog_theme_icon_thumbnail_mode>`

Icon for the button that enables thumbnail mode.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_toggle_filename_filter:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **toggle_filename_filter** :ref:`🔗<class_FileDialog_theme_icon_toggle_filename_filter>`

Custom icon for the toggle button for the filter for file names.

.. rst-class:: classref-item-separator

----

.. _class_FileDialog_theme_icon_toggle_hidden:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **toggle_hidden** :ref:`🔗<class_FileDialog_theme_icon_toggle_hidden>`

L'icône personnalisé pour le bouton d'affichage.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
