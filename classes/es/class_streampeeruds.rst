:github_url: hide

.. _class_StreamPeerUDS:

StreamPeerUDS
=============

**Hereda:** :ref:`StreamPeerSocket<class_StreamPeerSocket>` **<** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A stream peer that handles UNIX Domain Socket (UDS) connections.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A stream peer that handles UNIX Domain Socket (UDS) connections. This object can be used to connect to UDS servers, or also is returned by a UDS server. Unix Domain Sockets provide inter-process communication on the same machine using the filesystem namespace.

\ **Note:** UNIX Domain Sockets are only available on UNIX-like systems (Linux, macOS, etc.) and are not supported on Windows.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`bind<class_StreamPeerUDS_method_bind>`\ (\ path\: :ref:`String<class_String>`\ )                       |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`connect_to_host<class_StreamPeerUDS_method_connect_to_host>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_connected_path<class_StreamPeerUDS_method_get_connected_path>`\ (\ ) |const|                       |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_StreamPeerUDS_method_bind:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **bind**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeerUDS_method_bind>`

Opens the UDS socket, and binds it to the specified socket path.

This method is generally not needed, and only used to force the subsequent call to :ref:`connect_to_host()<class_StreamPeerUDS_method_connect_to_host>` to use the specified ``path`` as the source address.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerUDS_method_connect_to_host:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_host**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_StreamPeerUDS_method_connect_to_host>`

Connects to the specified UNIX Domain Socket path. Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerUDS_method_get_connected_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_path**\ (\ ) |const| :ref:`🔗<class_StreamPeerUDS_method_get_connected_path>`

Returns the socket path of this peer.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
