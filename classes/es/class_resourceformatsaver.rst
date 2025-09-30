:github_url: hide

.. _class_ResourceFormatSaver:

ResourceFormatSaver
===================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Guarda un tipo de recurso específico en un archivo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El motor puede ahorrar recursos cuando lo haces desde el editor, o cuando usas el botón :ref:`ResourceSaver<class_ResourceSaver>`. Esto se logra gracias a los múltiples **ResourceFormatSaver**, cada uno de los cuales maneja su propio formato y es llamado automáticamente por el motor.

Por defecto, Godot guarda recursos como ``.tres`` (basado en texto), ``.res`` (binario) u otro formato incorporado, pero puedes elegir crear tu propio formato extendiendo esta clase. Asegúrate de respetar los tipos y valores de retorno documentados. Debes darle un nombre de clase global con ``class_name`` para que se registre. Al igual que los ResourceFormatSavers incorporados, se llamará automáticamente cuando se guarden los recursos de su(s) tipo(s) reconocido(s). También puedes implementar un :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatSaver_private_method__get_recognized_extensions>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const|                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize<class_ResourceFormatSaver_private_method__recognize>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const|                                                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatSaver_private_method__recognize_path>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |const|    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_save<class_ResourceFormatSaver_private_method__save>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_set_uid<class_ResourceFormatSaver_private_method__set_uid>`\ (\ path\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) |virtual|                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ResourceFormatSaver_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__get_recognized_extensions>`

Devuelve la lista de extensiones disponibles para guardar el objeto de recurso, siempre que se reconozca (véase :ref:`recognize()<class_ResourceFormatSaver_method_recognize>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__recognize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__recognize>`

Devuelve si el objeto de recurso dado puede ser salvado por este salvador.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__recognize_path>`

Devuelve ``true`` si este guardador maneja una ruta de guardado dada y ``false`` en caso contrario.

Si este método no está implementado, el comportamiento por defecto devuelve si la extensión de la ruta está dentro de las proporcionadas por :ref:`_get_recognized_extensions()<class_ResourceFormatSaver_private_method__get_recognized_extensions>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_ResourceFormatSaver_private_method__save>`

Guarda el objeto de recurso dado en un archivo en la ``path`` de destino. ``flags`` es una máscara de bits compuesta con constantes :ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`.

Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en caso de éxito, o una constante :ref:`Error<enum_@GlobalScope_Error>` en caso de fracaso.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__set_uid:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_set_uid**\ (\ path\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_ResourceFormatSaver_private_method__set_uid>`

Establece una nueva UID para el recurso en la ``path`` dada. Devuelve :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` en caso de éxito, o una constante :ref:`Error<enum_@GlobalScope_Error>` en caso de fallo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
