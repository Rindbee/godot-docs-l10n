:github_url: hide

.. _class_EditorFileDialog:

EditorFileDialog
================

**Eredita:** :ref:`ConfirmationDialog<class_ConfirmationDialog>` **<** :ref:`AcceptDialog<class_AcceptDialog>` **<** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una versione modificata di :ref:`FileDialog<class_FileDialog>` utilizzata dall'editor.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**EditorFileDialog** è una versione migliorata di :ref:`FileDialog<class_FileDialog>` disponibile solo per le estensioni dell'editor. Le funzionalità aggiuntive includono l'elenco dei file preferiti/recenti e la possibilità di vedere i file come griglia di miniature anziché come elenco.

A differenza di :ref:`FileDialog<class_FileDialog>`, **EditorFileDialog** non ha una proprietà per usare le finestre di dialogo native. Invece, è possibile abilitare le finestre di dialogo native globalmente tramite l'impostazione dell'editor :ref:`EditorSettings.interface/editor/use_native_file_dialogs<class_EditorSettings_property_interface/editor/use_native_file_dialogs>`. Sono inoltre abilitate automaticamente se in esecuzione in modalità sandbox (ad esempio su macOS).

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
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

Segnali
--------------

.. _class_EditorFileDialog_signal_dir_selected:

.. rst-class:: classref-signal

**dir_selected**\ (\ dir\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_signal_dir_selected>`

Emesso quando viene selezionata una cartella.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_signal_file_selected:

.. rst-class:: classref-signal

**file_selected**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_signal_file_selected>`

Emesso quando viene selezionata un file.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_signal_filename_filter_changed:

.. rst-class:: classref-signal

**filename_filter_changed**\ (\ filter\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_signal_filename_filter_changed>`

Emesso quando il filtro per i nomi dei file cambia.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_signal_files_selected:

.. rst-class:: classref-signal

**files_selected**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileDialog_signal_files_selected>`

Emesso quando vengono selezionati più file.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_EditorFileDialog_FileMode:

.. rst-class:: classref-enumeration

enum **FileMode**: :ref:`🔗<enum_EditorFileDialog_FileMode>`

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_FILE** = ``0``

L'**EditorFileDialog** può selezionare solo un file. Accettando la finestra si aprirà il file.

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_FILES:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_FILES** = ``1``

L'**EditorFileDialog** può selezionare più file. Accettando la finestra si apriranno tutti i file.

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_DIR:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_DIR** = ``2``

L'**EditorFileDialog** può selezionare solo una cartella. Accettando la finestra si aprirà la cartella.

.. _class_EditorFileDialog_constant_FILE_MODE_OPEN_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_OPEN_ANY** = ``3``

L'**EditorFileDialog** può selezionare un file o una cartella. Accettando la finestra si aprirà.

.. _class_EditorFileDialog_constant_FILE_MODE_SAVE_FILE:

.. rst-class:: classref-enumeration-constant

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **FILE_MODE_SAVE_FILE** = ``4``

L'**EditorFileDialog** può selezionare solo un file. Accettando la finestra il file sarà salvato.

.. rst-class:: classref-item-separator

----

.. _enum_EditorFileDialog_Access:

.. rst-class:: classref-enumeration

enum **Access**: :ref:`🔗<enum_EditorFileDialog_Access>`

.. _class_EditorFileDialog_constant_ACCESS_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_EditorFileDialog_Access>` **ACCESS_RESOURCES** = ``0``

L'**EditorFileDialog** può visualizzare solo il contenuto della cartella ``res://``.

.. _class_EditorFileDialog_constant_ACCESS_USERDATA:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_EditorFileDialog_Access>` **ACCESS_USERDATA** = ``1``

L'**EditorFileDialog** può visualizzare solo il contenuto della cartella ``user://``.

.. _class_EditorFileDialog_constant_ACCESS_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`Access<enum_EditorFileDialog_Access>` **ACCESS_FILESYSTEM** = ``2``

L'**EditorFileDialog** può visualizzare l'interità del file system locale.

.. rst-class:: classref-item-separator

----

.. _enum_EditorFileDialog_DisplayMode:

.. rst-class:: classref-enumeration

enum **DisplayMode**: :ref:`🔗<enum_EditorFileDialog_DisplayMode>`

.. _class_EditorFileDialog_constant_DISPLAY_THUMBNAILS:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **DISPLAY_THUMBNAILS** = ``0``

L'**EditorFileDialog** visualizza le risorse sotto forma di miniature.

.. _class_EditorFileDialog_constant_DISPLAY_LIST:

.. rst-class:: classref-enumeration-constant

:ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **DISPLAY_LIST** = ``1``

L'**EditorFileDialog** visualizza le risorse come un elenco di nomi di file.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_EditorFileDialog_property_access:

.. rst-class:: classref-property

:ref:`Access<enum_EditorFileDialog_Access>` **access** = ``0`` :ref:`🔗<class_EditorFileDialog_property_access>`

.. rst-class:: classref-property-setget

- |void| **set_access**\ (\ value\: :ref:`Access<enum_EditorFileDialog_Access>`\ )
- :ref:`Access<enum_EditorFileDialog_Access>` **get_access**\ (\ )

La posizione da cui l'utente può selezionare un file, inclusi ``res://``, ``user://`` e il file system locale.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_current_dir:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_dir** :ref:`🔗<class_EditorFileDialog_property_current_dir>`

.. rst-class:: classref-property-setget

- |void| **set_current_dir**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_dir**\ (\ )

La cartella attualmente occupata.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_current_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_file** :ref:`🔗<class_EditorFileDialog_property_current_file>`

.. rst-class:: classref-property-setget

- |void| **set_current_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_file**\ (\ )

Il file attualmente selezionato.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_current_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **current_path** :ref:`🔗<class_EditorFileDialog_property_current_path>`

.. rst-class:: classref-property-setget

- |void| **set_current_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_current_path**\ (\ )

Il percorso del file system nella barra dell'indirizzo.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_disable_overwrite_warning:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_overwrite_warning** = ``false`` :ref:`🔗<class_EditorFileDialog_property_disable_overwrite_warning>`

.. rst-class:: classref-property-setget

- |void| **set_disable_overwrite_warning**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_overwrite_warning_disabled**\ (\ )

Se ``true``, l'**EditorFileDialog** non avviserà l'utente prima di sovrascrivere i file.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_display_mode:

.. rst-class:: classref-property

:ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **display_mode** = ``0`` :ref:`🔗<class_EditorFileDialog_property_display_mode>`

.. rst-class:: classref-property-setget

- |void| **set_display_mode**\ (\ value\: :ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>`\ )
- :ref:`DisplayMode<enum_EditorFileDialog_DisplayMode>` **get_display_mode**\ (\ )

Il formato di visualizzazione in cui l'**EditorFileDialog** mostra le risorse all'utente.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_file_mode:

.. rst-class:: classref-property

:ref:`FileMode<enum_EditorFileDialog_FileMode>` **file_mode** = ``4`` :ref:`🔗<class_EditorFileDialog_property_file_mode>`

.. rst-class:: classref-property-setget

- |void| **set_file_mode**\ (\ value\: :ref:`FileMode<enum_EditorFileDialog_FileMode>`\ )
- :ref:`FileMode<enum_EditorFileDialog_FileMode>` **get_file_mode**\ (\ )

The dialog's open or save mode, which affects the selection behavior.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_filters:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **filters** = ``PackedStringArray()`` :ref:`🔗<class_EditorFileDialog_property_filters>`

.. rst-class:: classref-property-setget

- |void| **set_filters**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_filters**\ (\ )

I filtri per i tipi di file disponibili. Ad esempio, questo mostra solo i file ``.png`` e ``.gd``: ``set_filters(PackedStringArray(["*.png ; PNG Images","*.gd ; GDScript Files"]))``. È possibile specificare più tipi di file in un singolo filtro. ``"*.png, *.jpg, *.jpeg ; Supported Images"`` mostrerà sia i file PNG sia JPEG quando selezionati.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_option_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **option_count** = ``0`` :ref:`🔗<class_EditorFileDialog_property_option_count>`

.. rst-class:: classref-property-setget

- |void| **set_option_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_option_count**\ (\ )

Numero di :ref:`OptionButton<class_OptionButton>` e :ref:`CheckBox<class_CheckBox>` aggiuntivi nella finestra di dialogo.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_property_show_hidden_files:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_hidden_files** = ``false`` :ref:`🔗<class_EditorFileDialog_property_show_hidden_files>`

.. rst-class:: classref-property-setget

- |void| **set_show_hidden_files**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_hidden_files**\ (\ )

Se ``true``, i file e le cartelle nascosti saranno visibili nell'**EditorFileDialog**. Questa proprietà è sincronizzata con :ref:`EditorSettings.filesystem/file_dialog/show_hidden_files<class_EditorSettings_property_filesystem/file_dialog/show_hidden_files>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorFileDialog_method_add_filter:

.. rst-class:: classref-method

|void| **add_filter**\ (\ filter\: :ref:`String<class_String>`, description\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_filter>`

Adds a comma-separated file name ``filter`` option to the **EditorFileDialog** with an optional ``description``, which restricts what files can be picked.

A ``filter`` should be of the form ``"filename.extension"``, where filename and extension can be ``*`` to match any string. Filters starting with ``.`` (i.e. empty filenames) are not allowed.

For example, a ``filter`` of ``"*.tscn, *.scn"`` and a ``description`` of ``"Scenes"`` results in filter text "Scenes (\*.tscn, \*.scn)".

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_add_option:

.. rst-class:: classref-method

|void| **add_option**\ (\ name\: :ref:`String<class_String>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorFileDialog_method_add_option>`

Aggiunge un :ref:`OptionButton<class_OptionButton>` aggiuntivo alla finestra di dialogo dei file. Se ``values`` è vuoto, viene aggiunto un :ref:`CheckBox<class_CheckBox>`.

\ ``default_value_index`` dovrebbe essere un indice del valore in ``values``. Se ``values`` è vuoto, dovrebbe essere ``1`` (selezionato) o ``0`` (non selezionato).

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_add_side_menu:

.. rst-class:: classref-method

|void| **add_side_menu**\ (\ menu\: :ref:`Control<class_Control>`, title\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorFileDialog_method_add_side_menu>`

Aggiunge il ``menu`` specificato al lato della finestra di dialogo dei file con il testo del titolo ``title`` in cima. È consentito un solo menù laterale.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_clear_filename_filter:

.. rst-class:: classref-method

|void| **clear_filename_filter**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_clear_filename_filter>`

Svuota il filtro per i nomi dei file.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_clear_filters:

.. rst-class:: classref-method

|void| **clear_filters**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_clear_filters>`

Rimuove tutti i filtri tranne "Tutti i file (\*.\*)".

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_filename_filter:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_filename_filter**\ (\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_filename_filter>`

Restituisce il valore del filtro per i nomi dei file.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_line_edit:

.. rst-class:: classref-method

:ref:`LineEdit<class_LineEdit>` **get_line_edit**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_get_line_edit>`

Restituisce il LineEdit per il file selezionato.

\ **Attenzione:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un crash. Se desideri nascondere esso o uno dei suoi figli, usa la loro proprietà :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_option_default:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_option_default**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_option_default>`

Restituisce l'indice di valore predefinito dell':ref:`OptionButton<class_OptionButton>` o della :ref:`CheckBox<class_CheckBox>` con l'indice ``option``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_option_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_option_name**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_option_name>`

Restituisce il nome dell':ref:`OptionButton<class_OptionButton>` o della :ref:`CheckBox<class_CheckBox>` con l'indice ``option``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_option_values:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_option_values**\ (\ option\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_option_values>`

Restituisce un array di valori dell':ref:`OptionButton<class_OptionButton>` con l'indice ``option``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_selected_options:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_selected_options**\ (\ ) |const| :ref:`🔗<class_EditorFileDialog_method_get_selected_options>`

Restituisce un :ref:`Dictionary<class_Dictionary>` con i valori selezionati degli :ref:`OptionButton<class_OptionButton>` e/o :ref:`CheckBox<class_CheckBox>` aggiuntivi. Le chiavi del :ref:`Dictionary<class_Dictionary>` sono i nomi e i valori sono gli indici dei valori selezionati.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_get_vbox:

.. rst-class:: classref-method

:ref:`VBoxContainer<class_VBoxContainer>` **get_vbox**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_get_vbox>`

Restituisce il :ref:`VBoxContainer<class_VBoxContainer>` utilizzato per visualizzare il file system.

\ **Attenzione:** Questo è un nodo interno obbligatorio, rimuoverlo e liberarlo potrebbe causare un crash. Se desideri nascondere esso o uno dei suoi figli, usa la loro proprietà :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_invalidate:

.. rst-class:: classref-method

|void| **invalidate**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_invalidate>`

Notifica a **EditorFileDialog** che la sua visualizzazione dei dati non è più accurata. Aggiorna il contenuto della visualizzazione al prossimo aggiornamento della visualizzazione.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_popup_file_dialog:

.. rst-class:: classref-method

|void| **popup_file_dialog**\ (\ ) :ref:`🔗<class_EditorFileDialog_method_popup_file_dialog>`

Mostra l'**EditorFileDialog** nelle dimensioni e posizione predefinite per le finestre di dialogo dei file nell'editor e seleziona il nome del file se è presente un file attuale.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_filename_filter:

.. rst-class:: classref-method

|void| **set_filename_filter**\ (\ filter\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_filename_filter>`

Imposta il valore del filtro per i nomi dei file.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_option_default:

.. rst-class:: classref-method

|void| **set_option_default**\ (\ option\: :ref:`int<class_int>`, default_value_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_option_default>`

Imposta l'indice di valore predefinito dell':ref:`OptionButton<class_OptionButton>` o della :ref:`CheckBox<class_CheckBox>` con l'indice ``option``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_option_name:

.. rst-class:: classref-method

|void| **set_option_name**\ (\ option\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_option_name>`

Imposta il nome dell':ref:`OptionButton<class_OptionButton>` o della :ref:`CheckBox<class_CheckBox>` con l'indice ``option``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileDialog_method_set_option_values:

.. rst-class:: classref-method

|void| **set_option_values**\ (\ option\: :ref:`int<class_int>`, values\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_EditorFileDialog_method_set_option_values>`

Imposta i valori di opzione dell':ref:`OptionButton<class_OptionButton>` con l'indice ``option``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
