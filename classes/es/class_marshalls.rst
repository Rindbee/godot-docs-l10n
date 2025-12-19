:github_url: hide

.. _class_Marshalls:

Marshalls
=========

**Hereda:** :ref:`Object<class_Object>`

Ayudas para la transformación (marshaling) y la codificación de datos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Proporciona funciones de utilidad de transformación y codificación de datos.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`base64_to_raw<class_Marshalls_method_base64_to_raw>`\ (\ base64_str\: :ref:`String<class_String>`\ )                                                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`base64_to_utf8<class_Marshalls_method_base64_to_utf8>`\ (\ base64_str\: :ref:`String<class_String>`\ )                                                        |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                 | :ref:`base64_to_variant<class_Marshalls_method_base64_to_variant>`\ (\ base64_str\: :ref:`String<class_String>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`raw_to_base64<class_Marshalls_method_raw_to_base64>`\ (\ array\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                             |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`utf8_to_base64<class_Marshalls_method_utf8_to_base64>`\ (\ utf8_str\: :ref:`String<class_String>`\ )                                                          |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                   | :ref:`variant_to_base64<class_Marshalls_method_variant_to_base64>`\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ )   |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Marshalls_method_base64_to_raw:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **base64_to_raw**\ (\ base64_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_base64_to_raw>`

Devuelve un :ref:`PackedByteArray<class_PackedByteArray>` decodificado correspondiente a la string ``base64_str`` codificada en Base64.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_base64_to_utf8:

.. rst-class:: classref-method

:ref:`String<class_String>` **base64_to_utf8**\ (\ base64_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_base64_to_utf8>`

Devuelve una string decodificada correspondiente a la string ``base64_str`` codificada en Base64.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_base64_to_variant:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **base64_to_variant**\ (\ base64_str\: :ref:`String<class_String>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Marshalls_method_base64_to_variant>`

Devuelve una :ref:`Variant<class_Variant>` decodificada correspondiente a la string codificada en Base64 ``base64_str``. Si ``allow_objects`` es ``true``, se permite la decodificación de objetos.

Internamente, esto utiliza el mismo mecanismo de decodificación que el :ref:`@GlobalScope.bytes_to_var()<class_@GlobalScope_method_bytes_to_var>`.

\ **Advertencia:** Los objetos deserializados pueden contener código que se ejecuta. No uses esta opción si el objeto serializado proviene de fuentes no confiables para evitar posibles amenazas de seguridad, como la ejecución remota de código.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_raw_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **raw_to_base64**\ (\ array\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_Marshalls_method_raw_to_base64>`

Devuelve una string codificada en Base64 de un :ref:`PackedByteArray<class_PackedByteArray>`.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_utf8_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **utf8_to_base64**\ (\ utf8_str\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Marshalls_method_utf8_to_base64>`

Devuelve una string codificada en Base64 de la string UTF-8 ``utf8_str``.

.. rst-class:: classref-item-separator

----

.. _class_Marshalls_method_variant_to_base64:

.. rst-class:: classref-method

:ref:`String<class_String>` **variant_to_base64**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_Marshalls_method_variant_to_base64>`

Devuelve una string codificada en Base64 del :ref:`Variant<class_Variant>` ``variant``. Si ``full_objects`` es ``true``, se permite la codificación de objetos (y potencialmente puede incluir código).

Internamente, esto utiliza el mismo mecanismo de codificación que el método :ref:`@GlobalScope.var_to_bytes()<class_@GlobalScope_method_var_to_bytes>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
