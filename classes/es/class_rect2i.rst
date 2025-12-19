:github_url: hide

.. _class_Rect2i:

Rect2i
======

Un cuadro delimitador 2D alineado con los ejes que utiliza coordenadas enteras.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El tipo :ref:`Variant<class_Variant>` incorporado **Rect2i** representa un rectángulo alineado con los ejes en un espacio 2D, utilizando coordenadas enteras. Se define por su :ref:`position<class_Rect2i_property_position>` y su :ref:`size<class_Rect2i_property_size>`, que son :ref:`Vector2i<class_Vector2i>`. Debido a que no rota, se utiliza con frecuencia para pruebas rápidas de superposición (véase :ref:`intersects()<class_Rect2i_method_intersects>`).

Para coordenadas de punto flotante, consulta :ref:`Rect2<class_Rect2>`.

\ **Nota:** No se admiten valores negativos para :ref:`size<class_Rect2i_property_size>`. Con un tamaño negativo, la mayoría de los métodos **Rect2i** no funcionan correctamente. Utiliza :ref:`abs()<class_Rect2i_method_abs>` para obtener un **Rect2i** equivalente con un tamaño no negativo.

\ **Nota:** En un contexto booleano, un **Rect2i** se evalúa como ``false`` si tanto :ref:`position<class_Rect2i_property_position>` como :ref:`size<class_Rect2i_property_size>` son cero (igual a :ref:`Vector2i.ZERO<class_Vector2i_constant_ZERO>`). De lo contrario, siempre se evalúa como ``true``.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación matemática <../tutorials/math/index>`

- :doc:`Matemáticas vectoriales <../tutorials/math/vector_math>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`end<class_Rect2i_property_end>`           | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`position<class_Rect2i_property_position>` | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`size<class_Rect2i_property_size>`         | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ )                                                                                                                      |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                    |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )                                  |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`Rect2i<class_Rect2i_constructor_Rect2i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`abs<class_Rect2i_method_abs>`\ (\ ) |const|                                                                                                                                                   |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`encloses<class_Rect2i_method_encloses>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`expand<class_Rect2i_method_expand>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_area<class_Rect2i_method_get_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`get_center<class_Rect2i_method_get_center>`\ (\ ) |const|                                                                                                                                     |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow<class_Rect2i_method_grow>`\ (\ amount\: :ref:`int<class_int>`\ ) |const|                                                                                                                 |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_individual<class_Rect2i_method_grow_individual>`\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`grow_side<class_Rect2i_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const|                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_area<class_Rect2i_method_has_area>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`has_point<class_Rect2i_method_has_point>`\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`intersection<class_Rect2i_method_intersection>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`intersects<class_Rect2i_method_intersects>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                    |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2i<class_Rect2i>`     | :ref:`merge<class_Rect2i_method_merge>`\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const|                                                                                                              |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Rect2i_operator_neq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Rect2i_operator_eq_Rect2i>`\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Rect2i_property_end:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **end** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_end>`

El punto final. Este es usualmente la esquina inferior derecha del rectángulo, y es equivalente a ``position + size``. Establecer este punto afecta el :ref:`size<class_Rect2i_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_position:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **position** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_position>`

El punto de origen. Este es usualmente la esquina superior izquierda del rectángulo.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(0, 0)`` :ref:`🔗<class_Rect2i_property_size>`

La anchura y la altura del rectángulo, empezando desde :ref:`position<class_Rect2i_property_position>`. Establecer este valor también afecta al punto :ref:`end<class_Rect2i_property_end>`.

\ **Nota:** Se recomienda establecer la anchura y la altura a valores no negativos, ya que la mayoría de los métodos en Godot asumen que la :ref:`position<class_Rect2i_property_position>` es la esquina superior izquierda, y el :ref:`end<class_Rect2i_property_end>` es la esquina inferior derecha. Para obtener un rectángulo equivalente con un tamaño no negativo, utiliza :ref:`abs()<class_Rect2i_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_Rect2i_constructor_Rect2i:

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ ) :ref:`🔗<class_Rect2i_constructor_Rect2i>`

Construye un **Rect2i** con su :ref:`position<class_Rect2i_property_position>` y :ref:`size<class_Rect2i_property_size>` establecidos en :ref:`Vector2i.ZERO<class_Vector2i_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

Construye un **Rect2i** como copia del **Rect2i** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

Construye un **Rect2i** a partir de un :ref:`Rect2<class_Rect2>`. Las coordenadas de punto flotante se truncan.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, size\: :ref:`Vector2i<class_Vector2i>`\ )

Construye un **Rect2i** por ``position`` y ``size``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2i<class_Rect2i>` **Rect2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ )

Construye un **Rect2i** estableciendo su :ref:`position<class_Rect2i_property_position>` en (``x``, ``y``), y su :ref:`size<class_Rect2i_property_size>` en (``width``, ``height``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Rect2i_method_abs:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_abs>`

Devuelve un **Rect2i** equivalente a este rectángulo, con su anchura y altura modificadas para que sean valores no negativos, y con su :ref:`position<class_Rect2i_property_position>` siendo la esquina superior izquierda del rectángulo.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2i(25, 25, -100, -50)
    var absolute = rect.abs() # absolute es Rect2i(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2I(25, 25, -100, -50);
    var absolute = rect.Abs(); // absolute es Rect2I(-75, -25, 100, 50)



\ **Nota:** Se recomienda utilizar este método cuando :ref:`size<class_Rect2i_property_size>` es negativo, ya que la mayoría de los otros métodos en Godot asumen que la :ref:`position<class_Rect2i_property_position>` es la esquina superior izquierda, y el :ref:`end<class_Rect2i_property_end>` es la esquina inferior derecha.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_encloses>`

Devuelve ``true`` si este **Rect2i** encierra completamente a otro.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_expand:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **expand**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_expand>`

Devuelve una copia de este rectángulo expandida para alinear los bordes con el punto ``to`` dado, si es necesario.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2i(0, 0, 5, 2)

    rect = rect.expand(Vector2i(10, 0)) # rect is Rect2i(0, 0, 10, 2)
    rect = rect.expand(Vector2i(-5, 5)) # rect is Rect2i(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2I(0, 0, 5, 2);

    rect = rect.Expand(new Vector2I(10, 0)); // rect is Rect2I(0, 0, 10, 2)
    rect = rect.Expand(new Vector2I(-5, 5)); // rect is Rect2I(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_area:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_area>`

Devuelve el área del rectángulo. Esto es equivalente a ``size.x * size.y``. Véase también :ref:`has_area()<class_Rect2i_method_has_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_get_center>`

Devuelve el punto central del rectángulo. Esto es lo mismo que ``position + (size / 2)``.

\ **Nota:** Si el :ref:`size<class_Rect2i_property_size>` es impar, el resultado se redondeará hacia :ref:`position<class_Rect2i_property_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow**\ (\ amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow>`

Returns a copy of this rectangle extended on all sides by the given ``amount``. A negative ``amount`` shrinks the rectangle instead. See also :ref:`grow_individual()<class_Rect2i_method_grow_individual>` and :ref:`grow_side()<class_Rect2i_method_grow_side>`.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2i(4, 4, 8, 8).grow(4) # a is Rect2i(0, 0, 16, 16)
    var b = Rect2i(0, 0, 8, 4).grow(2) # b is Rect2i(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2I(4, 4, 8, 8).Grow(4); // a is Rect2I(0, 0, 16, 16)
    var b = new Rect2I(0, 0, 8, 4).Grow(2); // b is Rect2I(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_individual**\ (\ left\: :ref:`int<class_int>`, top\: :ref:`int<class_int>`, right\: :ref:`int<class_int>`, bottom\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_individual>`

Devuelve una copia de este rectángulo con sus lados ``left``, ``top``, ``right`` y ``bottom`` extendidos por las cantidades dadas. Los valores negativos encogen los lados, en su lugar. Véase también :ref:`grow()<class_Rect2i_method_grow>` y :ref:`grow_side()<class_Rect2i_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Rect2i_method_grow_side>`

Devuelve una copia de este rectángulo con su ``side`` extendido por la ``amount`` dada (véase las constantes :ref:`Side<enum_@GlobalScope_Side>`). Una ``amount`` negativa encoge el rectángulo, en su lugar. Véase también :ref:`grow()<class_Rect2i_method_grow>` y :ref:`grow_individual()<class_Rect2i_method_grow_individual>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2i_method_has_area>`

Devuelve ``true`` si este rectángulo tiene un ancho y un alto positivos. Véase también :ref:`get_area()<class_Rect2i_method_get_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_has_point>`

Devuelve ``true`` si el rectángulo contiene el ``point`` dado. Por convención, los puntos en los bordes derecho e inferior **no** están incluidos.

\ **Nota:** Este método no es fiable para **Rect2i** con un :ref:`size<class_Rect2i_property_size>` *negativo*. Usa :ref:`abs()<class_Rect2i_method_abs>` primero para obtener un rectángulo válido.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **intersection**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersection>`

Returns the intersection between this rectangle and ``b``. If the rectangles do not intersect, returns an empty **Rect2i**.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2i(0, 0, 5, 10)
    var b = Rect2i(2, 0, 8, 4)

    var c = a.intersection(b) # c is Rect2i(2, 0, 3, 4)

 .. code-tab:: csharp

    var a = new Rect2I(0, 0, 5, 10);
    var b = new Rect2I(2, 0, 8, 4);

    var c = rect1.Intersection(rect2); // c is Rect2I(2, 0, 3, 4)



\ **Note:** If you only need to know whether two rectangles are overlapping, use :ref:`intersects()<class_Rect2i_method_intersects>`, instead.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_intersects>`

Devuelve ``true`` si este rectángulo se superpone con el rectángulo ``b``. Los bordes de ambos rectángulos están excluidos.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_method_merge:

.. rst-class:: classref-method

:ref:`Rect2i<class_Rect2i>` **merge**\ (\ b\: :ref:`Rect2i<class_Rect2i>`\ ) |const| :ref:`🔗<class_Rect2i_method_merge>`

Devuelve un **Rect2i** que encierra tanto a este rectángulo como a ``b`` alrededor de los bordes. Véase también :ref:`encloses()<class_Rect2i_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Rect2i_operator_neq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_neq_Rect2i>`

Devuelve ``true`` si la :ref:`position<class_Rect2i_property_position>` o el :ref:`size<class_Rect2i_property_size>` de ambos rectángulos no son iguales.

.. rst-class:: classref-item-separator

----

.. _class_Rect2i_operator_eq_Rect2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_Rect2i_operator_eq_Rect2i>`

Devuelve ``true`` si tanto :ref:`position<class_Rect2i_property_position>` como :ref:`size<class_Rect2i_property_size>` de los rectángulos son iguales, respectivamente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
