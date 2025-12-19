:github_url: hide

.. _class_PackedFloat64Array:

PackedFloat64Array
==================

Un array empaquetado de valores de punto flotante de 64 bits.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un array diseñado específicamente para contener valores de punto flotante de 64 bits (doble). Empaqueta los datos de forma compacta, por lo que ahorra memoria para tamaños de array grandes.

Si solo necesitas empaquetar floats de 32 bits de forma compacta, consulta :ref:`PackedFloat32Array<class_PackedFloat32Array>` para una alternativa más amigable con la memoria.

\ **Diferencias entre arrays empaquetados, arrays tipados y arrays no tipados:** Los arrays empaquetados son generalmente más rápidos para iterar y modificar en comparación con un array tipado del mismo tipo (por ejemplo, **PackedFloat64Array** versus ``Array[float]``). Además, los arrays empaquetados consumen menos memoria. Como desventaja, los arrays empaquetados son menos flexibles, ya que no ofrecen tantos métodos de conveniencia como :ref:`Array.map()<class_Array_method_map>`. Los arrays tipados son a su vez más rápidos para iterar y modificar que los arrays no tipados.

\ **Nota:** Los arrays empaquetados siempre se pasan por referencia. Para obtener una copia de un array que pueda modificarse independientemente del array original, utiliza :ref:`duplicate()<class_PackedFloat64Array_method_duplicate>`. Este *no* es el caso de las propiedades y métodos incorporados. En estos casos, el array empaquetado devuelto es una copia, y cambiarlo *no* afectará al valor original. Para actualizar una propiedad incorporada de este tipo, modifica el array devuelto y luego asígnalo a la propiedad de nuevo.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`PackedFloat64Array<class_PackedFloat64Array_constructor_PackedFloat64Array>`\ (\ )                                                             |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`PackedFloat64Array<class_PackedFloat64Array_constructor_PackedFloat64Array>`\ (\ from\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`PackedFloat64Array<class_PackedFloat64Array_constructor_PackedFloat64Array>`\ (\ from\: :ref:`Array<class_Array>`\ )                           |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`append<class_PackedFloat64Array_method_append>`\ (\ value\: :ref:`float<class_float>`\ )                                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_array<class_PackedFloat64Array_method_append_array>`\ (\ array\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`bsearch<class_PackedFloat64Array_method_bsearch>`\ (\ value\: :ref:`float<class_float>`, before\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_PackedFloat64Array_method_clear>`\ (\ )                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`count<class_PackedFloat64Array_method_count>`\ (\ value\: :ref:`float<class_float>`\ ) |const|                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`duplicate<class_PackedFloat64Array_method_duplicate>`\ (\ ) |const|                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`erase<class_PackedFloat64Array_method_erase>`\ (\ value\: :ref:`float<class_float>`\ )                                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`fill<class_PackedFloat64Array_method_fill>`\ (\ value\: :ref:`float<class_float>`\ )                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`find<class_PackedFloat64Array_method_find>`\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = 0\ ) |const|              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get<class_PackedFloat64Array_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has<class_PackedFloat64Array_method_has>`\ (\ value\: :ref:`float<class_float>`\ ) |const|                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`insert<class_PackedFloat64Array_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_empty<class_PackedFloat64Array_method_is_empty>`\ (\ ) |const|                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`push_back<class_PackedFloat64Array_method_push_back>`\ (\ value\: :ref:`float<class_float>`\ )                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_at<class_PackedFloat64Array_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`resize<class_PackedFloat64Array_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reverse<class_PackedFloat64Array_method_reverse>`\ (\ )                                                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`rfind<class_PackedFloat64Array_method_rfind>`\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = -1\ ) |const|           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set<class_PackedFloat64Array_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ )                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`size<class_PackedFloat64Array_method_size>`\ (\ ) |const|                                                                                   |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`slice<class_PackedFloat64Array_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const|        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`sort<class_PackedFloat64Array_method_sort>`\ (\ )                                                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`       | :ref:`to_byte_array<class_PackedFloat64Array_method_to_byte_array>`\ (\ ) |const|                                                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_PackedFloat64Array_operator_neq_PackedFloat64Array>`\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat64Array<class_PackedFloat64Array>` | :ref:`operator +<class_PackedFloat64Array_operator_sum_PackedFloat64Array>`\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_PackedFloat64Array_operator_eq_PackedFloat64Array>`\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`operator []<class_PackedFloat64Array_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_PackedFloat64Array_constructor_PackedFloat64Array:

.. rst-class:: classref-constructor

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **PackedFloat64Array**\ (\ ) :ref:`🔗<class_PackedFloat64Array_constructor_PackedFloat64Array>`

Construye un :ref:`PackedInt64Array<class_PackedInt64Array>` vacío.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **PackedFloat64Array**\ (\ from\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ )

Construye un **PackedFloat64Array** como una copia del **PackedFloat64Array** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **PackedFloat64Array**\ (\ from\: :ref:`Array<class_Array>`\ )

Construye un nuevo **PackedFloat64Array**. Opcionalmente, puedes pasar un :ref:`Array<class_Array>` genérico que se convertirá.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PackedFloat64Array_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_append>`

Concatena un elemento al final del array (alias de :ref:`push_back()<class_PackedFloat64Array_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) :ref:`🔗<class_PackedFloat64Array_method_append_array>`

Añade un **PackedFloat64Array** al final de este array.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`float<class_float>`, before\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_bsearch>`

Encuentra el índice de un valor existente (o el índice de inserción que mantiene el orden de clasificación, si el valor aún no está presente en el array) utilizando la búsqueda binaria. Opcionalmente, se puede pasar un especificador ``before``. Si es ``false``, el índice devuelto aparece después de todas las entradas existentes del valor en el array.

\ **Nota:** Llamar a :ref:`bsearch()<class_PackedFloat64Array_method_bsearch>` en un array no ordenado resulta en un comportamiento inesperado.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedFloat64Array_method_clear>`

Limpia el array. Esto es equivalente a usar :ref:`resize()<class_PackedFloat64Array_method_resize>` con un tamaño de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_count>`

Devuelve el número de veces que un elemento está en el array.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **duplicate**\ (\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_duplicate>`

Creates a copy of the array, and returns it.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_erase>`

Elimina la primera aparición de un valor del array y devuelve ``true``. Si el valor no existe en el array, no pasa nada y se devuelve ``false``. Para eliminar un elemento por índice, usa :ref:`remove_at()<class_PackedFloat64Array_method_remove_at>` en su lugar.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_fill>`

Asigna el valor dado a todos los elementos del array. Esto normalmente se puede usar junto con :ref:`resize()<class_PackedFloat64Array_method_resize>` para crear un array con un tamaño dado y elementos inicializados.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_find>`

Busca un valor en el array y devuelve su índice o ``-1`` si no lo encuentra. Opcionalmente, se puede pasar el índice de búsqueda inicial.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_get:

.. rst-class:: classref-method

:ref:`float<class_float>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_get>`

Returns the 64-bit float at the given ``index`` in the array. If ``index`` is out-of-bounds or negative, this method fails and returns ``0.0``.

This method is similar (but not identical) to the ``[]`` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_has>`

Devuelve ``true`` si el array contiene ``value``.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_insert>`

Inserta un nuevo elemento en una posición determinada del array. La posición debe ser válida, o al final del array (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_is_empty>`

Devuelve ``true`` si el array es vacio.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_push_back>`

Concatena un elemen al final del array.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat64Array_method_remove_at>`

Elimina un elemento del array por indice.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat64Array_method_resize>`

Sets the size of the array. If the array is grown, reserves elements at the end of the array. If the array is shrunk, truncates the array to the new size. Calling :ref:`resize()<class_PackedFloat64Array_method_resize>` once and assigning the new values is faster than adding new elements one by one.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the following :ref:`Error<enum_@GlobalScope_Error>` constants if this method fails: :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` if the size is negative, or :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` if allocations fail. Use :ref:`size()<class_PackedFloat64Array_method_size>` to find the actual size of the array after resize.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedFloat64Array_method_reverse>`

Invierte el orden de los elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`float<class_float>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_rfind>`

Searches the array in reverse order. Optionally, a start search index can be passed. If negative, the start index is considered relative to the end of the array.

\ **Note:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` doesn't behave the same as other numbers. Therefore, the results from this method may not be accurate if NaNs are included.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PackedFloat64Array_method_set>`

Cambia el real en el índice dado.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_size>`

Devuelve el numer de elementos en el array.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_slice:

.. rst-class:: classref-method

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_slice>`

Devuelve una porción del **PackedFloat64Array**, desde ``begin`` (inclusive) hasta ``end`` (exclusivo), como un nuevo **PackedFloat64Array**.

El valor absoluto de ``begin`` y ``end`` se limitará al tamaño del array, por lo que el valor predeterminado para ``end`` hace que la porción tenga el tamaño del array de forma predeterminada (es decir, ``arr.slice(1)`` es una abreviatura de ``arr.slice(1, arr.size())``).

Si ``begin`` o ``end`` son negativos, serán relativos al final del array (es decir, ``arr.slice(0, -2)`` es una abreviatura de ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedFloat64Array_method_sort>`

Ordena los elementos del array en orden ascendente.

\ **Nota:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` no se comporta igual que otros números. Por lo tanto, los resultados de este método pueden no ser precisos si se incluyen NaN.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedFloat64Array_method_to_byte_array>`

Devuelve una copia de los datos convertidos a un :ref:`PackedByteArray<class_PackedByteArray>`, donde cada elemento ha sido codificado como 8 bytes.

El tamaño del nuevo array será ``float64_array.size() * 8``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_PackedFloat64Array_operator_neq_PackedFloat64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) :ref:`🔗<class_PackedFloat64Array_operator_neq_PackedFloat64Array>`

Returns ``true`` if contents of the arrays differ.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_operator_sum_PackedFloat64Array:

.. rst-class:: classref-operator

:ref:`PackedFloat64Array<class_PackedFloat64Array>` **operator +**\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) :ref:`🔗<class_PackedFloat64Array_operator_sum_PackedFloat64Array>`

Devuelve un nuevo **PackedFloat64Array** con el contenido de ``right`` añadido al final de este array. Para un mejor rendimiento, considera usar :ref:`append_array()<class_PackedFloat64Array_method_append_array>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_operator_eq_PackedFloat64Array:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`\ ) :ref:`🔗<class_PackedFloat64Array_operator_eq_PackedFloat64Array>`

Devuelve ``true`` si los contenidos de ambos arrays son iguales, es decir, tienen todos los doubles iguales en los índices correspondientes.

.. rst-class:: classref-item-separator

----

.. _class_PackedFloat64Array_operator_idx_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedFloat64Array_operator_idx_int>`

Devuelve el :ref:`float<class_float>` en el índice ``index``. Los índices negativos pueden utilizarse para acceder a los elementos empezando por el final. El uso de un índice fuera de los límites del array provocará un error.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
