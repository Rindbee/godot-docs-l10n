:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/IP.xml.

.. _class_IP:

IP
==

**Успадковує:** :ref:`Object<class_Object>`

Функції підтримки Інтернету (IP) такі функції, як дозвіл на DNS.

.. rst-class:: classref-introduction-group

Опис
--------

IP містить функції підтримки для Інтернету (IP). Підтримка TCP/IP у різних класах (див. :ref:`StreamPeerTCP<class_StreamPeerTCP>` та :ref:`TCPServer<class_TCPServer>`). IP забезпечує підтримку протоколу DNS, як блокування та різьблення.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_cache<class_IP_method_clear_cache>`\ (\ hostname\: :ref:`String<class_String>` = ""\ )                                                                 |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`erase_resolve_item<class_IP_method_erase_resolve_item>`\ (\ id\: :ref:`int<class_int>`\ )                                                                    |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_local_addresses<class_IP_method_get_local_addresses>`\ (\ ) |const|                                                                                      |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_local_interfaces<class_IP_method_get_local_interfaces>`\ (\ ) |const|                                                                                    |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_resolve_item_address<class_IP_method_get_resolve_item_address>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                        | :ref:`get_resolve_item_addresses<class_IP_method_get_resolve_item_addresses>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                            |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ResolverStatus<enum_IP_ResolverStatus>`                    | :ref:`get_resolve_item_status<class_IP_method_get_resolve_item_status>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                  |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`resolve_hostname<class_IP_method_resolve_hostname>`\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ )                       |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`resolve_hostname_addresses<class_IP_method_resolve_hostname_addresses>`\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ )   |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`resolve_hostname_queue_item<class_IP_method_resolve_hostname_queue_item>`\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) |
   +------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_IP_ResolverStatus:

.. rst-class:: classref-enumeration

enum **ResolverStatus**: :ref:`🔗<enum_IP_ResolverStatus>`

.. _class_IP_constant_RESOLVER_STATUS_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_NONE** = ``0``

Статус на сервери Немає статусу.

.. _class_IP_constant_RESOLVER_STATUS_WAITING:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_WAITING** = ``1``

Статус на сервери.

.. _class_IP_constant_RESOLVER_STATUS_DONE:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_DONE** = ``2``

Статус на сервери Діон.

.. _class_IP_constant_RESOLVER_STATUS_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **RESOLVER_STATUS_ERROR** = ``3``

Статус на сервери.

.. rst-class:: classref-item-separator

----

.. _enum_IP_Type:

.. rst-class:: classref-enumeration

enum **Type**: :ref:`🔗<enum_IP_Type>`

.. _class_IP_constant_TYPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_NONE** = ``0``

Тип адреси: None.

.. _class_IP_constant_TYPE_IPV4:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_IPV4** = ``1``

Тип адреси: версія протоколу 4 (IPv4).

.. _class_IP_constant_TYPE_IPV6:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_IPV6** = ``2``

Тип адреси: версія протоколу 6 (IPv6).

.. _class_IP_constant_TYPE_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_IP_Type>` **TYPE_ANY** = ``3``

Тип адреси: Будь-який.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_IP_constant_RESOLVER_MAX_QUERIES:

.. rst-class:: classref-constant

**RESOLVER_MAX_QUERIES** = ``256`` :ref:`🔗<class_IP_constant_RESOLVER_MAX_QUERIES>`

Допускається максимальна кількість одночасних запитів DNS, :ref:`RESOLVER_INVALID_ID<class_IP_constant_RESOLVER_INVALID_ID>`, якщо перевищено.

.. _class_IP_constant_RESOLVER_INVALID_ID:

.. rst-class:: classref-constant

**RESOLVER_INVALID_ID** = ``-1`` :ref:`🔗<class_IP_constant_RESOLVER_INVALID_ID>`

Недійсний постійний ідентифікатор. Повернувшись, якщо :ref:`RESOLVER_MAX_QUERIES<class_IP_constant_RESOLVER_MAX_QUERIES>` перевищено.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_IP_method_clear_cache:

.. rst-class:: classref-method

|void| **clear_cache**\ (\ hostname\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_IP_method_clear_cache>`

Видаліть всі посилання на ``hostname``. Якщо немає ``hostname``, всі кешовані IP адреси видаляються.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_erase_resolve_item:

.. rst-class:: classref-method

|void| **erase_resolve_item**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_IP_method_erase_resolve_item>`

Видаляє заданий елемент ``id`` з черги. Це слід використовувати для звільнення черги після її завершення, щоб дозволити виконання додаткових запитів.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_local_addresses:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_local_addresses**\ (\ ) |const| :ref:`🔗<class_IP_method_get_local_addresses>`

Повертає всі поточні IPv4 і IPv6 адреси як масив.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_local_interfaces:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_local_interfaces**\ (\ ) |const| :ref:`🔗<class_IP_method_get_local_interfaces>`

Повертає всі мережеві адаптери як масив. 

Кожен адаптер є словником такого вигляду: 

::
 
    {
        "index": "1", # Індекс інтерфейсу. 
        "name": "eth0", # Назва інтерфейсу. 
        "friendly": "Ethernet One", # Зрозуміле ім'я (може бути пустим). 
        "addresses": ["192.168.1.101"], # Масив IP-адрес, пов'язаних з цим інтерфейсом. 
    }

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_address:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_resolve_item_address**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_address>`

Повертає IP-адресу імені хоста в черзі, враховуючи його чергу ``id``. Повертає порожній рядок у разі помилки або якщо розв'язання проблеми ще не відбулося (див. :ref:`get_resolve_item_status()<class_IP_method_get_resolve_item_status>`).

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_addresses:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_resolve_item_addresses**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_addresses>`

Повернення адрес, або порожній масив, якщо помилка трапилася або резолюція не сталася ще (див. :ref:`get_resolve_item_status()<class_IP_method_get_resolve_item_status>`).

.. rst-class:: classref-item-separator

----

.. _class_IP_method_get_resolve_item_status:

.. rst-class:: classref-method

:ref:`ResolverStatus<enum_IP_ResolverStatus>` **get_resolve_item_status**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_IP_method_get_resolve_item_status>`

Повертає статус хостового хоста в якості :ref:`ResolverStatus<enum_IP_ResolverStatus>`, враховуючи свою чергу ``id``.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname:

.. rst-class:: classref-method

:ref:`String<class_String>` **resolve_hostname**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname>`

Повертає заданий адрес IPv4 або IPv6 при вирішенні (метод розблокування). Повернутий тип адресного типу залежить від стану :ref:`Type<enum_IP_Type>` ``ip_type``.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname_addresses:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **resolve_hostname_addresses**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname_addresses>`

Розчиняє задану назву хостійкої форми. Адреси подаються у вигляді адрес IPv4 або IPv6, в залежності від ``ip_type``.

.. rst-class:: classref-item-separator

----

.. _class_IP_method_resolve_hostname_queue_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **resolve_hostname_queue_item**\ (\ host\: :ref:`String<class_String>`, ip_type\: :ref:`Type<enum_IP_Type>` = 3\ ) :ref:`🔗<class_IP_method_resolve_hostname_queue_item>`

Створює пункт черги, щоб вирішити ім'я хоста до адреси IPv4 або IPv6 в залежності від стану :ref:`Type<enum_IP_Type>` ``ip_type``. Повернутися до черги, якщо успішним, або :ref:`RESOLVER_INVALID_ID<class_IP_constant_RESOLVER_INVALID_ID>` за похибкою.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
