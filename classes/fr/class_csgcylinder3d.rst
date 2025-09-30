:github_url: hide

.. _class_CSGCylinder3D:

CSGCylinder3D
=============

**Hérite de :** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une forme de cylindre CSG.

.. rst-class:: classref-introduction-group

Description
-----------

Ce nœud vous permet de créer un cylindre (ou un cône) pour utiliser avec le système CSG.

\ **Note : ** Les nœuds CSG sont destinés à être utilisés pour le prototypage de niveau. Créer des nœuds CSG a un coût CPU important comparé à la création d'un :ref:`MeshInstance3D<class_MeshInstance3D>` avec un :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Déplacer un nœud CSG dans un autre nœud CSG a également un coût CPU important, ceci devrait donc être évité pendant le gameplay.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Prototyper des niveaux avec CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`cone<class_CSGCylinder3D_property_cone>`                 | ``false`` |
   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`       | :ref:`height<class_CSGCylinder3D_property_height>`             | ``2.0``   |
   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGCylinder3D_property_material>`         |           |
   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`       | :ref:`radius<class_CSGCylinder3D_property_radius>`             | ``0.5``   |
   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`           | :ref:`sides<class_CSGCylinder3D_property_sides>`               | ``8``     |
   +---------------------------------+----------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`         | :ref:`smooth_faces<class_CSGCylinder3D_property_smooth_faces>` | ``true``  |
   +---------------------------------+----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CSGCylinder3D_property_cone:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cone** = ``false`` :ref:`🔗<class_CSGCylinder3D_property_cone>`

.. rst-class:: classref-property-setget

- |void| **set_cone**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_cone**\ (\ )

Si ``true`` un cône est créé, le :ref:`radius<class_CSGCylinder3D_property_radius>` ne s'appliquera qu'à un seul côté.

.. rst-class:: classref-item-separator

----

.. _class_CSGCylinder3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CSGCylinder3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

La hauteur du cylindre.

.. rst-class:: classref-item-separator

----

.. _class_CSGCylinder3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGCylinder3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Le matériau utilisé pour rendre le cylindre.

.. rst-class:: classref-item-separator

----

.. _class_CSGCylinder3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CSGCylinder3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Le rayon du cylindre.

.. rst-class:: classref-item-separator

----

.. _class_CSGCylinder3D_property_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **sides** = ``8`` :ref:`🔗<class_CSGCylinder3D_property_sides>`

.. rst-class:: classref-property-setget

- |void| **set_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_sides**\ (\ )

Le nombre de côtés du cylindre, plus ce nombre est élevé, plus il y aura de détail dans le cylindre.

.. rst-class:: classref-item-separator

----

.. _class_CSGCylinder3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``true`` :ref:`🔗<class_CSGCylinder3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

SI ``true``, les normales du cylindre sont positionnées pour donner un effet lise faisaint paraître le cylindre comme arrondi. Si ``false``, le cylindre aura un ombrage plat.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
