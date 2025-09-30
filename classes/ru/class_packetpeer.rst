:github_url: hide

.. _class_PacketPeer:

PacketPeer
==========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`ENetPacketPeer<class_ENetPacketPeer>`, :ref:`MultiplayerPeer<class_MultiplayerPeer>`, :ref:`PacketPeerDTLS<class_PacketPeerDTLS>`, :ref:`PacketPeerExtension<class_PacketPeerExtension>`, :ref:`PacketPeerStream<class_PacketPeerStream>`, :ref:`PacketPeerUDP<class_PacketPeerUDP>`, :ref:`WebRTCDataChannel<class_WebRTCDataChannel>`, :ref:`WebSocketPeer<class_WebSocketPeer>`

Абстракция и базовый класс для пакетных протоколов.

.. rst-class:: classref-introduction-group

Описание
----------------

PacketPeer — это абстракция и базовый класс для пакетных протоколов (например, UDP). Он предоставляет API для отправки и получения пакетов как в виде необработанных данных, так и в виде переменных. Это упрощает передачу данных по протоколу, без необходимости кодировать данные как низкоуровневые байты или беспокоиться о порядке сети.

\ **Примечание:** При экспорте в Android обязательно включите разрешение ``INTERNET`` в предустановке экспорта Android перед экспортом проекта или использованием развертывания в один клик. В противном случае сетевое взаимодействие любого рода будет заблокировано Android.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------+-------------+
   | :ref:`int<class_int>` | :ref:`encode_buffer_max_size<class_PacketPeer_property_encode_buffer_max_size>` | ``8388608`` |
   +-----------------------+---------------------------------------------------------------------------------+-------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`get_available_packet_count<class_PacketPeer_method_get_available_packet_count>`\ (\ ) |const|                                        |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`get_packet<class_PacketPeer_method_get_packet>`\ (\ )                                                                                |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`get_packet_error<class_PacketPeer_method_get_packet_error>`\ (\ ) |const|                                                            |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                 | :ref:`get_var<class_PacketPeer_method_get_var>`\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ )                                     |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`put_packet<class_PacketPeer_method_put_packet>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                        |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`         | :ref:`put_var<class_PacketPeer_method_put_var>`\ (\ var\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PacketPeer_property_encode_buffer_max_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **encode_buffer_max_size** = ``8388608`` :ref:`🔗<class_PacketPeer_property_encode_buffer_max_size>`

.. rst-class:: classref-property-setget

- |void| **set_encode_buffer_max_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_encode_buffer_max_size**\ (\ )

Максимальный размер буфера, разрешенный при кодировании :ref:`Variant<class_Variant>`. Увеличьте это значение для поддержки более интенсивного выделения памяти.

Метод :ref:`put_var()<class_PacketPeer_method_put_var>` выделяет память в стеке, и используемый буфер будет автоматически увеличиваться до ближайшей степени двойки, чтобы соответствовать размеру :ref:`Variant<class_Variant>`. Если :ref:`Variant<class_Variant>` больше, чем :ref:`encode_buffer_max_size<class_PacketPeer_property_encode_buffer_max_size>`, метод выдаст ошибку с :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PacketPeer_method_get_available_packet_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_packet_count**\ (\ ) |const| :ref:`🔗<class_PacketPeer_method_get_available_packet_count>`

Возвращает количество пакетов, доступных в данный момент в кольцевом буфере.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_get_packet:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **get_packet**\ (\ ) :ref:`🔗<class_PacketPeer_method_get_packet>`

Получает необработанный пакет.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_get_packet_error:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **get_packet_error**\ (\ ) |const| :ref:`🔗<class_PacketPeer_method_get_packet_error>`

Возвращает состояние ошибки последнего полученного пакета (через :ref:`get_packet()<class_PacketPeer_method_get_packet>` и :ref:`get_var()<class_PacketPeer_method_get_var>`).

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_get_var:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_var**\ (\ allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PacketPeer_method_get_var>`

Получает Variant. Если ``allow_objects`` равен ``true``, декодирование объектов разрешено.

Внутренне это использует тот же механизм декодирования, что и метод :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>`.

\ **Предупреждение:** Десериализованные объекты могут содержать код, который выполняется. Не используйте эту опцию, если сериализованный объект поступает из ненадежных источников, чтобы избежать потенциальных угроз безопасности, таких как удаленное выполнение кода.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_put_packet:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_packet**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_PacketPeer_method_put_packet>`

Отправляет необработанный пакет.

.. rst-class:: classref-item-separator

----

.. _class_PacketPeer_method_put_var:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **put_var**\ (\ var\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PacketPeer_method_put_var>`

Отправляет :ref:`Variant<class_Variant>` как пакет. Если ``full_objects`` равен ``true``, кодирование объектов разрешено (и потенциально может включать код).

Внутри это использует тот же механизм кодирования, что и метод :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
