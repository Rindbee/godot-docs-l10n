:github_url: hide

.. _class_StreamPeerTLS:

StreamPeerTLS
=============

**Hereda:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A stream peer that handles TLS connections.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A stream peer that handles TLS connections. This object can be used to connect to a TLS server or accept a single TLS client connection.

\ **Note:** When exporting to Android, make sure to enable the ``INTERNET`` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Certificados TLS <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`accept_stream<class_StreamPeerTLS_method_accept_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, server_options\: :ref:`TLSOptions<class_TLSOptions>`\ )                                                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`connect_to_stream<class_StreamPeerTLS_method_connect_to_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, common_name\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`disconnect_from_stream<class_StreamPeerTLS_method_disconnect_from_stream>`\ (\ )                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerTLS_Status>` | :ref:`get_status<class_StreamPeerTLS_method_get_status>`\ (\ ) |const|                                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StreamPeer<class_StreamPeer>`      | :ref:`get_stream<class_StreamPeerTLS_method_get_stream>`\ (\ ) |const|                                                                                                                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`poll<class_StreamPeerTLS_method_poll>`\ (\ )                                                                                                                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_StreamPeerTLS_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerTLS_Status>`

.. _class_StreamPeerTLS_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_DISCONNECTED** = ``0``

Un estado que representa un **StreamPeerTLS** que está desconectado.

.. _class_StreamPeerTLS_constant_STATUS_HANDSHAKING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_HANDSHAKING** = ``1``

Un estado que representa un **StreamPeerTLS** durante el handshaking.

.. _class_StreamPeerTLS_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_CONNECTED** = ``2``

Un estado que representa un **StreamPeerTLS** que está conectado a un host.

.. _class_StreamPeerTLS_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_ERROR** = ``3``

Un estado que representa un **StreamPeerTLS** en estado de error.

.. _class_StreamPeerTLS_constant_STATUS_ERROR_HOSTNAME_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerTLS_Status>` **STATUS_ERROR_HOSTNAME_MISMATCH** = ``4``

Un estado de error que muestra una falta de coincidencia en el dominio del certificado TLS presentado por el host y el dominio solicitado para la validación.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_StreamPeerTLS_method_accept_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **accept_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, server_options\: :ref:`TLSOptions<class_TLSOptions>`\ ) :ref:`🔗<class_StreamPeerTLS_method_accept_stream>`

Accepts a peer connection as a server using the given ``server_options``. See :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_connect_to_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`, common_name\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_StreamPeerTLS_method_connect_to_stream>`

Connects to a peer using an underlying :ref:`StreamPeer<class_StreamPeer>` ``stream`` and verifying the remote certificate is correctly signed for the given ``common_name``. You can pass the optional ``client_options`` parameter to customize the trusted certification authorities, or disable the common name verification. See :ref:`TLSOptions.client()<class_TLSOptions_method_client>` and :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_disconnect_from_stream:

.. rst-class:: classref-method

|void| **disconnect_from_stream**\ (\ ) :ref:`🔗<class_StreamPeerTLS_method_disconnect_from_stream>`

Se desconecta del host.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerTLS_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerTLS_method_get_status>`

Devuelve el estado de la conexión.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_get_stream:

.. rst-class:: classref-method

:ref:`StreamPeer<class_StreamPeer>` **get_stream**\ (\ ) |const| :ref:`🔗<class_StreamPeerTLS_method_get_stream>`

Returns the underlying :ref:`StreamPeer<class_StreamPeer>` connection, used in :ref:`accept_stream()<class_StreamPeerTLS_method_accept_stream>` or :ref:`connect_to_stream()<class_StreamPeerTLS_method_connect_to_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerTLS_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_StreamPeerTLS_method_poll>`

Sondea la conexión para comprobar los bytes entrantes. Llama a esto justo antes de :ref:`StreamPeer.get_available_bytes()<class_StreamPeer_method_get_available_bytes>` para que funcione correctamente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
