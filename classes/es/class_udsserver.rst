:github_url: hide

.. _class_UDSServer:

UDSServer
=========

**Hereda:** :ref:`SocketServer<class_SocketServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A Unix Domain Socket (UDS) server.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A Unix Domain Socket (UDS) server. Listens to connections on a socket path and returns a :ref:`StreamPeerUDS<class_StreamPeerUDS>` when it gets an incoming connection. Unix Domain Sockets provide inter-process communication on the same machine using the filesystem namespace.

\ **Note:** Unix Domain Sockets are only available on Unix-like systems (Linux, macOS, etc.) and are not supported on Windows.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
