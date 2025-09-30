:github_url: hide

.. _class_SceneTree:

SceneTree
=========

**Eredita:** :ref:`MainLoop<class_MainLoop>` **<** :ref:`Object<class_Object>`

Gestisce il ciclo di gioco tramite una gerarchia di nodi.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Come una delle classi più importanti, **SceneTree** gestisce la gerarchia dei nodi in una scena, così come le scene stesse. I nodi possono essere aggiunti, recuperati e rimossi. L'intero albero di scena (e quindi la scena attuale) può essere messo in pausa. Le scene possono essere caricate, cambiate e ricaricate.

Puoi anche usare **SceneTree** per organizzare i tuoi nodi in **gruppi**: ogni nodo può essere aggiunto a tutti i gruppi che vuoi creare, ad esempio un gruppo "nemico". Puoi quindi iterare questi gruppi o persino chiamare metodi e impostare proprietà su tutti i nodi appartenenti a un dato gruppo.

\ **SceneTree** è l'implementazione di :ref:`MainLoop<class_MainLoop>` predefinita utilizzata dal motore, ed è quindi responsabile del ciclo di gioco.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Albero di scena <../tutorials/scripting/scene_tree>`

- :doc:`Molteplici risoluzioni <../tutorials/rendering/multiple_resolutions>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Metodi
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

Segnali
--------------

.. _class_SceneTree_signal_node_added:

.. rst-class:: classref-signal

**node_added**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_added>`

Emesso quando il nodo ``node`` entra in questo albero.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_configuration_warning_changed:

.. rst-class:: classref-signal

**node_configuration_warning_changed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_configuration_warning_changed>`

Emesso quando viene chiamato :ref:`Node.update_configuration_warnings()<class_Node_method_update_configuration_warnings>` del nodo ``node``. Emesso solo nell'editor.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_removed:

.. rst-class:: classref-signal

**node_removed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_removed>`

Emesso quando il nodo ``node`` esce da questo albero.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_node_renamed:

.. rst-class:: classref-signal

**node_renamed**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_SceneTree_signal_node_renamed>`

Emesso quando il nome (:ref:`Node.name<class_Node_property_name>`) del nodo ``node`` cambia.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_physics_frame:

.. rst-class:: classref-signal

**physics_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_physics_frame>`

Emesso subito prima che :ref:`Node._physics_process()<class_Node_private_method__physics_process>` venga chiamato su ogni nodo in questo albero.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_process_frame:

.. rst-class:: classref-signal

**process_frame**\ (\ ) :ref:`🔗<class_SceneTree_signal_process_frame>`

Emesso subito prima che :ref:`Node._process()<class_Node_private_method__process>` venga chiamato su ogni nodo in questo albero.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_scene_changed:

.. rst-class:: classref-signal

**scene_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_scene_changed>`

Emesso dopo che la nuova scena è stata aggiunta all'albero di scene e inizializzata. È possibile utilizzarlo per accedere in modo sicuro a :ref:`current_scene<class_SceneTree_property_current_scene>` quando si cambia scena.

::

    # Questo codice si dovrebbe trovare all'interno di un autoload.
    get_tree().change_scene_to_file(other_scene_path)
    await get_tree().scene_changed
    print(get_tree().current_scene) # Stampa la nuova scena.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_changed:

.. rst-class:: classref-signal

**tree_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_changed>`

Emesso ogni volta che cambia la gerarchia dell'albero (i nodi vengono spostati, rinominati, ecc.).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_signal_tree_process_mode_changed:

.. rst-class:: classref-signal

**tree_process_mode_changed**\ (\ ) :ref:`🔗<class_SceneTree_signal_tree_process_mode_changed>`

Emesso quando il :ref:`Node.process_mode<class_Node_property_process_mode>` di un nodo qualsiasi all'interno dell'albero viene modificato. Emesso solo nell'editor, per aggiornare la visibilità dei nodi disattivati.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_SceneTree_GroupCallFlags:

.. rst-class:: classref-enumeration

enum **GroupCallFlags**: :ref:`🔗<enum_SceneTree_GroupCallFlags>`

.. _class_SceneTree_constant_GROUP_CALL_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFAULT** = ``0``

Chiama i nodi all'interno di un gruppo senza alcun comportamento speciale (predefinito).

.. _class_SceneTree_constant_GROUP_CALL_REVERSE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_REVERSE** = ``1``

Chiama i nodi all'interno di un gruppo in ordine gerarchico ad albero inverso (tutti i nodi figlio innestati vengono chiamati prima dei rispettivi nodi genitore).

.. _class_SceneTree_constant_GROUP_CALL_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_DEFERRED** = ``2``

Chiama i nodi all'interno di un gruppo alla fine del frame attuale (può essere un frame di processo o fisico), simile al :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. _class_SceneTree_constant_GROUP_CALL_UNIQUE:

.. rst-class:: classref-enumeration-constant

:ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>` **GROUP_CALL_UNIQUE** = ``4``

Chiama i nodi all'interno di un gruppo solo una volta, anche se la chiamata viene eseguita più volte nello stesso frame. Deve essere combinato con :ref:`GROUP_CALL_DEFERRED<class_SceneTree_constant_GROUP_CALL_DEFERRED>` per funzionare.

\ **Nota:** Gli argomenti diversi non sono presi in considerazione. Pertanto, quando la stessa chiamata viene eseguita con argomenti diversi, verrà eseguita solo la prima chiamata.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SceneTree_property_auto_accept_quit:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_accept_quit** = ``true`` :ref:`🔗<class_SceneTree_property_auto_accept_quit>`

.. rst-class:: classref-property-setget

- |void| **set_auto_accept_quit**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_accept_quit**\ (\ )

Se ``true``, l'applicazione accetta automaticamente le richieste di uscita.

Per le piattaforme mobili, vedi :ref:`quit_on_go_back<class_SceneTree_property_quit_on_go_back>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_current_scene:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **current_scene** :ref:`🔗<class_SceneTree_property_current_scene>`

.. rst-class:: classref-property-setget

- |void| **set_current_scene**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_current_scene**\ (\ )

Il nodo radice della scena principale attualmente caricata, solitamente come figlio diretto di :ref:`root<class_SceneTree_property_root>`. Vedi anche :ref:`change_scene_to_file()<class_SceneTree_method_change_scene_to_file>`, :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>` e :ref:`reload_current_scene()<class_SceneTree_method_reload_current_scene>`.

\ **Attenzione:** L'impostazione diretta di questa proprietà potrebbe non funzionare come previsto, poiché *nessun* nodo è aggiunto o rimosso nodo da questo albero.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_collisions_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_collisions_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_collisions_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_collisions_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_collisions_hint**\ (\ )

Se ``true``, le forme di collisione saranno visibili durante l'esecuzione del gioco dall'editor a scopo di debug.

\ **Nota:** Questa proprietà non è progettata per essere modificata in fase di esecuzione. Modificare il valore di :ref:`debug_collisions_hint<class_SceneTree_property_debug_collisions_hint>` mentre il progetto è in esecuzione non avrà l'effetto desiderato.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_navigation_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_navigation_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_navigation_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_navigation_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_navigation_hint**\ (\ )

Se ``true``, i poligoni di navigazione saranno visibili durante l'esecuzione del gioco dall'editor a scopo di debug.

\ **Nota:** Questa proprietà non è progettata per essere modificata in fase di esecuzione. Modificare il valore di :ref:`debug_navigation_hint<class_SceneTree_property_debug_navigation_hint>` mentre il progetto è in esecuzione non avrà l'effetto desiderato.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_debug_paths_hint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **debug_paths_hint** = ``false`` :ref:`🔗<class_SceneTree_property_debug_paths_hint>`

.. rst-class:: classref-property-setget

- |void| **set_debug_paths_hint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_debugging_paths_hint**\ (\ )

Se ``true``, le curve dai nodi :ref:`Path2D<class_Path2D>` e :ref:`Path3D<class_Path3D>` saranno visibili durante l'esecuzione del gioco dall'editor a scopo di debug.

\ **Nota:** Questa proprietà non è progettata per essere modificata in fase di esecuzione. Modificare il valore di :ref:`debug_paths_hint<class_SceneTree_property_debug_paths_hint>` mentre il progetto è in esecuzione non avrà l'effetto desiderato.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_edited_scene_root:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **edited_scene_root** :ref:`🔗<class_SceneTree_property_edited_scene_root>`

.. rst-class:: classref-property-setget

- |void| **set_edited_scene_root**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_edited_scene_root**\ (\ )

La radice della scena attualmente in fase di modifica nell'editor. Di solito è un figlio diretto di :ref:`root<class_SceneTree_property_root>`.

\ **Nota:** Questa proprietà non fa nulla nelle build di rilascio.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_multiplayer_poll:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multiplayer_poll** = ``true`` :ref:`🔗<class_SceneTree_property_multiplayer_poll>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_poll_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_multiplayer_poll_enabled**\ (\ )

Se ``true`` (valore predefinito), abilita il polling automatico di :ref:`MultiplayerAPI<class_MultiplayerAPI>` per questo SceneTree durante :ref:`process_frame<class_SceneTree_signal_process_frame>`.

Se ``false``, devi chiamare manualmente :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>` per elaborare i pacchetti di rete e inviare gli RPC. Ciò consente di eseguire gli RPC in un ciclo diverso (ad esempio fisica, thread, intervallo di tempo specifico) e per la protezione manuale con :ref:`Mutex<class_Mutex>` quando si accede alla :ref:`MultiplayerAPI<class_MultiplayerAPI>` dai thread.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** = ``false`` :ref:`🔗<class_SceneTree_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_pause**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Se ``true``, l'albero di scena è considerato in pausa. Ciò causa il seguente comportamento:

- La fisica 2D e 3D sarà interrotta, così come il rilevamento delle collisioni e i segnali correlati.

- A seconda di :ref:`Node.process_mode<class_Node_property_process_mode>` di ciascun nodo, i loro metodi di callback :ref:`Node._process()<class_Node_private_method__process>`, :ref:`Node._physics_process()<class_Node_private_method__physics_process>` e :ref:`Node._input()<class_Node_private_method__input>` potrebbero non essere più chiamati.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_physics_interpolation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **physics_interpolation** = ``false`` :ref:`🔗<class_SceneTree_property_physics_interpolation>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_physics_interpolation_enabled**\ (\ )

Se ``true``, il renderer interpolerà le trasformazioni degli oggetti fisici tra le ultime due trasformazioni, in modo che un movimento fluido sia visualizzato anche quando i tick di fisica non coincidono con i frame renderizzati.

Il valore predefinito di questa proprietà è controllato da :ref:`ProjectSettings.physics/common/physics_interpolation<class_ProjectSettings_property_physics/common/physics_interpolation>`.

\ **Nota:** Sebbene questa sia un'impostazione globale, è possibile controllare più precisamente i singoli rami dello **SceneTree** usando :ref:`Node.physics_interpolation_mode<class_Node_property_physics_interpolation_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_quit_on_go_back:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **quit_on_go_back** = ``true`` :ref:`🔗<class_SceneTree_property_quit_on_go_back>`

.. rst-class:: classref-property-setget

- |void| **set_quit_on_go_back**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_quit_on_go_back**\ (\ )

Se ``true``, l'applicazione si chiude automaticamente quando si torna indietro (ad esempio, utilizzando il pulsante di sistema "Indietro" su Android).

Per gestire il pulsante "Torna indietro" quando questa opzione è disabilitata, usa :ref:`DisplayServer.WINDOW_EVENT_GO_BACK_REQUEST<class_DisplayServer_constant_WINDOW_EVENT_GO_BACK_REQUEST>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_property_root:

.. rst-class:: classref-property

:ref:`Window<class_Window>` **root** :ref:`🔗<class_SceneTree_property_root>`

.. rst-class:: classref-property-setget

- :ref:`Window<class_Window>` **get_root**\ (\ )

La radice :ref:`Window<class_Window>` dell'albero. Questo è il :ref:`Node<class_Node>` più in alto dell'albero della scena ed è sempre presente. Un :ref:`NodePath<class_NodePath>` assoluto inizia sempre da questo nodo. I figli del nodo radice possono includere il :ref:`current_scene<class_SceneTree_property_current_scene>` caricato, così come qualsiasi :doc:`AutoLoad <../tutorials/scripting/singletons_autoload>` configurato nelle Impostazioni del progetto.

\ **Attenzione:** Non eliminare questo nodo. Ciò risulterà in comportamento instabile, seguito da un crash.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_SceneTree_method_call_group:

.. rst-class:: classref-method

|void| **call_group**\ (\ group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group>`

Chiama il metodo ``method`` su ogni nodo all'interno di questo albero aggiunto al gruppo ``group``. Puoi passare argomenti a ``method`` specificandoli alla fine di questa chiamata. I nodi che non possono chiamare ``method`` (perché il metodo non esiste o gli argomenti non corrispondono) sono ignorati. Vedi anche :ref:`set_group()<class_SceneTree_method_set_group>` e :ref:`notify_group()<class_SceneTree_method_notify_group>`.

\ **Nota:** Questo metodo agisce immediatamente su tutti i nodi selezionati allo stesso tempo, il che potrebbe causare scatti in alcune situazioni intense sulle prestazioni.

\ **Nota:** In C#, ``method`` deve essere in snake_case quando si fa riferimento ai metodi integrati di Godot. Preferisci usare i nomi esposti nella classe ``MethodName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_call_group_flags:

.. rst-class:: classref-method

|void| **call_group_flags**\ (\ flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, method\: :ref:`StringName<class_StringName>`, ...\ ) |vararg| :ref:`🔗<class_SceneTree_method_call_group_flags>`

Chiama il metodo ``method`` su ogni nodo all'interno di questo albero aggiunto al gruppo ``group``. Usa ``flags`` per personalizzare il comportamento di questo metodo (vedi :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`). È possibile passare ulteriori argomenti a ``method`` alla fine di questo metodo. I nodi che non possono chiamare ``method`` (perché il metodo non esiste o gli argomenti non corrispondono) sono ignorati.

::

    # Chiama "hide" su tutti i nodi del gruppo "enemies", alla fine del frame e in ordine inverso nell'albero.
    get_tree().call_group_flags(
            SceneTree.GROUP_CALL_DEFERRED | SceneTree.GROUP_CALL_REVERSE,
            "enemies", "hide")

\ **Nota:** In C#, ``method`` deve essere in snake_case quando si fa riferimento ai metodi integrati di Godot. Si preferisce utilizzare i nomi esposti nella classe ``MethodName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_file**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_file>`

Sostituisce la scena in esecuzione con quella al percorso ``path``, dopo averla caricata in un :ref:`PackedScene<class_PackedScene>` e aver creato una nuova istanza.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>` se il percorso ``path`` non può essere caricato in un :ref:`PackedScene<class_PackedScene>` o :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` se quella scena non può essere istanziata.

\ **Nota:** Vedi :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>` per i dettagli sull'ordine delle operazioni.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_change_scene_to_packed:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **change_scene_to_packed**\ (\ packed_scene\: :ref:`PackedScene<class_PackedScene>`\ ) :ref:`🔗<class_SceneTree_method_change_scene_to_packed>`

Sostituisce la scena in esecuzione con una nuova istanza del :ref:`PackedScene<class_PackedScene>` specificato (che deve essere valido).

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` se la scena non può essere istanziata o :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` se la scena non è valida.

\ **Nota:** Le operazioni vengono eseguite nel seguente ordine quando :ref:`change_scene_to_packed()<class_SceneTree_method_change_scene_to_packed>` viene chiamato:

1. Il nodo della scena attuale viene immediatamente rimosso dall'albero. Da quel momento in poi, chiamando :ref:`Node.get_tree()<class_Node_method_get_tree>` sulla scena attuale (in uscita) restituirà ``null``. Anche :ref:`current_scene<class_SceneTree_property_current_scene>` sarà ``null``, poiché la nuova scena non è ancora disponibile.

2. Alla fine del frame, la scena precedentemente attuale, già rimossa dall'albero, verrà eliminata (liberata dalla memoria) e la nuova scena verrà istanziata e aggiunta all'albero. :ref:`Node.get_tree()<class_Node_method_get_tree>` e :ref:`current_scene<class_SceneTree_property_current_scene>` torneranno a funzionare normalmente.

Ciò garantisce che entrambe le scene non siano eseguite allo stesso tempo, liberando comunque la scena precedente in modo sicuro, simile a :ref:`Node.queue_free()<class_Node_method_queue_free>`.

Se si desidera accedere in modo affidabile alla nuova scena, attendere il segnale :ref:`scene_changed<class_SceneTree_signal_scene_changed>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_timer:

.. rst-class:: classref-method

:ref:`SceneTreeTimer<class_SceneTreeTimer>` **create_timer**\ (\ time_sec\: :ref:`float<class_float>`, process_always\: :ref:`bool<class_bool>` = true, process_in_physics\: :ref:`bool<class_bool>` = false, ignore_time_scale\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_SceneTree_method_create_timer>`

Restituisce un nuovo :ref:`SceneTreeTimer<class_SceneTreeTimer>`. Dopo che sono trascorsi ``time_sec`` in secondi, il timer emetterà :ref:`SceneTreeTimer.timeout<class_SceneTreeTimer_signal_timeout>` e sarà automaticamente liberato.

Se ``process_always`` è ``false``, il timer sarà messo in pausa quando si imposta :ref:`paused<class_SceneTree_property_paused>` su ``true``.

Se ``process_in_physics`` è ``true``, il timer sarà aggiornato alla fine del frame di fisica, invece del frame di processo.

Se ``ignore_time_scale`` è ``true``, il timer ignorerà :ref:`Engine.time_scale<class_Engine_property_time_scale>` e si aggiornerà con il tempo trascorso reale.

Questo metodo è comunemente usato per creare un timer di ritardo a colpo singolo, come nel seguente esempio:


.. tabs::

 .. code-tab:: gdscript

    func some_function():
        print("start")
        await get_tree().create_timer(1.0).timeout
        print("end")

 .. code-tab:: csharp

    public async Task SomeFunction()
    {
        GD.Print("start");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("end");
    }



\ **Nota:** il timer viene sempre elaborato *dopo* tutti i nodi nell'albero. Il metodo :ref:`Node._process()<class_Node_private_method__process>` di un nodo verrebbe chiamato prima dell'aggiornamento del timer (o :ref:`Node._physics_process()<class_Node_private_method__physics_process>` se ``process_in_physics`` è impostato su ``true``).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_create_tween:

.. rst-class:: classref-method

:ref:`Tween<class_Tween>` **create_tween**\ (\ ) :ref:`🔗<class_SceneTree_method_create_tween>`

Crea e restituisce un nuovo :ref:`Tween<class_Tween>` elaborato in questo albero. Il Tween sarà avviato automaticamente sul frame di processo o frame di fisica successivo (a seconda del suo :ref:`TweenProcessMode<enum_Tween_TweenProcessMode>`).

\ **Nota:** Un :ref:`Tween<class_Tween>` creato utilizzando questo metodo non è associato a nessun :ref:`Node<class_Node>`. Può continuare a funzionare finché non c'è più nulla da animare. Se vuoi che il :ref:`Tween<class_Tween>` venga automaticamente eliminato quando il :ref:`Node<class_Node>` viene liberato, usa :ref:`Node.create_tween()<class_Node_method_create_tween>` o :ref:`Tween.bind_node()<class_Tween_method_bind_node>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_first_node_in_group:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_first_node_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_first_node_in_group>`

Restituisce il primo :ref:`Node<class_Node>` trovato all'interno dell'albero, che è stato aggiunto al gruppo ``group``, in ordine di gerarchia della scena. Restituisce ``null`` se non viene trovata alcuna corrispondenza. Vedi anche :ref:`get_nodes_in_group()<class_SceneTree_method_get_nodes_in_group>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_frame:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_frame>`

Restituisce il numero di passaggi del processo fisico elaborati, dall'avvio dell'applicazione. Questa *non* è una misura del tempo trascorso. Vedi anche :ref:`physics_frame<class_SceneTree_signal_physics_frame>`. Per il numero di frame renderizzati, vedi :ref:`Engine.get_process_frames()<class_Engine_method_get_process_frames>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_multiplayer:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **get_multiplayer**\ (\ for_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) |const| :ref:`🔗<class_SceneTree_method_get_multiplayer>`

Cerca la :ref:`MultiplayerAPI<class_MultiplayerAPI>` configurata per il percorso specificato. Se non ne esiste una, cerca nei percorsi padre finché non ne trova una. Se il percorso è vuoto o nessuna ne viene trovata, viene restituito quella predefinita. Vedi :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count>`

Restituisce il numero di nodi all'interno di questo albero.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_node_count_in_group:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_count_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_get_node_count_in_group>`

Restituisce il numero di nodi assegnati al gruppo fornito.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_nodes_in_group:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_nodes_in_group**\ (\ group\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SceneTree_method_get_nodes_in_group>`

Restituisce un :ref:`Array<class_Array>` contenente tutti i nodi all'interno di questo albero, che sono stati aggiunti al gruppo ``group``, in ordine gerarchico della scena.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_get_processed_tweens:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Tween<class_Tween>`\] **get_processed_tweens**\ (\ ) :ref:`🔗<class_SceneTree_method_get_processed_tweens>`

Restituisce un :ref:`Array<class_Array>` di :ref:`Tween<class_Tween>` attualmente esistenti nell'albero, inclusi i tween in pausa.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_has_group:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_group**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SceneTree_method_has_group>`

Restituisce ``true`` se un nodo aggiunto al gruppo con nome ``name`` esiste nell'albero.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_enabled**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_enabled>`

Restituisce ``true`` se le funzionalità di accessibilità sono abilitate e gli aggiornamenti delle informazioni di accessibilità sono elaborati attivamente.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_is_accessibility_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_accessibility_supported**\ (\ ) |const| :ref:`🔗<class_SceneTree_method_is_accessibility_supported>`

Restituisce ``true`` se le funzionalità di accessibilità sono supportate dal sistema operativo e abilitate nelle impostazioni del progetto.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group:

.. rst-class:: classref-method

|void| **notify_group**\ (\ group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group>`

Chiama :ref:`Object.notification()<class_Object_method_notification>` con la notifica ``notification`` su tutti i nodi all'interno di questo albero aggiunti al gruppo ``group``. Vedi anche :doc:`Godot notifications <../tutorials/best_practices/godot_notifications>`, :ref:`call_group()<class_SceneTree_method_call_group>` e :ref:`set_group()<class_SceneTree_method_set_group>`.

\ **Nota:** Questo metodo agisce immediatamente su tutti i nodi selezionati allo stesso tempo, il che potrebbe causare scatti in alcune situazioni intense sulle prestazioni.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_notify_group_flags:

.. rst-class:: classref-method

|void| **notify_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, notification\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SceneTree_method_notify_group_flags>`

Chiama :ref:`Object.notification()<class_Object_method_notification>` con la notifica ``notification`` su tutti i nodi all'interno di questo albero aggiunti al gruppo ``group``. Usa ``call_flags`` per personalizzare il comportamento di questo metodo (vedi :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`).

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_queue_delete:

.. rst-class:: classref-method

|void| **queue_delete**\ (\ obj\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_SceneTree_method_queue_delete>`

Mette in coda l'oggetto ``obj`` per essere eliminato, chiamando il suo :ref:`Object.free()<class_Object_method_free>` alla fine del frame attuale. Questo metodo è simile a :ref:`Node.queue_free()<class_Node_method_queue_free>`.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_quit:

.. rst-class:: classref-method

|void| **quit**\ (\ exit_code\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_SceneTree_method_quit>`

Esce dall'applicazione alla fine dell'iterazione attuale, con il codice di uscita ``exit_code``.

Per convenzione, un codice di uscita di ``0`` indica successo, mentre qualsiasi altro codice di uscita indica un errore. Per motivi di portabilità, dovrebbe essere compreso tra ``0`` e ``125`` (inclusi).

\ **Nota:** Su iOS questo metodo non funziona. Invece, come consigliato dalle `linee guida di interfacce iOS <https://developer.apple.com/library/archive/qa/qa1561/_index.html>`__, ci si aspetta che l'utente chiuda le app tramite il pulsante Home.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_reload_current_scene:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **reload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_reload_current_scene>`

Ricarica la scena attualmente attiva, sostituendo :ref:`current_scene<class_SceneTree_property_current_scene>` con una nuova istanza del suo :ref:`PackedScene<class_PackedScene>` originale.

Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo, :ref:`@GlobalScope.ERR_UNCONFIGURED<class_@GlobalScope_constant_ERR_UNCONFIGURED>` se nessun :ref:`current_scene<class_SceneTree_property_current_scene>` è definito, :ref:`@GlobalScope.ERR_CANT_OPEN<class_@GlobalScope_constant_ERR_CANT_OPEN>` se :ref:`current_scene<class_SceneTree_property_current_scene>` non può essere caricato in un :ref:`PackedScene<class_PackedScene>` o :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` se la scena non può essere istanziata.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group:

.. rst-class:: classref-method

|void| **set_group**\ (\ group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group>`

Imposta la proprietà ``property`` su ``value`` su tutti i nodi all'interno di questo albero aggiunti al gruppo ``group``. I nodi che non hanno ``property`` sono ignorati. Vedi anche :ref:`call_group()<class_SceneTree_method_call_group>` e :ref:`notify_group()<class_SceneTree_method_notify_group>`.

\ **Nota:** Questo metodo agisce immediatamente su tutti i nodi selezionati allo stesso tempo, il che potrebbe causare scatti in alcune situazioni intense sulle prestazioni.

\ **Nota:** In C#, ``property`` deve essere in snake_case quando si fa riferimento alle proprietà integrate di Godot. Preferisci usare i nomi esposti nella classe ``PropertyName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_group_flags:

.. rst-class:: classref-method

|void| **set_group_flags**\ (\ call_flags\: :ref:`int<class_int>`, group\: :ref:`StringName<class_StringName>`, property\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_SceneTree_method_set_group_flags>`

Imposta la proprietà ``property`` su ``value`` su tutti i nodi all'interno di questo albero aggiunti al gruppo ``group``. I nodi che non hanno ``property`` sono ignorati. Usa ``call_flags`` per personalizzare il comportamento di questo metodo (vedi :ref:`GroupCallFlags<enum_SceneTree_GroupCallFlags>`).

\ **Nota:** In C#, ``property`` deve essere in snake_case quando si fa riferimento alle proprietà integrate di Godot. Preferisci usare i nomi esposti nella classe ``PropertyName`` per evitare di allocare un nuovo :ref:`StringName<class_StringName>` a ogni chiamata.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_set_multiplayer:

.. rst-class:: classref-method

|void| **set_multiplayer**\ (\ multiplayer\: :ref:`MultiplayerAPI<class_MultiplayerAPI>`, root_path\: :ref:`NodePath<class_NodePath>` = NodePath("")\ ) :ref:`🔗<class_SceneTree_method_set_multiplayer>`

Imposta una :ref:`MultiplayerAPI<class_MultiplayerAPI>` personalizzata con il percorso ``root_path`` (che controlla anche i sotto-percorsi relativi), o sovrascrive quella predefinita se ``root_path`` è vuoto.

\ **Nota:** Nessuna :ref:`MultiplayerAPI<class_MultiplayerAPI>` deve essere configurata per il sottopercorso contenente ``root_path``, i multiplayer personalizzati innestati non sono consentiti. Ovvero, se ne è configurato uno per ``"/root/Foo"`` impostandone uno per ``"/root/Foo/Bar"`` si verificherà un errore.

\ **Nota:** il :ref:`set_multiplayer()<class_SceneTree_method_set_multiplayer>` deve essere chiamato *prima* che i nodi figlio siano pronti al percorso ``root_path``. Se nodi multiplayer come :ref:`MultiplayerSpawner<class_MultiplayerSpawner>` o :ref:`MultiplayerSynchronizer<class_MultiplayerSynchronizer>` vengono aggiunti all'albero prima che l'API multiplayer personalizzata sia impostata, non funzioneranno.

.. rst-class:: classref-item-separator

----

.. _class_SceneTree_method_unload_current_scene:

.. rst-class:: classref-method

|void| **unload_current_scene**\ (\ ) :ref:`🔗<class_SceneTree_method_unload_current_scene>`

Se una scena attuale è caricata, chiamare questo metodo la libererà.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
