:github_url: hide

.. _class_BitMap:

BitMap
======

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Matriz booleana.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un array bidimensional de valores booleanos, puede ser usada para almacenar eficientemente un array binario (cada elemento del array toma sólo un bit) y consultar los valores usando coordenadas cartesianas naturales.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                                                        | :ref:`convert_to_image<class_BitMap_method_convert_to_image>`\ (\ ) |const|                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`create<class_BitMap_method_create>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`create_from_image_alpha<class_BitMap_method_create_from_image_alpha>`\ (\ image\: :ref:`Image<class_Image>`, threshold\: :ref:`float<class_float>` = 0.1\ ) |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`get_bit<class_BitMap_method_get_bit>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const|                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`get_bitv<class_BitMap_method_get_bitv>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                                  | :ref:`get_size<class_BitMap_method_get_size>`\ (\ ) |const|                                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`get_true_bit_count<class_BitMap_method_get_true_bit_count>`\ (\ ) |const|                                                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`grow_mask<class_BitMap_method_grow_mask>`\ (\ pixels\: :ref:`int<class_int>`, rect\: :ref:`Rect2i<class_Rect2i>`\ )                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`opaque_to_polygons<class_BitMap_method_opaque_to_polygons>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, epsilon\: :ref:`float<class_float>` = 2.0\ ) |const|    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`resize<class_BitMap_method_resize>`\ (\ new_size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bit<class_BitMap_method_set_bit>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, bit\: :ref:`bool<class_bool>`\ )                            |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bit_rect<class_BitMap_method_set_bit_rect>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, bit\: :ref:`bool<class_bool>`\ )                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bitv<class_BitMap_method_set_bitv>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, bit\: :ref:`bool<class_bool>`\ )                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_BitMap_method_convert_to_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **convert_to_image**\ (\ ) |const| :ref:`🔗<class_BitMap_method_convert_to_image>`

Devuelve una imagen del mismo tamaño que el mapa de bits y con un :ref:`Format<enum_Image_Format>` de tipo :ref:`Image.FORMAT_L8<class_Image_constant_FORMAT_L8>`. Los bits ``true`` del mapa de bits se convierten en píxeles blancos, y los bits ``false`` en negros.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_create:

.. rst-class:: classref-method

|void| **create**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_BitMap_method_create>`

Crea un mapa de bits con el tamaño especificado, lleno de ``false``.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_create_from_image_alpha:

.. rst-class:: classref-method

|void| **create_from_image_alpha**\ (\ image\: :ref:`Image<class_Image>`, threshold\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_BitMap_method_create_from_image_alpha>`

Crea un mapa de bits que coincide con las dimensiones de la imagen dada, cada elemento del mapa de bits se establece en ``false`` si el valor alfa de la imagen en esa posición es igual o menor que ``threshold``, y ``true`` en caso contrario.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_bit:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bit**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BitMap_method_get_bit>`

Devuelve el valor del mapa de bits en la posición especificada.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_bitv:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bitv**\ (\ position\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_BitMap_method_get_bitv>`

Devuelve el valor del mapa de bits en la posición especificada.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_size**\ (\ ) |const| :ref:`🔗<class_BitMap_method_get_size>`

Devuelve las dimensiones del mapa de bits.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_true_bit_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_true_bit_count**\ (\ ) |const| :ref:`🔗<class_BitMap_method_get_true_bit_count>`

Devuelve el número de elementos del mapa de bits que están configurados como ``true``.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_grow_mask:

.. rst-class:: classref-method

|void| **grow_mask**\ (\ pixels\: :ref:`int<class_int>`, rect\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_BitMap_method_grow_mask>`

Aplica la dilatación o erosión morfológica al mapa de bits. Si ``pixels`` es positivo, se aplica la dilatación al mapa de bits. Si ``pixels`` es negativo, se aplica la erosión al mapa de bits. ``rect`` define el área donde se aplica la operación morfológica. Los píxeles situados fuera de ``rect`` no se ven afectados por :ref:`grow_mask()<class_BitMap_method_grow_mask>`.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_opaque_to_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **opaque_to_polygons**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, epsilon\: :ref:`float<class_float>` = 2.0\ ) |const| :ref:`🔗<class_BitMap_method_opaque_to_polygons>`

Creates an :ref:`Array<class_Array>` of polygons covering a rectangular portion of the bitmap. It uses a marching squares algorithm, followed by Ramer-Douglas-Peucker (RDP) reduction of the number of vertices. Each polygon is described as a :ref:`PackedVector2Array<class_PackedVector2Array>` of its vertices.

To get polygons covering the whole bitmap, pass:

::

    Rect2(Vector2(), get_size())

\ ``epsilon`` is passed to RDP to control how accurately the polygons cover the bitmap: a lower ``epsilon`` corresponds to more points in the polygons.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_resize:

.. rst-class:: classref-method

|void| **resize**\ (\ new_size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_BitMap_method_resize>`

Redimensiona la imagen a ``new_size``.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bit:

.. rst-class:: classref-method

|void| **set_bit**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bit>`

Establece el elemento del mapa de bits en la posición especificada, al valor especificado.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bit_rect:

.. rst-class:: classref-method

|void| **set_bit_rect**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bit_rect>`

Establece una porción rectangular del mapa de bits al valor especificado.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bitv:

.. rst-class:: classref-method

|void| **set_bitv**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bitv>`

Establece el elemento del mapa de bits en la posición especificada, al valor especificado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
