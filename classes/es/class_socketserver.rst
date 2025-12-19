:github_url: hide

.. _class_SocketServer:

SocketServer
============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`TCPServer<class_TCPServer>`, :ref:`UDSServer<class_UDSServer>`

An abstract class for servers based on sockets.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A socket server.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_connection_available<class_SocketServer_method_is_connection_available>`\ (\ ) |const| |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_listening<class_SocketServer_method_is_listening>`\ (\ ) |const|                       |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`stop<class_SocketServer_method_stop>`\ (\ )                                               |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeerSocket<class_StreamPeerSocket>` | :ref:`take_socket_connection<class_SocketServer_method_take_socket_connection>`\ (\ )           |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SocketServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_SocketServer_method_is_connection_available>`

Devuelve ``true`` si hay una conexión disponible para tomar.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_SocketServer_method_is_listening>`

Devuelve ``true`` si el servidor está actualmente a la escucha de las conexiones.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_SocketServer_method_stop>`

Para de escuchar.

.. rst-class:: classref-item-separator

----

.. _class_SocketServer_method_take_socket_connection:

.. rst-class:: classref-method

:ref:`StreamPeerSocket<class_StreamPeerSocket>` **take_socket_connection**\ (\ ) :ref:`🔗<class_SocketServer_method_take_socket_connection>`

If a connection is available, returns a StreamPeerSocket with the connection.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
