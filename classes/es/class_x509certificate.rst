:github_url: hide

.. _class_X509Certificate:

X509Certificate
===============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un certificado X509 (por ejemplo, para TLS).

.. rst-class:: classref-introduction-group

Descripción
----------------------

La clase X509Certificate representa un certificado X509. Los certificados se pueden cargar y guardar como cualquier otro :ref:`Resource<class_Resource>`.

Se pueden usar como certificado de servidor en :ref:`StreamPeerTLS.accept_stream()<class_StreamPeerTLS_method_accept_stream>` (junto con la :ref:`CryptoKey<class_CryptoKey>` correspondiente) y para especificar el único certificado que se aceptará al conectarse a un servidor TLS mediante :ref:`StreamPeerTLS.connect_to_stream()<class_StreamPeerTLS_method_connect_to_stream>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Certificados SSL <../tutorials/networking/ssl_certificates>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_X509Certificate_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load_from_string<class_X509Certificate_method_load_from_string>`\ (\ string\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`save<class_X509Certificate_method_save>`\ (\ path\: :ref:`String<class_String>`\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`save_to_string<class_X509Certificate_method_save_to_string>`\ (\ )                                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_X509Certificate_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_load>`

Carga un certificado desde ``path`` (archivo "\*.crt").

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_load_from_string:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_from_string**\ (\ string\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_load_from_string>`

Carga un certificado de la ``string`` dada.

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_X509Certificate_method_save>`

Guarda un certificado en la ``path`` indicada (debe ser un archivo "\*.crt").

.. rst-class:: classref-item-separator

----

.. _class_X509Certificate_method_save_to_string:

.. rst-class:: classref-method

:ref:`String<class_String>` **save_to_string**\ (\ ) :ref:`🔗<class_X509Certificate_method_save_to_string>`

Devuelve una representación de cadena del certificado o una cadena vacía si el certificado no es válido.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
