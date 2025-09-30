:github_url: hide

.. _class_TLSOptions:

TLSOptions
==========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Конфигурация TLS для клиентов и серверов.

.. rst-class:: classref-introduction-group

Описание
----------------

TLSOptions абстрагирует параметры конфигурации для классов :ref:`StreamPeerTLS<class_StreamPeerTLS>` и :ref:`PacketPeerDTLS<class_PacketPeerDTLS>`. 

Объекты этого класса не могут быть созданы напрямую, и вместо этого следует использовать один из статических методов :ref:`client()<class_TLSOptions_method_client>`, :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>` или :ref:`server()<class_TLSOptions_method_server>`.


.. tabs::

 .. code-tab:: gdscript

    # Создаёт конфигурацию клиента TLS, которая использует нашу настраиваемую цепочку доверенных центров сертификации.
    var client_trusted_cas = load("res://my_trusted_cas.crt")
    var client_tls_options = TLSOptions.client(client_trusted_cas)

    # Создаёт конфигурацию сервера TLS.
    var server_certs = load("res://my_server_cas.crt")
    var server_key = load("res://my_server_key.key")
    var server_tls_options = TLSOptions.server(server_key, server_certs)



.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`client<class_TLSOptions_method_client>`\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null, common_name_override\: :ref:`String<class_String>` = ""\ ) |static| |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`client_unsafe<class_TLSOptions_method_client_unsafe>`\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null\ ) |static|                                            |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`get_common_name_override<class_TLSOptions_method_get_common_name_override>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`X509Certificate<class_X509Certificate>` | :ref:`get_own_certificate<class_TLSOptions_method_get_own_certificate>`\ (\ ) |const|                                                                                                       |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CryptoKey<class_CryptoKey>`             | :ref:`get_private_key<class_TLSOptions_method_get_private_key>`\ (\ ) |const|                                                                                                               |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`X509Certificate<class_X509Certificate>` | :ref:`get_trusted_ca_chain<class_TLSOptions_method_get_trusted_ca_chain>`\ (\ ) |const|                                                                                                     |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_server<class_TLSOptions_method_is_server>`\ (\ ) |const|                                                                                                                           |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`is_unsafe_client<class_TLSOptions_method_is_unsafe_client>`\ (\ ) |const|                                                                                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TLSOptions<class_TLSOptions>`           | :ref:`server<class_TLSOptions_method_server>`\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, certificate\: :ref:`X509Certificate<class_X509Certificate>`\ ) |static|                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TLSOptions_method_client:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null, common_name_override\: :ref:`String<class_String>` = ""\ ) |static| :ref:`🔗<class_TLSOptions_method_client>`

Создает конфигурацию клиента TLS, которая проверяет сертификаты и их общие имена (полные доменные имена).

Вы можете указать пользовательский ``trusted_chain`` центров сертификации (список CA по умолчанию будет использоваться, если ``null``), и дополнительно указать ``common_name_override``, если вы ожидаете, что сертификат будет иметь общее имя, отличное от FQDN сервера.

\ **Примечание:** На веб-платформе проверка TLS всегда принудительно выполняется по списку CA веб-браузера. Это считается функцией безопасности.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_client_unsafe:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client_unsafe**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null\ ) |static| :ref:`🔗<class_TLSOptions_method_client_unsafe>`

Создает **небезопасную** конфигурацию клиента TLS, в которой проверка сертификата необязательна. Вы можете дополнительно указать допустимый ``trusted_chain``, но общее имя сертификатов никогда не будет проверяться. Использование этой конфигурации для целей, отличных от тестирования **не рекомендуется**.

\ **Примечание:** На веб-платформе проверка TLS всегда принудительно выполняется по списку CA веб-браузера. Это считается функцией безопасности.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_common_name_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_common_name_override**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_common_name_override>`

Возвращает переопределение общего имени (доменного имени), указанное при создании с помощью :ref:`client()<class_TLSOptions_method_client>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_own_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_own_certificate**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_own_certificate>`

Возвращает :ref:`X509Certificate<class_X509Certificate>`, указанный при создании с помощью :ref:`server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_private_key:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **get_private_key**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_private_key>`

Возвращает :ref:`CryptoKey<class_CryptoKey>`, указанный при создании с помощью :ref:`server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_trusted_ca_chain:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_trusted_ca_chain**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_trusted_ca_chain>`

Возвращает цепочку CA :ref:`X509Certificate<class_X509Certificate>`, указанную при создании с помощью :ref:`client()<class_TLSOptions_method_client>` или :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_server>`

Возвращает ``true``, если создано с помощью :ref:`server()<class_TLSOptions_method_server>`, в противном случае ``false``.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_unsafe_client:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_unsafe_client**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_unsafe_client>`

Возвращает ``true``, если создано с помощью :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`, в противном случае ``false``.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_server:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **server**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, certificate\: :ref:`X509Certificate<class_X509Certificate>`\ ) |static| :ref:`🔗<class_TLSOptions_method_server>`

Создает конфигурацию сервера TLS с использованием предоставленных ``key`` и ``certificate``.

\ **Примечание:** ``certificate`` должен включать полную цепочку сертификатов вплоть до подписывающего CA (файл сертификатов можно объединить с помощью текстового редактора общего назначения).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
