:github_url: hide

.. _class_CodeHighlighter:

CodeHighlighter
===============

**Hereda:** :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un resaltador de sintaxis destinado al código.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Ajustando varias propiedades de este recurso, puedes cambiar los colores de las strings, comentarios, números y otros patrones de texto dentro de un control :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_regions<class_CodeHighlighter_property_color_regions>`                 | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`function_color<class_CodeHighlighter_property_function_color>`               | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`keyword_colors<class_CodeHighlighter_property_keyword_colors>`               | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`member_keyword_colors<class_CodeHighlighter_property_member_keyword_colors>` | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`member_variable_color<class_CodeHighlighter_property_member_variable_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`number_color<class_CodeHighlighter_property_number_color>`                   | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`symbol_color<class_CodeHighlighter_property_symbol_color>`                   | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_color_region<class_CodeHighlighter_method_add_color_region>`\ (\ start_key\: :ref:`String<class_String>`, end_key\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, line_only\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_keyword_color<class_CodeHighlighter_method_add_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ )                                                                                     |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_member_keyword_color<class_CodeHighlighter_method_add_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ )                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_color_regions<class_CodeHighlighter_method_clear_color_regions>`\ (\ )                                                                                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_keyword_colors<class_CodeHighlighter_method_clear_keyword_colors>`\ (\ )                                                                                                                                                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_member_keyword_colors<class_CodeHighlighter_method_clear_member_keyword_colors>`\ (\ )                                                                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_keyword_color<class_CodeHighlighter_method_get_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_member_keyword_color<class_CodeHighlighter_method_get_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const|                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_color_region<class_CodeHighlighter_method_has_color_region>`\ (\ start_key\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_keyword_color<class_CodeHighlighter_method_has_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_member_keyword_color<class_CodeHighlighter_method_has_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const|                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_color_region<class_CodeHighlighter_method_remove_color_region>`\ (\ start_key\: :ref:`String<class_String>`\ )                                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_keyword_color<class_CodeHighlighter_method_remove_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ )                                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_member_keyword_color<class_CodeHighlighter_method_remove_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ )                                                                                             |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CodeHighlighter_property_color_regions:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_regions** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_color_regions>`

.. rst-class:: classref-property-setget

- |void| **set_color_regions**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_color_regions**\ (\ )

Establece las regiones de color. Se eliminarán todas las regiones existentes. La clave del :ref:`Dictionary<class_Dictionary>` es la clave de inicio y fin de la región, separada por un espacio. El valor es el color de la región.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_function_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **function_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_function_color>`

.. rst-class:: classref-property-setget

- |void| **set_function_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_function_color**\ (\ )

Establece el color para las funciones. Una función es una string que no es palabra clave seguida de un '('.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_keyword_colors:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **keyword_colors** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_keyword_colors>`

.. rst-class:: classref-property-setget

- |void| **set_keyword_colors**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_keyword_colors**\ (\ )

Establece los colores de las palabras clave. Se eliminarán todas las palabras clave existentes. La clave del :ref:`Dictionary<class_Dictionary>` es la palabra clave. El valor es el color de la palabra clave.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_member_keyword_colors:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **member_keyword_colors** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_member_keyword_colors>`

.. rst-class:: classref-property-setget

- |void| **set_member_keyword_colors**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_member_keyword_colors**\ (\ )

Establece los colores de las palabras clave miembro. Se eliminarán todas las palabras clave miembro existentes. La clave del :ref:`Dictionary<class_Dictionary>` es la palabra clave miembro. El valor es el color de la palabra clave miembro.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_member_variable_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **member_variable_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_member_variable_color>`

.. rst-class:: classref-property-setget

- |void| **set_member_variable_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_member_variable_color**\ (\ )

Establece el color para las variables miembro. Una variable miembro es una string que no es palabra clave ni función, precedida por un '.'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_number_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **number_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_number_color>`

.. rst-class:: classref-property-setget

- |void| **set_number_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_number_color**\ (\ )

Establece el color de los números.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_symbol_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **symbol_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_symbol_color>`

.. rst-class:: classref-property-setget

- |void| **set_symbol_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_symbol_color**\ (\ )

Establece el color de los símbolos.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CodeHighlighter_method_add_color_region:

.. rst-class:: classref-method

|void| **add_color_region**\ (\ start_key\: :ref:`String<class_String>`, end_key\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, line_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CodeHighlighter_method_add_color_region>`

Añade una región de color (como para comentarios o strings) desde ``start_key`` hasta ``end_key``. Ambas claves deben ser símbolos, y ``start_key`` no debe ser compartida con otros delimitadores.

Si ``line_only`` es ``true`` o ``end_key`` es una :ref:`String<class_String>` vacía, la región no se extiende a la siguiente línea.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_add_keyword_color:

.. rst-class:: classref-method

|void| **add_keyword_color**\ (\ keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_CodeHighlighter_method_add_keyword_color>`

Establece el color para una palabra clave.

La palabra clave no puede contener símbolos excepto '\_'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_add_member_keyword_color:

.. rst-class:: classref-method

|void| **add_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_CodeHighlighter_method_add_member_keyword_color>`

Establece el color para una palabra clave miembro.

La palabra clave miembro no puede contener ningún símbolo excepto '\_'.

No se resaltará si está precedida por un '.'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_color_regions:

.. rst-class:: classref-method

|void| **clear_color_regions**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_color_regions>`

Elimina todas las regiones de color.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_keyword_colors:

.. rst-class:: classref-method

|void| **clear_keyword_colors**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_keyword_colors>`

Elimina todas las palabras claves.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_member_keyword_colors:

.. rst-class:: classref-method

|void| **clear_member_keyword_colors**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_member_keyword_colors>`

Elimina todas las palabras clave de los miembros.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_get_keyword_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_get_keyword_color>`

Devuelve el color de una palabra clave.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_get_member_keyword_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_get_member_keyword_color>`

Devuelve el color de una palabra clave miembro.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_color_region:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_color_region**\ (\ start_key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_color_region>`

Devuelve ``true`` si la clave de inicio existe, si no, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_keyword_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_keyword_color>`

Devuelve ``true`` si la palabra clave existe, si no, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_member_keyword_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_member_keyword_color>`

Devuelve ``true`` si la palabra clave miembro existe, si no, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_color_region:

.. rst-class:: classref-method

|void| **remove_color_region**\ (\ start_key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_color_region>`

Elimina la región de color que usa esa clave de inicio.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_keyword_color:

.. rst-class:: classref-method

|void| **remove_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_keyword_color>`

Elimina la palabra clave.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_member_keyword_color:

.. rst-class:: classref-method

|void| **remove_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_member_keyword_color>`

Elimina la palabra clave del miembro.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
