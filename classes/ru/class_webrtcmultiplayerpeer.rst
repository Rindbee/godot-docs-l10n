:github_url: hide

.. _class_WebRTCMultiplayerPeer:

WebRTCMultiplayerPeer
=====================

**Наследует:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Простой интерфейс для создания одноранговой ячеистой сети, состоящей из :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, совместимой с :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс создает полную сетку :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` (одно соединение для каждого пира), которую можно использовать как :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

Вы можете добавить каждый :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` с помощью :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` или удалить их с помощью :ref:`remove_peer()<class_WebRTCMultiplayerPeer_method_remove_peer>`. Пиры должны быть добавлены в :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>` состоянии, чтобы позволить ему создавать соответствующие каналы. Этот класс не будет создавать предложения или задавать описания, он будет только опрашивать их и уведомлять о подключениях и отключениях.

При создании пира с помощью :ref:`create_client()<class_WebRTCMultiplayerPeer_method_create_client>` или :ref:`create_server()<class_WebRTCMultiplayerPeer_method_create_server>` метод :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>` вернет ``true``, что позволит обмениваться пирами и ретранслировать пакеты, если поддерживается реализацией :ref:`MultiplayerAPI<class_MultiplayerAPI>`. 

\ **Примечание:** При экспорте в Android убедитесь, что в настройках экспорта Android включено разрешение ``INTERNET`` перед экспортом проекта или использованием развертывания в один клик. В противном случае сетевое взаимодействие любого рода будет заблокировано Android.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_WebRTCMultiplayerPeer_method_add_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_peer**\ (\ peer\: :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>`, peer_id\: :ref:`int<class_int>`, unreliable_lifetime\: :ref:`int<class_int>` = 1\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_add_peer>`

Добавьте нового пира в сетку с заданным ``peer_id``. :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` должен находиться в состоянии :ref:`WebRTCPeerConnection.STATE_NEW<class_WebRTCPeerConnection_constant_STATE_NEW>`.

Будут созданы три канала для надежного, ненадежного и упорядоченного транспорта. Значение ``unreliable_lifetime`` будет передано в параметр ``"maxPacketLifetime"`` при создании ненадежных и упорядоченных каналов (см. :ref:`WebRTCPeerConnection.create_data_channel()<class_WebRTCPeerConnection_method_create_data_channel>`).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_client>`

Инициализируйте многопользовательский одноранговый узел как клиент с заданным ``peer_id`` (должен быть между 2 и 2147483647). В этом режиме вам следует вызывать :ref:`add_peer()<class_WebRTCMultiplayerPeer_method_add_peer>` только один раз и с ``peer_id`` из ``1``. Этот режим включает :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`, позволяя верхнему слою :ref:`MultiplayerAPI<class_MultiplayerAPI>` выполнять обмен одноранговыми узлами и ретрансляцию пакетов.

Вы можете дополнительно указать массив ``channels_config`` :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`, который будет использоваться для создания дополнительных каналов (WebRTC поддерживает только один режим передачи на канал).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_mesh:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_mesh**\ (\ peer_id\: :ref:`int<class_int>`, channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_mesh>`

Инициализируйте многопользовательский узел как сетку (т. е. все узлы подключаются друг к другу) с заданным ``peer_id`` (должен быть в диапазоне от 1 до 2147483647).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ channels_config\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_create_server>`

Инициализируйте многопользовательский одноранговый узел как сервер (с уникальным идентификатором ``1``). Этот режим включает :ref:`MultiplayerPeer.is_server_relay_supported()<class_MultiplayerPeer_method_is_server_relay_supported>`, позволяя верхнему слою :ref:`MultiplayerAPI<class_MultiplayerAPI>` выполнять обмен одноранговыми узлами и ретрансляцию пакетов.

Вы можете дополнительно указать массив ``channels_config`` :ref:`TransferMode<enum_MultiplayerPeer_TransferMode>`, который будет использоваться для создания дополнительных каналов (WebRTC поддерживает только один режим передачи на канал).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peer>`

Возвращает словарное представление однорангового узла с заданным ``peer_id`` с тремя ключами. ``"connection"`` содержит :ref:`WebRTCPeerConnection<class_WebRTCPeerConnection>` к этому одноранговому узлу, ``"channels"`` — массив из трех :ref:`WebRTCDataChannel<class_WebRTCDataChannel>` и ``"connected"`` — логическое значение, указывающее, подключено ли в данный момент одноранговое соединение (все три канала открыты).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_get_peers:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **get_peers**\ (\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_get_peers>`

Возвращает словарь, ключами которого являются идентификаторы одноранговых узлов, а значениями — представление одноранговых узлов, как в :ref:`get_peer()<class_WebRTCMultiplayerPeer_method_get_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_has_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_has_peer>`

Возвращает ``true``, если указанный ``peer_id`` находится в карте пиров (хотя он может быть не подключен).

.. rst-class:: classref-item-separator

----

.. _class_WebRTCMultiplayerPeer_method_remove_peer:

.. rst-class:: classref-method

|void| **remove_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebRTCMultiplayerPeer_method_remove_peer>`

Удалить пир с заданным ``peer_id`` из сетки. Если пир был подключен и для него был отправлен :ref:`MultiplayerPeer.peer_connected<class_MultiplayerPeer_signal_peer_connected>`, то будет отправлен :ref:`MultiplayerPeer.peer_disconnected<class_MultiplayerPeer_signal_peer_disconnected>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
