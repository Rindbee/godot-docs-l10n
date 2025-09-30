:github_url: hide

.. _class_Mesh:

Mesh
====

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`ArrayMesh<class_ArrayMesh>`, :ref:`ImmediateMesh<class_ImmediateMesh>`, :ref:`PlaceholderMesh<class_PlaceholderMesh>`, :ref:`PrimitiveMesh<class_PrimitiveMesh>`

Une :ref:`Resource<class_Resource>` qui contient une géométrie à base d'un tableau de sommets.

.. rst-class:: classref-introduction-group

Description
-----------

Mesh is a type of :ref:`Resource<class_Resource>` that contains vertex array-based geometry, divided in *surfaces*. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials. The maximum number of surfaces per mesh is :ref:`RenderingServer.MAX_MESH_SURFACES<class_RenderingServer_constant_MAX_MESH_SURFACES>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de test des matériaux 3D <https://godotengine.org/asset-library/asset/2742>`__

- `Démo de personnage cinématique en 3D <https://godotengine.org/asset-library/asset/2739>`__

- `Démo de jeu de plateforme en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`lightmap_size_hint<class_Mesh_property_lightmap_size_hint>` | ``Vector2i(0, 0)`` |
   +---------------------------------+-------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                                   | :ref:`_get_aabb<class_Mesh_private_method__get_aabb>`\ (\ ) |virtual| |required| |const|                                                                                            |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_get_blend_shape_count<class_Mesh_private_method__get_blend_shape_count>`\ (\ ) |virtual| |required| |const|                                                                  |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                       | :ref:`_get_blend_shape_name<class_Mesh_private_method__get_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_get_surface_count<class_Mesh_private_method__get_surface_count>`\ (\ ) |virtual| |required| |const|                                                                          |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_set_blend_shape_name<class_Mesh_private_method__set_blend_shape_name>`\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_array_index_len<class_Mesh_private_method__surface_get_array_index_len>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_array_len<class_Mesh_private_method__surface_get_array_len>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`_surface_get_arrays<class_Mesh_private_method__surface_get_arrays>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\]    | :ref:`_surface_get_blend_shape_arrays<class_Mesh_private_method__surface_get_blend_shape_arrays>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_format<class_Mesh_private_method__surface_get_format>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                       | :ref:`_surface_get_lods<class_Mesh_private_method__surface_get_lods>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                             |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                           | :ref:`_surface_get_material<class_Mesh_private_method__surface_get_material>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`_surface_get_primitive_type<class_Mesh_private_method__surface_get_primitive_type>`\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const|                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_surface_set_material<class_Mesh_private_method__surface_set_material>`\ (\ index\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) |virtual| |required| |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>`   | :ref:`create_convex_shape<class_Mesh_method_create_convex_shape>`\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`create_outline<class_Mesh_method_create_outline>`\ (\ margin\: :ref:`float<class_float>`\ ) |const|                                                                           |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                           | :ref:`create_placeholder<class_Mesh_method_create_placeholder>`\ (\ ) |const|                                                                                                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` | :ref:`create_trimesh_shape<class_Mesh_method_create_trimesh_shape>`\ (\ ) |const|                                                                                                   |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>`                   | :ref:`generate_triangle_mesh<class_Mesh_method_generate_triangle_mesh>`\ (\ ) |const|                                                                                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                                   | :ref:`get_aabb<class_Mesh_method_get_aabb>`\ (\ ) |const|                                                                                                                           |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`       | :ref:`get_faces<class_Mesh_method_get_faces>`\ (\ ) |const|                                                                                                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`get_surface_count<class_Mesh_method_get_surface_count>`\ (\ ) |const|                                                                                                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`surface_get_arrays<class_Mesh_method_surface_get_arrays>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\]    | :ref:`surface_get_blend_shape_arrays<class_Mesh_method_surface_get_blend_shape_arrays>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                             |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                           | :ref:`surface_get_material<class_Mesh_method_surface_get_material>`\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`surface_set_material<class_Mesh_method_surface_set_material>`\ (\ surf_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ )                             |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Mesh_PrimitiveType:

.. rst-class:: classref-enumeration

enum **PrimitiveType**: :ref:`🔗<enum_Mesh_PrimitiveType>`

.. _class_Mesh_constant_PRIMITIVE_POINTS:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_POINTS** = ``0``

Rend le tableau avec des points (un sommet affiche un point).

.. _class_Mesh_constant_PRIMITIVE_LINES:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_LINES** = ``1``

Rend le tableau en ligne (une ligne est créée tous les deux sommets).

.. _class_Mesh_constant_PRIMITIVE_LINE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_LINE_STRIP** = ``2``

Fait le rendu du tableau comme une suite de lignes.

.. _class_Mesh_constant_PRIMITIVE_TRIANGLES:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_TRIANGLES** = ``3``

Rend le tableau en triangle (un triangle est créée tous les trois sommets).

.. _class_Mesh_constant_PRIMITIVE_TRIANGLE_STRIP:

.. rst-class:: classref-enumeration-constant

:ref:`PrimitiveType<enum_Mesh_PrimitiveType>` **PRIMITIVE_TRIANGLE_STRIP** = ``4``

Fait le rendu du tableau comme une suite de triangles.

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayType:

.. rst-class:: classref-enumeration

enum **ArrayType**: :ref:`🔗<enum_Mesh_ArrayType>`

.. _class_Mesh_constant_ARRAY_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_VERTEX** = ``0``

Un :ref:`PackedVector3Array<class_PackedVector3Array>`, :ref:`PackedVector2Array<class_PackedVector2Array>` ou :ref:`Array<class_Array>` avec la position des sommets.

.. _class_Mesh_constant_ARRAY_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_NORMAL** = ``1``

:ref:`PackedVector3Array<class_PackedVector3Array>` of vertex normals.

\ **Note:** The array has to consist of normal vectors, otherwise they will be normalized by the engine, potentially causing visual discrepancies.

.. _class_Mesh_constant_ARRAY_TANGENT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TANGENT** = ``2``

:ref:`PackedFloat32Array<class_PackedFloat32Array>` of vertex tangents. Each element in groups of 4 floats, first 3 floats determine the tangent, and the last the binormal direction as -1 or 1.

.. _class_Mesh_constant_ARRAY_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_COLOR** = ``3``

Le :ref:`PackedColorArray<class_PackedColorArray>` des couleurs des sommets.

.. _class_Mesh_constant_ARRAY_TEX_UV:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TEX_UV** = ``4``

Le :ref:`PackedVector2Array<class_PackedVector2Array>` pour les coordonnées UV.

.. _class_Mesh_constant_ARRAY_TEX_UV2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_TEX_UV2** = ``5``

:ref:`PackedVector2Array<class_PackedVector2Array>` pour les secondes coordonnées UV.

.. _class_Mesh_constant_ARRAY_CUSTOM0:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM0** = ``6``

Contains custom color channel 0. :ref:`PackedByteArray<class_PackedByteArray>` if ``(format >> Mesh.ARRAY_FORMAT_CUSTOM0_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` is :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>`, or :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>` otherwise.

.. _class_Mesh_constant_ARRAY_CUSTOM1:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM1** = ``7``

Contains custom color channel 1. :ref:`PackedByteArray<class_PackedByteArray>` if ``(format >> Mesh.ARRAY_FORMAT_CUSTOM1_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` is :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>`, or :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>` otherwise.

.. _class_Mesh_constant_ARRAY_CUSTOM2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM2** = ``8``

Contains custom color channel 2. :ref:`PackedByteArray<class_PackedByteArray>` if ``(format >> Mesh.ARRAY_FORMAT_CUSTOM2_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` is :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>`, or :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>` otherwise.

.. _class_Mesh_constant_ARRAY_CUSTOM3:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_CUSTOM3** = ``9``

Contains custom color channel 3. :ref:`PackedByteArray<class_PackedByteArray>` if ``(format >> Mesh.ARRAY_FORMAT_CUSTOM3_SHIFT) & Mesh.ARRAY_FORMAT_CUSTOM_MASK`` is :ref:`ARRAY_CUSTOM_RGBA8_UNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM>`, :ref:`ARRAY_CUSTOM_RGBA8_SNORM<class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM>`, :ref:`ARRAY_CUSTOM_RG_HALF<class_Mesh_constant_ARRAY_CUSTOM_RG_HALF>`, or :ref:`ARRAY_CUSTOM_RGBA_HALF<class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF>`. :ref:`PackedFloat32Array<class_PackedFloat32Array>` otherwise.

.. _class_Mesh_constant_ARRAY_BONES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_BONES** = ``10``

:ref:`PackedFloat32Array<class_PackedFloat32Array>` or :ref:`PackedInt32Array<class_PackedInt32Array>` of bone indices. Contains either 4 or 8 numbers per vertex depending on the presence of the :ref:`ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` flag.

.. _class_Mesh_constant_ARRAY_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_WEIGHTS** = ``11``

:ref:`PackedFloat32Array<class_PackedFloat32Array>` or :ref:`PackedFloat64Array<class_PackedFloat64Array>` of bone weights in the range ``0.0`` to ``1.0`` (inclusive). Contains either 4 or 8 numbers per vertex depending on the presence of the :ref:`ARRAY_FLAG_USE_8_BONE_WEIGHTS<class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS>` flag.

.. _class_Mesh_constant_ARRAY_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_INDEX** = ``12``

:ref:`PackedInt32Array<class_PackedInt32Array>` of integers used as indices referencing vertices, colors, normals, tangents, and textures. All of those arrays must have the same number of elements as the vertex array. No index can be beyond the vertex array size. When this index array is present, it puts the function into "index mode," where the index selects the *i*'th vertex, normal, tangent, color, UV, etc. This means if you want to have different normals or colors along an edge, you have to duplicate the vertices.

For triangles, the index array is interpreted as triples, referring to the vertices of each triangle. For lines, the index array is in pairs indicating the start and end of each line.

.. _class_Mesh_constant_ARRAY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayType<enum_Mesh_ArrayType>` **ARRAY_MAX** = ``13``

Représente la taille de l’enum :ref:`ArrayType<enum_Mesh_ArrayType>`.

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayCustomFormat:

.. rst-class:: classref-enumeration

enum **ArrayCustomFormat**: :ref:`🔗<enum_Mesh_ArrayCustomFormat>`

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA8_UNORM:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA8_UNORM** = ``0``

Indicates this custom channel contains unsigned normalized byte colors from 0 to 1, encoded as :ref:`PackedByteArray<class_PackedByteArray>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA8_SNORM:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA8_SNORM** = ``1``

Indicates this custom channel contains signed normalized byte colors from -1 to 1, encoded as :ref:`PackedByteArray<class_PackedByteArray>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_RG_HALF:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RG_HALF** = ``2``

Indicates this custom channel contains half precision float colors, encoded as :ref:`PackedByteArray<class_PackedByteArray>`. Only red and green channels are used.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA_HALF:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA_HALF** = ``3``

Indicates this custom channel contains half precision float colors, encoded as :ref:`PackedByteArray<class_PackedByteArray>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_R_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_R_FLOAT** = ``4``

Indicates this custom channel contains full float colors, in a :ref:`PackedFloat32Array<class_PackedFloat32Array>`. Only the red channel is used.

.. _class_Mesh_constant_ARRAY_CUSTOM_RG_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RG_FLOAT** = ``5``

Indicates this custom channel contains full float colors, in a :ref:`PackedFloat32Array<class_PackedFloat32Array>`. Only red and green channels are used.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGB_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGB_FLOAT** = ``6``

Indicates this custom channel contains full float colors, in a :ref:`PackedFloat32Array<class_PackedFloat32Array>`. Only red, green and blue channels are used.

.. _class_Mesh_constant_ARRAY_CUSTOM_RGBA_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_RGBA_FLOAT** = ``7``

Indicates this custom channel contains full float colors, in a :ref:`PackedFloat32Array<class_PackedFloat32Array>`.

.. _class_Mesh_constant_ARRAY_CUSTOM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` **ARRAY_CUSTOM_MAX** = ``8``

Représente la taille de l'énumération :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`.

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_ArrayFormat:

.. rst-class:: classref-enumeration

flags **ArrayFormat**: :ref:`🔗<enum_Mesh_ArrayFormat>`

.. _class_Mesh_constant_ARRAY_FORMAT_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_VERTEX** = ``1``

Un maillage de points contient des sommets. Tous les maillages nécessitent un tableau des sommets donc ce tableau doit être présent.

.. _class_Mesh_constant_ARRAY_FORMAT_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_NORMAL** = ``2``

Un maillage de points contient des normales.

.. _class_Mesh_constant_ARRAY_FORMAT_TANGENT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TANGENT** = ``4``

Un maillage de points contient des tangentes.

.. _class_Mesh_constant_ARRAY_FORMAT_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_COLOR** = ``8``

Un maillage de points contient des couleurs.

.. _class_Mesh_constant_ARRAY_FORMAT_TEX_UV:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TEX_UV** = ``16``

Un maillage de points contient des UV.

.. _class_Mesh_constant_ARRAY_FORMAT_TEX_UV2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_TEX_UV2** = ``32``

Un maillage de points contient des UV secondaires.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM0:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM0** = ``64``

Mesh array contains custom channel index 0.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM1:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM1** = ``128``

Mesh array contains custom channel index 1.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM2:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM2** = ``256``

Mesh array contains custom channel index 2.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM3:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM3** = ``512``

Mesh array contains custom channel index 3.

.. _class_Mesh_constant_ARRAY_FORMAT_BONES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_BONES** = ``1024``

Un maillage de points contient des os.

.. _class_Mesh_constant_ARRAY_FORMAT_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_WEIGHTS** = ``2048``

Un maillage de points contient des poids d'os.

.. _class_Mesh_constant_ARRAY_FORMAT_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_INDEX** = ``4096``

Le tableau de maillage utilise des indices.

.. _class_Mesh_constant_ARRAY_FORMAT_BLEND_SHAPE_MASK:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_BLEND_SHAPE_MASK** = ``7``

Mask of mesh channels permitted in blend shapes.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_BASE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_BASE** = ``13``

Shift of first custom channel.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_BITS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_BITS** = ``3``

Nombre de bits de format par canal personnalisé. Voir :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM0_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM0_SHIFT** = ``13``

Amount to shift :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` for custom channel index 0.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM1_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM1_SHIFT** = ``16``

Amount to shift :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` for custom channel index 1.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM2_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM2_SHIFT** = ``19``

Amount to shift :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` for custom channel index 2.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM3_SHIFT:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM3_SHIFT** = ``22``

Amount to shift :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>` for custom channel index 3.

.. _class_Mesh_constant_ARRAY_FORMAT_CUSTOM_MASK:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FORMAT_CUSTOM_MASK** = ``7``

Mask of custom format bits per custom channel. Must be shifted by one of the SHIFT constants. See :ref:`ArrayCustomFormat<enum_Mesh_ArrayCustomFormat>`.

.. _class_Mesh_constant_ARRAY_COMPRESS_FLAGS_BASE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_COMPRESS_FLAGS_BASE** = ``25``

Shift of first compress flag. Compress flags should be passed to :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>` and :ref:`SurfaceTool.commit()<class_SurfaceTool_method_commit>`.

.. _class_Mesh_constant_ARRAY_FLAG_USE_2D_VERTICES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_2D_VERTICES** = ``33554432``

Un marqueur pour spécifier que ce tableau contient des sommets 2D.

.. _class_Mesh_constant_ARRAY_FLAG_USE_DYNAMIC_UPDATE:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_DYNAMIC_UPDATE** = ``67108864``

Flag used to mark that the mesh data will use ``GL_DYNAMIC_DRAW`` on GLES. Unused on Vulkan.

.. _class_Mesh_constant_ARRAY_FLAG_USE_8_BONE_WEIGHTS:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USE_8_BONE_WEIGHTS** = ``134217728``

Flag used to mark that the mesh contains up to 8 bone influences per vertex. This flag indicates that :ref:`ARRAY_BONES<class_Mesh_constant_ARRAY_BONES>` and :ref:`ARRAY_WEIGHTS<class_Mesh_constant_ARRAY_WEIGHTS>` elements will have double length.

.. _class_Mesh_constant_ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY** = ``268435456``

Flag used to mark that the mesh intentionally contains no vertex array.

.. _class_Mesh_constant_ARRAY_FLAG_COMPRESS_ATTRIBUTES:

.. rst-class:: classref-enumeration-constant

:ref:`ArrayFormat<enum_Mesh_ArrayFormat>` **ARRAY_FLAG_COMPRESS_ATTRIBUTES** = ``536870912``

Flag used to mark that a mesh is using compressed attributes (vertices, normals, tangents, UVs). When this form of compression is enabled, vertex positions will be packed into an RGBA16UNORM attribute and scaled in the vertex shader. The normal and tangent will be packed into an RG16UNORM representing an axis, and a 16-bit float stored in the A-channel of the vertex. UVs will use 16-bit normalized floats instead of full 32-bit signed floats. When using this compression mode you must use either vertices, normals, and tangents or only vertices. You cannot use normals without tangents. Importers will automatically enable this compression if they can.

.. rst-class:: classref-item-separator

----

.. _enum_Mesh_BlendShapeMode:

.. rst-class:: classref-enumeration

enum **BlendShapeMode**: :ref:`🔗<enum_Mesh_BlendShapeMode>`

.. _class_Mesh_constant_BLEND_SHAPE_MODE_NORMALIZED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **BLEND_SHAPE_MODE_NORMALIZED** = ``0``

Les formes de fusion sont normalisées.

.. _class_Mesh_constant_BLEND_SHAPE_MODE_RELATIVE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendShapeMode<enum_Mesh_BlendShapeMode>` **BLEND_SHAPE_MODE_RELATIVE** = ``1``

Blend shapes are relative to base weight.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Mesh_property_lightmap_size_hint:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **lightmap_size_hint** = ``Vector2i(0, 0)`` :ref:`🔗<class_Mesh_property_lightmap_size_hint>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_size_hint**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_lightmap_size_hint**\ (\ )

Sets a hint to be used for lightmap resolution.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Mesh_private_method__get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **_get_aabb**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_aabb>`

Virtual method to override the :ref:`AABB<class_AABB>` for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_blend_shape_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_blend_shape_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_blend_shape_count>`

Virtual method to override the number of blend shapes for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_blend_shape_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_blend_shape_name**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_blend_shape_name>`

Virtual method to override the retrieval of blend shape names for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_surface_count**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__get_surface_count>`

Virtual method to override the surface count for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__set_blend_shape_name:

.. rst-class:: classref-method

|void| **_set_blend_shape_name**\ (\ index\: :ref:`int<class_int>`, name\: :ref:`StringName<class_StringName>`\ ) |virtual| |required| :ref:`🔗<class_Mesh_private_method__set_blend_shape_name>`

Virtual method to override the names of blend shapes for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_array_index_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_array_index_len**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_array_index_len>`

Virtual method to override the surface array index length for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_array_len:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_array_len**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_array_len>`

Virtual method to override the surface array length for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_surface_get_arrays**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_arrays>`

Virtual method to override the surface arrays for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **_surface_get_blend_shape_arrays**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_blend_shape_arrays>`

Virtual method to override the blend shape arrays for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_format**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_format>`

Virtual method to override the surface format for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_lods:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_surface_get_lods**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_lods>`

Virtual method to override the surface LODs for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **_surface_get_material**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_material>`

Virtual method to override the surface material for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_get_primitive_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_surface_get_primitive_type**\ (\ index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_Mesh_private_method__surface_get_primitive_type>`

Virtual method to override the surface primitive type for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_private_method__surface_set_material:

.. rst-class:: classref-method

|void| **_surface_set_material**\ (\ index\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) |virtual| |required| :ref:`🔗<class_Mesh_private_method__surface_set_material>`

Virtual method to override the setting of a ``material`` at the given ``index`` for a custom class extending **Mesh**.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_convex_shape:

.. rst-class:: classref-method

:ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` **create_convex_shape**\ (\ clean\: :ref:`bool<class_bool>` = true, simplify\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Mesh_method_create_convex_shape>`

Calculate a :ref:`ConvexPolygonShape3D<class_ConvexPolygonShape3D>` from the mesh.

If ``clean`` is ``true`` (default), duplicate and interior vertices are removed automatically. You can set it to ``false`` to make the process faster if not needed.

If ``simplify`` is ``true``, the geometry can be further simplified to reduce the number of vertices. Disabled by default.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_outline:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **create_outline**\ (\ margin\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Mesh_method_create_outline>`

Calcule un maillage de contour avec un décalage défini (marge) du maillage d'origine.

\ **Note :** Cette méthode renvoie généralement les sommets en ordre inverse (par ex., du sens horaire au sens anti-horaire).

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Mesh_method_create_placeholder>`

Creates a placeholder version of this resource (:ref:`PlaceholderMesh<class_PlaceholderMesh>`).

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_create_trimesh_shape:

.. rst-class:: classref-method

:ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` **create_trimesh_shape**\ (\ ) |const| :ref:`🔗<class_Mesh_method_create_trimesh_shape>`

Calcule une :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` à partir du maillage.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_Mesh_method_generate_triangle_mesh>`

Generate a :ref:`TriangleMesh<class_TriangleMesh>` from the mesh. Considers only surfaces using one of these primitive types: :ref:`PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>`, :ref:`PRIMITIVE_TRIANGLE_STRIP<class_Mesh_constant_PRIMITIVE_TRIANGLE_STRIP>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_aabb>`

Returns the smallest :ref:`AABB<class_AABB>` enclosing this mesh in local space. Not affected by ``custom_aabb``.

\ **Note:** This is only implemented for :ref:`ArrayMesh<class_ArrayMesh>` and :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_faces>`

Renvoie tous les sommets qui composent les faces du maillage. Chaque triplet de sommets représente un triangle.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_get_surface_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_surface_count**\ (\ ) |const| :ref:`🔗<class_Mesh_method_get_surface_count>`

Returns the number of surfaces that the **Mesh** holds. This is equivalent to :ref:`MeshInstance3D.get_surface_override_material_count()<class_MeshInstance3D_method_get_surface_override_material_count>`.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **surface_get_arrays**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_arrays>`

Returns the arrays for the vertices, normals, UVs, etc. that make up the requested surface (see :ref:`ArrayMesh.add_surface_from_arrays()<class_ArrayMesh_method_add_surface_from_arrays>`).

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_blend_shape_arrays:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Array<class_Array>`\] **surface_get_blend_shape_arrays**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_blend_shape_arrays>`

Renvoie les tableaux de blend shape pour la surface demandée.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **surface_get_material**\ (\ surf_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Mesh_method_surface_get_material>`

Returns a :ref:`Material<class_Material>` in a given surface. Surface is rendered using this material.

\ **Note:** This returns the material within the **Mesh** resource, not the :ref:`Material<class_Material>` associated to the :ref:`MeshInstance3D<class_MeshInstance3D>`'s Surface Material Override properties. To get the :ref:`Material<class_Material>` associated to the :ref:`MeshInstance3D<class_MeshInstance3D>`'s Surface Material Override properties, use :ref:`MeshInstance3D.get_surface_override_material()<class_MeshInstance3D_method_get_surface_override_material>` instead.

.. rst-class:: classref-item-separator

----

.. _class_Mesh_method_surface_set_material:

.. rst-class:: classref-method

|void| **surface_set_material**\ (\ surf_idx\: :ref:`int<class_int>`, material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_Mesh_method_surface_set_material>`

Sets a :ref:`Material<class_Material>` for a given surface. Surface will be rendered using this material.

\ **Note:** This assigns the material within the **Mesh** resource, not the :ref:`Material<class_Material>` associated to the :ref:`MeshInstance3D<class_MeshInstance3D>`'s Surface Material Override properties. To set the :ref:`Material<class_Material>` associated to the :ref:`MeshInstance3D<class_MeshInstance3D>`'s Surface Material Override properties, use :ref:`MeshInstance3D.set_surface_override_material()<class_MeshInstance3D_method_set_surface_override_material>` instead.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
