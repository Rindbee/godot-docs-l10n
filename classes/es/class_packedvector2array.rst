:github_url: hide

.. _class_PackedVector2Array:

PackedVector2Array
==================

Un array empaquetado de :ref:`Vector2<class_Vector2>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

An array specifically designed to hold :ref:`Vector2<class_Vector2>`. Packs data tightly, so it saves memory for large array sizes.

\ **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedVector2Array** versus ``Array[Vector2]``). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as :ref:`Array.map()<class_Array_method_map>`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

\ **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_PackedVector2Array_method_duplicate>`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Navegación basada en cuadrícula con AStarGrid2D <https://godotengine.org/asset-library/asset/2723>`__

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`PackedVector2Array<class_PackedVector2Array_constructor_PackedVector2Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`PackedVector2Array<class_PackedVector2Array_constructor_PackedVector2Array>`\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`PackedVector2Array<class_PackedVector2Array_constructor_PackedVector2Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedVector2Array_method_append>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedVector2Array_method_append_array>`\ (\ array\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedVector2Array_method_bsearch>`\ (\ value\: :ref:`Vector2<class_Vector2>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedVector2Array_method_clear>`\ (\ )                                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedVector2Array_method_count>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const|                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`duplicate<class_PackedVector2Array_method_duplicate>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedVector2Array_method_erase>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedVector2Array_method_fill>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedVector2Array_method_find>`\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get<class_PackedVector2Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedVector2Array_method_has>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedVector2Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ )                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedVector2Array_method_is_empty>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedVector2Array_method_push_back>`\ (\ value\: :ref:`Vector2<class_Vector2>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedVector2Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedVector2Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedVector2Array_method_reverse>`\ (\ )                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedVector2Array_method_rfind>`\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedVector2Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ )                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedVector2Array_method_size>`\ (\ ) |const|                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`slice<class_PackedVector2Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedVector2Array_method_sort>`\ (\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedVector2Array_method_to_byte_array>`\ (\ ) |const|                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedVector2Array_operator_neq_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator *<class_PackedVector2Array_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator +<class_PackedVector2Array_operator_sum_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedVector2Array_operator_eq_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator []<class_PackedVector2Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_PackedVector2Array_constructor_PackedVector2Array:

.. rst-class:: classref-constructor

:ref:`PackedVector2Array<class_PackedVector2Array>` **PackedVector2Array**\ (\ ) :ref:`🔗<class_PackedVector2Array_constructor_PackedVector2Array>`

Construye un **PackedVector2Array** vacío.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector2Array<class_PackedVector2Array>` **PackedVector2Array**\ (\ from\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )

Construye un **PackedVector2Array** como una copia del **PackedVector2Array** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedVector2Array<class_PackedVector2Array>` **PackedVector2Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Constructs a new **PackedVector2Array**. Optionally, you can pass in a generic :ref:`Array<class_Array>` that will be converted.

\ **Note:** When initializing a **PackedVector2Array** with elements, it must be initialized with an :ref:`Array<class_Array>` of :ref:`Vector2<class_Vector2>` values:

::

    var array = PackedVector2Array([Vector2(12, 34), Vector2(56, 78)])

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PackedVector2Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_append>`

Concatena un elemento al final del array (alias de :ref:`push_back()<class_PackedVector2Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_method_append_array>`

Añade un **PackedVector2Array** al final de este array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Vector2<class_Vector2>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedVector2Array_method_bsearch>`

Finds the index of an existing value (or the insertion index that maintains sorting order, if the value is not yet present in the array) using binary search. Optionally, a ``before`` specifier can be passed. If ``false``, the returned index comes after all existing entries of the value in the array.

\ **Note:** Calling :ref:`bsearch()<class_PackedVector2Array_method_bsearch>` on an unsorted array results in unexpected behavior.

\ **Note:** Vectors with :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedVector2Array_method_clear>`

Limpia el array. Esto es equivalente a usar :ref:`resize()<class_PackedVector2Array_method_resize>` con un tamaño de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PackedVector2Array_method_count>`

Returns the number of times an element is in the array.

\ **Note:** Vectors with :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_duplicate>`

Creates a copy of the array, and returns it.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_erase>`

Removes the first occurrence of a value from the array and returns ``true``. If the value does not exist in the array, nothing happens and ``false`` is returned. To remove an element by index, use :ref:`remove_at()<class_PackedVector2Array_method_remove_at>` instead.

\ **Note:** Vectors with :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_fill>`

Asigna el valor dado a todos los elementos del array. Esto normalmente se puede usar junto con :ref:`resize()<class_PackedVector2Array_method_resize>` para crear un array con un tamaño dado y elementos inicializados.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedVector2Array_method_find>`

Searches the array for a value and returns its index or ``-1`` if not found. Optionally, the initial search index can be passed.

\ **Note:** Vectors with :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_get:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedVector2Array_method_get>`

Returns the :ref:`Vector2<class_Vector2>` at the given ``index`` in the array. If ``index`` is out-of-bounds or negative, this method fails and returns ``Vector2(0, 0)``.

This method is similar (but not identical) to the ``[]`` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PackedVector2Array_method_has>`

Returns ``true`` if the array contains ``value``.

\ **Note:** Vectors with :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_insert>`

Inserta un nuevo elemento en una posición determinada del array. La posición debe ser válida, o al final del array (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_is_empty>`

Devuelve ``true`` si el array es vacio.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_push_back>`

Inserta un :ref:`Vector2<class_Vector2>` al final.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector2Array_method_remove_at>`

Elimina un elemento del array por indice.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector2Array_method_resize>`

Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling :ref:`resize()<class_PackedVector2Array_method_resize>` once and assigning the new values is faster than adding new elements one by one.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the following :ref:`Error<enum_@GlobalScope_Error>` constants if this method fails: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` if the size is negative, or :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` if allocations fail. Use :ref:`size()<class_PackedVector2Array_method_size>` to find the actual size of the array after resize.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedVector2Array_method_reverse>`

Invierte el orden de los elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`Vector2<class_Vector2>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedVector2Array_method_rfind>`

Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.

\ **Note:** Vectors with :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PackedVector2Array_method_set>`

Cambia el :ref:`Vector2<class_Vector2>` en el índice dado.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_size>`

Devuelve el numer de elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedVector2Array_method_slice>`

Returns the slice of the **PackedVector2Array**, from ``begin`` (inclusive) to ``end`` (exclusive), as a new **PackedVector2Array**.

The absolute value of ``begin`` and ``end`` will be clamped to the array size, so the default value for ``end`` makes it slice to the size of the array by default (i.e. ``arr.slice(1)`` is a shorthand for ``arr.slice(1, arr.size())``).

If either ``begin`` or ``end`` are negative, they will be relative to the end of the array (i.e. ``arr.slice(0, -2)`` is a shorthand for ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedVector2Array_method_sort>`

Sorts the elements of the array in ascending order.

\ **Note:** Vectors with :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` elements don't behave the same as other vectors. Therefore, the results from this method may not be accurate if NaNs are included.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedVector2Array_method_to_byte_array>`

Returns a :ref:`PackedByteArray<class_PackedByteArray>` with each vector encoded as bytes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_PackedVector2Array_operator_neq_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_operator_neq_PackedVector2Array>`

Returns ``true`` if contents of the arrays differ.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_PackedVector2Array_operator_mul_Transform2D>`

Returns a new **PackedVector2Array** with all vectors in this array inversely transformed (multiplied) by the given :ref:`Transform2D<class_Transform2D>` transformation matrix, under the assumption that the transformation basis is orthonormal (i.e. rotation/reflection is fine, scaling/skew is not).

\ ``array * transform`` is equivalent to ``transform.inverse() * array``. See :ref:`Transform2D.inverse()<class_Transform2D_method_inverse>`.

For transforming by inverse of an affine transformation (e.g. with scaling) ``transform.affine_inverse() * array`` can be used instead. See :ref:`Transform2D.affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_sum_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator +**\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_operator_sum_PackedVector2Array>`

Devuelve un nuevo **PackedVector2Array** con el contenido de ``right`` añadido al final de este array. Para un mejor rendimiento, considera usar :ref:`append_array()<class_PackedVector2Array_method_append_array>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_eq_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_PackedVector2Array_operator_eq_PackedVector2Array>`

Devuelve ``true`` si el contenido de ambos arrays es el mismo, es decir, tienen todos los :ref:`Vector2<class_Vector2>` iguales en los índices correspondientes.

.. rst-class:: classref-item-separator

----

.. _class_PackedVector2Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedVector2Array_operator_idx_int>`

Devuelve el :ref:`Vector2<class_Vector2>` en el índice ``index``. Se pueden usar índices negativos para acceder a los elementos desde el final. Usar un índice fuera de los límites del array resultará en un error.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
