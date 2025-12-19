:github_url: hide

.. _class_NavigationMeshSourceGeometryData2D:

NavigationMeshSourceGeometryData2D
==================================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Conteneur pour des données de géométrie source parsées utilisé dans le pré-calcul de maillage de navigation.

.. rst-class:: classref-introduction-group

Description
-----------

Conteneur pour des données de géométrie source parsées utilisé dans le pré-calcul de maillage de navigation.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_obstruction_outline<class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline>`\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                             |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_projected_obstruction<class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction>`\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, carve\: :ref:`bool<class_bool>`\ )             |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_traversable_outline<class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline>`\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                             |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`append_obstruction_outlines<class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines>`\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`append_traversable_outlines<class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines>`\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`clear<class_NavigationMeshSourceGeometryData2D_method_clear>`\ (\ )                                                                                                                                                      |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`clear_projected_obstructions<class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions>`\ (\ )                                                                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                                        | :ref:`get_bounds<class_NavigationMeshSourceGeometryData2D_method_get_bounds>`\ (\ )                                                                                                                                            |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`get_obstruction_outlines<class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines>`\ (\ ) |const|                                                                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                        | :ref:`get_projected_obstructions<class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions>`\ (\ ) |const|                                                                                                    |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`get_traversable_outlines<class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines>`\ (\ ) |const|                                                                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`has_data<class_NavigationMeshSourceGeometryData2D_method_has_data>`\ (\ )                                                                                                                                                |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`merge<class_NavigationMeshSourceGeometryData2D_method_merge>`\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`\ )                                                |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_obstruction_outlines<class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines>`\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ )       |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_projected_obstructions<class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions>`\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ )                                                        |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_traversable_outlines<class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines>`\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ )       |
   +----------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline:

.. rst-class:: classref-method

|void| **add_obstruction_outline**\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_obstruction_outline>`

Ajoute les points du contour d'une forme comme zone obstruée.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction:

.. rst-class:: classref-method

|void| **add_projected_obstruction**\ (\ vertices\: :ref:`PackedVector2Array<class_PackedVector2Array>`, carve\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_projected_obstruction>`

Ajoute une forme d'obstruction projetée à la géométrie source. Si ``carve`` vaut ``true``, la forme découpée ne sera pas affectée par des déglaces supplémentaires (par exemple le rayon de l'agent) du processus de pré-calcul du maillage de navigation.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline:

.. rst-class:: classref-method

|void| **add_traversable_outline**\ (\ shape_outline\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_add_traversable_outline>`

Adds the outline points of a shape as traversable area.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines:

.. rst-class:: classref-method

|void| **append_obstruction_outlines**\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_append_obstruction_outlines>`

Appends another array of ``obstruction_outlines`` at the end of the existing obstruction outlines array.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines:

.. rst-class:: classref-method

|void| **append_traversable_outlines**\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_append_traversable_outlines>`

Appends another array of ``traversable_outlines`` at the end of the existing traversable outlines array.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_clear>`

Efface les données internes.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions:

.. rst-class:: classref-method

|void| **clear_projected_obstructions**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_clear_projected_obstructions>`

Clears all projected obstructions.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_bounds>`

Returns an axis-aligned bounding box that covers all the stored geometry data. The bounds are calculated when calling this function with the result cached until further geometry changes are made.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **get_obstruction_outlines**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_obstruction_outlines>`

Returns all the obstructed area outlines arrays.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_projected_obstructions**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_projected_obstructions>`

Returns the projected obstructions as an :ref:`Array<class_Array>` of dictionaries. Each :ref:`Dictionary<class_Dictionary>` contains the following entries:

- ``vertices`` - A :ref:`PackedFloat32Array<class_PackedFloat32Array>` that defines the outline points of the projected shape.

- ``carve`` - A :ref:`bool<class_bool>` that defines how the projected shape affects the navigation mesh baking. If ``true`` the projected shape will not be affected by addition offsets, e.g. agent radius.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **get_traversable_outlines**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_get_traversable_outlines>`

Returns all the traversable area outlines arrays.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_has_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_data**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_has_data>`

Returns ``true`` when parsed source geometry data exists.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_merge>`

Adds the geometry data of another **NavigationMeshSourceGeometryData2D** to the navigation mesh baking data.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines:

.. rst-class:: classref-method

|void| **set_obstruction_outlines**\ (\ obstruction_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_obstruction_outlines>`

Sets all the obstructed area outlines arrays.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions:

.. rst-class:: classref-method

|void| **set_projected_obstructions**\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_projected_obstructions>`

Sets the projected obstructions with an Array of Dictionaries with the following key value pairs:


.. tabs::

 .. code-tab:: gdscript

    "vertices" : PackedFloat32Array
    "carve" : bool



.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines:

.. rst-class:: classref-method

|void| **set_traversable_outlines**\ (\ traversable_outlines\: :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\]\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData2D_method_set_traversable_outlines>`

Sets all the traversable area outlines arrays.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
