:github_url: hide

.. _class_StreamPeerTCP:

StreamPeerTCP
=============

**Eredita:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un peer di flusso che gestisce le connessioni TCP.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un peer di flusso che gestisce le connessioni TCP. Questo oggetto può essere utilizzato per connettersi ai server TCP o può anche essere restituito da un server TCP.

\ **Nota:** Quando si esporta su Android, assicurarsi di abilitare l'autorizzazione ``INTERNET`` nella preimpostazione d'esportazione Android prima di esportare il progetto o di utilizzare la distribuzione con un clic. Altrimenti, qualsiasi tipo di comunicazione di rete sarà bloccata da Android.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`bind<class_StreamPeerTCP_method_bind>`\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ )                 |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`connect_to_host<class_StreamPeerTCP_method_connect_to_host>`\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`disconnect_from_host<class_StreamPeerTCP_method_disconnect_from_host>`\ (\ )                                                         |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_connected_host<class_StreamPeerTCP_method_get_connected_host>`\ (\ ) |const|                                                     |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_connected_port<class_StreamPeerTCP_method_get_connected_port>`\ (\ ) |const|                                                     |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_local_port<class_StreamPeerTCP_method_get_local_port>`\ (\ ) |const|                                                             |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerTCP_Status>` | :ref:`get_status<class_StreamPeerTCP_method_get_status>`\ (\ ) |const|                                                                     |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`poll<class_StreamPeerTCP_method_poll>`\ (\ )                                                                                         |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`set_no_delay<class_StreamPeerTCP_method_set_no_delay>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                      |
   +------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_StreamPeerTCP_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerTCP_Status>`

.. _class_StreamPeerTCP_constant_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_NONE** = ``0``

Lo stato iniziale dello **StreamPeerTCP**. Questo è anche lo stato dopo la disconnessione.

.. _class_StreamPeerTCP_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_CONNECTING** = ``1``

Uno stato che rappresenta uno **StreamPeerTCP** che si sta connettendo a un host.

.. _class_StreamPeerTCP_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_CONNECTED** = ``2``

Uno stato che rappresenta uno **StreamPeerTCP** connesso a un host.

.. _class_StreamPeerTCP_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTCP_Status>` **STATUS_ERROR** = ``3``

Uno stato che rappresenta uno **StreamPeerTCP** in stato di errore.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_StreamPeerTCP_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ port\: :ref:`int<class_int>`, host\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_StreamPeerTCP_method_bind>`

Apre il socket TCP e lo associa all'indirizzo locale specificato.

Questo metodo in genere non è necessario e viene utilizzato solo per forzare la chiamata successiva a :ref:`connect_to_host()<class_StreamPeerTCP_method_connect_to_host>` per utilizzare l'``host`` e la ``port`` specificati come indirizzo sorgente. Ciò può essere desiderato in alcune tecniche NAT punchthrough o quando si forza l'interfaccia di rete sorgente.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ host\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_StreamPeerTCP_method_connect_to_host>`

Si collega alla coppia ``host:port`` specificata. Un nome host verrà risolto se valido. Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` in caso di successo.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_disconnect_from_host:

.. rst-class:: classref-method

|void| **disconnect_from_host**\ (\ ) :ref:`🔗<class_StreamPeerTCP_method_disconnect_from_host>`

Si disconnette dall'host.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_host>`

Restituisce l'IP di questo peer.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_connected_port>`

Restituisce la porta di questo peer.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_local_port>`

Restituisce la porta locale a cui questo peer è associato.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerTCP_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerTCP_method_get_status>`

Restituisce lo stato della connessione.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_StreamPeerTCP_method_poll>`

Interroga il socket, aggiornandone lo stato. Vedi :ref:`get_status()<class_StreamPeerTCP_method_get_status>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTCP_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_StreamPeerTCP_method_set_no_delay>`

Se ``enabled`` è ``true``, i pacchetti verranno inviati immediatamente. Se ``enabled`` è ``false`` (predefinito), i trasferimenti dei pacchetti verranno ritardati e combinati attraverso l'`algoritmo di Nagle <https://en.wikipedia.org/wiki/Nagle%27s_algorithm>`__.

\ **Nota:** Si consiglia di lasciare questa opzione disabilitata per le applicazioni che inviano pacchetti grandi o che devono trasferire molti dati, poiché abilitarla può ridurre la larghezza di banda totale disponibile.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
