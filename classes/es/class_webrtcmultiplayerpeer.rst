:github_url: hide

.. _class_WebRTCMultiplayerPeer:

WebRTCMultiplayerPeer
=====================

**Hereda:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una simple interfaz para crear una red de malla entre pares compuesta por :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` que es compatible con el :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase construye una malla completa de :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` (una conexión para cada par) que puede ser utilizada como un :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

Puedes añadir cada :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` a través de :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` o eliminarlos a través de :ref:`remove_peer()<class_WebRTCMultiplayerPeer_method_remove_peer>`. Los pares deben ser agregados en el estado :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` para permitirle crear los canales apropiados. Esta clase no creará ofertas ni establecerá descripciones, sólo las sondeará, y notificará las conexiones y desconexiones.

Al crear el par a través de :ref:`create_client()<class_WebRTCMultiplayerPeer_method_create_client>` o :ref:`create_server()<class_WebRTCMultiplayerPeer_method_create_server>`, el método :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>` devolverá ``true`` permitiendo el intercambio de pares y el reenvío de paquetes cuando sea soportado por la implementación de :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

\ **Nota:** Al exportar a Android, asegúrate de habilitar el permiso ``INTERNET`` en el preajuste de exportación de Android antes de exportar el proyecto o utilizar la implementación con un solo clic. De lo contrario, la comunicación de red de cualquier tipo será bloqueada por Android.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_WebRTCMultiplayerPeer_method_add_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_peer**\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_add_peer>`

Añade un nuevo par a la malla con el ``peer_id`` dado. El :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` debe estar en el estado :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`.

Se crearán tres canales para transporte fiable, no fiable y ordenado. El valor de ``unreliable_lifetime`` se pasará a la opción ``"maxPacketLifetime"`` al crear canales no fiables y ordenados (véase :ref:`WebRTCPeerConnection.create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_client>`

Inicializa el par multijugador como cliente con el ``peer_id`` dado (debe estar entre 2 y 2147483647). En este modo, sólo debe llamar a :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` una vez y con el ``peer_id`` de ``1``. Este modo activa :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`, permitiendo que la capa superior :ref:`MultiplayerAPI<class_MultiplayerAPI>` realice el intercambio de pares y el reenvío de paquetes.

Opcionalmente, puedes especificar un array ``channels_config`` de :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` que se utilizará para crear canales adicionales (WebRTC sólo soporta un modo de transferencia por canal).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_mesh>`

Inicializa el par multijugador como una malla (es decir, todos los pares se conectan entre sí) con el ``peer_id`` dado (debe estar entre 1 y 2147483647).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_server>`

Inicializa el par multijugador como servidor (con ID único de ``1``). Este modo activa :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`, permitiendo que la capa superior :ref:`MultiplayerAPI<class_MultiplayerAPI>` realice el intercambio de pares y el reenvío de paquetes.

Opcionalmente, puedes especificar un array ``channels_config`` de :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>` que se utilizará para crear canales adicionales (WebRTC sólo soporta un modo de transferencia por canal).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peer>`

Devuelve una representación en diccionario del par con el ``peer_id`` dado con tres claves: ``"connection"`` que contiene el :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` a este par, ``"channels"`` un array de tres :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`, y ``"connected"`` un booleano que representa si la conexión del par está actualmente conectada (los tres canales están abiertos).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peers**\ (\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peers>`

Devuelve un diccionario cuyas claves son las identificaciones de los pares y valora la representación de los pares como en :ref:`get_peer()<class_WebRTCMultiplayerPeer_method_get_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_has_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_has_peer>`

Devuelve ``true`` si el ``peer_id`` dado está en el mapa de pares (aunque podría no estar conectado).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_remove_peer:

.. rst-class:: classref-method

|void| **remove_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_remove_peer>`

Quita el par con el ``peer_id`` dado de la malla. Si el par estaba conectado, y se emitió :ref:`MultiplayerPeer.peer_connected<class_MultiplayerPeer_signal_peer_connected>` para él, entonces se emitirá :ref:`MultiplayerPeer.peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
