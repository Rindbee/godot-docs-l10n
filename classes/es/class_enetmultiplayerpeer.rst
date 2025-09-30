:github_url: hide

.. _class_ENetMultiplayerPeer:

ENetMultiplayerPeer
===================

**Hereda:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A MultiplayerPeer implementation using the `ENet <http://enet.bespin.org/index.html>`__ library.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A MultiplayerPeer implementation that should be passed to :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` after being initialized as either a client, server, or mesh. Events can then be handled by connecting to :ref:`MultiplayerAPI<class_MultiplayerAPI>` signals. See :ref:`ENetConnection<class_ENetConnection>` for more information on the ENet library wrapper.

\ **Note:** ENet only uses UDP, not TCP. When forwarding the server port to make your server accessible on the public Internet, you only need to forward the server port in UDP. You can use the :ref:`UPNP<class_UPNP>` class to try to forward the server port automatically when starting the server.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Multijugador de alto nivel <../tutorials/networking/high_level_multiplayer>`

- `API documentation on the ENet website <http://enet.bespin.org/usergroup0.html>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------+
   | :ref:`ENetConnection<class_ENetConnection>` | :ref:`host<class_ENetMultiplayerPeer_property_host>` |
   +---------------------------------------------+------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`add_mesh_peer<class_ENetMultiplayerPeer_method_add_mesh_peer>`\ (\ peer_id\: :ref:`int<class_int>`, host\: :ref:`ENetConnection<class_ENetConnection>`\ )                                                                                                                                                         |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_client<class_ENetMultiplayerPeer_method_create_client>`\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channel_count\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0, local_port\: :ref:`int<class_int>` = 0\ ) |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_mesh<class_ENetMultiplayerPeer_method_create_mesh>`\ (\ unique_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                                               |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`       | :ref:`create_server<class_ENetMultiplayerPeer_method_create_server>`\ (\ port\: :ref:`int<class_int>`, max_clients\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ )                                       |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ENetPacketPeer<class_ENetPacketPeer>` | :ref:`get_peer<class_ENetMultiplayerPeer_method_get_peer>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                    |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bind_ip<class_ENetMultiplayerPeer_method_set_bind_ip>`\ (\ ip\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                |
   +---------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ENetMultiplayerPeer_property_host:

.. rst-class:: classref-property

:ref:`ENetConnection<class_ENetConnection>` **host** :ref:`🔗<class_ENetMultiplayerPeer_property_host>`

.. rst-class:: classref-property-setget

- :ref:`ENetConnection<class_ENetConnection>` **get_host**\ (\ )

The underlying :ref:`ENetConnection<class_ENetConnection>` created after :ref:`create_client()<class_ENetMultiplayerPeer_method_create_client>` and :ref:`create_server()<class_ENetMultiplayerPeer_method_create_server>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ENetMultiplayerPeer_method_add_mesh_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_mesh_peer**\ (\ peer_id\: :ref:`int<class_int>`, host\: :ref:`ENetConnection<class_ENetConnection>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_add_mesh_peer>`

Add a new remote peer with the given ``peer_id`` connected to the given ``host``.

\ **Note:** The ``host`` must have exactly one peer in the :ref:`ENetPacketPeer.STATE_CONNECTED<class_ENetPacketPeer_constant_STATE_CONNECTED>` state.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ address\: :ref:`String<class_String>`, port\: :ref:`int<class_int>`, channel_count\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0, local_port\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_client>`

Create client that connects to a server at ``address`` using specified ``port``. The given address needs to be either a fully qualified domain name (e.g. ``"www.example.com"``) or an IP address in IPv4 or IPv6 format (e.g. ``"192.168.1.1"``). The ``port`` is the port the server is listening on. The ``channel_count`` parameter can be used to specify the number of ENet channels allocated for the connection. The ``in_bandwidth`` and ``out_bandwidth`` parameters can be used to limit the incoming and outgoing bandwidth to the given number of bytes per second. The default of 0 means unlimited bandwidth. Note that ENet will strategically drop packets on specific sides of a connection between peers to ensure the peer's bandwidth is not overwhelmed. The bandwidth parameters also determine the window size of a connection which limits the amount of reliable packets that may be in transit at any given time. Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` if a client was created, :ref:`@GlobalScope.ERR_ALREADY_IN_USE<class_@GlobalScope_constant_ERR_ALREADY_IN_USE>` if this ENetMultiplayerPeer instance already has an open connection (in which case you need to call :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>` first) or :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` if the client could not be created. If ``local_port`` is specified, the client will also listen to the given port; this is useful for some NAT traversal techniques.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ unique_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_mesh>`

Initialize this :ref:`MultiplayerPeer<class_MultiplayerPeer>` in mesh mode. The provided ``unique_id`` will be used as the local peer network unique ID once assigned as the :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`. In the mesh configuration you will need to set up each new peer manually using :ref:`ENetConnection<class_ENetConnection>` before calling :ref:`add_mesh_peer()<class_ENetMultiplayerPeer_method_add_mesh_peer>`. While this technique is more advanced, it allows for better control over the connection process (e.g. when dealing with NAT punch-through) and for better distribution of the network load (which would otherwise be more taxing on the server).

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ port\: :ref:`int<class_int>`, max_clients\: :ref:`int<class_int>` = 32, max_channels\: :ref:`int<class_int>` = 0, in_bandwidth\: :ref:`int<class_int>` = 0, out_bandwidth\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_create_server>`

Create server that listens to connections via ``port``. The port needs to be an available, unused port between 0 and 65535. Note that ports below 1024 are privileged and may require elevated permissions depending on the platform. To change the interface the server listens on, use :ref:`set_bind_ip()<class_ENetMultiplayerPeer_method_set_bind_ip>`. The default IP is the wildcard ``"*"``, which listens on all available interfaces. ``max_clients`` is the maximum number of clients that are allowed at once, any number up to 4095 may be used, although the achievable number of simultaneous clients may be far lower and depends on the application. For additional details on the bandwidth parameters, see :ref:`create_client()<class_ENetMultiplayerPeer_method_create_client>`. Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` if a server was created, :ref:`@GlobalScope.ERR_ALREADY_IN_USE<class_@GlobalScope_constant_ERR_ALREADY_IN_USE>` if this ENetMultiplayerPeer instance already has an open connection (in which case you need to call :ref:`MultiplayerPeer.close()<class_MultiplayerPeer_method_close>` first) or :ref:`@GlobalScope.ERR_CANT_CREATE<class_@GlobalScope_constant_ERR_CANT_CREATE>` if the server could not be created.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`ENetPacketPeer<class_ENetPacketPeer>` **get_peer**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_ENetMultiplayerPeer_method_get_peer>`

Returns the :ref:`ENetPacketPeer<class_ENetPacketPeer>` associated to the given ``id``.

.. rst-class:: classref-item-separator

----

.. _class_ENetMultiplayerPeer_method_set_bind_ip:

.. rst-class:: classref-method

|void| **set_bind_ip**\ (\ ip\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ENetMultiplayerPeer_method_set_bind_ip>`

La IP usada cuando se crea un servidor. Está configurada por defecto con el comodín ``"*"``, que se une a todas las interfaces disponibles. La IP dada debe estar en formato de dirección IPv4 o IPv6, por ejemplo: ``"192.168.1.1"``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
