:github_url: hide

.. _class_UDPServer:

UDPServer
=========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вспомогательный класс для реализации UDP-сервера.

.. rst-class:: classref-introduction-group

Описание
----------------

Простой сервер, который открывает сокет UDP и возвращает подключенный :ref:`PacketPeerUDP<class_PacketPeerUDP>` при получении новых пакетов. См. также :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

После запуска сервера (:ref:`listen()<class_UDPServer_method_listen>`) вам нужно будет :ref:`poll()<class_UDPServer_method_poll>` его через регулярные интервалы (например, внутри :ref:`Node._process()<class_Node_private_method__process>`), чтобы он обрабатывал новые пакеты, доставляя их в соответствующий :ref:`PacketPeerUDP<class_PacketPeerUDP>` и принимая новые соединения.

Ниже приведен небольшой пример того, как его можно использовать:


.. tabs::

 .. code-tab:: gdscript

    # server_node.gd
    class_name ServerNode
    extends Node

    var server = UDPServer.new()
    var peers = []

    func _ready():
        server.listen(4242)

    func _process(delta):
        server.poll() # Важный!
        if server.is_connection_available():
            var peer = server.take_connection()
            var packet = peer.get_packet()
            print("Accepted peer: %s:%s" % [peer.get_packet_ip(), peer.get_packet_port()])
            print("Received data: %s" % [packet.get_string_from_utf8()])
            # Ответьте, чтобы он знал, что мы получили сообщение.
            peer.put_packet(packet)
            # Сохраните ссылку, чтобы мы могли продолжать связываться с удаленным партнером.
            peers.append(peer)

        for i in range(0, peers.size()):
            pass # Сделайте что-нибудь с подключенными пирами.

 .. code-tab:: csharp

    // ServerNode.cs
    using Godot;
    using System.Collections.Generic;

    public partial class ServerNode : Node
    {
        private UdpServer _server = new UdpServer();
        private List<PacketPeerUdp> _peers  = new List<PacketPeerUdp>();

        public override void _Ready()
        {
            _server.Listen(4242);
        }

        public override void _Process(double delta)
        {
            _server.Poll(); // Важный!
            if (_server.IsConnectionAvailable())
            {
                PacketPeerUdp peer = _server.TakeConnection();
                byte[] packet = peer.GetPacket();
                GD.Print($"Accepted Peer: {peer.GetPacketIP()}:{peer.GetPacketPort()}");
                GD.Print($"Received Data: {packet.GetStringFromUtf8()}");
                // Ответьте, чтобы он знал, что мы получили сообщение.
                peer.PutPacket(packet);
                // Сохраните ссылку, чтобы мы могли продолжать связываться с удаленным партнером.
                _peers.Add(peer);
            }
            foreach (var peer in _peers)
            {
                // Сделайте что-нибудь с подключенными пирами.
            }
        }
    }




.. tabs::

 .. code-tab:: gdscript

    # client_node.gd
    class_name ClientNode
    extends Node

    var udp = PacketPeerUDP.new()
    var connected = false

    func _ready():
        udp.connect_to_host("127.0.0.1", 4242)

    func _process(delta):
        if !connected:
            # Попробуйте связаться с сервером
            udp.put_packet("The answer is... 42!".to_utf8_buffer())
        if udp.get_available_packet_count() > 0:
            print("Connected: %s" % udp.get_packet().get_string_from_utf8())
            connected = true

 .. code-tab:: csharp

    // ClientNode.cs
    using Godot;

    public partial class ClientNode : Node
    {
        private PacketPeerUdp _udp = new PacketPeerUdp();
        private bool _connected = false;

        public override void _Ready()
        {
            _udp.ConnectToHost("127.0.0.1", 4242);
        }

        public override void _Process(double delta)
        {
            if (!_connected)
            {
                // Попробуйте связаться с сервером
                _udp.PutPacket("The Answer Is..42!".ToUtf8Buffer());
            }
            if (_udp.GetAvailablePacketCount() > 0)
            {
                GD.Print($"Connected: {_udp.GetPacket().GetStringFromUtf8()}");
                _connected = true;
            }
        }
    }



.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>` | :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>` | ``16`` |
   +-----------------------+----------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_local_port<class_UDPServer_method_get_local_port>`\ (\ ) |const|                                                         |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_connection_available<class_UDPServer_method_is_connection_available>`\ (\ ) |const|                                       |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_listening<class_UDPServer_method_is_listening>`\ (\ ) |const|                                                             |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`listen<class_UDPServer_method_listen>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`poll<class_UDPServer_method_poll>`\ (\ )                                                                                     |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`stop<class_UDPServer_method_stop>`\ (\ )                                                                                     |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PacketPeerUDP<class_PacketPeerUDP>` | :ref:`take_connection<class_UDPServer_method_take_connection>`\ (\ )                                                               |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_UDPServer_property_max_pending_connections:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_pending_connections** = ``16`` :ref:`🔗<class_UDPServer_property_max_pending_connections>`

.. rst-class:: classref-property-setget

- |void| **set_max_pending_connections**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_pending_connections**\ (\ )

Определите максимальное количество ожидающих подключений, во время :ref:`poll()<class_UDPServer_method_poll>`, любое новое ожидающее подключение, превышающее это значение, будет автоматически сброшено. Установка этого значения на ``0`` фактически предотвращает принятие любого нового ожидающего подключения (например, когда все ваши игроки подключились).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_UDPServer_method_get_local_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_local_port**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_get_local_port>`

Возвращает локальный порт, который прослушивает этот сервер.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_connection_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connection_available**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_connection_available>`

Возвращает ``true``, если на сокете был получен пакет с новой комбинацией адреса/порта.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_is_listening:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_listening**\ (\ ) |const| :ref:`🔗<class_UDPServer_method_is_listening>`

Возвращает ``true``, если сокет открыт и прослушивает порт.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_listen:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **listen**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*"\ ) :ref:`🔗<class_UDPServer_method_listen>`

Запускает сервер, открывая сокет UDP, прослушивающий указанный ``port``. Вы можете дополнительно указать ``bind_address``, чтобы прослушивать только пакеты, отправленные на этот адрес. См. также :ref:`PacketPeerUDP.bind()<class_PacketPeerUDP_method_bind>`.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_UDPServer_method_poll>`

Вызывайте этот метод через регулярные интервалы (например, внутри :ref:`Node._process()<class_Node_private_method__process>`) для обработки новых пакетов. Любой пакет из известной пары адрес/порт будет доставлен в соответствующий :ref:`PacketPeerUDP<class_PacketPeerUDP>`, тогда как любой пакет, полученный из неизвестной пары адрес/порт, будет добавлен как ожидающее соединение (см. :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>` и :ref:`take_connection()<class_UDPServer_method_take_connection>`). Максимальное количество ожидающих соединений определяется через :ref:`max_pending_connections<class_UDPServer_property_max_pending_connections>`.

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_UDPServer_method_stop>`

Останавливает сервер, закрывая сокет UDP, если он открыт. Закроет все подключенные :ref:`PacketPeerUDP<class_PacketPeerUDP>`, принятые через :ref:`take_connection()<class_UDPServer_method_take_connection>` (удаленные пиры не будут уведомлены).

.. rst-class:: classref-item-separator

----

.. _class_UDPServer_method_take_connection:

.. rst-class:: classref-method

:ref:`PacketPeerUDP<class_PacketPeerUDP>` **take_connection**\ (\ ) :ref:`🔗<class_UDPServer_method_take_connection>`

Возвращает первое ожидающее соединение (подключенное к соответствующему адресу/порту). Возвращает ``null``, если новое соединение недоступно. См. также :ref:`is_connection_available()<class_UDPServer_method_is_connection_available>`, :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
