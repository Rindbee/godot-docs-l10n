:github_url: hide

.. _class_BoxMesh:

BoxMesh
=======

**Hérite de :** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Génère un :ref:`PrimitiveMesh<class_PrimitiveMesh>` de boîte alignée sur les axes.

.. rst-class:: classref-introduction-group

Description
-----------

Générer un :ref:`PrimitiveMesh<class_PrimitiveMesh>` en forme de boîte alignée sur les axes.

La disposition des UV du cube est arrangée selon une disposition de 3×2 qui permet de placer une texture sur chaque face individuellement. Pour appliquer la même texture sur toutes les faces, modifiez la propriété UV du matériau à ``Vector3(3, 2, 1)``. Cela équivaut à ajouter ``UV *= vec2(3.0, 2.0)`` dans un vertex shader.

\ **Note :** Lors de l'utilisation d'un grand **BoxMesh** texturé (par exemple pour le sol), vous pouvez tomber sur des problèmes de jittering de l'UV suivant l'angle de la caméra. Pour résoudre cela, augmentez :ref:`subdivide_depth<class_BoxMesh_property_subdivide_depth>`, :ref:`subdivide_height<class_BoxMesh_property_subdivide_height>` et :ref:`subdivide_width<class_BoxMesh_property_subdivide_width>` jusqu'à ce que vous ne remarquez plus de jittering de l'UV.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_BoxMesh_property_size>`                         | ``Vector3(1, 1, 1)`` |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_depth<class_BoxMesh_property_subdivide_depth>`   | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_height<class_BoxMesh_property_subdivide_height>` | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_width<class_BoxMesh_property_subdivide_width>`   | ``0``                |
   +-------------------------------+------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_BoxMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_BoxMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

La largeur, la hauteur et la profondeur de la boîte.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

Le nombre de boucles de bord supplémentaires insérées le long de l'axe Z.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_height** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_height>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_height**\ (\ )

Le nombre de boucles de bord supplémentaires insérées le long de l'axe Y.

.. rst-class:: classref-item-separator

----

.. _class_BoxMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_BoxMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

Le nombre de boucles de bord supplémentaires insérées le long de l'axe X.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
