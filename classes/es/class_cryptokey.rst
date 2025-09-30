:github_url: hide

.. _class_CryptoKey:

CryptoKey
=========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una clave criptográfica (RSA o de curva elíptica).

.. rst-class:: classref-introduction-group

Descripción
----------------------

La clase CryptoKey representa una clave criptográfica. Las claves se pueden cargar y guardar como cualquier otro :ref:`Resource<class_Resource>`.

Se pueden utilizar para generar un :ref:`X509Certificate<class_X509Certificate>` autofirmado a través de :ref:`Crypto.generate_self_signed_certificate()<class_Crypto_method_generate_self_signed_certificate>` y como clave privada en :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` junto con el certificado correspondiente.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Certificados SSL <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_CryptoKey_method_is_public_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_public_only**\ (\ ) |const| :ref:`🔗<class_CryptoKey_method_is_public_only>`

Devuelve ``true`` si esta CryptoKey solo tiene la parte pública y no la privada.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_load>`

Carga una clave desde ``path``. Si ``public_only`` es ``true``, solo se cargará la clave pública.

\ **Nota:** ``path`` debe ser un archivo "\*.pub" si ``public_only`` es ``true``, un archivo "\*.key" en caso contrario.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_load_from_string:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_string**\ (\ string_key\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_load_from_string>`

Carga una clave desde la ``string_key`` dada. Si ``public_only`` es ``true``, solo se cargará la clave pública.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`, public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_save>`

Guarda una clave en la ``path`` dada. Si ``public_only`` es ``true``, solo se guardará la clave pública.

\ **Nota:** ``path`` debe ser un archivo "\*.pub" si ``public_only`` es ``true``, un archivo "\*.key" en caso contrario.

.. rst-class:: classref-item-separator

----

.. _class_CryptoKey_method_save_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **save_to_string**\ (\ public_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CryptoKey_method_save_to_string>`

Devuelve una string que contiene la clave en formato PEM. Si ``public_only`` es ``true``, solo se incluirá la clave pública.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
