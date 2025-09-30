:github_url: hide

.. _class_PacketPeerDTLS:

PacketPeerDTLS
==============

**Наследует:** :ref:`PacketPeer<class_PacketPeer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Пакетный пир DTLS.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс представляет одноранговое соединение DTLS. Его можно использовать для подключения к серверу DTLS, и он возвращается :ref:`DTLSServer.take_connection()<class_DTLSServer_method_take_connection>`.

\ **Примечание:** При экспорте в Android обязательно включите разрешение ``INTERNET`` в предустановке экспорта Android перед экспортом проекта или использованием развертывания в один клик. В противном случае сетевое взаимодействие любого рода будет заблокировано Android.

\ **Предупреждение:** Отзыв сертификата TLS и закрепление сертификата в настоящее время не поддерживаются. Отозванные сертификаты принимаются, если они в остальном действительны. Если это вызывает беспокойство, вы можете использовать автоматически управляемые сертификаты с коротким сроком действия.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`     | :ref:`connect_to_peer<class_PacketPeerDTLS_method_connect_to_peer>`\ (\ packet_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`, hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`disconnect_from_peer<class_PacketPeerDTLS_method_disconnect_from_peer>`\ (\ )                                                                                                                                                     |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Status<enum_PacketPeerDTLS_Status>` | :ref:`get_status<class_PacketPeerDTLS_method_get_status>`\ (\ ) |const|                                                                                                                                                                 |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`poll<class_PacketPeerDTLS_method_poll>`\ (\ )                                                                                                                                                                                     |
   +-------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_PacketPeerDTLS_Status:

.. rst-class:: classref-enumeration

enum **Status**: :ref:`🔗<enum_PacketPeerDTLS_Status>`

.. _class_PacketPeerDTLS_constant_STATUS_DISCONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_DISCONNECTED** = ``0``

Статус, представляющий отключенный **PacketPeerDTLS**.

.. _class_PacketPeerDTLS_constant_STATUS_HANDSHAKING:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_HANDSHAKING** = ``1``

Статус, представляющий **PacketPeerDTLS**, который в данный момент выполняет рукопожатие с удаленным партнером.

.. _class_PacketPeerDTLS_constant_STATUS_CONNECTED:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_CONNECTED** = ``2``

Статус, представляющий **PacketPeerDTLS**, который подключен к удаленному одноранговому узлу.

.. _class_PacketPeerDTLS_constant_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_ERROR** = ``3``

Статус, представляющий **PacketPeerDTLS** в состоянии общей ошибки.

.. _class_PacketPeerDTLS_constant_STATUS_ERROR_HOSTNAME_MISMATCH:

.. rst-class:: classref-enumeration-constant

:ref:`Status<enum_PacketPeerDTLS_Status>` **STATUS_ERROR_HOSTNAME_MISMATCH** = ``4``

Статус ошибки, указывающий на несоответствие домена сертификата DTLS, представленного хостом, и домена, запрошенного для проверки.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PacketPeerDTLS_method_connect_to_peer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_to_peer**\ (\ packet_peer\: :ref:`PacketPeerUDP<class_PacketPeerUDP>`, hostname\: :ref:`String<class_String>`, client_options\: :ref:`TLSOptions<class_TLSOptions>` = null\ ) :ref:`🔗<class_PacketPeerDTLS_method_connect_to_peer>`

Подключает ``packet_peer``, начиная рукопожатие DTLS, используя базовый :ref:`PacketPeerUDP<class_PacketPeerUDP>`, который должен быть подключен (см. :ref:`PacketPeerUDP.connect_to_host()<class_PacketPeerUDP_method_connect_to_host>`). При желании можно указать ``client_options``, которые будут использоваться при проверке соединений TLS. См. :ref:`TLSOptions.client()<class_TLSOptions_method_client>` и :ref:`TLSOptions.client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_disconnect_from_peer:

.. rst-class:: classref-method

|void| **disconnect_from_peer**\ (\ ) :ref:`🔗<class_PacketPeerDTLS_method_disconnect_from_peer>`

Отключает данный одноранговый узел, завершая сеанс DTLS.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_get_status:

.. rst-class:: classref-method

:ref:`Status<enum_PacketPeerDTLS_Status>` **get_status**\ (\ ) |const| :ref:`🔗<class_PacketPeerDTLS_method_get_status>`

Возвращает статус соединения.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeerDTLS_method_poll:

.. rst-class:: classref-method

|void| **poll**\ (\ ) :ref:`🔗<class_PacketPeerDTLS_method_poll>`

Опросите соединение для проверки входящих пакетов. Вызывайте его часто, чтобы обновить статус и поддерживать работоспособность соединения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
