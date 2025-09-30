:github_url: hide

.. _class_WebRTCMultiplayerPeer:

WebRTCMultiplayerPeer
=====================

**Eredita:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un'interfaccia semplice per creare una rete mesh peer-to-peer composta da :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` che è compatibile con il :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe costruisce una rete completa di :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` (una connessione per ogni peer) che può essere utilizzata come :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

Puoi aggiungere ogni :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` tramite :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` o rimuoverli tramite :ref:`remove_peer()<class_WebRTCMultiplayerPeer_method_remove_peer>`. I peer devono essere aggiunti nello stato :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` per consentirgli di creare i canali appropriati. Questa classe non creerà offerte né imposterà descrizioni, le interrogherà solo e notificherà connessioni e disconnessioni.

Quando si crea il peer tramite :ref:`create_client()<class_WebRTCMultiplayerPeer_method_create_client>` o :ref:`create_server()<class_WebRTCMultiplayerPeer_method_create_server>` il metodo :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>` restituirà ``true`` abilitando lo scambio dei peer e l'inoltro dei pacchetti quando supportato dall'implementazione della :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

\ **Nota:** Quando si esporta su Android, assicurarsi di abilitare l'autorizzazione ``INTERNET`` nella preimpostazione d'esportazione Android prima di esportare il progetto o di utilizzare la distribuzione con un clic. Altrimenti, qualsiasi tipo di comunicazione di rete sarà bloccata da Android.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_peer<class_WebRTCMultiplayerPeer_method_add_peer>`\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_client<class_WebRTCMultiplayerPeer_method_create_client>`\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ )                                                      |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_mesh<class_WebRTCMultiplayerPeer_method_create_mesh>`\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ )                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_server<class_WebRTCMultiplayerPeer_method_create_server>`\ (\ channels_config\: :ref:`Array<class_Array>` = []\ )                                                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`get_peer<class_WebRTCMultiplayerPeer_method_get_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`   | :ref:`get_peers<class_WebRTCMultiplayerPeer_method_get_peers>`\ (\ )                                                                                                                                                 |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`has_peer<class_WebRTCMultiplayerPeer_method_has_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                                  |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`remove_peer<class_WebRTCMultiplayerPeer_method_remove_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ )                                                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_WebRTCMultiplayerPeer_method_add_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_peer**\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_add_peer>`

Aggiungere un nuovo peer alla rete con il ``peer_id`` fornito. Il :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` deve essere nello stato :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`.

Saranno creati tre canali per il trasporto affidabile, non affidabile e ordinato. Il valore di ``unreliable_lifetime`` sarà passato all'opzione ``"maxPacketLifetime"`` quando si creano canali non affidabili e ordinati (vedi :ref:`WebRTCPeerConnection.create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_client>`

Inizializzare il peer multigiocatore come client con il dato ``peer_id`` (deve essere tra 2 e 2147483647). In questa modalità, si dovrebbe chiamare :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` una sola volta e con ``peer_id`` di ``1``. Questa modalità abilita :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`, che permette al livello di :ref:`MultiplayerAPI<class_MultiplayerAPI>` superiore di eseguire lo scambio tra peer e l'inoltro dei pacchetti.

È possibile specificare facoltativamente un array ``channels_config`` di :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` che verrà utilizzato per creare canali aggiuntivi (WebRTC supporta solo una modalità di trasferimento per canale).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_mesh>`

Inizializza il peer multigiocatore come mesh (cioè tutti i peer si collegano tra loro) con il ``peer_id`` fornito (deve essere tra 1 e 2147483647).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_server>`

Inizializzare il peer multigiocatore come server (con l'ID unico di ``1``). Questa modalità abilita :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`, che permette al livello di :ref:`MultiplayerAPI<class_MultiplayerAPI>` superiore di eseguire lo scambio tra peer e l'inoltro dei pacchetti.

È possibile specificare facoltativamente un array ``channels_config`` di :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` che verrà utilizzato per creare canali aggiuntivi (WebRTC supporta solo una modalità di trasferimento per canale).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peer>`

Restituisce un dizionario rappresentante il peer con ``peer_id`` fornito con tre chiavi. ``"connection"`` contenente il :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` a questo peer, ``"channels"`` un'array e di tre :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`, e ``"connected"`` un booleano che rappresenta se la connessione peer è attualmente collegata (tutti i tre canali sono aperti).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peers**\ (\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peers>`

Restituisce un dizionario dove le chiavi sono gli ID dei peer e i valori sono la rappresentazione di un peer come in :ref:`get_peer()<class_WebRTCMultiplayerPeer_method_get_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_has_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_has_peer>`

Restituisce ``true`` se il ``peer_id`` fornito è nella mappa dei peer (potrebbe non essere collegato però).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_remove_peer:

.. rst-class:: classref-method

|void| **remove_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_remove_peer>`

Rimuovere il peer con il ``peer_id`` fornito dalla rete mesh. Se il peer era connesso, e :ref:`MultiplayerPeer.peer_connected<class_MultiplayerPeer_signal_peer_connected>` è stato emesso per esso in precedenza, allora :ref:`MultiplayerPeer.peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>` sarà emesso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
