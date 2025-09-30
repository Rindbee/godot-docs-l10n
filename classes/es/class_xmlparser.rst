:github_url: hide

.. _class_XMLParser:

XMLParser
=========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Proporciona una interfaz de bajo nivel para crear analizadores para archivos XML.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Proporciona una interfaz de bajo nivel para crear analizadores de archivos `XML <https://en.wikipedia.org/wiki/XML>`__. Esta clase puede servir de base para crear analizadores XML personalizados.

Para analizar XML, debes abrir un archivo con el método :ref:`open()<class_XMLParser_method_open>` o un búfer con el método :ref:`open_buffer()<class_XMLParser_method_open_buffer>`. Luego, se debe llamar al método :ref:`read()<class_XMLParser_method_read>` para analizar los siguientes nodos. La mayoría de los métodos toman en cuenta el nodo analizado actualmente.

Aquí hay un ejemplo de cómo usar **XMLParser** para analizar un archivo SVG (que se basa en XML), imprimiendo cada elemento y sus atributos como un diccionario:


.. tabs::

 .. code-tab:: gdscript

    var parser = XMLParser.new()
    parser.open("path/to/file.svg")
    while parser.read() != ERR_FILE_EOF:
        if parser.get_node_type() == XMLParser.NODE_ELEMENT:
            var node_name = parser.get_node_name()
            var attributes_dict = {}
            for idx in range(parser.get_attribute_count()):
                attributes_dict[parser.get_attribute_name(idx)] = parser.get_attribute_value(idx)
            print("El elemento ", node_name, " tiene los siguientes atributos: ", attributes_dict)

 .. code-tab:: csharp

    var parser = new XmlParser();
    parser.Open("path/to/file.svg");
    while (parser.Read() != Error.FileEof)
    {
        if (parser.GetNodeType() == XmlParser.NodeType.Element)
        {
            var nodeName = parser.GetNodeName();
            var attributesDict = new Godot.Collections.Dictionary();
            for (int idx = 0; idx < parser.GetAttributeCount(); idx++)
            {
                attributesDict[parser.GetAttributeName(idx)] = parser.GetAttributeValue(idx);
            }
            GD.Print($"El elemento {nodeName} tiene los siguientes atributos: {attributesDict}");
        }
    }



.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_attribute_count<class_XMLParser_method_get_attribute_count>`\ (\ ) |const|                                                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_attribute_name<class_XMLParser_method_get_attribute_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_attribute_value<class_XMLParser_method_get_attribute_value>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                              |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_current_line<class_XMLParser_method_get_current_line>`\ (\ ) |const|                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_named_attribute_value<class_XMLParser_method_get_named_attribute_value>`\ (\ name\: :ref:`String<class_String>`\ ) |const|           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_named_attribute_value_safe<class_XMLParser_method_get_named_attribute_value_safe>`\ (\ name\: :ref:`String<class_String>`\ ) |const| |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_node_data<class_XMLParser_method_get_node_data>`\ (\ ) |const|                                                                       |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`              | :ref:`get_node_name<class_XMLParser_method_get_node_name>`\ (\ ) |const|                                                                       |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                    | :ref:`get_node_offset<class_XMLParser_method_get_node_offset>`\ (\ ) |const|                                                                   |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodeType<enum_XMLParser_NodeType>` | :ref:`get_node_type<class_XMLParser_method_get_node_type>`\ (\ )                                                                               |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`has_attribute<class_XMLParser_method_has_attribute>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                   |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                  | :ref:`is_empty<class_XMLParser_method_is_empty>`\ (\ ) |const|                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`open<class_XMLParser_method_open>`\ (\ file\: :ref:`String<class_String>`\ )                                                             |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`open_buffer<class_XMLParser_method_open_buffer>`\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                           |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`read<class_XMLParser_method_read>`\ (\ )                                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`    | :ref:`seek<class_XMLParser_method_seek>`\ (\ position\: :ref:`int<class_int>`\ )                                                               |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                   | :ref:`skip_section<class_XMLParser_method_skip_section>`\ (\ )                                                                                 |
   +------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_XMLParser_NodeType:

.. rst-class:: classref-enumeration

enum **NodeType**: :ref:`🔗<enum_XMLParser_NodeType>`

.. _class_XMLParser_constant_NODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_NONE** = ``0``

No hay ningún nodo (ningún archivo o buffer abierto).

.. _class_XMLParser_constant_NODE_ELEMENT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_ELEMENT** = ``1``

Un tipo de nodo de elemento, también conocido como etiqueta, p. ej., ``<title>``.

.. _class_XMLParser_constant_NODE_ELEMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_ELEMENT_END** = ``2``

Un tipo de nodo de fin de elemento, p. ej., ``</title>``.

.. _class_XMLParser_constant_NODE_TEXT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_TEXT** = ``3``

Un tipo de nodo de texto, es decir, texto que no está dentro de un elemento. Esto incluye los espacios en blanco.

.. _class_XMLParser_constant_NODE_COMMENT:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_COMMENT** = ``4``

Un tipo de nodo de comentario, p. ej., ``<!--A comment-->``.

.. _class_XMLParser_constant_NODE_CDATA:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_CDATA** = ``5``

Un tipo de nodo para secciones CDATA (Character Data), p. ej., ``<![CDATA[CDATA section]]>``.

.. _class_XMLParser_constant_NODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`NodeType<enum_XMLParser_NodeType>` **NODE_UNKNOWN** = ``6``

Un tipo de nodo desconocido.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_XMLParser_method_get_attribute_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_attribute_count**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_count>`

Devuelve el número de atributos en el elemento actualmente analizado.

\ **Nota:** Si este método se utiliza mientras que el nodo actualmente analizado no es :ref:`NODE_ELEMENT<class_XMLParser_constant_NODE_ELEMENT>` o :ref:`NODE_ELEMENT_END<class_XMLParser_constant_NODE_ELEMENT_END>`, este conteo no se actualizará y seguirá reflejando el último elemento.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_attribute_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_attribute_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_name>`

Devuelve el nombre de un atributo del elemento analizado actualmente, especificado por el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_attribute_value:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_attribute_value**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_attribute_value>`

Devuelve el valor de un atributo del elemento analizado actualmente, especificado por el índice ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_current_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_line**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_current_line>`

Devuelve la línea actual en el archivo analizado, contando desde 0.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_named_attribute_value:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_named_attribute_value**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_named_attribute_value>`

Devuelve el valor de un atributo del elemento analizado, especificado por su ``name``. Este método generará un error si el elemento no tiene dicho atributo.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_named_attribute_value_safe:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_named_attribute_value_safe**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_get_named_attribute_value_safe>`

Devuelve el valor de un atributo del elemento analizado, especificado por su ``name``. Este método devolverá un string vacío si el elemento no tiene dicho atributo.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_data:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_data**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_data>`

Devuelve el contenido de un nodo de texto. Este método lanzará un error si el nodo actualmente analizado es de cualquier otro tipo.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_node_name**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_name>`

Devuelve el nombre de un nodo. Este método lanzará un error si el nodo actualmente analizado es un nodo de texto.

\ **Nota:** El contenido de un nodo :ref:`NODE_CDATA<class_XMLParser_constant_NODE_CDATA>` y la string de comentario de un nodo :ref:`NODE_COMMENT<class_XMLParser_constant_NODE_COMMENT>` también se consideran nombres.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_offset:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_offset**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_get_node_offset>`

Devuelve el desplazamiento en bytes del nodo actualmente analizado desde el principio del archivo o búfer. Este suele ser equivalente al número de caracteres antes de la posición de lectura.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_get_node_type:

.. rst-class:: classref-method

:ref:`NodeType<enum_XMLParser_NodeType>` **get_node_type**\ (\ ) :ref:`🔗<class_XMLParser_method_get_node_type>`

Devuelve el tipo del nodo actual. Compara con las constantes de :ref:`NodeType<enum_XMLParser_NodeType>`.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_has_attribute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_attribute**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_XMLParser_method_has_attribute>`

Devuelve ``true`` si el elemento actualmente analizado tiene un atributo con el ``name``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_XMLParser_method_is_empty>`

Devuelve ``true`` si el elemento analizado actualmente está vacío, por ejemplo, ``<element />``.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_open:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XMLParser_method_open>`

Abre un ``file`` XML para el análisis. Este método devuelve un código de error.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_open_buffer:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **open_buffer**\ (\ buffer\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_XMLParser_method_open_buffer>`

Abre un ``buffer`` XML en bruto para el análisis. Este método devuelve un código de error.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_read:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **read**\ (\ ) :ref:`🔗<class_XMLParser_method_read>`

Analiza el siguiente nodo del archivo. Este método devuelve un código de error.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_seek:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **seek**\ (\ position\: :ref:`int<class_int>`\ ) :ref:`🔗<class_XMLParser_method_seek>`

Mueve el cursor del búfer a un desplazamiento determinado (desde el inicio) y lee el siguiente nodo allí. Este método devuelve un código de error.

.. rst-class:: classref-item-separator

----

.. _class_XMLParser_method_skip_section:

.. rst-class:: classref-method

|void| **skip_section**\ (\ ) :ref:`🔗<class_XMLParser_method_skip_section>`

Omite la sección actual. Si el nodo analizado contiene más nodos internos, se ignorarán y el cursor se dirigirá al cierre del elemento actual.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
