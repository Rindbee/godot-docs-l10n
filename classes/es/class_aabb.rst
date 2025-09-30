:github_url: hide

.. _class_AABB:

AABB
====

Un cuadro delimitador 3D alineado con los ejes.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El tipo :ref:`Variant<class_Variant>` integrado **AABB** representa un cuadro delimitador alineado con el eje en un espacio 3D. Se define por su ``posición del miembro`` y ``tamaño del miembro``, que son :ref:`Vector3<class_Vector3>`. Se utiliza con frecuencia para pruebas rápidas de superposición (véase :ref:`intersects()<class_AABB_method_intersects>`). Aunque **AABB** está alineado con el eje, puede combinarse con :ref:`Transform3D<class_Transform3D>` para representar un cuadro delimitador rotado o sesgado.

Utiliza coordenadas de punto flotante. La contraparte 2D de **AABB** es :ref:`Rect2<class_Rect2>`. No existe ninguna versión de **AABB** que utilice coordenadas enteras.

\ **Nota:** No se admiten valores negativos para :ref:`size<class_AABB_property_size>`. Con un tamaño negativo, la mayoría de los métodos **AABB** no funcionan correctamente. Utiliza :ref:`abs()<class_AABB_method_abs>` para obtener un **AABB** equivalente con un tamaño no negativo.

\ **Nota:** En un contexto booleano, una **AABB** se evalúa como ``false`` si tanto la ``posición del miembro`` como :ref:`size<class_AABB_property_size>` son cero (igual a :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`). De lo contrario, siempre se evalúa como ``true``.

.. note::

	Hay diferencias notables cuando usa esta API con C#. Véase :ref:`doc_c_sharp_differences` para más información.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación matemática <../tutorials/math/index>`

- :doc:`Matemáticas vectoriales <../tutorials/math/vector_math>`

- :doc:`Matemática vectorial avanzada <../tutorials/math/vectors_advanced>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`end<class_AABB_property_end>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`position<class_AABB_property_position>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_AABB_property_size>`         | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ )                                                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ from\: :ref:`AABB<class_AABB>`\ )                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`abs<class_AABB_method_abs>`\ (\ ) |const|                                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_AABB_method_encloses>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`expand<class_AABB_method_expand>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_AABB_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_endpoint<class_AABB_method_get_endpoint>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_longest_axis<class_AABB_method_get_longest_axis>`\ (\ ) |const|                                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_longest_axis_index<class_AABB_method_get_longest_axis_index>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_longest_axis_size<class_AABB_method_get_longest_axis_size>`\ (\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_shortest_axis<class_AABB_method_get_shortest_axis>`\ (\ ) |const|                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_shortest_axis_index<class_AABB_method_get_shortest_axis_index>`\ (\ ) |const|                                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_shortest_axis_size<class_AABB_method_get_shortest_axis_size>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_support<class_AABB_method_get_support>`\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_volume<class_AABB_method_get_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`grow<class_AABB_method_grow>`\ (\ by\: :ref:`float<class_float>`\ ) |const|                                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_AABB_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_surface<class_AABB_method_has_surface>`\ (\ ) |const|                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_volume<class_AABB_method_has_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`intersection<class_AABB_method_intersection>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_AABB_method_intersects>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects_plane<class_AABB_method_intersects_plane>`\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const|                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_AABB_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_AABB_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_AABB_method_is_equal_approx>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const|                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_AABB_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`merge<class_AABB_method_merge>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_AABB_operator_neq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`operator *<class_AABB_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_AABB_operator_eq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                      |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AABB_property_end:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **end** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_end>`

El punto final. Normalmente es la esquina en la parte superior derecha y posterior del cuadro delimitador, y es equivalente a ``position + size``. Establecer este punto afecta al :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_position>`

El punto de origen. Normalmente es la esquina en la parte inferior izquierda y frontal del cuadro delimitador.

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_size>`

El ancho, la altura y la profundidad del cuadro delimitador, a partir de :ref:`position<class_AABB_property_position>`. Establecer este valor también afecta al punto :ref:`end<class_AABB_property_end>`.

\ **Nota:** Se recomienda establecer el ancho, la altura y la profundidad a valores no negativos. Esto se debe a que la mayoría de los métodos en Godot asumen que la :ref:`position<class_AABB_property_position>` es la esquina inferior izquierda delantera, y el :ref:`end<class_AABB_property_end>` es la esquina superior derecha trasera. Para obtener un cuadro delimitador equivalente con un tamaño no negativo, usa :ref:`abs()<class_AABB_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_AABB_constructor_AABB:

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ ) :ref:`🔗<class_AABB_constructor_AABB>`

Construye un **AABB** con su :ref:`position<class_AABB_property_position>` y :ref:`size<class_AABB_property_size>` establecidos a :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ from\: :ref:`AABB<class_AABB>`\ )

Construye un **AABB** como una copia del **AABB** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ )

Construye un **AABB** con ``position`` y ``size``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AABB_method_abs:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **abs**\ (\ ) |const| :ref:`🔗<class_AABB_method_abs>`

Devuelve un **AABB** equivalente a este cuadro delimitador, con su ancho, alto y profundidad modificados para ser valores no negativos.


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(5, 0, 5), Vector3(-20, -10, -5))
    var absolute = box.abs()
    print(absolute.position) # Imprime (-15.0, -10.0, 0.0)
    print(absolute.size)     # Imprime (20.0, 10.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(5, 0, 5), new Vector3(-20, -10, -5));
    var absolute = box.Abs();
    GD.Print(absolute.Position); // Imprime (-15, -10, 0)
    GD.Print(absolute.Size);     // Imprime (20, 10, 5)



\ **Nota:** Se recomienda utilizar este método cuando :ref:`size<class_AABB_property_size>` es negativo, ya que la mayoría de los otros métodos en Godot asumen que los componentes de :ref:`size<class_AABB_property_size>` son mayores que ``0``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_encloses>`

Devuelve ``true`` si este cuadro delimitador encierra *completamente* la caja ``with``. Se incluyen los bordes de ambas cajas.


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(0, 0, 0), Vector3(4, 4, 4))
    var b = AABB(Vector3(1, 1, 1), Vector3(3, 3, 3))
    var c = AABB(Vector3(2, 2, 2), Vector3(8, 8, 8))

    print(a.encloses(a)) # Imprime true
    print(a.encloses(b)) # Imprime true
    print(a.encloses(c)) # Imprime false

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(0, 0, 0), new Vector3(4, 4, 4));
    var b = new Aabb(new Vector3(1, 1, 1), new Vector3(3, 3, 3));
    var c = new Aabb(new Vector3(2, 2, 2), new Vector3(8, 8, 8));

    GD.Print(a.Encloses(a)); // Imprime True
    GD.Print(a.Encloses(b)); // Imprime True
    GD.Print(a.Encloses(c)); // Imprime False



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_expand:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **expand**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_expand>`

Devuelve una copia de este cuadro delimitador expandida para alinear los bordes con el ``to_point`` dado, si es necesario.


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(5, 2, 5))

    box = box.expand(Vector3(10, 0, 0))
    print(box.position) # Imprime (0.0, 0.0, 0.0)
    print(box.size) # Imprime (10.0, 2.0, 5.0)

    box = box.expand(Vector3(-5, 0, 5))
    print(box.position) # Imprime (-5.0, 0.0, 0.0)
    print(box.size) # Imprime (15.0, 2.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 5));

    box = box.Expand(new Vector3(10, 0, 0));
    GD.Print(box.Position); // Imprime (0, 0, 0)
    GD.Print(box.Size); // Imprime (10, 2, 5)

    box = box.Expand(new Vector3(-5, 0, 5));
    GD.Print(box.Position); // Imprime (-5, 0, 0)
    GD.Print(box.Size); // Imprime (15, 2, 5)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_center>`

Devuelve el punto central del cuadro delimitador. Esto es lo mismo que ``position + (size / 2.0)``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_endpoint:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_endpoint**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AABB_method_get_endpoint>`

Devuelve la posición de uno de los 8 vértices que componen este cuadro delimitador. Con un ``idx`` de ``0`` esto es lo mismo que :ref:`position<class_AABB_property_position>`, y un ``idx`` de ``7`` es lo mismo que :ref:`end<class_AABB_property_end>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_longest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis>`

Devuelve el eje normalizado más largo del :ref:`size<class_AABB_property_size>` de este cuadro delimitador, como un :ref:`Vector3<class_Vector3>` (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`, :ref:`Vector3.UP<class_Vector3_constant_UP>` o :ref:`Vector3.BACK<class_Vector3_constant_BACK>`).


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_longest_axis()) # Imprime (0.0, 0.0, 1.0)
    print(box.get_longest_axis_index()) # Imprime 2
    print(box.get_longest_axis_size()) # Imprime 8.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetLongestAxis()); // Imprime (0, 0, 1)
    GD.Print(box.GetLongestAxisIndex()); // Imprime Z
    GD.Print(box.GetLongestAxisSize()); // Imprime 8



Ver también :ref:`get_longest_axis_index()<class_AABB_method_get_longest_axis_index>` y :ref:`get_longest_axis_size()<class_AABB_method_get_longest_axis_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_longest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_index>`

Devuelve el índice del eje más largo del :ref:`size<class_AABB_property_size>` de este cuadro delimitador (ver :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`, :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>` y :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`).

Para ver un ejemplo, véase :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_longest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_size>`

Devuelve la dimensión más larga del :ref:`size<class_AABB_property_size>` de este cuadro delimitador.

Para un ejemplo, véase :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_shortest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis>`

Devuelve el eje normalizado más corto del :ref:`size<class_AABB_property_size>` de este cuadro delimitador, como un :ref:`Vector3<class_Vector3>` (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`, :ref:`Vector3.UP<class_Vector3_constant_UP>` o :ref:`Vector3.BACK<class_Vector3_constant_BACK>`).


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_shortest_axis()) # Imprime (1.0, 0.0, 0.0)
    print(box.get_shortest_axis_index()) # Imprime 0
    print(box.get_shortest_axis_size()) # Imprime 2.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetShortestAxis()); // Imprime (1, 0, 0)
    GD.Print(box.GetShortestAxisIndex()); // Imprime X
    GD.Print(box.GetShortestAxisSize()); // Imprime 2



Ver también :ref:`get_shortest_axis_index()<class_AABB_method_get_shortest_axis_index>` y :ref:`get_shortest_axis_size()<class_AABB_method_get_shortest_axis_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_shortest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_index>`

Devuelve el índice del eje más corto del :ref:`size<class_AABB_property_size>` de este cuadro delimitador (ver :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`, :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>` y :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`).

Para ver un ejemplo, véase :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_shortest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_size>`

Devuelve la dimensión más corta del :ref:`size<class_AABB_property_size>` de este cuadro delimitador.

Para un ejemplo, véase :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_support:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_support**\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_get_support>`

Devuelve la posición del vértice de este cuadro delimitador que está más lejos en la dirección dada. Este punto se conoce comúnmente como el punto de soporte en los algoritmos de detección de colisiones.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_volume>`

Devuelve el volumen del cuadro delimitador. Esto es equivalente a ``size.x * size.y * size.z``. Ver también :ref:`has_volume()<class_AABB_method_has_volume>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_grow:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **grow**\ (\ by\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_AABB_method_grow>`

Returns a copy of this bounding box extended on all sides by the given amount ``by``. A negative amount shrinks the box instead.


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(4, 4, 4), Vector3(8, 8, 8)).grow(4)
    print(a.position) # Prints (0.0, 0.0, 0.0)
    print(a.size)     # Prints (16.0, 16.0, 16.0)

    var b = AABB(Vector3(0, 0, 0), Vector3(8, 4, 2)).grow(2)
    print(b.position) # Prints (-2.0, -2.0, -2.0)
    print(b.size)     # Prints (12.0, 8.0, 6.0)

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(4, 4, 4), new Vector3(8, 8, 8)).Grow(4);
    GD.Print(a.Position); // Prints (0, 0, 0)
    GD.Print(a.Size);     // Prints (16, 16, 16)

    var b = new Aabb(new Vector3(0, 0, 0), new Vector3(8, 4, 2)).Grow(2);
    GD.Print(b.Position); // Prints (-2, -2, -2)
    GD.Print(b.Size);     // Prints (12, 8, 6)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_has_point>`

Devuelve ``true`` si el cuadro delimitador contiene el ``point`` dado. Por convención, los puntos exactamente en los lados derecho, superior y frontal **no** se incluyen.

\ **Nota:** Este método no es fiable para **AABB** con un :ref:`size<class_AABB_property_size>` *negativo*. Utiliza :ref:`abs()<class_AABB_method_abs>` primero para obtener un cuadro delimitador válido.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_surface:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_surface**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_surface>`

Devuelve ``true`` si este cuadro delimitador tiene una superficie o una longitud, es decir, al menos un componente de :ref:`size<class_AABB_property_size>` es mayor que ``0``. De lo contrario, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_volume:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_volume>`

Devuelve ``true`` si el ancho, la altura y la profundidad de este cuadro delimitador son todos positivos. Véase también :ref:`get_volume()<class_AABB_method_get_volume>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **intersection**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersection>`

Devuelve la intersección entre este cuadro delimitador y ``with``. Si los cuadros no se intersecan, devuelve un **AABB** vacío. Si los cuadros se intersecan en el borde, devuelve un **AABB** plano sin volumen (véase :ref:`has_surface()<class_AABB_method_has_surface>` y :ref:`has_volume()<class_AABB_method_has_volume>`).


.. tabs::

 .. code-tab:: gdscript

    var box1 = AABB(Vector3(0, 0, 0), Vector3(5, 2, 8))
    var box2 = AABB(Vector3(2, 0, 2), Vector3(8, 4, 4))

    var intersection = box1.intersection(box2)
    print(intersection.position) # Imprime (2.0, 0.0, 2.0)
    print(intersection.size)     # Imprime (3.0, 2.0, 4.0)

 .. code-tab:: csharp

    var box1 = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 8));
    var box2 = new Aabb(new Vector3(2, 0, 2), new Vector3(8, 4, 4));

    var intersection = box1.Intersection(box2);
    GD.Print(intersection.Position); // Imprime (2, 0, 2)
    GD.Print(intersection.Size);     // Imprime (3, 2, 4)



\ **Nota:** Si solo necesita saber si dos cuadros delimitadores se están intersecando, use :ref:`intersects()<class_AABB_method_intersects>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersects>`

Devuelve ``true`` si este cuadro delimitador se superpone con el cuadro ``with``. Los bordes de ambas cajas están *siempre* excluidos.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_plane:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects_plane**\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_plane>`

Devuelve ``true`` si este cuadro delimitador está en ambos lados del ``plane`` dado.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_ray>`

Devuelve el primer punto donde este cuadro delimitador y el rayo dado se intersecan, como un :ref:`Vector3<class_Vector3>`. Si no se produce ninguna intersección, devuelve ``null``.

El rayo comienza en ``from``, apunta hacia ``dir`` y se extiende hacia el infinito.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_segment>`

Devuelve el primer punto donde este cuadro delimitador y el segmento dado se intersecan, como un :ref:`Vector3<class_Vector3>`. Si no se produce ninguna intersección, devuelve ``null``.

El segmento comienza en ``from`` y termina en ``to``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_is_equal_approx>`

Devuelve ``true`` si este cuadro delimitador y ``aabb`` son aproximadamente iguales, llamando a :ref:`Vector3.is_equal_approx()<class_Vector3_method_is_equal_approx>` en :ref:`position<class_AABB_property_position>` y :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_AABB_method_is_finite>`

Devuelve ``true`` si los valores de este cuadro delimitador son finitos, llamando a :ref:`Vector3.is_finite()<class_Vector3_method_is_finite>` en el :ref:`position<class_AABB_property_position>` y el :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_merge:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **merge**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_merge>`

Devuelve un **AABB** que engloba tanto este cuadro delimitador como ``with`` alrededor de los bordes. Véase también :ref:`encloses()<class_AABB_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_AABB_operator_neq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_neq_AABB>`

Devuelve ``true`` si la :ref:`position<class_AABB_property_position>` o el :ref:`size<class_AABB_property_size>` de ambos cuadros delimitadores no son iguales.

\ **Nota:** Debido a los errores de precisión de punto flotante, considera usar :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>` en su lugar, que es más fiable.

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_AABB_operator_mul_Transform3D>`

Transforma inversamente (multiplica) el **AABB** por la matriz de transformación :ref:`Transform3D<class_Transform3D>` dada, bajo la suposición de que la base de transformación es ortonormal (es decir, la rotación/reflexión está bien, la escala/el sesgo no lo están).

\ ``aabb * transform`` es equivalente a ``transform.inverse() * aabb``. Véase :ref:`Transform3D.inverse()<class_Transform3D_method_inverse>`.

Para transformar por la inversa de una transformación afín (por ejemplo, con escalado), se puede utilizar ``transform.affine_inverse() * aabb`` en su lugar. Véase :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_eq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_eq_AABB>`

Devuelve ``true`` si tanto la :ref:`position<class_AABB_property_position>` como el :ref:`size<class_AABB_property_size>` de los cuadros delimitadores son exactamente iguales, respectivamente.

\ **Nota:** Debido a los errores de precisión de punto flotante, considera usar :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>` en su lugar, que es más fiable.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
