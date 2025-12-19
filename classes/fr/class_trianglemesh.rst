:github_url: hide

.. _class_TriangleMesh:

TriangleMesh
============

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Géométrie de triangles pour des requêtes d'intersection efficaces et sans physique.

.. rst-class:: classref-introduction-group

Description
-----------

Crée un arbre de hiérarchie de volume englobant (Bounding Volume Hierarchy) autour de la géométrie en triangles.

L'arbre BVH des triangles peut être utilisé pour des requêtes d'intersection efficaces sans impliquer un moteur physique.

Par exemple, cela peut être utilisé dans des outils d'éditeur pour sélectionner des objets avec des formes complexes selon sur la position du curseur de la souris.

\ **Performance :** Créer l'arbre BVH pour une géométrie complexe est un processus lent et généralement fait dans un thread d'arrière-plan.

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

Crée l'arbre BVH depuis un tableau de faces. Chaque 3 sommets du tableau d'entrée ``faces`` représentent un triangle (face).

Renvoie ``true`` si l'arbre est construit avec succès, ``false`` sinon.

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_get_faces:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_faces**\ (\ ) |const| :ref:`🔗<class_TriangleMesh_method_get_faces>`

Renvoie une copie des faces de la géométrie. Chaque 3 sommets du tableau représentent un triangle (face).

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_intersect_ray:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_ray**\ (\ begin\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_TriangleMesh_method_intersect_ray>`

Teste l'intersection avec un rayon commençant à ``begin``, de direction ``dir`` et de longueur infinie.

Si une intersection avec un triangle se produit, renvoie un :ref:`Dictionary<class_Dictionary>` avec les champs suivants :

\ ``position``\  : La position sur le triangle intersecté.

\ ``normal``\  : La normale du triangle intersecté.

\ ``face_index``\  : L'index du triangle intersecté.

Renvoie un :ref:`Dictionary<class_Dictionary>` vide si aucune intersection ne se produit.

Voir aussi :ref:`intersect_segment()<class_TriangleMesh_method_intersect_segment>`, qui est similaire mais utilise un segment de taille finie.

.. rst-class:: classref-item-separator

----

.. _class_TriangleMesh_method_intersect_segment:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **intersect_segment**\ (\ begin\: :ref:`Vector3<class_Vector3>`, end\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_TriangleMesh_method_intersect_segment>`

Teste l'intersection avec un segment allant de ``begin`` à ``end``.

Si une intersection avec un triangle se produit, renvoie un :ref:`Dictionary<class_Dictionary>` avec les champs suivants :

\ ``position``\  : La position sur le triangle intersecté.

\ ``normal``\  : La normale du triangle intersecté.

\ ``face_index``\  : L'index du triangle intersecté.

Renvoie un :ref:`Dictionary<class_Dictionary>` vide si aucune intersection ne se produit.

Voir aussi :ref:`intersect_ray()<class_TriangleMesh_method_intersect_ray>`, qui est similaire mais utilise un rayon infini.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
