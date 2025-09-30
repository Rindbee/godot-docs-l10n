:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/MultiplayerAPIExtension.xml.

.. _class_MultiplayerAPIExtension:

MultiplayerAPIExtension
=======================

**Eredita:** :ref:`MultiplayerAPI<class_MultiplayerAPI>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe di base utilizzata per estendere la :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

This class can be used to extend or replace the default :ref:`MultiplayerAPI<class_MultiplayerAPI>` implementation via script or extensions.

The following example extend the default implementation (:ref:`SceneMultiplayer<class_SceneMultiplayer>`) by logging every RPC being made, and every object being configured for replication.


.. tabs::

 .. code-tab:: gdscript

    extends MultiplayerAPIExtension
    class_name LogMultiplayer

    # We want to extend the default SceneMultiplayer.
    var base_multiplayer = SceneMultiplayer.new()

    func _init():
        # Just passthrough base signals (copied to var to avoid cyclic reference)
        var cts = connected_to_server
        var cf = connection_failed
        var sd = server_disconnected
        var pc = peer_connected
        var pd = peer_disconnected
        base_multiplayer.connected_to_server.connect(func(): cts.emit())
        base_multiplayer.connection_failed.connect(func(): cf.emit())
        base_multiplayer.server_disconnected.connect(func(): sd.emit())
        base_multiplayer.peer_connected.connect(func(id): pc.emit(id))
        base_multiplayer.peer_disconnected.connect(func(id): pd.emit(id))

    func _poll():
        return base_multiplayer.poll()

    # Log RPC being made and forward it to the default multiplayer.
    func _rpc(peer: int, object: Object, method: StringName, args: Array) -> Error:
        print("Got RPC for %d: %s::%s(%s)" % [peer, object, method, args])
        return base_multiplayer.rpc(peer, object, method, args)

    # Log configuration add. E.g. root path (nullptr, NodePath), replication (Node, Spawner|Synchronizer), custom.
    func _object_configuration_add(object, config: Variant) -> Error:
        if config is MultiplayerSynchronizer:
            print("Adding synchronization configuration for %s. Synchronizer: %s" % [object, config])
        elif config is MultiplayerSpawner:
            print("Adding node %s to the spawn list. Spawner: %s" % [object, config])
        return base_multiplayer.object_configuration_add(object, config)

    # Log configuration remove. E.g. root path (nullptr, NodePath), replication (Node, Spawner|Synchronizer), custom.
    func _object_configuration_remove(object, config: Variant) -> Error:
        if config is MultiplayerSynchronizer:
            print("Removing synchronization configuration for %s. Synchronizer: %s" % [object, config])
        elif config is MultiplayerSpawner:
            print("Removing node %s from the spawn list. Spawner: %s" % [object, config])
        return base_multiplayer.object_configuration_remove(object, config)

    # These can be optional, but in our case we want to extend SceneMultiplayer, so forward everything.
    func _set_multiplayer_peer(p_peer: MultiplayerPeer):
        base_multiplayer.multiplayer_peer = p_peer

    func _get_multiplayer_peer() -> MultiplayerPeer:
        return base_multiplayer.multiplayer_peer

    func _get_unique_id() -> int:
        return base_multiplayer.get_unique_id()

    func _get_remote_sender_id() -> int:
        return base_multiplayer.get_remote_sender_id()

    func _get_peer_ids() -> PackedInt32Array:
        return base_multiplayer.get_peers()



Then in your main scene or in an autoload call :ref:`SceneTree.set_multiplayer()<class_SceneTree_method_set_multiplayer>` to start using your custom :ref:`MultiplayerAPI<class_MultiplayerAPI>`:


.. tabs::

 .. code-tab:: gdscript

    # autoload.gd
    func _enter_tree():
        # Sets our custom multiplayer as the main one in SceneTree.
        get_tree().set_multiplayer(LogMultiplayer.new())



Native extensions can alternatively use the :ref:`MultiplayerAPI.set_default_interface()<class_MultiplayerAPI_method_set_default_interface>` method during initialization to configure themselves as the default implementation.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MultiplayerPeer<class_MultiplayerPeer>`   | :ref:`_get_multiplayer_peer<class_MultiplayerAPIExtension_private_method__get_multiplayer_peer>`\ (\ ) |virtual|                                                                                                                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_peer_ids<class_MultiplayerAPIExtension_private_method__get_peer_ids>`\ (\ ) |virtual| |const|                                                                                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`_get_remote_sender_id<class_MultiplayerAPIExtension_private_method__get_remote_sender_id>`\ (\ ) |virtual| |const|                                                                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`_get_unique_id<class_MultiplayerAPIExtension_private_method__get_unique_id>`\ (\ ) |virtual| |const|                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_object_configuration_add<class_MultiplayerAPIExtension_private_method__object_configuration_add>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual|                      |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_object_configuration_remove<class_MultiplayerAPIExtension_private_method__object_configuration_remove>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual|                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_poll<class_MultiplayerAPIExtension_private_method__poll>`\ (\ ) |virtual|                                                                                                                                                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_rpc<class_MultiplayerAPIExtension_private_method__rpc>`\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>`\ ) |virtual| |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_set_multiplayer_peer<class_MultiplayerAPIExtension_private_method__set_multiplayer_peer>`\ (\ multiplayer_peer\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ ) |virtual|                                                 |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_MultiplayerAPIExtension_private_method__get_multiplayer_peer:

.. rst-class:: classref-method

:ref:`MultiplayerPeer<class_MultiplayerPeer>` **_get_multiplayer_peer**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_multiplayer_peer>`

Chiamato quando viene recuperato :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_peer_ids:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_peer_ids**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_peer_ids>`

Callback per :ref:`MultiplayerAPI.get_peers()<class_MultiplayerAPI_method_get_peers>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_remote_sender_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_remote_sender_id**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_remote_sender_id>`

Callback per :ref:`MultiplayerAPI.get_remote_sender_id()<class_MultiplayerAPI_method_get_remote_sender_id>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_unique_id**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_unique_id>`

Callback per :ref:`MultiplayerAPI.get_unique_id()<class_MultiplayerAPI_method_get_unique_id>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__object_configuration_add:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_object_configuration_add**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__object_configuration_add>`

Callback per :ref:`MultiplayerAPI.object_configuration_add()<class_MultiplayerAPI_method_object_configuration_add>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__object_configuration_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_object_configuration_remove**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__object_configuration_remove>`

Callback per :ref:`MultiplayerAPI.object_configuration_remove()<class_MultiplayerAPI_method_object_configuration_remove>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_poll**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__poll>`

Callback per :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_rpc**\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__rpc>`

Callback per :ref:`MultiplayerAPI.rpc()<class_MultiplayerAPI_method_rpc>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__set_multiplayer_peer:

.. rst-class:: classref-method

|void| **_set_multiplayer_peer**\ (\ multiplayer_peer\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__set_multiplayer_peer>`

Chiamato quando :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` viene impostato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
