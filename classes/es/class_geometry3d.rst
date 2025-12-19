:github_url: hide

.. _class_Geometry3D:

Geometry3D
==========

**Hereda:** :ref:`Object<class_Object>`

Proporciona métodos para algunas operaciones geométricas 3D comunes.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Proporciona un conjunto de funciones de ayuda para crear formas geométricas, calcular intersecciones entre formas y procesar varias otras operaciones geométricas en 3D.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`build_box_planes<class_Geometry3D_method_build_box_planes>`\ (\ extents\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                                 |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`build_capsule_planes<class_Geometry3D_method_build_capsule_planes>`\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, lats\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ )                  |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`build_cylinder_planes<class_Geometry3D_method_build_cylinder_planes>`\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ )                                              |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`clip_polygon<class_Geometry3D_method_clip_polygon>`\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`, plane\: :ref:`Plane<class_Plane>`\ )                                                                                                                 |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`compute_convex_mesh_points<class_Geometry3D_method_compute_convex_mesh_points>`\ (\ planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ )                                                                                                                     |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`get_closest_point_to_segment<class_Geometry3D_method_get_closest_point_to_segment>`\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ )                                                                   |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`get_closest_point_to_segment_uncapped<class_Geometry3D_method_get_closest_point_to_segment_uncapped>`\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ )                                                 |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`get_closest_points_between_segments<class_Geometry3D_method_get_closest_points_between_segments>`\ (\ p1\: :ref:`Vector3<class_Vector3>`, p2\: :ref:`Vector3<class_Vector3>`, q1\: :ref:`Vector3<class_Vector3>`, q2\: :ref:`Vector3<class_Vector3>`\ )                    |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`get_triangle_barycentric_coords<class_Geometry3D_method_get_triangle_barycentric_coords>`\ (\ point\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ )                            |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                          | :ref:`ray_intersects_triangle<class_Geometry3D_method_ray_intersects_triangle>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ )        |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`segment_intersects_convex<class_Geometry3D_method_segment_intersects_convex>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ )                                             |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`segment_intersects_cylinder<class_Geometry3D_method_segment_intersects_cylinder>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, height\: :ref:`float<class_float>`, radius\: :ref:`float<class_float>`\ )                                  |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`segment_intersects_sphere<class_Geometry3D_method_segment_intersects_sphere>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, sphere_position\: :ref:`Vector3<class_Vector3>`, sphere_radius\: :ref:`float<class_float>`\ )                  |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                          | :ref:`segment_intersects_triangle<class_Geometry3D_method_segment_intersects_triangle>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`        | :ref:`tetrahedralize_delaunay<class_Geometry3D_method_tetrahedralize_delaunay>`\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                                                                                                                              |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_Geometry3D_method_build_box_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_box_planes**\ (\ extents\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_build_box_planes>`

Devuelve un array con 6 :ref:`Plane<class_Plane>`\ s que describen los lados de una caja centrada en el origen. El tamaño de la caja está definido por ``extents``, que representa una esquina (positiva) de la caja (es decir, la mitad de su tamaño real).

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_build_capsule_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_capsule_planes**\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, lats\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ ) :ref:`🔗<class_Geometry3D_method_build_capsule_planes>`

Devuelve un array de :ref:`Plane<class_Plane>`\ s que delimitan estrechamente una cápsula facetada centrada en el origen con radio ``radius`` y altura ``height``. El parámetro ``sides`` define cuántos planos se generarán para la parte lateral de la cápsula, mientras que ``lats`` da el número de pasos latitudinales en la parte inferior y superior de la cápsula. El parámetro ``axis`` describe el eje a lo largo del cual se orienta la cápsula (0 para X, 1 para Y, 2 para Z).

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_build_cylinder_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_cylinder_planes**\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ ) :ref:`🔗<class_Geometry3D_method_build_cylinder_planes>`

Returns an array of :ref:`Plane<class_Plane>`\ s closely bounding a faceted cylinder centered at the origin with radius ``radius`` and height ``height``. The parameter ``sides`` defines how many planes will be generated for the round part of the cylinder. The parameter ``axis`` describes the axis along which the cylinder is oriented (0 for X, 1 for Y, 2 for Z).

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_clip_polygon:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **clip_polygon**\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`, plane\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Geometry3D_method_clip_polygon>`

Recorta el polígono definido por los puntos en ``points`` contra el ``plane`` y devuelve los puntos del polígono recortado.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_compute_convex_mesh_points:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **compute_convex_mesh_points**\ (\ planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) :ref:`🔗<class_Geometry3D_method_compute_convex_mesh_points>`

Calcula y devuelve todos los puntos de los vértices de una forma convexa definida por un array de ``planes``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_point_to_segment:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point_to_segment**\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_point_to_segment>`

Devuelve el punto 3D en el segmento 3D (``s1``, ``s2``) que está más cerca de ``point``. El punto devuelto siempre estará dentro del segmento especificado.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_point_to_segment_uncapped:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point_to_segment_uncapped**\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_point_to_segment_uncapped>`

Devuelve el punto 3D en la línea 3D definida por (``s1``, ``s2``) que está más cerca de ``point``. El punto devuelto puede estar dentro del segmento (``s1``, ``s2``) o fuera de él, es decir, en algún lugar de la línea que se extiende desde el segmento.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_points_between_segments:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_closest_points_between_segments**\ (\ p1\: :ref:`Vector3<class_Vector3>`, p2\: :ref:`Vector3<class_Vector3>`, q1\: :ref:`Vector3<class_Vector3>`, q2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_points_between_segments>`

Dados los dos segmentos 3D (``p1``, ``p2``) y (``q1``, ``q2``), encuentra esos dos puntos en los dos segmentos que están más cerca uno del otro. Devuelve un :ref:`PackedVector3Array<class_PackedVector3Array>` que contiene este punto en (``p1``, ``p2``) así como el punto acompañante en (``q1``, ``q2``).

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_triangle_barycentric_coords:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_triangle_barycentric_coords**\ (\ point\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_triangle_barycentric_coords>`

Devuelve un :ref:`Vector3<class_Vector3>` que contiene pesos basados en la cercanía de una posición 3D (``point``) a los diferentes vértices de un triángulo (``a``, ``b`` y ``c``). Esto es útil para interpolar entre los datos de los diferentes vértices de un triángulo. Un caso de uso de ejemplo es utilizar esto para rotar suavemente sobre una malla en lugar de depender únicamente de las normales de la cara.

\ `Aquí hay una explicación más detallada de las coordenadas baricéntricas. <https://en.wikipedia.org/wiki/Barycentric_coordinate_system>`__

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_ray_intersects_triangle:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **ray_intersects_triangle**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_ray_intersects_triangle>`

Comprueba si el rayo 3D que comienza en ``from`` con la dirección de ``dir`` interseca el triángulo especificado por ``a``, ``b`` y ``c``. Si es así, devuelve el punto de intersección como :ref:`Vector3<class_Vector3>`. Si no hay intersección, devuelve ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_convex:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_convex**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_convex>`

Given a convex hull defined though the :ref:`Plane<class_Plane>`\ s in the array ``planes``, tests if the segment (``from``, ``to``) intersects with that hull. If an intersection is found, returns a :ref:`PackedVector3Array<class_PackedVector3Array>` containing the point the intersection and the hull's normal. Otherwise, returns an empty array.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_cylinder:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_cylinder**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, height\: :ref:`float<class_float>`, radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_cylinder>`

Checks if the segment (``from``, ``to``) intersects the cylinder with height ``height`` that is centered at the origin and has radius ``radius``. If no, returns an empty :ref:`PackedVector3Array<class_PackedVector3Array>`. If an intersection takes place, the returned array contains the point of intersection and the cylinder's normal at the point of intersection.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_sphere:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_sphere**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, sphere_position\: :ref:`Vector3<class_Vector3>`, sphere_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_sphere>`

Checks if the segment (``from``, ``to``) intersects the sphere that is located at ``sphere_position`` and has radius ``sphere_radius``. If no, returns an empty :ref:`PackedVector3Array<class_PackedVector3Array>`. If yes, returns a :ref:`PackedVector3Array<class_PackedVector3Array>` containing the point of intersection and the sphere's normal at the point of intersection.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_triangle:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **segment_intersects_triangle**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_triangle>`

Tests if the segment (``from``, ``to``) intersects the triangle ``a``, ``b``, ``c``. If yes, returns the point of intersection as :ref:`Vector3<class_Vector3>`. If no intersection takes place, returns ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_tetrahedralize_delaunay:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **tetrahedralize_delaunay**\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Geometry3D_method_tetrahedralize_delaunay>`

Tetrahedralizes the volume specified by a discrete set of ``points`` in 3D space, ensuring that no point lies within the circumsphere of any resulting tetrahedron. The method returns a :ref:`PackedInt32Array<class_PackedInt32Array>` where each tetrahedron consists of four consecutive point indices into the ``points`` array (resulting in an array with ``n * 4`` elements, where ``n`` is the number of tetrahedra found). If the tetrahedralization is unsuccessful, an empty :ref:`PackedInt32Array<class_PackedInt32Array>` is returned.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
