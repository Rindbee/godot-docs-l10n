:github_url: hide

.. _class_EditorFeatureProfile:

EditorFeatureProfile
====================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un profilo di funzionalità dell'editor che permette di disattivare certe funzionalità.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un profilo delle funzionalità dell'editor può essere utilizzato per disabilitare specifiche funzionalità dell'editor Godot. Quando disabilitate, le funzionalità non appariranno nell'editor, il che rende l'editor più semplice. Ciò è utile per scopi educativi per ridurre la confusione o quando si lavora in un gruppo. Ad esempio, artisti e progettisti di livelli potrebbero utilizzare un profilo delle funzionalità che disabilita l'editor di script per evitare di apportare modifiche accidentali a file che non dovrebbero modificare.

Per gestire visivamente i profili delle funzionalità dell'editor, utilizza **Editor > Gestisci profili delle funzionalità...** nella parte superiore della finestra dell'editor.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_feature_name<class_EditorFeatureProfile_method_get_feature_name>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ )                                                                                             |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_disabled<class_EditorFeatureProfile_method_is_class_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                              |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_editor_disabled<class_EditorFeatureProfile_method_is_class_editor_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_class_property_disabled<class_EditorFeatureProfile_method_is_class_property_disabled>`\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const|                            |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_feature_disabled<class_EditorFeatureProfile_method_is_feature_disabled>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) |const|                                                                               |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_file<class_EditorFeatureProfile_method_load_from_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                          |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save_to_file<class_EditorFeatureProfile_method_save_to_file>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                                              |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class<class_EditorFeatureProfile_method_set_disable_class>`\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ )                                                                   |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class_editor<class_EditorFeatureProfile_method_set_disable_class_editor>`\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ )                                                     |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_class_property<class_EditorFeatureProfile_method_set_disable_class_property>`\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_disable_feature<class_EditorFeatureProfile_method_set_disable_feature>`\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`, disable\: :ref:`bool<class_bool>`\ )                                                    |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_EditorFeatureProfile_Feature:

.. rst-class:: classref-enumeration

enum **Feature**: :ref:`🔗<enum_EditorFeatureProfile_Feature>`

.. _class_EditorFeatureProfile_constant_FEATURE_3D:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_3D** = ``0``

L'editor 3D. Se questa funzionalità è disabilitata, l'editor 3D non sarà visualizzato ma i nodi 3D saranno comunque visualizzati nella finestra di dialogo Crea nuovo nodo.

.. _class_EditorFeatureProfile_constant_FEATURE_SCRIPT:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SCRIPT** = ``1``

La scheda Script, che contiene l'editor di script e il browser di riferimento delle classi. Se questa funzionalità è disabilitata, la scheda Script non sarà visualizzata.

.. _class_EditorFeatureProfile_constant_FEATURE_ASSET_LIB:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_ASSET_LIB** = ``2``

La scheda AssetLib. Se questa funzionalità è disabilitata, la scheda AssetLib non sarà visualizzata.

.. _class_EditorFeatureProfile_constant_FEATURE_SCENE_TREE:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SCENE_TREE** = ``3``

Modifica dell'albero della scena. Se questa funzionalità è disabilitata, il pannello dell'albero della scena sarà comunque visibile ma sarà di sola lettura.

.. _class_EditorFeatureProfile_constant_FEATURE_NODE_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_NODE_DOCK** = ``4``

**Deprecato:** Replaced by the Signals and Groups docks.

Il pannello Nodo. Se questa funzionalità è disabilitata, i segnali e i gruppi non saranno visibili e modificabili dall'editor.

.. _class_EditorFeatureProfile_constant_FEATURE_FILESYSTEM_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_FILESYSTEM_DOCK** = ``5``

Il pannello del FileSystem. Se questa funzionalità è disabilitata, il pannello del FileSystem non sarà visibile.

.. _class_EditorFeatureProfile_constant_FEATURE_IMPORT_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_IMPORT_DOCK** = ``6``

Il pannello di importazione. Se questa funzionalità è disabilitata, il pannello di importazione non sarà visibile.

.. _class_EditorFeatureProfile_constant_FEATURE_HISTORY_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_HISTORY_DOCK** = ``7``

Il pannello Cronologia. Se questa funzionalità è disabilitata, il pannello Cronologia non sarà visibile.

.. _class_EditorFeatureProfile_constant_FEATURE_GAME:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_GAME** = ``8``

La scheda Gioco, che consente di incorporare la finestra di gioco e selezionare i nodi cliccando al suo interno. Se questa funzionalità è disabilitata, la scheda Gioco non sarà visualizzata.

.. _class_EditorFeatureProfile_constant_FEATURE_SIGNALS_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_SIGNALS_DOCK** = ``9``

The Signals dock. If this feature is disabled, signals won't be visible and modifiable from the editor.

.. _class_EditorFeatureProfile_constant_FEATURE_GROUPS_DOCK:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_GROUPS_DOCK** = ``10``

The Groups dock. If this feature is disabled, groups won't be visible and modifiable from the editor.

.. _class_EditorFeatureProfile_constant_FEATURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Feature<enum_EditorFeatureProfile_Feature>` **FEATURE_MAX** = ``11``

Rappresenta la dimensione dell'enumerazione :ref:`Feature<enum_EditorFeatureProfile_Feature>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorFeatureProfile_method_get_feature_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_feature_name**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_get_feature_name>`

Restituisce il nome leggibile in chiaro della funzionalità ``feature`` specificata.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_disabled>`

Restituisce ``true`` se la classe specificata da ``class_name`` è disabilitata. Quando è disabilitata, la classe non apparirà nel dialogo di Crea un Nuovo Nodo.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_editor_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_editor_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_editor_disabled>`

Restituisce ``true`` se la modifica per la classe specificata da ``class_name`` è disabilitata. Quando disabilitata, la classe apparirà comunque nella finestra di dialogo Crea nuovo nodo, ma l'Ispettore sarà di sola lettura quando si seleziona un nodo che estende la classe.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_class_property_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_class_property_disabled**\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_class_property_disabled>`

Restituisce ``true`` se ``property`` è disabilitato nella classe specificata da ``class_name``. Quando una proprietà è disabilitata, non sarà visualizzata nell'Ispettore quando si seleziona un nodo che estende la classe specificata da ``class_name``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_is_feature_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_feature_disabled**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`\ ) |const| :ref:`🔗<class_EditorFeatureProfile_method_is_feature_disabled>`

Restituisce ``true`` se la funzionalità ``feature`` è disabilitata. Quando è disabilitata, una funzionalità scomparirà dall'editor completamente.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_load_from_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_load_from_file>`

Carica un profilo di funzionalità dell'editor da un file. Il file deve seguire il formato JSON ottenuto utilizzando il pulsante **Esporta** del gestore dei profili delle funzionalità o il metodo :ref:`save_to_file()<class_EditorFeatureProfile_method_save_to_file>`.

\ **Nota:** I profili delle funzionalità creati tramite l'interfaccia utente sono caricati dalla cartella ``feature_profiles``, come file con estensione ``.profile``. La cartella di configurazione dell'editor può essere trovata utilizzando :ref:`EditorPaths.get_config_dir()<class_EditorPaths_method_get_config_dir>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_save_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_save_to_file>`

Salva il profilo delle funzionalità dell'editor in un file in formato JSON. Può quindi essere importato utilizzando il pulsante **Importa** del gestore dei profili delle funzionalità o il metodo :ref:`load_from_file()<class_EditorFeatureProfile_method_load_from_file>`.

\ **Nota:** I profili delle funzionalità creati tramite l'interfaccia utente sono salvati nella cartella ``feature_profiles``, come file con estensione ``.profile``. La cartella di configurazione dell'editor può essere trovata utilizzando :ref:`EditorPaths.get_config_dir()<class_EditorPaths_method_get_config_dir>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class:

.. rst-class:: classref-method

|void| **set_disable_class**\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class>`

Se ``disable`` è ``true``, disabilita la classe specificata da ``class_name``. Quando disabilitata, la classe non sarà visualizzata nella finestra di dialogo Crea nuovo nodo.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class_editor:

.. rst-class:: classref-method

|void| **set_disable_class_editor**\ (\ class_name\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class_editor>`

Se ``disable`` è ``true``, disabilita la modifica per la classe specificata da ``class_name``. Quando disabilitata, la classe apparirà comunque nella finestra di dialogo Crea nuovo nodo, ma l'Ispettore sarà di sola lettura quando si seleziona un nodo che estende la classe.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_class_property:

.. rst-class:: classref-method

|void| **set_disable_class_property**\ (\ class_name\: :ref:`StringName<class_StringName>`, property\: :ref:`StringName<class_StringName>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_class_property>`

Se ``disable`` è ``true``, disabilita la modifica per ``property`` nella classe specificata da ``class_name``. Quando una proprietà è disabilitata, non sarà visualizzata nell'Ispettore quando si seleziona un nodo che estende la classe specificata da ``class_name``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFeatureProfile_method_set_disable_feature:

.. rst-class:: classref-method

|void| **set_disable_feature**\ (\ feature\: :ref:`Feature<enum_EditorFeatureProfile_Feature>`, disable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorFeatureProfile_method_set_disable_feature>`

Se ``disable`` è ``true``, disabilita la funzionalità dell'editor specificata in ``feature``. Quando una funzionalità è disabilitata, scomparirà completamente dall'editor.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
