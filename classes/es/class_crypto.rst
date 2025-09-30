:github_url: hide

.. _class_Crypto:

Crypto
======

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona acceso a funcionalidades criptográficas avanzadas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

La clase Crypto proporciona acceso a funcionalidades criptográficas avanzadas.

Actualmente, esto incluye cifrado/descifrado de clave asimétrica, firma/verificación y la generación de bytes aleatorios criptográficamente seguros, claves RSA, resúmenes HMAC y certificados :ref:`X509Certificate<class_X509Certificate>` autofirmados.


.. tabs::

 .. code-tab:: gdscript

    var crypto = Crypto.new()

    # Generar una nueva clave RSA.
    var key = crypto.generate_rsa(4096)

    # Generar un nuevo certificado autofirmado con la clave dada.
    var cert = crypto.generate_self_signed_certificate(key, "CN=mydomain.com,O=My Game Company,C=IT")

    # Guardar la clave y el certificado en la carpeta del usuario.
    key.save("user://generated.key")
    cert.save("user://generated.crt")

    # Cifrado
    var data = "Algunos datos"
    var encrypted = crypto.encrypt(key, data.to_utf8_buffer())

    # Descifrado
    var decrypted = crypto.decrypt(key, encrypted)

    # Firma
    var signature = crypto.sign(HashingContext.HASH_SHA256, data.sha256_buffer(), key)

    # Verificación
    var verified = crypto.verify(HashingContext.HASH_SHA256, data.sha256_buffer(), signature, key)

    # Comprobaciones
    assert(verified)
    assert(data.to_utf8_buffer() == decrypted)

 .. code-tab:: csharp

    using Godot;
    using System.Diagnostics;

    Crypto crypto = new Crypto();

    // Generar una nueva clave RSA.
    CryptoKey key = crypto.GenerateRsa(4096);

    // Generar un nuevo certificado autofirmado con la clave dada.
    X509Certificate cert = crypto.GenerateSelfSignedCertificate(key, "CN=mydomain.com,O=My Game Company,C=IT");

    // Guardar la clave y el certificado en la carpeta del usuario.
    key.Save("user://generated.key");
    cert.Save("user://generated.crt");

    // Cifrado
    string data = "Algunos datos";
    byte[] encrypted = crypto.Encrypt(key, data.ToUtf8Buffer());

    // Descifrado
    byte[] decrypted = crypto.Decrypt(key, encrypted);

    // Firma
    byte[] signature = crypto.Sign(HashingContext.HashType.Sha256, Data.Sha256Buffer(), key);

    // Verificación
    bool verified = crypto.Verify(HashingContext.HashType.Sha256, Data.Sha256Buffer(), signature, key);

    // Comprobaciones
    Debug.Assert(verified);
    Debug.Assert(data.ToUtf8Buffer() == decrypted);



.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_Crypto_method_constant_time_compare:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **constant_time_compare**\ (\ trusted\: :ref:`PackedByteArray<class_PackedByteArray>`, received\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_constant_time_compare>`

Compara dos :ref:`PackedByteArray<class_PackedByteArray>` para determinar la igualdad sin filtrar información de tiempo para evitar ataques de tiempo.

Véase `esta publicación de blog <https://paragonie.com/blog/2015/11/preventing-timing-attacks-on-string-comparison-with-double-hmac-strategy>`__ para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_decrypt:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **decrypt**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, ciphertext\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_decrypt>`

Descifra el ``ciphertext`` dado con la ``key`` privada proporcionada.

\ **Nota:** El tamaño máximo del texto cifrado aceptado está limitado por el tamaño de la clave.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_encrypt:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **encrypt**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, plaintext\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_encrypt>`

Cifra el ``plaintext`` dado con la ``key`` pública proporcionada.

\ **Nota:** El tamaño máximo del texto plano aceptado está limitado por el tamaño de la clave.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_random_bytes:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **generate_random_bytes**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Crypto_method_generate_random_bytes>`

Genera un :ref:`PackedByteArray<class_PackedByteArray>` de bytes aleatorios criptográficamente seguros con el ``size`` dado.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_rsa:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **generate_rsa**\ (\ size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Crypto_method_generate_rsa>`

Genera una RSA :ref:`CryptoKey<class_CryptoKey>` que puede ser utilizada para crear certificados autofirmados y pasarla a :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_generate_self_signed_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **generate_self_signed_certificate**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, issuer_name\: :ref:`String<class_String>` = "CN=myserver,O=myorganisation,C=IT", not_before\: :ref:`String<class_String>` = "20140101000000", not_after\: :ref:`String<class_String>` = "20340101000000"\ ) :ref:`🔗<class_Crypto_method_generate_self_signed_certificate>`

Genera un :ref:`X509Certificate<class_X509Certificate>` autofirmado a partir de la :ref:`CryptoKey<class_CryptoKey>` y el ``issuer_name`` dados. La validez del certificado se definirá mediante ``not_before`` y ``not_after`` (primera fecha de validez y última fecha de validez). El ``issuer_name`` debe contener al menos "CN=" (nombre común, es decir, el nombre del dominio), "O=" (organización, es decir, el nombre de su empresa), "C=" (país, es decir, el código ISO-3166 de dos letras del país en el que la organización tiene su sede).

Un pequeño ejemplo para generar una clave RSA y un certificado autofirmado X509.


.. tabs::

 .. code-tab:: gdscript

    var criptografia = Crypto.new()
    # Genera una clave de 4096 bits RSA.
    var clave = criptografia.generate_rsa(4096)
    # Genera un certificado autofirmado usando la clave.
    var certificado = criptografia.generate_self_signed_certificate(clave, "CN=example.com,O=A Game Company,C=IT")

 .. code-tab:: csharp

    var criptografia = new Crypto();
    // Generar clave RSA de 4096 bits.
    CryptoKey clave = criptografia.GenerateRsa(4096);
    // Generar certificado autofirmado usando la clave dada.
    X509Certificate certificado = criptografia.GenerateSelfSignedCertificate(clave, "CN=mydomain.com,O=My Game Company,C=IT");



.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_hmac_digest:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **hmac_digest**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`, msg\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Crypto_method_hmac_digest>`

Genera un resumen `HMAC <https://en.wikipedia.org/wiki/HMAC>`__ de ``msg`` usando ``key``. El parámetro ``hash_type`` es el algoritmo de hash que se utiliza para los hashes internos y externos.

Actualmente, solo se admiten :ref:`HashingContext.HASH_SHA256<class_HashingContext_constant_HASH_SHA256>` y :ref:`HashingContext.HASH_SHA1<class_HashingContext_constant_HASH_SHA1>`.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_sign:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **sign**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ ) :ref:`🔗<class_Crypto_method_sign>`

Firma un ``hash`` dado de tipo ``hash_type`` con la ``key`` privada proporcionada.

.. rst-class:: classref-item-separator

----

.. _class_Crypto_method_verify:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **verify**\ (\ hash_type\: :ref:`HashType<enum_HashingContext_HashType>`, hash\: :ref:`PackedByteArray<class_PackedByteArray>`, signature\: :ref:`PackedByteArray<class_PackedByteArray>`, key\: :ref:`CryptoKey<class_CryptoKey>`\ ) :ref:`🔗<class_Crypto_method_verify>`

Verifica que una ``signature`` dada para ``hash`` de tipo ``hash_type`` coincida con la ``key`` pública proporcionada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
