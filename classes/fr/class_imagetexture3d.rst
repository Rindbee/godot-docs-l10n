:github_url: hide

.. _class_ImageTexture3D:

ImageTexture3D
==============

**Hérite de :** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une texture à 3 dimensions.

.. rst-class:: classref-introduction-group

Description
-----------

**ImageTexture3D** is a 3-dimensional :ref:`ImageTexture<class_ImageTexture>` that has a width, height, and depth. See also :ref:`ImageTextureLayered<class_ImageTextureLayered>`.

3D textures are typically used to store density maps for :ref:`FogMaterial<class_FogMaterial>`, color correction LUTs for :ref:`Environment<class_Environment>`, vector fields for :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>` and collision maps for :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>`. 3D textures can also be used in custom shaders.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create<class_ImageTexture3D_method_create>`\ (\ format\: :ref:`Format<enum_Image_Format>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, use_mipmaps\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update<class_ImageTexture3D_method_update>`\ (\ data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ )                                                                                                                                                                                 |
   +---------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ImageTexture3D_method_create:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create**\ (\ format\: :ref:`Format<enum_Image_Format>`, width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, use_mipmaps\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTexture3D_method_create>`

Creates the **ImageTexture3D** with specified ``format``, ``width``, ``height``, and ``depth``. If ``use_mipmaps`` is ``true``, generates mipmaps for the **ImageTexture3D**.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture3D_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ data\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTexture3D_method_update>`

Replaces the texture's existing data with the layers specified in ``data``. The size of ``data`` must match the parameters that were used for :ref:`create()<class_ImageTexture3D_method_create>`. In other words, the texture cannot be resized or have its format changed by calling :ref:`update()<class_ImageTexture3D_method_update>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
