:github_url: hide

.. _class_GLTFBufferView:

GLTFBufferView
==============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa una vista de búfer glTF.

.. rst-class:: classref-introduction-group

Descripción
----------------------

GLTFBufferView es una estructura de datos que representa un ``bufferView`` glTF que se encuentra en el array ``"bufferViews"``. Un búfer es un blob de datos binarios. Una vista de búfer es una porción de un búfer que puede utilizarse para identificar y extraer datos del búfer.

La mayoría de los usos personalizados de los búferes solo necesitan utilizar :ref:`buffer<class_GLTFBufferView_property_buffer>`, :ref:`byte_length<class_GLTFBufferView_property_byte_length>` y :ref:`byte_offset<class_GLTFBufferView_property_byte_offset>`. Las propiedades :ref:`byte_stride<class_GLTFBufferView_property_byte_stride>` e :ref:`indices<class_GLTFBufferView_property_indices>` son para casos de uso más avanzados, como datos de malla entrelazados codificados para la GPU.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Buffers, BufferViews y Accessors en la especificación Khronos glTF <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`buffer<class_GLTFBufferView_property_buffer>`                       | ``-1``    |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_length<class_GLTFBufferView_property_byte_length>`             | ``0``     |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_offset<class_GLTFBufferView_property_byte_offset>`             | ``0``     |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`byte_stride<class_GLTFBufferView_property_byte_stride>`             | ``-1``    |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`indices<class_GLTFBufferView_property_indices>`                     | ``false`` |
   +-------------------------+---------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`vertex_attributes<class_GLTFBufferView_property_vertex_attributes>` | ``false`` |
   +-------------------------+---------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFBufferView<class_GLTFBufferView>`   | :ref:`from_dictionary<class_GLTFBufferView_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|     |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>` | :ref:`load_buffer_view_data<class_GLTFBufferView_method_load_buffer_view_data>`\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |const| |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`           | :ref:`to_dictionary<class_GLTFBufferView_method_to_dictionary>`\ (\ ) |const|                                                            |
   +-----------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GLTFBufferView_property_buffer:

.. rst-class:: classref-property

:ref:`int<class_int>` **buffer** = ``-1`` :ref:`🔗<class_GLTFBufferView_property_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_buffer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_buffer**\ (\ )

El índice del búfer al que hace referencia esta vista de búfer. Si es ``-1``, esta vista de búfer no hace referencia a ningún búfer.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_length** = ``0`` :ref:`🔗<class_GLTFBufferView_property_byte_length>`

.. rst-class:: classref-property-setget

- |void| **set_byte_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_length**\ (\ )

La longitud, en bytes, de esta vista de búfer. Si es ``0``, esta vista de búfer está vacía.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_offset:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_offset** = ``0`` :ref:`🔗<class_GLTFBufferView_property_byte_offset>`

.. rst-class:: classref-property-setget

- |void| **set_byte_offset**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_offset**\ (\ )

El offset, en bytes, desde el inicio del búfer hasta el inicio de esta vista de búfer.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_byte_stride:

.. rst-class:: classref-property

:ref:`int<class_int>` **byte_stride** = ``-1`` :ref:`🔗<class_GLTFBufferView_property_byte_stride>`

.. rst-class:: classref-property-setget

- |void| **set_byte_stride**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_byte_stride**\ (\ )

El stride, en bytes, entre los datos entrelazados. Si es ``-1``, esta vista de búfer no está entrelazada.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_indices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **indices** = ``false`` :ref:`🔗<class_GLTFBufferView_property_indices>`

.. rst-class:: classref-property-setget

- |void| **set_indices**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_indices**\ (\ )

Es ``true`` si el tipo de búfer OpenGL GPU de GLTFBufferView es un ``ELEMENT_ARRAY_BUFFER`` utilizado para índices de vértices (constante entera ``34963``). Es ``false`` si el tipo de búfer es cualquier otro valor. Véase `Buffers, BufferViews, and Accessors <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__ para ver los valores posibles. Esta propiedad se establece al importar y se utiliza al exportar.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_property_vertex_attributes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertex_attributes** = ``false`` :ref:`🔗<class_GLTFBufferView_property_vertex_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_vertex_attributes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_vertex_attributes**\ (\ )

Es ``true`` si el tipo de búfer OpenGL GPU de GLTFBufferView es un ``ARRAY_BUFFER`` utilizado para atributos de vértices (constante entera ``34962``). Es ``false`` si el tipo de búfer es cualquier otro valor. Véase `Buffers, BufferViews, and Accessors <https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_005_BuffersBufferViewsAccessors.md>`__ para ver los valores posibles. Esta propiedad se establece al importar y se utiliza al exportar.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GLTFBufferView_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFBufferView<class_GLTFBufferView>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFBufferView_method_from_dictionary>`

Creates a new GLTFBufferView instance by parsing the given :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_method_load_buffer_view_data:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **load_buffer_view_data**\ (\ state\: :ref:`GLTFState<class_GLTFState>`\ ) |const| :ref:`🔗<class_GLTFBufferView_method_load_buffer_view_data>`

Carga los datos de la vista de búfer del búfer al que hace referencia esta vista de búfer en el :ref:`GLTFState<class_GLTFState>` dado. Los datos entrelazados con un byte stride aún no son compatibles con este método. Los datos se devuelven como un :ref:`PackedByteArray<class_PackedByteArray>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFBufferView_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFBufferView_method_to_dictionary>`

Serializes this GLTFBufferView instance into a :ref:`Dictionary<class_Dictionary>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
