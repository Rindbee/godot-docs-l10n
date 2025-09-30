:github_url: hide

.. _class_WebSocketMultiplayerPeer:

WebSocketMultiplayerPeer
========================

**Наследует:** :ref:`MultiplayerPeer<class_MultiplayerPeer>` **<** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Базовый класс для сервера и клиента WebSocket.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый класс для сервера и клиента WebSocket, позволяющий использовать их в качестве многопользовательского однорангового узла для :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

\ **Примечание:** При экспорте в Android обязательно включите разрешение ``INTERNET`` в предустановке экспорта Android перед экспортом проекта или использованием развертывания в один клик. В противном случае сетевое взаимодействие любого рода будет заблокировано Android.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`handshake_headers<class_WebSocketMultiplayerPeer_property_handshake_headers>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                         | :ref:`handshake_timeout<class_WebSocketMultiplayerPeer_property_handshake_timeout>`       | ``3.0``                 |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`inbound_buffer_size<class_WebSocketMultiplayerPeer_property_inbound_buffer_size>`   | ``65535``               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`max_queued_packets<class_WebSocketMultiplayerPeer_property_max_queued_packets>`     | ``4096``                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`outbound_buffer_size<class_WebSocketMultiplayerPeer_property_outbound_buffer_size>` | ``65535``               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`supported_protocols<class_WebSocketMultiplayerPeer_property_supported_protocols>`   | ``PackedStringArray()`` |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`create_client<class_WebSocketMultiplayerPeer_method_create_client>`\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ )                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`create_server<class_WebSocketMultiplayerPeer_method_create_server>`\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", tls_server_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`WebSocketPeer<class_WebSocketPeer>` | :ref:`get_peer<class_WebSocketMultiplayerPeer_method_get_peer>`\ (\ peer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                   |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`               | :ref:`get_peer_address<class_WebSocketMultiplayerPeer_method_get_peer_address>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                        |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_peer_port<class_WebSocketMultiplayerPeer_method_get_peer_port>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                              |
   +-------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_WebSocketMultiplayerPeer_property_handshake_headers:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **handshake_headers** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_handshake_headers>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_headers**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_handshake_headers**\ (\ )

Дополнительные заголовки для использования во время рукопожатия. См. :ref:`WebSocketPeer.handshake_headers<class_WebSocketPeer_property_handshake_headers>` для получения более подробной информации.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_handshake_timeout:

.. rst-class:: classref-property

:ref:`float<class_float>` **handshake_timeout** = ``3.0`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_handshake_timeout>`

.. rst-class:: classref-property-setget

- |void| **set_handshake_timeout**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_handshake_timeout**\ (\ )

Максимальное время, в течение которого каждый узел может оставаться в состоянии подключения, прежде чем соединение будет отключено.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_inbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **inbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_inbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_inbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_inbound_buffer_size**\ (\ )

Размер входящего буфера для подключенных пиров. См. :ref:`WebSocketPeer.inbound_buffer_size<class_WebSocketPeer_property_inbound_buffer_size>` для получения более подробной информации.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_max_queued_packets:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_queued_packets** = ``4096`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_max_queued_packets>`

.. rst-class:: classref-property-setget

- |void| **set_max_queued_packets**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_queued_packets**\ (\ )

Максимальное количество пакетов в очереди для подключенных пиров. См. :ref:`WebSocketPeer.max_queued_packets<class_WebSocketPeer_property_max_queued_packets>` для получения более подробной информации.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_outbound_buffer_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outbound_buffer_size** = ``65535`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_outbound_buffer_size>`

.. rst-class:: classref-property-setget

- |void| **set_outbound_buffer_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outbound_buffer_size**\ (\ )

Размер исходящего буфера для подключенных пиров. См. :ref:`WebSocketPeer.outbound_buffer_size<class_WebSocketPeer_property_outbound_buffer_size>` для получения более подробной информации.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_property_supported_protocols:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **supported_protocols** = ``PackedStringArray()`` :ref:`🔗<class_WebSocketMultiplayerPeer_property_supported_protocols>`

.. rst-class:: classref-property-setget

- |void| **set_supported_protocols**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_supported_protocols**\ (\ )

Поддерживаемые подпротоколы WebSocket. Подробнее см. :ref:`WebSocketPeer.supported_protocols<class_WebSocketPeer_property_supported_protocols>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_WebSocketMultiplayerPeer_method_create_client:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_client**\ (\ url\: :ref:`String<class_String>`, tls_client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketMultiplayerPeer_method_create_client>`

Запускает новый многопользовательский клиент, подключающийся к указанному ``url``. Сертификаты TLS будут проверены по имени хоста при подключении с использованием протокола ``wss://``. Вы можете передать необязательный параметр ``tls_client_options``, чтобы настроить доверенные центры сертификации, или отключить проверку общего имени. См. :ref:`TLSOptions.client()<class_TLSOptions_method_client>` и :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

\ **Примечание:** Рекомендуется указывать часть схемы URL, т. е. ``url`` должен начинаться либо с ``ws://``, либо с ``wss://``.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_create_server:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_server**\ (\ port\: :ref:`int<class_int>`, bind_address\: :ref:`String<class_String>` = "*", tls_server_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_WebSocketMultiplayerPeer_method_create_server>`

Запускает новый многопользовательский сервер, прослушивающий указанный ``port``. Вы можете дополнительно указать ``bind_address`` и предоставить допустимые ``tls_server_options`` для использования TLS. См. :ref:`TLSOptions.server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer:

.. rst-class:: classref-method

:ref:`WebSocketPeer<class_WebSocketPeer>` **get_peer**\ (\ peer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer>`

Возвращает :ref:`WebSocketPeer<class_WebSocketPeer>`, связанный с указанным ``peer_id``.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_peer_address**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer_address>`

Возвращает IP-адрес указанного однорангового узла.

.. rst-class:: classref-item-separator

----

.. _class_WebSocketMultiplayerPeer_method_get_peer_port:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_peer_port**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebSocketMultiplayerPeer_method_get_peer_port>`

Возвращает удаленный порт указанного однорангового узла.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
