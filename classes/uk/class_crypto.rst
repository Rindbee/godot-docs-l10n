:github_url: hide

.. _class_Crypto:

Crypto
======

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Забезпечує доступ до розширених криптографічних функцій.

.. rst-class:: classref-introduction-group

Опис
--------

Клас Crypto надає доступ до розширених криптографічних функцій. 

Наразі це включає шифрування/дешифрування асиметричного ключа, підписання/перевірку та генерацію криптографічно безпечних випадкових байтів, ключів RSA, дайджестів HMAC і самопідписаних :ref:`X509Certificate<class_X509Certificate>`. 


.. tabs::

 .. code-tab:: gdscript

    var crypto = Crypto.new() 

    # Створіть новий ключ RSA. 
    змінний ключ = crypto.generate_rsa(4096) 

    # Створіть новий самопідписаний сертифікат із вказаним ключем. 
    var cert = crypto.generate_self_signed_certificate(key, "CN=mydomain.com,O=My Game Company,C=IT") 

    # Збережіть ключ і сертифікат у папці користувача. 
    key.save("user://generated.key") 
    cert.save("user://generated.crt") 

    # Шифрування 
    var data = "Деякі дані" 
    var encrypted = crypto.encrypt(key, data.to_utf8_buffer()) 

    # Розшифровка 
    var decrypted = crypto.decrypt(key, encrypted) 

    # Підпис 
    var signature = crypto.sign(HashingContext.HASH_SHA256, data.sha256_buffer(), key) 

    # Перевірка 
    var verified = crypto.verify(HashingContext.HASH_SHA256, data.sha256_buffer(), signature, key) 

    # Перевірки 
    стверджувати (verified) 
    assert(data.to_utf8_buffer() == decrypted)  

 .. code-tab:: csharp
 
    using Godot; 
    using System.Diagnostics; 

    Crypto crypto = new Crypto(); 

    // Створення нового ключа RSA. 
    Key CryptoKey = crypto.GenerateRsa(4096); 

    // Створити новий самопідписаний сертифікат із заданим ключем. 
    X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");

    // Збережіть ключ і сертифікат у папці користувача. 
    key.Save("user://generated.key"); 
    cert.Save("user://generated.crt"); 

    // Шифрування 
    string data = "Деякі дані"; 
    byte[] encrypted = crypto.Encrypt(key, data.ToUtf8Buffer()); 

    // Розшифровка 
    byte[] decrypted = crypto.Decrypt(key, encrypted); 

    // Підписання 
    byte[] signature = crypto.Sign(HashingContext.HashType.Sha256, Data.Sha256Buffer(), key); 

    // Перевірка 
    bool verified = crypto.Verify(HashingContext.HashType.Sha256, Data.Sha256Buffer(), signature, key); 

    // Перевірки 
    Debug.Assert(verified); 
    Debug.Assert(data.ToUtf8Buffer() == decrypted);  



.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`constant_time_compare<class_Crypto_method_constant_time_compare>`\ (\ trusted\: :ref:`PackedByteArray<class_PackedByteArray>`, received\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                       |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`decrypt<class_Crypto_method_decrypt>`\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, ciphertext\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                                                                 |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`encrypt<class_Crypto_method_encrypt>`\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, plaintext\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                                                                                                  |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`generate_random_bytes<class_Crypto_method_generate_random_bytes>`\ (\ size\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                            |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CryptoKey<class_CryptoKey>`             | :ref:`generate_rsa<class_Crypto_method_generate_rsa>`\ (\ size\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                              |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`X509Certificate<class_X509Certificate>` | :ref:`generate_self_signed_certificate<class_Crypto_method_generate_self_signed_certificate>`\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, issuer_name\: :ref:`String<class_String>` = "CN=myserver,O=myorganisation,C=IT", not_before\: :ref:`String<class_String>` = "20140101000000", not_after\: :ref:`String<class_String>` = "20340101000000"\ ) |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`hmac_digest<class_Crypto_method_hmac_digest>`\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, msg\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                                                                                                         |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`sign<class_Crypto_method_sign>`\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ )                                                                                                                                                  |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`verify<class_Crypto_method_verify>`\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, signature\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ )                                                                                   |
   +-----------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Crypto_method_constant_time_compare:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **constant_time_compare**\ (\ trusted\: :ref:`PackedByteArray<class_PackedByteArray>`, received\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_constant_time_compare>`

Порівняти два :ref:`PackedByteArray<class_PackedByteArray>` для рівності без витоку інформації про строки, щоб запобігти нападам часу.

\ `this blog post <https://paragonie.com/blog/2015/11/preventing-timing-attacks-on-string-comparison-with-double-hmac-strategy>`__ для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_decrypt:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **decrypt**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, ciphertext\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_decrypt>`

Розшифрування даної ``ciphertext`` з наданим приватним ``key``.

\ **Примітка:** Максимальний розмір прийнятий ciphertext обмежений за розміром ключа.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_encrypt:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **encrypt**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, plaintext\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_encrypt>`

Зашифрувати дані ``plaintext`` з наданою громадськістю ``key``.

\ **Примітка:** Максимальний розмір прийнятих plaintext обмежений за розміром ключа.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_random_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_random_bytes**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Crypto_method_generate_random_bytes>`

Генерація :ref:`PackedByteArray<class_PackedByteArray>` криптографічно захищених випадкових байтів з урахуванням ``size``.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_rsa:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **generate_rsa**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Crypto_method_generate_rsa>`

Генерація RSA :ref:`CryptoKey<class_CryptoKey>`, яка може бути використана для створення самопризначених сертифікатів і переданих до :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_self_signed_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **generate_self_signed_certificate**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, issuer_name\: :ref:`String<class_String>` = "CN=myserver,O=myorganisation,C=IT", not_before\: :ref:`String<class_String>` = "20140101000000", not_after\: :ref:`String<class_String>` = "20340101000000"\ ) :ref:`🔗<class_Crypto_method_generate_self_signed_certificate>`

Генерація самовизнаного :ref:`X509Certificate<class_X509Certificate>` з даної :ref:`CryptoKey<class_CryptoKey>` та ``problemr_name``. Строк дії сертифіката буде визначено ``not_before`` та ``not_after`` (перша дата дії та останні дати дії). ``problemr_name`` повинен містити принаймні "CN=" (ім'я, тобто доменне ім'я), "O=" (організація, тобто ім'я Вашої компанії), "C=" (country, тобто 2 листований код ISO-3166 країни, організація базується на).

Невеликий приклад для створення ключа RSA і сертифіката X509.


.. tabs::

 .. code-tab:: gdscript

    var crypto = Crypto.new()
    # Генерувати 4096 біт RSA ключ.
    ключ вар = крипто.generate_rsa(4096)
    # Генерувати самопризначений сертифікат за допомогою даного ключа.
    var cert = crypto.generate_self_signed_certificate(key, "CN=example.com,O=A Game Company,C=IT")

 .. code-tab:: csharp

    var crypto = new Crypto();
    // Генерувати 4096 біт RSA ключ.
    CryptoKey key = крипто.GenerateRsa(4096);
    // Генерувати самопризначений сертифікат за допомогою даного ключа.
    X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");



.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_hmac_digest:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **hmac_digest**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, msg\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_hmac_digest>`

`HMAC <https://en.wikipedia.org/wiki/HMAC>`__ дайджест ``msg`` за допомогою ``key``. параметр ``paramh_type`` є алгоритмом хешування, який використовується для внутрішнього та зовнішнього хешу.

В даний час тільки :ref:`HashingContext.HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` і [constant HashingContext. Підтримка HASH_SHA1.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_sign:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **sign**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ ) :ref:`🔗<class_Crypto_method_sign>`

Ознайомитися з даним ``h`` типу ``h_type`` з надана приватна ``key``.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_verify:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **verify**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, signature\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ ) :ref:`🔗<class_Crypto_method_verify>`

Визначте, що заданий ``signature`` для ``h`` типу ``h_type`` проти заданої громадськості ``key``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
