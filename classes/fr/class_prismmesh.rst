:github_url: hide

.. _class_PrismMesh:

PrismMesh
=========

**Hérite de :** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe représentant un prisme en forme de :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Description
-----------

Classe représentant un prisme en forme de :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`left_to_right<class_PrismMesh_property_left_to_right>`       | ``0.5``              |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_PrismMesh_property_size>`                         | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_depth<class_PrismMesh_property_subdivide_depth>`   | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_height<class_PrismMesh_property_subdivide_height>` | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`         | :ref:`subdivide_width<class_PrismMesh_property_subdivide_width>`   | ``0``                |
   +-------------------------------+--------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_PrismMesh_property_left_to_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **left_to_right** = ``0.5`` :ref:`🔗<class_PrismMesh_property_left_to_right>`

.. rst-class:: classref-property-setget

- |void| **set_left_to_right**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_left_to_right**\ (\ )

Displacement of the upper edge along the X axis. 0.0 positions edge straight above the bottom-left edge.

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_PrismMesh_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Taille du prisme.

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_depth** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_depth>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_depth**\ (\ )

Nombre de boucles d’arêtes ajoutées le long de l'axe Z.

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_height** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_height>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_height**\ (\ )

Nombre de boucles d’arêtes ajoutées le long de l'axe Y.

.. rst-class:: classref-item-separator

----

.. _class_PrismMesh_property_subdivide_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **subdivide_width** = ``0`` :ref:`🔗<class_PrismMesh_property_subdivide_width>`

.. rst-class:: classref-property-setget

- |void| **set_subdivide_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_subdivide_width**\ (\ )

Nombre de boucles d’arêtes ajoutées le long de l'axe X.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
