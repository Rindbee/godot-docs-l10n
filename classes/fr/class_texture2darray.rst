:github_url: hide

.. _class_Texture2DArray:

Texture2DArray
==============

**Hérite de :** :ref:`ImageTextureLayered<class_ImageTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A single texture resource which consists of multiple, separate images. Each image has the same dimensions and number of mipmap levels.

.. rst-class:: classref-introduction-group

Description
-----------

A Texture2DArray is different from a Texture3D: The Texture2DArray does not support trilinear interpolation between the :ref:`Image<class_Image>`\ s, i.e. no blending. See also :ref:`Cubemap<class_Cubemap>` and :ref:`CubemapArray<class_CubemapArray>`, which are texture arrays with specialized cubemap functions.

A Texture2DArray is also different from an :ref:`AtlasTexture<class_AtlasTexture>`: In a Texture2DArray, all images are treated separately. In an atlas, the regions (i.e. the single images) can be of different sizes. Furthermore, you usually need to add a padding around the regions, to prevent accidental UV mapping to more than one region. The same goes for mipmapping: Mipmap chains are handled separately for each layer. In an atlas, the slicing has to be done manually in the fragment shader.

To create such a texture file yourself, reimport your image files using the Godot Editor import presets. To create a Texture2DArray from code, use :ref:`ImageTextureLayered.create_from_images()<class_ImageTextureLayered_method_create_from_images>` on an instance of the Texture2DArray class.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Texture2DArray_method_create_placeholder>`\ (\ ) |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Texture2DArray_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture2DArray_method_create_placeholder>`

Creates a placeholder version of this resource (:ref:`PlaceholderTexture2DArray<class_PlaceholderTexture2DArray>`).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
