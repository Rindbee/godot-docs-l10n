:github_url: hide

.. _class_StreamPeerSocket:

StreamPeerSocket
================

**Hereda:** :ref:`StreamPeer<class_StreamPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`StreamPeerTCP<class_StreamPeerTCP>`, :ref:`StreamPeerUDS<class_StreamPeerUDS>`

Abstract base class for interacting with socket streams.

.. rst-class:: classref-introduction-group

Descripción
----------------------

StreamPeerSocket is an abstract base class that defines common behavior for socket-based streams.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`disconnect_from_host<class_StreamPeerSocket_method_disconnect_from_host>`\ (\ ) |
   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Status<enum_StreamPeerSocket_Status>` | :ref:`get_status<class_StreamPeerSocket_method_get_status>`\ (\ ) |const|             |
   +---------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`poll<class_StreamPeerSocket_method_poll>`\ (\ )                                 |
   +---------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_StreamPeerSocket_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_StreamPeerSocket_Status>`

.. _class_StreamPeerSocket_constant_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_NONE** = ``0``

The initial status of the **StreamPeerSocket**. This is also the status after disconnecting.

.. _class_StreamPeerSocket_constant_STATUS_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_CONNECTING** = ``1``

A status representing a **StreamPeerSocket** that is connecting to a host.

.. _class_StreamPeerSocket_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_CONNECTED** = ``2``

A status representing a **StreamPeerSocket** that is connected to a host.

.. _class_StreamPeerSocket_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_StreamPeerSocket_Status>` **STATUS_ERROR** = ``3``

A status representing a **StreamPeerSocket** in error state.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_StreamPeerSocket_method_disconnect_from_host:

.. rst-class:: classref-method

|void| **disconnect_from_host**\ (\ ) :ref:`🔗<class_StreamPeerSocket_method_disconnect_from_host>`

Se desconecta del host.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerSocket_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_StreamPeerSocket_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_StreamPeerSocket_method_get_status>`

Devuelve el estado de la conexión.

.. rst-class:: classref-item-separator

----

.. _class_StreamPeerSocket_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_StreamPeerSocket_method_poll>`

Polls the socket, updating its state. See :ref:`get_status()<class_StreamPeerSocket_method_get_status>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
