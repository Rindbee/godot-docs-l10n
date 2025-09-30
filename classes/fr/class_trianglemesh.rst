:github_url: hide

.. _class_TriangleMesh:

TriangleMesh
============

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Géométrie de triangles pour des requêtes d'intersection efficaces et sans physique.

.. rst-class:: classref-introduction-group

Description
-----------

Creates a bounding volume hierarchy (BVH) tree structure around triangle geometry.

The triangle BVH tree can be used for efficient intersection queries without involving a physics engine.

For example, this can be used in editor tools to select objects with complex shapes based on the mouse cursor position.

\ **Performance:** Creating the BVH tree for complex geometry is a slow process and best done in a background thread.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`create_from_faces<class_TriangleMesh_method_create_from_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_faces<class_TriangleMesh_method_get_faces>`\ (\ ) |const|                                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                 | :ref:`intersect_ray<class_TriangleMesh_method_intersect_ray>`\ (\ begin\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|         |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                 | :ref:`intersect_segment<class_TriangleMesh_method_intersect_segment>`\ (\ begin\: :ref:`Vector3<class_Vector3>`, end\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_TriangleMesh_method_create_from_faces:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **create_from_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_TriangleMesh_method_create_from_faces>`

Creates the BVH tree from an array of faces. Each 3 vertices of the input ``faces`` array represent one triangle (face).

Returns ``true`` if the tree is successfully built, ``false`` otherwise.

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_TriangleMesh_method_get_faces>`

Returns a copy of the geometry faces. Each 3 vertices of the array represent one triangle (face).

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ begin\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_TriangleMesh_method_intersect_ray>`

Tests for intersection with a ray starting at ``begin`` and facing ``dir`` and extending toward infinity.

If an intersection with a triangle happens, returns a :ref:`Dictionary<class_Dictionary>` with the following fields:

\ ``position``: The position on the intersected triangle.

\ ``normal``: The normal of the intersected triangle.

\ ``face_index``: The index of the intersected triangle.

Returns an empty :ref:`Dictionary<class_Dictionary>` if no intersection happens.

See also :ref:`intersect_segment()<class_TriangleMesh_method_intersect_segment>`, which is similar but uses a finite-length segment.

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_intersect_segment:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_segment**\ (\ begin\: :ref:`Vector3<class_Vector3>`, end\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_TriangleMesh_method_intersect_segment>`

Tests for intersection with a segment going from ``begin`` to ``end``.

If an intersection with a triangle happens returns a :ref:`Dictionary<class_Dictionary>` with the following fields:

\ ``position``: The position on the intersected triangle.

\ ``normal``: The normal of the intersected triangle.

\ ``face_index``: The index of the intersected triangle.

Returns an empty :ref:`Dictionary<class_Dictionary>` if no intersection happens.

See also :ref:`intersect_ray()<class_TriangleMesh_method_intersect_ray>`, which is similar but uses an infinite-length ray.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
