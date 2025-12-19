:github_url: hide

.. _class_HeightMapShape3D:

HeightMapShape3D
================

**Hérite de :** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A 3D heightmap shape used for physics collision.

.. rst-class:: classref-introduction-group

Description
-----------

A 3D heightmap shape, intended for use in physics to provide a shape for a :ref:`CollisionShape3D<class_CollisionShape3D>`. This type is most commonly used for terrain with vertices placed in a fixed-width grid.

The heightmap is represented as a 2D grid of height values, which represent the position of grid points on the Y axis. Grid points are spaced 1 unit apart on the X and Z axes, and the grid is centered on the origin of the :ref:`CollisionShape3D<class_CollisionShape3D>` node. Internally, each grid square is divided into two triangles.

Due to the nature of the heightmap, it cannot be used to model overhangs or caves, which would require multiple vertices at the same vertical location. Holes can be punched through the collision by assigning :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` to the height of the desired vertices (this is supported in both GodotPhysics3D and Jolt Physics). You could then insert meshes with their own separate collision to provide overhangs, caves, and so on.

\ **Performance:** **HeightMapShape3D** is faster to check collisions against than :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>`, but it is significantly slower than primitive shapes like :ref:`BoxShape3D<class_BoxShape3D>`.

A heightmap collision shape can also be built by using an :ref:`Image<class_Image>` reference:


.. tabs::

 .. code-tab:: gdscript

    var heightmap_texture = ResourceLoader.load("res://heightmap_image.exr")
    var heightmap_image = heightmap_texture.get_image()
    heightmap_image.convert(Image.FORMAT_RF)

    var height_min = 0.0
    var height_max = 10.0

    update_map_data_from_image(heightmap_image, height_min, height_max)



\ **Note:** If you need to use a spacing different than 1 unit, you can adjust the :ref:`Node3D.scale<class_Node3D_property_scale>` of the shape. However, keep in mind that GodotPhysics3D does not support non-uniform scaling: you'll need to scale the Y axis by the same amount as the X and Z axes, which means the values in :ref:`map_data<class_HeightMapShape3D_property_map_data>` will need to be pre-scaled by the inverse of that scale. Also note that GodotPhysics3D does not support scaling at all for dynamic bodies (that is, non-frozen :ref:`RigidBody3D<class_RigidBody3D>` nodes); to use a scaled **HeightMapShape3D** with those, you will need to use Jolt Physics.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`map_data<class_HeightMapShape3D_property_map_data>`   | ``PackedFloat32Array(0, 0, 0, 0)`` |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`map_depth<class_HeightMapShape3D_property_map_depth>` | ``2``                              |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`map_width<class_HeightMapShape3D_property_map_width>` | ``2``                              |
   +-----------------------------------------------------+-------------------------------------------------------------+------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_max_height<class_HeightMapShape3D_method_get_max_height>`\ (\ ) |const|                                                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_min_height<class_HeightMapShape3D_method_get_min_height>`\ (\ ) |const|                                                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`update_map_data_from_image<class_HeightMapShape3D_method_update_map_data_from_image>`\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_HeightMapShape3D_property_map_data:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **map_data** = ``PackedFloat32Array(0, 0, 0, 0)`` :ref:`🔗<class_HeightMapShape3D_property_map_data>`

.. rst-class:: classref-property-setget

- |void| **set_map_data**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_map_data**\ (\ )

Heightmap data. The array's size must be equal to :ref:`map_width<class_HeightMapShape3D_property_map_width>` multiplied by :ref:`map_depth<class_HeightMapShape3D_property_map_depth>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_depth** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_depth>`

.. rst-class:: classref-property-setget

- |void| **set_map_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_depth**\ (\ )

Number of vertices in the depth of the heightmap. Changing this will resize the :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_property_map_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **map_width** = ``2`` :ref:`🔗<class_HeightMapShape3D_property_map_width>`

.. rst-class:: classref-property-setget

- |void| **set_map_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_map_width**\ (\ )

Number of vertices in the width of the heightmap. Changing this will resize the :ref:`map_data<class_HeightMapShape3D_property_map_data>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_HeightMapShape3D_method_get_max_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_max_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_max_height>`

Renvoie la plus grande valeur de hauteur trouvée dans :ref:`map_data<class_HeightMapShape3D_property_map_data>`. Recalcule seulement lorsque :ref:`map_data<class_HeightMapShape3D_property_map_data>` change.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_get_min_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_min_height**\ (\ ) |const| :ref:`🔗<class_HeightMapShape3D_method_get_min_height>`

Renvoie la plus petite valeur de hauteur trouvée dans :ref:`map_data<class_HeightMapShape3D_property_map_data>`. Recalcule seulement lorsque :ref:`map_data<class_HeightMapShape3D_property_map_data>` change.

.. rst-class:: classref-item-separator

----

.. _class_HeightMapShape3D_method_update_map_data_from_image:

.. rst-class:: classref-method

|void| **update_map_data_from_image**\ (\ image\: :ref:`Image<class_Image>`, height_min\: :ref:`float<class_float>`, height_max\: :ref:`float<class_float>`\ ) :ref:`🔗<class_HeightMapShape3D_method_update_map_data_from_image>`

Met à jour :ref:`map_data<class_HeightMapShape3D_property_map_data>` avec les données lues à partir d'une référence :ref:`Image<class_Image>`. Redimensionne automatiquement :ref:`map_width<class_HeightMapShape3D_property_map_width>` et :ref:`map_depth<class_HeightMapShape3D_property_map_depth>` de la heightmap pour faire correspondre à la largeur et à la hauteur complètes de l'image.

L'image doit être en format :ref:`Image.FORMAT_RF<class_Image_constant_FORMAT_RF>` (32 bit), :ref:`Image.FORMAT_RH<class_Image_constant_FORMAT_RH>` (16 bits), ou :ref:`Image.FORMAT_R8<class_Image_constant_FORMAT_R8>` (8 bits).

Chaque pixel d'image est lu comme un flottant sur une plage de ``0.0`` (pixel noir) à ``1.0`` (pixel blanc). Cette valeur de plage est réaffectée à ``height_min`` et ``height_max`` pour former la valeur de hauteur finale.

\ **Note :** Il est recommandé d'utiliser une heightmap avec des données 16 bits ou 32 bits, stockées en format EXR ou HDR. L'utilisation de données de hauteur de 8 bits, ou un format comme le PNG que Godot importe en 8 bits, entraînera un terrain en terrasses.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
