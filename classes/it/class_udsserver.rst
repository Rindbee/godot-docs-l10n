:github_url: hide

.. _class_UDSServer:

UDSServer
=========

**Eredita:** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A Unix Domain Socket (UDS) server.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A Unix Domain Socket (UDS) server. Listens to connections on a socket path and returns a :ref:`StreamPeerUDS<class_StreamPeerUDS>` when it gets an incoming connection. Unix Domain Sockets provide inter-process communication on the same machine using the filesystem namespace.

\ **Note:** Unix Domain Sockets are only available on Unix-like systems (Linux, macOS, etc.) and are not supported on Windows.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_UDSServer_method_listen>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`StreamPeerUDS<class_StreamPeerUDS>` | :ref:`take_connection<class_UDSServer_method_take_connection>`\ (\ )                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_UDSServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_UDSServer_method_listen>`

Listens on the socket at ``path``. The socket file will be created at the specified path.

\ **Note:** The socket file must not already exist at the specified path. You may need to remove any existing socket file before calling this method.

.. rst-class:: classref-item-separator

----

.. _class_UDSServer_method_take_connection:

.. rst-class:: classref-method

:ref:`StreamPeerUDS<class_StreamPeerUDS>` **take_connection**\ (\ ) :ref:`🔗<class_UDSServer_method_take_connection>`

If a connection is available, returns a StreamPeerUDS with the connection.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
