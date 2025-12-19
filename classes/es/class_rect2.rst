:github_url: hide

.. _class_Rect2:

Rect2
=====

Un cuadro delimitador 2D alineado con los ejes que usa coordenadas de punto flotante.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El tipo :ref:`Variant<class_Variant>` incorporado **Rect2** representa un rectángulo alineado con los ejes en un espacio 2D. Se define por su :ref:`position<class_Rect2_property_position>` y su :ref:`size<class_Rect2_property_size>`, que son :ref:`Vector2<class_Vector2>`. Se utiliza con frecuencia para pruebas rápidas de superposición (véase :ref:`intersects()<class_Rect2_method_intersects>`). Aunque **Rect2** en sí está alineado con los ejes, puede combinarse con :ref:`Transform2D<class_Transform2D>` para representar un rectángulo rotado o sesgado.

Para coordenadas enteras, utiliza :ref:`Rect2i<class_Rect2i>`. El equivalente 3D a **Rect2** es :ref:`AABB<class_AABB>`.

\ **Nota:** No se admiten valores negativos para :ref:`size<class_Rect2_property_size>`. Con un tamaño negativo, la mayoría de los métodos **Rect2** no funcionan correctamente. Utiliza :ref:`abs()<class_Rect2_method_abs>` para obtener un **Rect2** equivalente con un tamaño no negativo.

\ **Nota:** En un contexto booleano, un **Rect2** se evalúa como ``false`` si tanto :ref:`position<class_Rect2_property_position>` como :ref:`size<class_Rect2_property_size>` son cero (igual a :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`). De lo contrario, siempre se evalúa como ``true``.

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

   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`end<class_Rect2_property_end>`           | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_Rect2_property_position>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_Rect2_property_size>`         | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Constructores
--------------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ )                                                                                                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`abs<class_Rect2_method_abs>`\ (\ ) |const|                                                                                                                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_Rect2_method_encloses>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`expand<class_Rect2_method_expand>`\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_area<class_Rect2_method_get_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_center<class_Rect2_method_get_center>`\ (\ ) |const|                                                                                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_support<class_Rect2_method_get_support>`\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow<class_Rect2_method_grow>`\ (\ amount\: :ref:`float<class_float>`\ ) |const|                                                                                                                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_individual<class_Rect2_method_grow_individual>`\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_side<class_Rect2_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const|                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_area<class_Rect2_method_has_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Rect2_method_has_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`intersection<class_Rect2_method_intersection>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_Rect2_method_intersects>`\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Rect2_method_is_equal_approx>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Rect2_method_is_finite>`\ (\ ) |const|                                                                                                                                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`merge<class_Rect2_method_merge>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Operadores
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Rect2_operator_neq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`operator *<class_Rect2_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Rect2_operator_eq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_Rect2_property_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **end** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_end>`

El punto final. Este es usualmente la esquina inferior derecha del rectángulo, y es equivalente a ``position + size``. Establecer este punto afecta el :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_position>`

El punto de origen. Este es usualmente la esquina superior izquierda del rectángulo.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_size>`

La anchura y la altura del rectángulo, empezando desde :ref:`position<class_Rect2_property_position>`. Establecer este valor también afecta al punto :ref:`end<class_Rect2_property_end>`.

\ **Nota:** Se recomienda establecer la anchura y la altura a valores no negativos, ya que la mayoría de los métodos en Godot asumen que la :ref:`position<class_Rect2_property_position>` es la esquina superior izquierda, y el :ref:`end<class_Rect2_property_end>` es la esquina inferior derecha. Para obtener un rectángulo equivalente con un tamaño no negativo, utiliza :ref:`abs()<class_Rect2_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Constructores
------------------------------------------------------------

.. _class_Rect2_constructor_Rect2:

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ ) :ref:`🔗<class_Rect2_constructor_Rect2>`

Construye un **Rect2** con su :ref:`position<class_Rect2_property_position>` y :ref:`size<class_Rect2_property_size>` establecidos a :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

Construye un **Rect2** como una copia del **Rect2** dado.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

Construye un **Rect2** desde un :ref:`Rect2i<class_Rect2i>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )

Construye un **Rect2** por ``position`` y ``size``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ )

Construye un **Rect2** estableciendo su :ref:`position<class_Rect2_property_position>` a (``x``, ``y``) y su :ref:`size<class_Rect2_property_size>` a (``width``, ``height``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Rect2_method_abs:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2_method_abs>`

Devuelve un **Rect2** equivalente a este rectángulo, con su anchura y altura modificadas para que sean valores no negativos, y con su :ref:`position<class_Rect2_property_position>` siendo la esquina superior izquierda del rectángulo.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(25, 25, -100, -50)
    var absolute = rect.abs() # absolute es Rect2(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2(25, 25, -100, -50);
    var absolute = rect.Abs(); // absolute es Rect2(-75, -25, 100, 50)



\ **Nota:** Se recomienda utilizar este método cuando :ref:`size<class_Rect2_property_size>` es negativo, ya que la mayoría de los otros métodos en Godot asumen que la :ref:`position<class_Rect2_property_position>` es la esquina superior izquierda, y el :ref:`end<class_Rect2_property_end>` es la esquina inferior derecha.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_encloses>`

Devuelve ``true`` si este rectángulo encierra *completamente* el rectángulo ``b``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_expand:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **expand**\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_expand>`

Devuelve una copia de este rectángulo expandida para alinear los bordes con el punto ``to`` dado, si es necesario.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(0, 0, 5, 2)

    rect = rect.expand(Vector2(10, 0)) # rect is Rect2(0, 0, 10, 2)
    rect = rect.expand(Vector2(-5, 5)) # rect is Rect2(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2(0, 0, 5, 2);

    rect = rect.Expand(new Vector2(10, 0)); // rect is Rect2(0, 0, 10, 2)
    rect = rect.Expand(new Vector2(-5, 5)); // rect is Rect2(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_area:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_area>`

Devuelve el área del rectángulo. Esto es equivalente a ``size.x * size.y``. Véase también :ref:`has_area()<class_Rect2_method_has_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_center>`

Devuelve el punto central del rectángulo. Esto es lo mismo que ``position + (size / 2.0)``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_support:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_support**\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_get_support>`

Devuelve la posición del vértice de este rect que está más lejos en la dirección dada. Este punto se conoce comúnmente como el punto de soporte en los algoritmos de detección de colisiones.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow>`

Devuelve una copia de este rectángulo extendido en todos los lados por la ``amount`` dada. Una ``amount`` negativa encoge el rectángulo en su lugar. Véase también :ref:`grow_individual()<class_Rect2_method_grow_individual>` y :ref:`grow_side()<class_Rect2_method_grow_side>`.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2(4, 4, 8, 8).grow(4) # a es Rect2(0, 0, 16, 16)
    var b = Rect2(0, 0, 8, 4).grow(2) # b es Rect2(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2(4, 4, 8, 8).Grow(4); // a es Rect2(0, 0, 16, 16)
    var b = new Rect2(0, 0, 8, 4).Grow(2); // b es Rect2(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_individual**\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_individual>`

Devuelve una copia de este rectángulo con sus lados ``left``, ``top``, ``right`` y ``bottom`` extendidos por las cantidades dadas. Los valores negativos encogen los lados, en su lugar. Véase también :ref:`grow()<class_Rect2_method_grow>` y :ref:`grow_side()<class_Rect2_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_side>`

Devuelve una copia de este rectángulo con su ``side`` extendido por la ``amount`` dada (véase las constantes :ref:`Side<enum_@GlobalScope_Side>`). Una ``amount`` negativa encoge el rectángulo, en su lugar. Véase también :ref:`grow()<class_Rect2_method_grow>` y :ref:`grow_individual()<class_Rect2_method_grow_individual>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_has_area>`

Devuelve ``true`` si este rectángulo tiene un ancho y un alto positivos. Véase también :ref:`get_area()<class_Rect2_method_get_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_has_point>`

"Devuelve ``true`` si el rectángulo contiene el ``point`` dado. Por convención, los puntos en los bordes derecho e inferior **no** están incluidos.

\ **Nota:** Este método no es fiable para **Rect2** con un *tamaño* :ref:`size<class_Rect2_property_size>` negativo. Utiliza :ref:`abs()<class_Rect2_method_abs>` primero para obtener un rectángulo válido.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **intersection**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_intersection>`

Devuelve la intersección entre este rectángulo y ``b``. Si los rectángulos no se intersecan, devuelve un **Rect2** vacío.


.. tabs::

 .. code-tab:: gdscript

    var rect1 = Rect2(0, 0, 5, 10)
    var rect2 = Rect2(2, 0, 8, 4)

    var a = rect1.intersection(rect2) # a es Rect2(2, 0, 3, 4)

 .. code-tab:: csharp

    var rect1 = new Rect2(0, 0, 5, 10);
    var rect2 = new Rect2(2, 0, 8, 4);

    var a = rect1.Intersection(rect2); // a es Rect2(2, 0, 3, 4)



\ **Nota:** Si solo necesitas saber si dos rectángulos se superponen, usa :ref:`intersects()<class_Rect2_method_intersects>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Rect2_method_intersects>`

Devuelve ``true`` si este rectángulo se superpone con el rectángulo ``b``. Los bordes de ambos rectángulos se excluyen, a menos que ``include_borders`` sea ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_is_equal_approx>`

Devuelve ``true`` si este rectángulo y ``rect`` son aproximadamente iguales, llamando a :ref:`Vector2.is_equal_approx()<class_Vector2_method_is_equal_approx>` en la :ref:`position<class_Rect2_property_position>` y el :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Rect2_method_is_finite>`

Devuelve ``true`` si los valores de este rectángulo son finitos, llamando a :ref:`Vector2.is_finite()<class_Vector2_method_is_finite>` en la :ref:`position<class_Rect2_property_position>` y el :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_merge:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **merge**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_merge>`

Devuelve un **Rect2** que encierra tanto este rectángulo como ``b`` alrededor de los bordes. Véase también :ref:`encloses()<class_Rect2_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Operadores
------------------------------------------------------

.. _class_Rect2_operator_neq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_neq_Rect2>`

Devuelve ``true`` si la :ref:`position<class_Rect2_property_position>` o el :ref:`size<class_Rect2_property_size>` de ambos rectángulos no son iguales.

\ **Nota:** Debido a errores de precisión de punto flotante, considera usar :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>` en su lugar, que es más fiable.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Rect2_operator_mul_Transform2D>`

Transforma inversamente (multiplica) el **Rect2** por la matriz de transformación :ref:`Transform2D<class_Transform2D>` dada, bajo la suposición de que la base de transformación es ortonormal (es decir, la rotación/reflexión está bien, la escala/sesgo no lo está).

\ ``rect * transform`` es equivalente a ``transform.inverse() * rect``. Véase :ref:`Transform2D.inverse()<class_Transform2D_method_inverse>`.

Para transformar por la inversa de una transformación afín (por ejemplo, con escala) se puede utilizar ``transform.affine_inverse() * rect`` en su lugar. Véase :ref:`Transform2D.affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_eq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_eq_Rect2>`

Devuelve ``true`` si tanto :ref:`position<class_Rect2_property_position>` como :ref:`size<class_Rect2_property_size>` de los rectángulos son exactamente iguales, respectivamente.

\ **Nota:** Debido a errores de precisión de punto flotante, considera usar :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>` en su lugar, que es más fiable.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
