:github_url: hide

.. _class_ImmediateMesh:

ImmediateMesh
=============

**Hérite de :** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Maillage optimisé pour créer de la géométrie manuellement.

.. rst-class:: classref-introduction-group

Description
-----------

A mesh type optimized for creating geometry manually, similar to OpenGL 1.x immediate mode.

Here's a sample on how to generate a triangular face:


.. tabs::

 .. code-tab:: gdscript

    var mesh = ImmediateMesh.new()
    mesh.surface_begin(Mesh.PRIMITIVE_TRIANGLES)
    mesh.surface_add_vertex(Vector3.LEFT)
    mesh.surface_add_vertex(Vector3.FORWARD)
    mesh.surface_add_vertex(Vector3.ZERO)
    mesh.surface_end()

 .. code-tab:: csharp

    var mesh = new ImmediateMesh();
    mesh.SurfaceBegin(Mesh.PrimitiveType.Triangles);
    mesh.SurfaceAddVertex(Vector3.Left);
    mesh.SurfaceAddVertex(Vector3.Forward);
    mesh.SurfaceAddVertex(Vector3.Zero);
    mesh.SurfaceEnd();



\ **Note:** Generating complex geometries with **ImmediateMesh** is highly inefficient. Instead, it is designed to generate simple geometry that changes often.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation d'ImmediateMesh <../tutorials/3d/procedural_geometry/immediatemesh>`

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`clear_surfaces<class_ImmediateMesh_method_clear_surfaces>`\ (\ )                                                                                                             |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_add_vertex<class_ImmediateMesh_method_surface_add_vertex>`\ (\ vertex\: :ref:`Vector3<class_Vector3>`\ )                                                             |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_add_vertex_2d<class_ImmediateMesh_method_surface_add_vertex_2d>`\ (\ vertex\: :ref:`Vector2<class_Vector2>`\ )                                                       |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_begin<class_ImmediateMesh_method_surface_begin>`\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, material\: :ref:`Material<class_Material>` = null\ ) |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_end<class_ImmediateMesh_method_surface_end>`\ (\ )                                                                                                                   |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_color<class_ImmediateMesh_method_surface_set_color>`\ (\ color\: :ref:`Color<class_Color>`\ )                                                                    |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_normal<class_ImmediateMesh_method_surface_set_normal>`\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )                                                             |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_tangent<class_ImmediateMesh_method_surface_set_tangent>`\ (\ tangent\: :ref:`Plane<class_Plane>`\ )                                                              |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_uv<class_ImmediateMesh_method_surface_set_uv>`\ (\ uv\: :ref:`Vector2<class_Vector2>`\ )                                                                         |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`surface_set_uv2<class_ImmediateMesh_method_surface_set_uv2>`\ (\ uv2\: :ref:`Vector2<class_Vector2>`\ )                                                                      |
   +--------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ImmediateMesh_method_clear_surfaces:

.. rst-class:: classref-method

|void| **clear_surfaces**\ (\ ) :ref:`🔗<class_ImmediateMesh_method_clear_surfaces>`

Effacer toutes les surfaces.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_add_vertex:

.. rst-class:: classref-method

|void| **surface_add_vertex**\ (\ vertex\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_add_vertex>`

Add a 3D vertex using the current attributes previously set.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_add_vertex_2d:

.. rst-class:: classref-method

|void| **surface_add_vertex_2d**\ (\ vertex\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_add_vertex_2d>`

Add a 2D vertex using the current attributes previously set.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_begin:

.. rst-class:: classref-method

|void| **surface_begin**\ (\ primitive\: :ref:`PrimitiveType<enum_Mesh_PrimitiveType>`, material\: :ref:`Material<class_Material>` = null\ ) :ref:`🔗<class_ImmediateMesh_method_surface_begin>`

Commence une nouvelle surface.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_end:

.. rst-class:: classref-method

|void| **surface_end**\ (\ ) :ref:`🔗<class_ImmediateMesh_method_surface_end>`

End and commit current surface. Note that surface being created will not be visible until this function is called.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_color:

.. rst-class:: classref-method

|void| **surface_set_color**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_color>`

Set the color attribute that will be pushed with the next vertex.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_normal:

.. rst-class:: classref-method

|void| **surface_set_normal**\ (\ normal\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_normal>`

Set the normal attribute that will be pushed with the next vertex.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_tangent:

.. rst-class:: classref-method

|void| **surface_set_tangent**\ (\ tangent\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_tangent>`

Set the tangent attribute that will be pushed with the next vertex.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_uv:

.. rst-class:: classref-method

|void| **surface_set_uv**\ (\ uv\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_uv>`

Set the UV attribute that will be pushed with the next vertex.

.. rst-class:: classref-item-separator

----

.. _class_ImmediateMesh_method_surface_set_uv2:

.. rst-class:: classref-method

|void| **surface_set_uv2**\ (\ uv2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_ImmediateMesh_method_surface_set_uv2>`

Set the UV2 attribute that will be pushed with the next vertex.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
