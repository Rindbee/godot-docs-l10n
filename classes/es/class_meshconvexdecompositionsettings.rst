:github_url: hide

.. _class_MeshConvexDecompositionSettings:

MeshConvexDecompositionSettings
===============================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Parámetros que se utilizarán con una operación de descomposición convexa de :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Parámetros que se utilizarán con una operación de descomposición convexa de :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`bool<class_bool>`                                | :ref:`convex_hull_approximation<class_MeshConvexDecompositionSettings_property_convex_hull_approximation>`               | ``true``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`convex_hull_downsampling<class_MeshConvexDecompositionSettings_property_convex_hull_downsampling>`                 | ``4``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`max_concavity<class_MeshConvexDecompositionSettings_property_max_concavity>`                                       | ``1.0``    |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`max_convex_hulls<class_MeshConvexDecompositionSettings_property_max_convex_hulls>`                                 | ``1``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`max_num_vertices_per_convex_hull<class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull>` | ``32``     |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`min_volume_per_convex_hull<class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull>`             | ``0.0001`` |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` | :ref:`mode<class_MeshConvexDecompositionSettings_property_mode>`                                                         | ``0``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`bool<class_bool>`                                | :ref:`normalize_mesh<class_MeshConvexDecompositionSettings_property_normalize_mesh>`                                     | ``false``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`plane_downsampling<class_MeshConvexDecompositionSettings_property_plane_downsampling>`                             | ``4``      |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`bool<class_bool>`                                | :ref:`project_hull_vertices<class_MeshConvexDecompositionSettings_property_project_hull_vertices>`                       | ``true``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`int<class_int>`                                  | :ref:`resolution<class_MeshConvexDecompositionSettings_property_resolution>`                                             | ``10000``  |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`revolution_axes_clipping_bias<class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias>`       | ``0.05``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+
   | :ref:`float<class_float>`                              | :ref:`symmetry_planes_clipping_bias<class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias>`       | ``0.05``   |
   +--------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_MeshConvexDecompositionSettings_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_MeshConvexDecompositionSettings_Mode>`

.. _class_MeshConvexDecompositionSettings_constant_CONVEX_DECOMPOSITION_MODE_VOXEL:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **CONVEX_DECOMPOSITION_MODE_VOXEL** = ``0``

Constante para la descomposición convexa aproximada basada en vóxeles.

.. _class_MeshConvexDecompositionSettings_constant_CONVEX_DECOMPOSITION_MODE_TETRAHEDRON:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **CONVEX_DECOMPOSITION_MODE_TETRAHEDRON** = ``1``

Constante para la descomposición convexa aproximada basada en tetraedros.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_MeshConvexDecompositionSettings_property_convex_hull_approximation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **convex_hull_approximation** = ``true`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_convex_hull_approximation>`

.. rst-class:: classref-property-setget

- |void| **set_convex_hull_approximation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_convex_hull_approximation**\ (\ )

Si es ``true``, utiliza aproximación para calcular las envolventes convexas.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_convex_hull_downsampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **convex_hull_downsampling** = ``4`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_convex_hull_downsampling>`

.. rst-class:: classref-property-setget

- |void| **set_convex_hull_downsampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_convex_hull_downsampling**\ (\ )

Controla la precisión del proceso de generación de envolventes convexas durante la etapa de selección del plano de recorte. El rango es de ``1`` a ``16``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_concavity:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_concavity** = ``1.0`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_concavity>`

.. rst-class:: classref-property-setget

- |void| **set_max_concavity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_concavity**\ (\ )

Máxima concavidad. El rango es de ``0.0`` a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_convex_hulls:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_convex_hulls** = ``1`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_convex_hulls>`

.. rst-class:: classref-property-setget

- |void| **set_max_convex_hulls**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_convex_hulls**\ (\ )

El número máximo de envolventes convexas a producir a partir de la operación de fusión.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_num_vertices_per_convex_hull** = ``32`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_max_num_vertices_per_convex_hull>`

.. rst-class:: classref-property-setget

- |void| **set_max_num_vertices_per_convex_hull**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_num_vertices_per_convex_hull**\ (\ )

Controls the maximum number of triangles per convex-hull. Ranges from ``4`` to ``1024``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_volume_per_convex_hull** = ``0.0001`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_min_volume_per_convex_hull>`

.. rst-class:: classref-property-setget

- |void| **set_min_volume_per_convex_hull**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_volume_per_convex_hull**\ (\ )

Controls the adaptive sampling of the generated convex-hulls. Ranges from ``0.0`` to ``0.01``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **mode** = ``0`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>`\ )
- :ref:`Mode<enum_MeshConvexDecompositionSettings_Mode>` **get_mode**\ (\ )

Modo para la descomposición convexa aproximada.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_normalize_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **normalize_mesh** = ``false`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_normalize_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_normalize_mesh**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_normalize_mesh**\ (\ )

Si es ``true``, normaliza la malla antes de aplicar la descomposición convexa.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_plane_downsampling:

.. rst-class:: classref-property

:ref:`int<class_int>` **plane_downsampling** = ``4`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_plane_downsampling>`

.. rst-class:: classref-property-setget

- |void| **set_plane_downsampling**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_plane_downsampling**\ (\ )

Controla la granularidad de la búsqueda del "mejor" plano de recorte. El rango es de ``1`` a ``16``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_project_hull_vertices:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **project_hull_vertices** = ``true`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_project_hull_vertices>`

.. rst-class:: classref-property-setget

- |void| **set_project_hull_vertices**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_project_hull_vertices**\ (\ )

If ``true``, projects output convex hull vertices onto the original source mesh to increase floating-point accuracy of the results.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_resolution:

.. rst-class:: classref-property

:ref:`int<class_int>` **resolution** = ``10000`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_resolution**\ (\ )

Número máximo de vóxeles generados durante la etapa de voxelización.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **revolution_axes_clipping_bias** = ``0.05`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_revolution_axes_clipping_bias>`

.. rst-class:: classref-property-setget

- |void| **set_revolution_axes_clipping_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_revolution_axes_clipping_bias**\ (\ )

Controla el sesgo hacia el recorte a lo largo de los ejes de revolución. El rango es de ``0.0`` a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **symmetry_planes_clipping_bias** = ``0.05`` :ref:`🔗<class_MeshConvexDecompositionSettings_property_symmetry_planes_clipping_bias>`

.. rst-class:: classref-property-setget

- |void| **set_symmetry_planes_clipping_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_symmetry_planes_clipping_bias**\ (\ )

Controla el sesgo hacia el recorte a lo largo de los planos de simetría. El rango es de ``0.0`` a ``1.0``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
