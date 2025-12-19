:github_url: hide

.. meta::
	:keywords: tilemap

.. _class_GridMap:

GridMap
=======

**Hereda:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nodo para mapas en 3D basados en tiles.

.. rst-class:: classref-introduction-group

Descripción
----------------------

GridMap lets you place meshes on a grid interactively. It works both from the editor and from scripts, which can help you create in-game level editors.

GridMaps use a :ref:`MeshLibrary<class_MeshLibrary>` which contains a list of tiles. Each tile is a mesh with materials plus optional collision and navigation shapes.

A GridMap contains a collection of cells. Each grid cell refers to a tile in the :ref:`MeshLibrary<class_MeshLibrary>`. All cells in the map have the same dimensions.

Internally, a GridMap is split into a sparse collection of octants for efficient rendering and physics processing. Every octant has the same dimensions and can contain several cells.

\ **Note:** GridMap doesn't extend :ref:`VisualInstance3D<class_VisualInstance3D>` and therefore can't be hidden or cull masked based on :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`. If you make a light not affect the first layer, the whole GridMap won't be lit by the light in question.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando GridMaps <../tutorials/3d/using_gridmaps>`

- `Demo de Plataformas en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Demo de Personaje Cinemático en 3D <https://godotengine.org/asset-library/asset/2739>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`bake_navigation<class_GridMap_property_bake_navigation>`       | ``false``            |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`cell_center_x<class_GridMap_property_cell_center_x>`           | ``true``             |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`cell_center_y<class_GridMap_property_cell_center_y>`           | ``true``             |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`cell_center_z<class_GridMap_property_cell_center_z>`           | ``true``             |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                         | :ref:`cell_octant_size<class_GridMap_property_cell_octant_size>`     | ``8``                |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                     | :ref:`cell_scale<class_GridMap_property_cell_scale>`                 | ``1.0``              |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                 | :ref:`cell_size<class_GridMap_property_cell_size>`                   | ``Vector3(2, 2, 2)`` |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                         | :ref:`collision_layer<class_GridMap_property_collision_layer>`       | ``1``                |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                         | :ref:`collision_mask<class_GridMap_property_collision_mask>`         | ``1``                |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                     | :ref:`collision_priority<class_GridMap_property_collision_priority>` | ``1.0``              |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`MeshLibrary<class_MeshLibrary>`         | :ref:`mesh_library<class_GridMap_property_mesh_library>`             |                      |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>` | :ref:`physics_material<class_GridMap_property_physics_material>`     |                      |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`clear<class_GridMap_method_clear>`\ (\ )                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`clear_baked_meshes<class_GridMap_method_clear_baked_meshes>`\ (\ )                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                        | :ref:`get_bake_mesh_instance<class_GridMap_method_get_bake_mesh_instance>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                    | :ref:`get_bake_meshes<class_GridMap_method_get_bake_meshes>`\ (\ )                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                    | :ref:`get_basis_with_orthogonal_index<class_GridMap_method_get_basis_with_orthogonal_index>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_item<class_GridMap_method_get_cell_item>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                    | :ref:`get_cell_item_basis<class_GridMap_method_get_cell_item_basis>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_item_orientation<class_GridMap_method_get_cell_item_orientation>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`get_collision_layer_value<class_GridMap_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`get_collision_mask_value<class_GridMap_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                    | :ref:`get_meshes<class_GridMap_method_get_meshes>`\ (\ ) |const|                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                        | :ref:`get_navigation_map<class_GridMap_method_get_navigation_map>`\ (\ ) |const|                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_orthogonal_index_from_basis<class_GridMap_method_get_orthogonal_index_from_basis>`\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const|                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells<class_GridMap_method_get_used_cells>`\ (\ ) |const|                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells_by_item<class_GridMap_method_get_used_cells_by_item>`\ (\ item\: :ref:`int<class_int>`\ ) |const|                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>`                              | :ref:`local_to_map<class_GridMap_method_local_to_map>`\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`make_baked_meshes<class_GridMap_method_make_baked_meshes>`\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ ) |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`map_to_local<class_GridMap_method_map_to_local>`\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`resource_changed<class_GridMap_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ )                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell_item<class_GridMap_method_set_cell_item>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ )   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_collision_layer_value<class_GridMap_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_collision_mask_value<class_GridMap_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_navigation_map<class_GridMap_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_GridMap_signal_cell_size_changed:

.. rst-class:: classref-signal

**cell_size_changed**\ (\ cell_size\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_GridMap_signal_cell_size_changed>`

Emitida cuando :ref:`cell_size<class_GridMap_property_cell_size>` cambia.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_GridMap_signal_changed>`

Emitida cuando la :ref:`MeshLibrary<class_MeshLibrary>` de este GridMap cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_GridMap_constant_INVALID_CELL_ITEM:

.. rst-class:: classref-constant

**INVALID_CELL_ITEM** = ``-1`` :ref:`🔗<class_GridMap_constant_INVALID_CELL_ITEM>`

Elemento celular inválido que puede ser usado en :ref:`set_cell_item()<class_GridMap_method_set_cell_item>` para borrar células (o representar una célula vacía en :ref:`get_cell_item()<class_GridMap_method_get_cell_item>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GridMap_property_bake_navigation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bake_navigation** = ``false`` :ref:`🔗<class_GridMap_property_bake_navigation>`

.. rst-class:: classref-property-setget

- |void| **set_bake_navigation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_baking_navigation**\ (\ )

Si es ``true``, este GridMap crea una región de navegación para cada celda que utiliza un elemento :ref:`mesh_library<class_GridMap_property_mesh_library>` con una malla de navegación. La región de navegación creada utilizará la máscara de bits de las capas de navegación asignada al elemento de :ref:`MeshLibrary<class_MeshLibrary>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_x** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_x>`

.. rst-class:: classref-property-setget

- |void| **set_center_x**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_x**\ (\ )

Si es ``true``, los elementos de la cuadrícula se centran en el eje X.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_y** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_y>`

.. rst-class:: classref-property-setget

- |void| **set_center_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_y**\ (\ )

Si es ``true``, los elementos de la cuadrícula se centran en el eje Y.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_z** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_z>`

.. rst-class:: classref-property-setget

- |void| **set_center_z**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_z**\ (\ )

Si es ``true``, los elementos de la cuadrícula se centran en el eje Z.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_octant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **cell_octant_size** = ``8`` :ref:`🔗<class_GridMap_property_cell_octant_size>`

.. rst-class:: classref-property-setget

- |void| **set_octant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_octant_size**\ (\ )

El tamaño de cada octante medido en número de celdas. Esto se aplica a los tres ejes.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_scale** = ``1.0`` :ref:`🔗<class_GridMap_property_cell_scale>`

.. rst-class:: classref-property-setget

- |void| **set_cell_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_scale**\ (\ )

La escala de los elementos de celda.

Esto no afecta al tamaño de las celdas de la cuadrícula en sí, sólo a los ítems en ellas. Esto puede ser usado para hacer que los elementos de la celda se superpongan a sus vecinos.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **cell_size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GridMap_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_cell_size**\ (\ )

Las dimensiones de las celdas de rejilla.

Esto no afecta al tamaño de las mallas. Véase :ref:`cell_scale<class_GridMap_property_cell_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_GridMap_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Las capas físicas en las que se encuentra este GridMap.

Los GridMaps actúan como cuerpos estáticos, lo que significa que no son afectados por la gravedad u otras fuerzas. Sólo afectan a otros cuerpos físicos que colisionan con ellos.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_GridMap_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

The physics layers this GridMap detects collisions in. See `Collision layers and masks <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ in the documentation for more information.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_GridMap_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

La prioridad usada para resolver colisiones cuando ocurre penetración. Cuanto mayor sea la prioridad, menor será la penetración en el objeto. Esto puede usarse, por ejemplo, para evitar que el jugador atraviese los límites de un nivel.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_mesh_library:

.. rst-class:: classref-property

:ref:`MeshLibrary<class_MeshLibrary>` **mesh_library** :ref:`🔗<class_GridMap_property_mesh_library>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_library**\ (\ value\: :ref:`MeshLibrary<class_MeshLibrary>`\ )
- :ref:`MeshLibrary<class_MeshLibrary>` **get_mesh_library**\ (\ )

La :ref:`MeshLibrary<class_MeshLibrary>` asignada.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_physics_material:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material** :ref:`🔗<class_GridMap_property_physics_material>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material**\ (\ )

Overrides the default friction and bounce physics properties for the whole **GridMap**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GridMap_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_GridMap_method_clear>`

Despeja todas las celdas.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_clear_baked_meshes:

.. rst-class:: classref-method

|void| **clear_baked_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_clear_baked_meshes>`

Borra todas las mallas procesadas. Véase :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_mesh_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_bake_mesh_instance**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GridMap_method_get_bake_mesh_instance>`

Returns :ref:`RID<class_RID>` of a baked mesh with the given ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bake_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_get_bake_meshes>`

Returns an array of :ref:`ArrayMesh<class_ArrayMesh>`\ es and :ref:`Transform3D<class_Transform3D>` references of all bake meshes that exist within the current GridMap. Even indices contain :ref:`ArrayMesh<class_ArrayMesh>`\ es, while odd indices contain :ref:`Transform3D<class_Transform3D>`\ s that are always equal to :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

This method relies on the output of :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`, which will be called with ``gen_lightmap_uv`` set to ``true`` and ``lightmap_uv_texel_size`` set to ``0.1`` if it hasn't been called yet.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_basis_with_orthogonal_index:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_basis_with_orthogonal_index**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_basis_with_orthogonal_index>`

Returns one of 24 possible rotations that lie along the vectors (x,y,z) with each component being either -1, 0, or 1. For further details, refer to the Godot source code.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item>`

The :ref:`MeshLibrary<class_MeshLibrary>` item index located at the given grid coordinates. If the cell is empty, :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>` will be returned.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_basis:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_cell_item_basis**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_basis>`

Returns the basis that gives the specified cell its orientation.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_orientation:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item_orientation**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_orientation>`

The orientation of the cell at the given grid coordinates. ``-1`` is returned if the cell is empty.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_layer_value>`

Devuelve si la capa especificada de :ref:`collision_layer<class_GridMap_property_collision_layer>` está habilitada o no, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_mask_value>`

Devuelve si la capa especificada de :ref:`collision_mask<class_GridMap_property_collision_mask>` está habilitada o no, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_meshes>`

Returns an array of :ref:`Transform3D<class_Transform3D>` and :ref:`Mesh<class_Mesh>` references corresponding to the non-empty cells in the grid. The transforms are specified in local space. Even indices contain :ref:`Transform3D<class_Transform3D>`\ s, while odd indices contain :ref:`Mesh<class_Mesh>`\ es related to the :ref:`Transform3D<class_Transform3D>` in the index preceding it.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_navigation_map>`

Returns the :ref:`RID<class_RID>` of the navigation map this GridMap node uses for its cell baked navigation meshes.

This function returns always the map set on the GridMap node and not the map on the NavigationServer. If the map is changed directly with the NavigationServer API the GridMap node will not be aware of the map change.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_orthogonal_index_from_basis:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_orthogonal_index_from_basis**\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_GridMap_method_get_orthogonal_index_from_basis>`

This function considers a discretization of rotations into 24 points on unit sphere, lying along the vectors (x,y,z) with each component being either -1, 0, or 1, and returns the index (in the range from 0 to 23) of the point best representing the orientation of the object. For further details, refer to the Godot source code.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells>`

Devuelve un array de :ref:`Vector3<class_Vector3>` con las coordenadas de la celda no vacía en el mapa de la cuadrícula.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_by_item>`

Devuelve un array de todas las celdas con el índice del ítem dado en ``item``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **local_to_map**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_GridMap_method_local_to_map>`

Devuelve las coordenadas del mapa de la celda que contiene la ``local_position`` dada. Si ``local_position`` está en coordenadas globales, considera usar :ref:`Node3D.to_local()<class_Node3D_method_to_local>` antes de pasarla a este método. Véase también :ref:`map_to_local()<class_GridMap_method_map_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_make_baked_meshes:

.. rst-class:: classref-method

|void| **make_baked_meshes**\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_GridMap_method_make_baked_meshes>`

Genera una malla procesada que representa todas las mallas en la :ref:`MeshLibrary<class_MeshLibrary>` asignada para su uso con :ref:`LightmapGI<class_LightmapGI>`. Si ``gen_lightmap_uv`` es ``true``, se generarán datos UV2 para cada malla utilizada actualmente en **GridMap**. De lo contrario, solo las mallas que ya tengan datos UV2 presentes podrán usar lightmaps procesados. Al generar UV2, ``lightmap_uv_texel_size`` controla la densidad de texeles para los lightmaps, con valores más bajos que dan como resultado lightmaps más detallados. ``lightmap_uv_texel_size`` se ignora si ``gen_lightmap_uv`` es ``false``. Consulta también :ref:`get_bake_meshes()<class_GridMap_method_get_bake_meshes>`, que se basa en la salida de este método.

\ **Nota:** Llamar a este método no procesará realmente los lightmaps, ya que el procesado del lightmap se realiza utilizando el nodo :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **map_to_local**\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_map_to_local>`

Devuelve la posición de una celda de la cuadrícula en el espacio de coordenadas local de GridMap. Para convertir el valor devuelto en coordenadas globales, usa :ref:`Node3D.to_global()<class_Node3D_method_to_global>`. Véase también :ref:`local_to_map()<class_GridMap_method_local_to_map>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_GridMap_method_resource_changed>`

**Obsoleto:** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Este método no hace nada.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_cell_item:

.. rst-class:: classref-method

|void| **set_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GridMap_method_set_cell_item>`

Establece el índice de la malla para la celda referenciada por sus coordenadas de la cuadrícula.

Un índice de elemento negativo como :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>` borrará la celda.

Opcionalmente, se puede pasar la orientación del elemento. Para ver los valores de orientación válidos, véase :ref:`get_orthogonal_index_from_basis()<class_GridMap_method_get_orthogonal_index_from_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_layer_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en :ref:`collision_layer<class_GridMap_property_collision_layer>`, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_mask_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en :ref:`collision_mask<class_GridMap_property_collision_mask>`, dado un ``layer_number`` entre 1 y 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_GridMap_method_set_navigation_map>`

Establece el :ref:`RID<class_RID>` del mapa de navegación que este nodo GridMap debe usar para sus mallas de navegación procesadas por celdas.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
