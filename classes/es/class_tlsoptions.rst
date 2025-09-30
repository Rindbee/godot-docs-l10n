:github_url: hide

.. _class_TLSOptions:

TLSOptions
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuración TLS para clientes y servidores.

.. rst-class:: classref-introduction-group

Descripción
----------------------

TLSOptions abstracts the configuration options for the :ref:`StreamPeerTLS<class_StreamPeerTLS>` and :ref:`PacketPeerDTLS<class_PacketPeerDTLS>` classes.

Objects of this class cannot be instantiated directly, and one of the static methods :ref:`client()<class_TLSOptions_method_client>`, :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`, or :ref:`server()<class_TLSOptions_method_server>` should be used instead.


.. tabs::

 .. code-tab:: gdscript

    # Create a TLS client configuration which uses our custom trusted CA chain.
    var client_trusted_cas = load("res://my_trusted_cas.crt")
    var client_tls_options = TLSOptions.client(client_trusted_cas)

    # Create a TLS server configuration.
    var server_certs = load("res://my_server_cas.crt")
    var server_key = load("res://my_server_key.key")
    var server_tls_options = TLSOptions.server(server_key, server_certs)



.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_TLSOptions_method_client:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null, common_name_override\: :ref:`String<class_String>` = ""\ ) |static| :ref:`🔗<class_TLSOptions_method_client>`

Crea una configuración de cliente TLS que valida los certificados y sus nombres comunes (nombres de dominio completos).

Puedes especificar una ``trusted_chain`` personalizada de autoridades de certificación ( la lista de CA por defecto se usará si ``null``), y opcionalmente proporcionar un ``common_name_override`` si esperas que el certificado tenga un nombre común diferente al FQDN del servidor.

\ **Nota:** En la plataforma Web, la verificación TLS siempre se aplica contra la lista de CA del navegador web. Esto se considera una característica de seguridad.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_client_unsafe:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **client_unsafe**\ (\ trusted_chain\: :ref:`X509Certificate<class_X509Certificate>` = null\ ) |static| :ref:`🔗<class_TLSOptions_method_client_unsafe>`

Crea una configuración de cliente TLS **insegura** donde la validación del certificado es opcional. Opcionalmente puedes proporcionar un ``trusted_chain`` válido, pero el nombre común de los certificados nunca será comprobado. El uso de esta configuración para fines distintos de las pruebas **no es recomendable**.

\ **Nota:** En la plataforma Web, la verificación TLS siempre se aplica contra la lista de CA del navegador web. Esto se considera una característica de seguridad.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_common_name_override:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_common_name_override**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_common_name_override>`

Devuelve el nombre común (nombre de dominio) que se especificó al crear con :ref:`client()<class_TLSOptions_method_client>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_own_certificate:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_own_certificate**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_own_certificate>`

Devuelve el :ref:`X509Certificate<class_X509Certificate>` especificado al crear con :ref:`server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_private_key:

.. rst-class:: classref-method

:ref:`CryptoKey<class_CryptoKey>` **get_private_key**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_private_key>`

Devuelve la :ref:`CryptoKey<class_CryptoKey>` especificada al crear con :ref:`server()<class_TLSOptions_method_server>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_get_trusted_ca_chain:

.. rst-class:: classref-method

:ref:`X509Certificate<class_X509Certificate>` **get_trusted_ca_chain**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_get_trusted_ca_chain>`

Devuelve la cadena CA :ref:`X509Certificate<class_X509Certificate>` especificada al crear con :ref:`client()<class_TLSOptions_method_client>` o :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_server>`

Devuelve ``true`` si se crea con :ref:`server()<class_TLSOptions_method_server>`, ``false`` en caso contrario.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_is_unsafe_client:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_unsafe_client**\ (\ ) |const| :ref:`🔗<class_TLSOptions_method_is_unsafe_client>`

Devuelve ``true`` si se crea con :ref:`client_unsafe()<class_TLSOptions_method_client_unsafe>`, ``false`` en caso contrario.

.. rst-class:: classref-item-separator

----

.. _class_TLSOptions_method_server:

.. rst-class:: classref-method

:ref:`TLSOptions<class_TLSOptions>` **server**\ (\ key\: :ref:`CryptoKey<class_CryptoKey>`, certificate\: :ref:`X509Certificate<class_X509Certificate>`\ ) |static| :ref:`🔗<class_TLSOptions_method_server>`

Crea una configuración de servidor TLS utilizando la ``key`` y el ``certificate`` proporcionados.

\ **Nota:** El ``certificate`` debe incluir la cadena de certificados completa hasta la CA firmante (el archivo de certificados se puede concatenar utilizando un editor de texto de propósito general).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
