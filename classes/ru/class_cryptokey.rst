:github_url: hide

.. _class_CryptoKey:

CryptoKey
=========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Криптографический ключ (RSA или эллиптическая кривая).

.. rst-class:: classref-introduction-group

Описание
----------------

Класс CryptoKey представляет собой криптографический ключ. Ключи можно загружать и сохранять, как и любой другой :ref:`Resource<class_Resource>`.

Их можно использовать для генерации самоподписанного :ref:`X509Certificate<class_X509Certificate>` через :ref:`Crypto.generate_self_signed_certificate()<class_Crypto_method_generate_self_signed_certificate>` и как закрытый ключ в :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` вместе с соответствующим сертификатом.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`SSL сертификаты <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_public_only<class_CryptoKey_method_is_public_only>`\ (\ ) |const|                                                                                      |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_CryptoKey_method_load>`\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ )                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_string<class_CryptoKey_method_load_from_string>`\ (\ string_key\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save<class_CryptoKey_method_save>`\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ )                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`save_to_string<class_CryptoKey_method_save_to_string>`\ (\ public_only\: :ref:`bool<class_bool>` = false\ )                                               |
   +---------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_CryptoKey_method_is_public_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_public_only**\ (\ ) |const| :ref:`🔗<class_CryptoKey_method_is_public_only>`

Возвращает ``true``, если этот CryptoKey имеет только открытую часть, но не закрытую.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_load>`

Загружает ключ из ``path``. Если ``public_only`` равен ``true``, будет загружен только открытый ключ.

\ **Примечание:** ``path`` должен быть файлом "\*.pub", если ``public_only`` равен ``true``, в противном случае файлом "\*.key".

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_load_from_string:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_string**\ (\ string_key\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_load_from_string>`

Загружает ключ из указанного ``string_key``. Если ``public_only`` равен ``true``, будет загружен только открытый ключ.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_save>`

Сохраняет ключ в указанном ``path``. Если ``public_only`` равен ``true``, будет сохранен только открытый ключ.

\ **Примечание:** ``path`` должен быть файлом "\*.pub", если ``public_only`` равен ``true``, в противном случае файлом "\*.key".

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_save_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **save_to_string**\ (\ public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_save_to_string>`

Возвращает строку, содержащую ключ в формате PEM. Если ``public_only`` равен ``true``, будет включен только открытый ключ.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
