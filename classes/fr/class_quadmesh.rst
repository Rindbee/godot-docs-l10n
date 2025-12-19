:github_url: hide

.. _class_QuadMesh:

QuadMesh
========

**Hérite de :** :ref:`PlaneMesh<class_PlaneMesh>` **<** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe représentant un maillage carré faisant face à la caméra.

.. rst-class:: classref-introduction-group

Description
-----------

Classe représentant un :ref:`PrimitiveMesh<class_PrimitiveMesh>` carré. Ce maillage plat n'a pas d'épaisseur. Par défaut, ce maillage est aligné sur les axes X et Y, cette rotation est plus adaptée aux matériaux de billboard. Un **QuadMesh** équivaut à un :ref:`PlaneMesh<class_PlaneMesh>`, sauf que son :ref:`PlaneMesh.orientation<class_PlaneMesh_property_orientation>` par défaut vaut :ref:`PlaneMesh.FACE_Z<class_PlaneMesh_constant_FACE_Z>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de GUI dans un Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

- `Démo pour de la 2D dans un viewport 3D <https://godotengine.org/asset-library/asset/2803>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Orientation<enum_PlaneMesh_Orientation>` | orientation | ``2`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_orientation>`)      |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                  | size        | ``Vector2(1, 1)`` (overrides :ref:`PlaneMesh<class_PlaneMesh_property_size>`) |
   +------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
