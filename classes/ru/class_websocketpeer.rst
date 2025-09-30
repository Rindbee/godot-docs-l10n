:github_url: hide

.. _class_WebSocketPeer:

WebSocketPeer
=============

**Наследует:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Соединение WebSocket.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс представляет соединение WebSocket и может использоваться как клиент WebSocket (соответствует RFC 6455) или как удаленный узел сервера WebSocket.

Вы можете отправлять двоичные кадры WebSocket с помощью :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>`, а текстовые кадры WebSocket с помощью :ref:`send()<class_WebSocketPeer_method_send>` (предпочтительнее текстовые кадры при взаимодействии с текстовым API). Вы можете проверить тип кадра последнего пакета с помощью :ref:`was_string_packet()<class_WebSocketPeer_method_was_string_packet>`.

Чтобы запустить клиент WebSocket, сначала вызовите :ref:`connect_to_url()<class_WebSocketPeer_method_connect_to_url>`, затем регулярно вызывайте :ref:`poll()<class_WebSocketPeer_method_poll>` (например, во время процесса :ref:`Node<class_Node>`). Вы можете запросить состояние сокета с помощью :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>`, получить количество ожидающих пакетов с помощью :ref:`PacketPeer.get_available_packet_count()<class_PacketPeer_method_get_available_packet_count>` и извлечь их с помощью :ref:`PacketPeer.get_packet()<class_PacketPeer_method_get_packet>`.


.. tabs::

 .. code-tab:: gdscript

    extends Node

    var socket = WebSocketPeer.new()

    func _ready():
        socket.connect_to_url("wss://example.com")

    func _process(delta):
        socket.poll()
        var state = socket.get_ready_state()
        if state == WebSocketPeer.STATE_OPEN:
            while socket.get_available_packet_count():
                print("Packet: ", socket.get_packet())
        elif state == WebSocketPeer.STATE_CLOSING:
            # Продолжайте опросы, чтобы добиться надлежащего закрытия.
            pass
        elif state == WebSocketPeer.STATE_CLOSED:
            var code = socket.get_close_code()
            var reason = socket.get_close_reason()
            print("WebSocket закрыт с кодом: %d, reason %s. Clean: %s" % [code, reason, code != -1])
            set_process(false) # Остановить обработку.



Чтобы использовать одноранговый узел как часть сервера WebSocket, обратитесь к :ref:`accept_stream()<class_WebSocketPeer_method_accept_stream>` и онлайн-руководству.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`handshake_headers<class_WebSocketPeer_property_handshake_headers>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                         | :ref:`heartbeat_interval<class_WebSocketPeer_property_heartbeat_interval>`     | ``0.0``                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`inbound_buffer_size<class_WebSocketPeer_property_inbound_buffer_size>`   | ``65535``               |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`max_queued_packets<class_WebSocketPeer_property_max_queued_packets>`     | ``4096``                |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`outbound_buffer_size<class_WebSocketPeer_property_outbound_buffer_size>` | ``65535``               |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`supported_protocols<class_WebSocketPeer_property_supported_protocols>`   | ``PackedStringArray()`` |
   +---------------------------------------------------+--------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`accept_stream<class_WebSocketPeer_method_accept_stream>`\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`\ )                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`close<class_WebSocketPeer_method_close>`\ (\ code\: :ref:`int<class_int>` = 1000, reason\: :ref:`String<class_String>` = ""\ )                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`connect_to_url<class_WebSocketPeer_method_connect_to_url>`\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )   |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_close_code<class_WebSocketPeer_method_get_close_code>`\ (\ ) |const|                                                                                               |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_close_reason<class_WebSocketPeer_method_get_close_reason>`\ (\ ) |const|                                                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_connected_host<class_WebSocketPeer_method_get_connected_host>`\ (\ ) |const|                                                                                       |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_connected_port<class_WebSocketPeer_method_get_connected_port>`\ (\ ) |const|                                                                                       |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                  | :ref:`get_current_outbound_buffered_amount<class_WebSocketPeer_method_get_current_outbound_buffered_amount>`\ (\ ) |const|                                                   |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`State<enum_WebSocketPeer_State>` | :ref:`get_ready_state<class_WebSocketPeer_method_get_ready_state>`\ (\ ) |const|                                                                                             |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_requested_url<class_WebSocketPeer_method_get_requested_url>`\ (\ ) |const|                                                                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`            | :ref:`get_selected_protocol<class_WebSocketPeer_method_get_selected_protocol>`\ (\ ) |const|                                                                                 |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`poll<class_WebSocketPeer_method_poll>`\ (\ )                                                                                                                           |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`send<class_WebSocketPeer_method_send>`\ (\ message\: :ref:`PackedByteArray<class_PackedByteArray>`, write_mode\: :ref:`WriteMode<enum_WebSocketPeer_WriteMode>` = 1\ ) |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`  | :ref:`send_text<class_WebSocketPeer_method_send_text>`\ (\ message\: :ref:`String<class_String>`\ )                                                                          |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                 | :ref:`set_no_delay<class_WebSocketPeer_method_set_no_delay>`\ (\ enabled\: :ref:`bool<class_bool>`\ )                                                                        |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                | :ref:`was_string_packet<class_WebSocketPeer_method_was_string_packet>`\ (\ ) |const|                                                                                         |
   +----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_WebSocketPeer_WriteMode:

.. rst-class:: classref-enumeration

enum **WriteMode**: :ref:`🔗<enum_WebSocketPeer_WriteMode>`

.. _class_WebSocketPeer_constant_WRITE_MODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebSocketPeer_WriteMode>` **WRITE_MODE_TEXT** = ``0``

Указывает, что сообщения WebSockets должны передаваться в виде текстовой полезной нагрузки (разрешена только допустимая кодировка UTF-8).

.. _class_WebSocketPeer_constant_WRITE_MODE_BINARY:

.. rst-class:: classref-enumeration-constant

:ref:`WriteMode<enum_WebSocketPeer_WriteMode>` **WRITE_MODE_BINARY** = ``1``

Указывает, что сообщения WebSockets должны передаваться как двоичные данные (допускается любая комбинация байтов).

.. rst-class:: classref-item-separator

----

.. _enum_WebSocketPeer_State:

.. rst-class:: classref-enumeration

enum **State**: :ref:`🔗<enum_WebSocketPeer_State>`

.. _class_WebSocketPeer_constant_STATE_CONNECTING:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CONNECTING** = ``0``

Сокет создан. Соединение еще не открыто.

.. _class_WebSocketPeer_constant_STATE_OPEN:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_OPEN** = ``1``

Соединение открыто и готово к коммуникации.

.. _class_WebSocketPeer_constant_STATE_CLOSING:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CLOSING** = ``2``

Соединение находится в процессе закрытия. Это означает, что удаленному пиру был отправлен запрос на закрытие, но подтверждение не получено.

.. _class_WebSocketPeer_constant_STATE_CLOSED:

.. rst-class:: classref-enumeration-constant

:ref:`State<enum_WebSocketPeer_State>` **STATE_CLOSED** = ``3``

Соединение закрыто или не может быть открыто.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_WebSocketPeer_property_handshake_headers:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **handshake_headers** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketPeer_property_handshake_headers>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_headers**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_handshake_headers**\ (\ )

Дополнительные заголовки HTTP, которые будут отправлены во время рукопожатия WebSocket.

\ **Примечание:** Не поддерживается в веб-экспорте из-за ограничений браузеров.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_heartbeat_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **heartbeat_interval** = ``0.0`` :ref:`🔗<class_WebSocketPeer_property_heartbeat_interval>`

.. rst-class:: classref-property-setget

- |void| **set_heartbeat_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_heartbeat_interval**\ (\ )

Интервал (в секундах), с которым одноранговый узел будет автоматически отправлять кадры управления WebSocket "ping". Если установлено значение ``0``, кадры управления "ping" отправляться не будут.

\ **Примечание:** Не влияет на экспорт веб-контента из-за ограничений браузера.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_inbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **inbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketPeer_property_inbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_inbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_inbound_buffer_size**\ (\ )

Размер входного буфера в байтах (примерно максимальный объем памяти, который будет выделен для входящих пакетов).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_max_queued_packets:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_queued_packets** = ``4096`` :ref:`🔗<class_WebSocketPeer_property_max_queued_packets>`

.. rst-class:: classref-property-setget

- |void| **set_max_queued_packets**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_queued_packets**\ (\ )

Максимальное количество пакетов, которые будут разрешены в очередях (как входящих, так и исходящих).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_outbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketPeer_property_outbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_outbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outbound_buffer_size**\ (\ )

Размер входного буфера в байтах (примерно максимальный объем памяти, который будет выделен для исходящих пакетов).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_property_supported_protocols:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **supported_protocols** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketPeer_property_supported_protocols>`

.. rst-class:: classref-property-setget

- |void| **set_supported_protocols**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_supported_protocols**\ (\ )

Подпротоколы WebSocket, разрешенные во время установления связи WebSocket.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_WebSocketPeer_method_accept_stream:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **accept_stream**\ (\ stream\: :ref:`StreamPeer<class_StreamPeer>`\ ) :ref:`🔗<class_WebSocketPeer_method_accept_stream>`

Принимает одноранговое соединение, выполняющее HTTP-рукопожатие как сервер WebSocket. ``stream`` должен быть допустимым потоком TCP, полученным через :ref:`TCPServer.take_connection()<class_TCPServer_method_take_connection>`, или потоком TLS, принятым через :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>`.

\ **Примечание:** Не поддерживается в веб-экспорте из-за ограничений браузеров.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_close:

.. rst-class:: classref-method

|void| **close**\ (\ code\: :ref:`int<class_int>` = 1000, reason\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_WebSocketPeer_method_close>`

Закрывает это соединение WebSocket. ``code`` — код состояния для закрытия (см. RFC 6455 раздел 7.4 для списка допустимых кодов состояния). ``reason`` — понятная человеку причина закрытия соединения (может быть любой строкой UTF-8 длиной менее 123 байт). Если ``code`` отрицательный, соединение будет немедленно закрыто без уведомления удаленного однорангового узла.

\ **Примечание:** Чтобы добиться чистого закрытия, вам нужно будет продолжать опрос, пока не будет достигнуто :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>`.

\ **Примечание:** Веб-экспорт может не поддерживать все коды состояния. Более подробную информацию см. в документации по браузеру.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_connect_to_url:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_url**\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketPeer_method_connect_to_url>`

Подключается к указанному URL. Сертификаты TLS будут проверены по имени хоста при подключении с использованием протокола ``wss://``. Вы можете передать необязательный параметр ``tls_client_options``, чтобы настроить доверенные центры сертификации, или отключить проверку общего имени. См. :ref:`TLSOptions.client()<class_TLSOptions_method_client>` и :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

\ **Примечание:** Этот метод не блокируется и вернет :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` до установки соединения, если предоставленные параметры действительны, а одноранговый узел не находится в недопустимом состоянии (например, уже подключен). Регулярно вызывайте :ref:`poll()<class_WebSocketPeer_method_poll>` (например, во время процесса :ref:`Node<class_Node>`) и проверяйте результат :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>`, чтобы узнать, успешно ли установлено соединение или нет.

\ **Примечание:** Чтобы избежать предупреждений о смешанном контенте или ошибок в Интернете, вам, возможно, придется использовать ``url``, который начинается с ``wss://`` (безопасный) вместо ``ws://``. При этом обязательно используйте полное доменное имя, которое соответствует указанному в сертификате TLS сервера. Не подключайтесь напрямую через IP-адрес для соединений ``wss://``, так как он не будет соответствовать сертификату TLS.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_close_code:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_close_code**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_close_code>`

Возвращает полученный код статуса закрытия кадра WebSocket или ``-1``, если соединение не было закрыто чисто. Вызывайте этот метод только тогда, когда :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` возвращает :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_close_reason:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_close_reason**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_close_reason>`

Возвращает полученную строку причины статуса закрытия фрейма WebSocket. Вызывайте этот метод только тогда, когда :ref:`get_ready_state()<class_WebSocketPeer_method_get_ready_state>` возвращает :ref:`STATE_CLOSED<class_WebSocketPeer_constant_STATE_CLOSED>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_connected_host:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_connected_host**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_connected_host>`

Возвращает IP-адрес подключенного однорангового узла.

\ **Примечание:** Недоступно в веб-экспорте.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_connected_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_connected_port**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_connected_port>`

Возвращает удаленный порт подключенного однорангового узла.

\ **Примечание:** Недоступно в веб-экспорте.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_current_outbound_buffered_amount:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_outbound_buffered_amount**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_current_outbound_buffered_amount>`

Возвращает текущий объем данных в исходящем буфере веб-сокета. **Примечание:** Веб-экспорт использует WebSocket.bufferedAmount, тогда как другие платформы используют внутренний буфер.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_ready_state:

.. rst-class:: classref-method

:ref:`State<enum_WebSocketPeer_State>` **get_ready_state**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_ready_state>`

Возвращает состояние готовности соединения.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_requested_url:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_requested_url**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_requested_url>`

Возвращает URL, запрошенный этим пиром. URL выводится из ``url``, переданного в :ref:`connect_to_url()<class_WebSocketPeer_method_connect_to_url>`, или из заголовков HTTP при работе в качестве сервера (т. е. при использовании :ref:`accept_stream()<class_WebSocketPeer_method_accept_stream>`).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_get_selected_protocol:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_selected_protocol**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_get_selected_protocol>`

Возвращает выбранный подпротокол WebSocket для данного соединения или пустую строку, если подпротокол еще не выбран.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_WebSocketPeer_method_poll>`

Обновляет состояние соединения и получает входящие пакеты. Регулярно вызывайте эту функцию, чтобы поддерживать ее в чистом состоянии.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_send:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send**\ (\ message\: :ref:`PackedByteArray<class_PackedByteArray>`, write_mode\: :ref:`WriteMode<enum_WebSocketPeer_WriteMode>` = 1\ ) :ref:`🔗<class_WebSocketPeer_method_send>`

Отправляет указанный ``message``, используя желаемый ``write_mode``. При отправке :ref:`String<class_String>` предпочтительнее использовать :ref:`send_text()<class_WebSocketPeer_method_send_text>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_send_text:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **send_text**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebSocketPeer_method_send_text>`

Отправляет указанный ``message`` с использованием текстового режима WebSocket. Предпочитайте этот метод :ref:`PacketPeer.put_packet()<class_PacketPeer_method_put_packet>` при взаимодействии со сторонним текстовым API (например, при использовании сообщений в формате :ref:`JSON<class_JSON>`).

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_set_no_delay:

.. rst-class:: classref-method

|void| **set_no_delay**\ (\ enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebSocketPeer_method_set_no_delay>`

Отключить алгоритм Нейгла на базовом сокете TCP (по умолчанию). Для получения дополнительной информации см. :ref:`StreamPeerTCP.set_no_delay()<class_StreamPeerTCP_method_set_no_delay>`.

\ **Примечание:** Недоступно в веб-экспорте.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketPeer_method_was_string_packet:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **was_string_packet**\ (\ ) |const| :ref:`🔗<class_WebSocketPeer_method_was_string_packet>`

Возвращает ``true``, если последний полученный пакет был отправлен как текстовая полезная нагрузка. См. :ref:`WriteMode<enum_WebSocketPeer_WriteMode>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
