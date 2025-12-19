:github_url: hide

.. _class_ResourceImporterTextureAtlas:

ResourceImporterTextureAtlas
============================

**Hérite de :** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports a collection of textures from a PNG image into an optimized :ref:`AtlasTexture<class_AtlasTexture>` for 2D rendering.

.. rst-class:: classref-introduction-group

Description
-----------

This imports a collection of textures from a PNG image into an :ref:`AtlasTexture<class_AtlasTexture>` or 2D :ref:`ArrayMesh<class_ArrayMesh>`. This can be used to save memory when importing 2D animations from spritesheets. Texture atlases are only supported in 2D rendering, not 3D. See also :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` and :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`.

\ **Note:** **ResourceImporterTextureAtlas** does not handle importing :ref:`TileSetAtlasSource<class_TileSetAtlasSource>`, which is created using the :ref:`TileSet<class_TileSet>` editor instead.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`atlas_file<class_ResourceImporterTextureAtlas_property_atlas_file>`                                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`                               | ``false`` |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>`                                     | ``0``     |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>` | ``true``  |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ResourceImporterTextureAtlas_property_atlas_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **atlas_file** = ``""`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_atlas_file>`

Path to the atlas spritesheet. This *must* be set to valid path to a PNG image. Otherwise, the atlas will fail to import.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_crop_to_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **crop_to_region** = ``false`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_crop_to_region>`

If ``true``, discards empty areas from the atlas. This only affects final sprite positioning, not storage. See also :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`.

\ **Note:** Only effective if :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` is **Region**.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_import_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **import_mode** = ``0`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_import_mode>`

**Region:** Imports the atlas in an :ref:`AtlasTexture<class_AtlasTexture>` resource, which is rendered as a rectangle. This is fast to render, but transparent areas still have to be rendered if they can't be trimmed effectively by :ref:`trim_alpha_border_from_region<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`. This can reduce performance when rendering large sprites on screen.

\ **Mesh:** Imports the atlas as an :ref:`ArrayMesh<class_ArrayMesh>` resource, keeping the original bitmap visible (but rendered as a polygon). This can be used to reduce fill rate when rendering large transparent sprites, at the cost of slower rendering if there are little to no transparent areas in the sprite.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trim_alpha_border_from_region** = ``true`` :ref:`🔗<class_ResourceImporterTextureAtlas_property_trim_alpha_border_from_region>`

Si ``true``, coupe la région pour exclure les pixels entièrement transparents en utilisant un rectangle de découpage (qui n'est jamais tourné). Cela peut être utilisé pour économiser de la mémoire. Voir aussi :ref:`crop_to_region<class_ResourceImporterTextureAtlas_property_crop_to_region>`.

\ **Note :** Seulement effectif si :ref:`import_mode<class_ResourceImporterTextureAtlas_property_import_mode>` vaut **Region**.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
