:github_url: hide

.. _class_MeshDataTool:

MeshDataTool
============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Herramienta de ayuda para acceder y editar los datos de la :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

MeshDataTool proporciona acceso a los vértices individuales de una :ref:`Mesh<class_Mesh>`. Permite a los usuarios leer y editar los datos de los vértices de las mallas. También crea un array de caras y aristas.

Para usar MeshDataTool, cargue una malla con :ref:`create_from_surface()<class_MeshDataTool_method_create_from_surface>`. Cuando termines de editar los datos, confírmalos en una malla con :ref:`commit_to_surface()<class_MeshDataTool_method_commit_to_surface>`.

A continuación se muestra un ejemplo de cómo se puede usar MeshDataTool.


.. tabs::

 .. code-tab:: gdscript

    var mesh = ArrayMesh.new()
    mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, BoxMesh.new().get_mesh_arrays())
    var mdt = MeshDataTool.new()
    mdt.create_from_surface(mesh, 0)
    for i in range(mdt.get_vertex_count()):
        var vertex = mdt.get_vertex(i)
        # En este ejemplo extendemos la malla una unidad, lo que resulta en caras separadas ya que tiene sombreado plano.
        vertex += mdt.get_vertex_normal(i)
        # Guarde su cambio.
        mdt.set_vertex(i, vertex)
    mesh.clear_surfaces()
    mdt.commit_to_surface(mesh)
    var mi = MeshInstance.new()
    mi.mesh = mesh
    add_child(mi)

 .. code-tab:: csharp

    var mesh = new ArrayMesh();
    mesh.AddSurfaceFromArrays(Mesh.PrimitiveType.Triangles, new BoxMesh().GetMeshArrays());
    var mdt = new MeshDataTool();
    mdt.CreateFromSurface(mesh, 0);
    for (var i = 0; i < mdt.GetVertexCount(); i++)
    {
        Vector3 vertex = mdt.GetVertex(i);
        // En este ejemplo extendemos la malla una unidad, lo que resulta en caras separadas ya que tiene sombreado plano.
        vertex += mdt.GetVertexNormal(i);
        // Guarde su cambio.
        mdt.SetVertex(i, vertex);
    }
    mesh.ClearSurfaces();
    mdt.CommitToSurface(mesh);
    var mi = new MeshInstance();
    mi.Mesh = mesh;
    AddChild(mi);



Véase también :ref:`ArrayMesh<class_ArrayMesh>`, :ref:`ImmediateMesh<class_ImmediateMesh>` y :ref:`SurfaceTool<class_SurfaceTool>` para la generación procedural de geometría.

\ **Nota:** Godot utiliza un `orden de devanado <https://learnopengl.com/Advanced-OpenGL/Face-culling>`__ en sentido horario para las caras frontales de los modos de primitiva de triángulo.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando MeshDataTool <../tutorials/3d/procedural_geometry/meshdatatool>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_MeshDataTool_method_clear>`\ (\ )                                                                                                                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`               | :ref:`commit_to_surface<class_MeshDataTool_method_commit_to_surface>`\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, compression_flags\: :ref:`int<class_int>` = 0\ )      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`               | :ref:`create_from_surface<class_MeshDataTool_method_create_from_surface>`\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, surface\: :ref:`int<class_int>`\ )                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_edge_count<class_MeshDataTool_method_get_edge_count>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_edge_faces<class_MeshDataTool_method_get_edge_faces>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`get_edge_meta<class_MeshDataTool_method_get_edge_meta>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_edge_vertex<class_MeshDataTool_method_get_edge_vertex>`\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const|                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_face_count<class_MeshDataTool_method_get_face_count>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_face_edge<class_MeshDataTool_method_get_face_edge>`\ (\ idx\: :ref:`int<class_int>`, edge\: :ref:`int<class_int>`\ ) |const|                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`get_face_meta<class_MeshDataTool_method_get_face_meta>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_face_normal<class_MeshDataTool_method_get_face_normal>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_face_vertex<class_MeshDataTool_method_get_face_vertex>`\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const|                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_format<class_MeshDataTool_method_get_format>`\ (\ ) |const|                                                                                                     |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Material<class_Material>`                     | :ref:`get_material<class_MeshDataTool_method_get_material>`\ (\ ) |const|                                                                                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_vertex<class_MeshDataTool_method_get_vertex>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_vertex_bones<class_MeshDataTool_method_get_vertex_bones>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`get_vertex_color<class_MeshDataTool_method_get_vertex_color>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_vertex_count<class_MeshDataTool_method_get_vertex_count>`\ (\ ) |const|                                                                                         |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_vertex_edges<class_MeshDataTool_method_get_vertex_edges>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_vertex_faces<class_MeshDataTool_method_get_vertex_faces>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`get_vertex_meta<class_MeshDataTool_method_get_vertex_meta>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                              |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_vertex_normal<class_MeshDataTool_method_get_vertex_normal>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`                           | :ref:`get_vertex_tangent<class_MeshDataTool_method_get_vertex_tangent>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_vertex_uv<class_MeshDataTool_method_get_vertex_uv>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                  |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_vertex_uv2<class_MeshDataTool_method_get_vertex_uv2>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_vertex_weights<class_MeshDataTool_method_get_vertex_weights>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_edge_meta<class_MeshDataTool_method_set_edge_meta>`\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ )                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_face_meta<class_MeshDataTool_method_set_face_meta>`\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ )                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_material<class_MeshDataTool_method_set_material>`\ (\ material\: :ref:`Material<class_Material>`\ )                                                             |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex<class_MeshDataTool_method_set_vertex>`\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ )                                        |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_bones<class_MeshDataTool_method_set_vertex_bones>`\ (\ idx\: :ref:`int<class_int>`, bones\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_color<class_MeshDataTool_method_set_vertex_color>`\ (\ idx\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_meta<class_MeshDataTool_method_set_vertex_meta>`\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ )                                |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_normal<class_MeshDataTool_method_set_vertex_normal>`\ (\ idx\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ )                          |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_tangent<class_MeshDataTool_method_set_vertex_tangent>`\ (\ idx\: :ref:`int<class_int>`, tangent\: :ref:`Plane<class_Plane>`\ )                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_uv<class_MeshDataTool_method_set_vertex_uv>`\ (\ idx\: :ref:`int<class_int>`, uv\: :ref:`Vector2<class_Vector2>`\ )                                      |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_uv2<class_MeshDataTool_method_set_vertex_uv2>`\ (\ idx\: :ref:`int<class_int>`, uv2\: :ref:`Vector2<class_Vector2>`\ )                                   |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertex_weights<class_MeshDataTool_method_set_vertex_weights>`\ (\ idx\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_MeshDataTool_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_MeshDataTool_method_clear>`

Borra todos los datos que actualmente están en la MeshDataTool.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_commit_to_surface:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **commit_to_surface**\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, compression_flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_MeshDataTool_method_commit_to_surface>`

Añade una nueva superficie a la :ref:`Mesh<class_Mesh>` especificada con datos editados.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_create_from_surface:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_surface**\ (\ mesh\: :ref:`ArrayMesh<class_ArrayMesh>`, surface\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MeshDataTool_method_create_from_surface>`

Utiliza la superficie especificada de la :ref:`Mesh<class_Mesh>` dada para poblar los datos de la MeshDataTool.

Requiere :ref:`Mesh<class_Mesh>` con el tipo primitivo :ref:`Mesh.PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_edge_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_count>`

Devuelve el número de bordes en esta :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_faces:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_edge_faces**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_faces>`

Devuelve el conjunto de rostros que tocan el borde dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_edge_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_meta>`

Devuelve la meta información asignada a un borde dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_edge_vertex:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_edge_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_edge_vertex>`

Devuelve el índice del ``vertex`` especificado conectado al borde en el índice ``idx``.

\ ``vertex`` solo puede ser ``0`` o ``1``, ya que los bordes se componen de dos vértices.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_count>`

Devuelve el número de caras en esta :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_edge:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_edge**\ (\ idx\: :ref:`int<class_int>`, edge\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_edge>`

Devuelve el borde asociado con la cara en el índice ``idx``.

El argumento ``edge`` debe ser ``0``, ``1`` o ``2`` porque una cara solo tiene tres bordes.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_face_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_meta>`

Devuelve los metadatos asociados con la cara dada.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_face_normal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_normal>`

Calcula y devuelve la cara normal de la cara dada.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_face_vertex:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_face_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_face_vertex>`

Returns the specified vertex index of the given face.

\ ``vertex`` must be either ``0``, ``1``, or ``2`` because faces contain three vertices.


.. tabs::

 .. code-tab:: gdscript

    var index = mesh_data_tool.get_face_vertex(0, 1) # Gets the index of the second vertex of the first face.
    var position = mesh_data_tool.get_vertex(index)
    var normal = mesh_data_tool.get_vertex_normal(index)

 .. code-tab:: csharp

    int index = meshDataTool.GetFaceVertex(0, 1); // Gets the index of the second vertex of the first face.
    Vector3 position = meshDataTool.GetVertex(index);
    Vector3 normal = meshDataTool.GetVertexNormal(index);



.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_format:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_format**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_format>`

Returns the :ref:`Mesh<class_Mesh>`'s format as a combination of the :ref:`ArrayFormat<enum_Mesh_ArrayFormat>` flags. For example, a mesh containing both vertices and normals would return a format of ``3`` because :ref:`Mesh.ARRAY_FORMAT_VERTEX<class_Mesh_constant_ARRAY_FORMAT_VERTEX>` is ``1`` and :ref:`Mesh.ARRAY_FORMAT_NORMAL<class_Mesh_constant_ARRAY_FORMAT_NORMAL>` is ``2``.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_material:

.. rst-class:: classref-method

:ref:`Material<class_Material>` **get_material**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_material>`

Devuelve el material asignado a la :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_vertex**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex>`

Devuelve la posición del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_bones:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_bones**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_bones>`

Devuelve los huesos del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_vertex_color**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_color>`

Devuelve el color del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_vertex_count**\ (\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_count>`

Devuelve el número total de vértices en :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_edges:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_edges**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_edges>`

Devuelve un array de bordes que comparten el vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_faces:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_vertex_faces**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_faces>`

Devuelve un array de caras que comparten el vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_meta:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_vertex_meta**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_meta>`

Devuelve los metadatos asociados con el vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_normal:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_vertex_normal**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_normal>`

Devuelve la normal del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_tangent:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_vertex_tangent**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_tangent>`

Devuelve la tangente del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_uv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vertex_uv**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_uv>`

Devuelve el UV del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_uv2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vertex_uv2**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_uv2>`

Devuelve el UV2 del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_get_vertex_weights:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_vertex_weights**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MeshDataTool_method_get_vertex_weights>`

Devuelve los pesos del hueso del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_edge_meta:

.. rst-class:: classref-method

|void| **set_edge_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_edge_meta>`

Establece los metadatos del borde dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_face_meta:

.. rst-class:: classref-method

|void| **set_face_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_face_meta>`

Establece los metadatos de la cara dada.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_material:

.. rst-class:: classref-method

|void| **set_material**\ (\ material\: :ref:`Material<class_Material>`\ ) :ref:`🔗<class_MeshDataTool_method_set_material>`

Establece el material a ser usado por la :ref:`Mesh<class_Mesh>` recién construida.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex:

.. rst-class:: classref-method

|void| **set_vertex**\ (\ idx\: :ref:`int<class_int>`, vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex>`

Establece la posición del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_bones:

.. rst-class:: classref-method

|void| **set_vertex_bones**\ (\ idx\: :ref:`int<class_int>`, bones\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_bones>`

Establece los huesos del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_color:

.. rst-class:: classref-method

|void| **set_vertex_color**\ (\ idx\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_color>`

Establece el color del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_meta:

.. rst-class:: classref-method

|void| **set_vertex_meta**\ (\ idx\: :ref:`int<class_int>`, meta\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_meta>`

Establece los metadatos asociados con el vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_normal:

.. rst-class:: classref-method

|void| **set_vertex_normal**\ (\ idx\: :ref:`int<class_int>`, normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_normal>`

Establece la normal del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_tangent:

.. rst-class:: classref-method

|void| **set_vertex_tangent**\ (\ idx\: :ref:`int<class_int>`, tangent\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_tangent>`

Establece la tangente del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_uv:

.. rst-class:: classref-method

|void| **set_vertex_uv**\ (\ idx\: :ref:`int<class_int>`, uv\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_uv>`

Establece el UV del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_uv2:

.. rst-class:: classref-method

|void| **set_vertex_uv2**\ (\ idx\: :ref:`int<class_int>`, uv2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_uv2>`

Establece el UV2 del vértice dado.

.. rst-class:: classref-item-separator

----

.. _class_MeshDataTool_method_set_vertex_weights:

.. rst-class:: classref-method

|void| **set_vertex_weights**\ (\ idx\: :ref:`int<class_int>`, weights\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_MeshDataTool_method_set_vertex_weights>`

Establece los pesos del hueso del vértice dado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
