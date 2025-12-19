:github_url: hide

.. _class_ImageTextureLayered:

ImageTextureLayered
===================

**Hérite de :** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>`

Classe de base pour les types de texture qui contiennent les données de plusieurs :ref:`ImageTexture<class_ImageTexture>`\ s. Chaque image est de la même taille et du même format.

.. rst-class:: classref-introduction-group

Description
-----------

Classe de base pour :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` et :ref:`CubemapArray<class_CubemapArray>`. Ne peut être utilisée directement, mais contient toutes les fonctions nécessaires pour accéder aux types de ressources dérivées. Voir aussi :ref:`Texture3D<class_Texture3D>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_from_images<class_ImageTextureLayered_method_create_from_images>`\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update_layer<class_ImageTextureLayered_method_update_layer>`\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ )            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ImageTextureLayered_method_create_from_images:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTextureLayered_method_create_from_images>`

Crée une **ImageTextureLayered** depuis un tableau d':ref:`Image<class_Image>`\ s. Voir :ref:`Image.create()<class_Image_method_create>` pour le format attendu des données. La première image décide de la largeur, de la hauteur, du format d'image et des paramètres de mipmaps. Les autres images *doivent* avoir la même largeur, hauteur, format d'image et paramètres de mipmaps.

Chaque :ref:`Image<class_Image>` représente une couche ``layer``.

::

    # Remplir un tableau d'images avec des images de différentes couleurs.
    var images = []
    const COUCHES = 6
    for i in COUCHES:
        var image = Image.create_empty(128, 128, false, Image.FORMAT_RGB8)
        if i % 3 == 0:
            image.fill(Color.RED)
        elif i % 3 == 1:
            image.fill(Color.GREEN)
        else:
            image.fill(Color.BLUE)
        images.push_back(image)

    # Créer et sauvegarder un tableau de textures 2D. Le tableau d'images doit avoir au moins une image.
    var tableau_texture_2d = Texture2DArray.new()
    tableau_texture_2d.create_from_images(images)
    ResourceSaver.save(tableau_texture_2d, "res://tableau_texture_2d.res", ResourceSaver.FLAG_COMPRESS)

    # Créer et sauvegarder une cubemap. Le tableau d'images doit avoir exactement 6 images.
    # Les images de la cubemap sont spécifiés dans cet ordre : X+, X-, Y+, Y-, Z+, Z-
    # (dans le système de coordonnées de Godot, donc Y+ est "haut" et Z- est "avant").
    var cubemap = Cubemap.new()
    cubemap.create_from_images(images)
    ResourceSaver.save(cubemap, "res://cubemap.res", ResourceSaver.FLAG_COMPRESS)

    # Créer et sauvegarder un tableau de cubemaps. Le tableau d'images doit avoir un multiple de 6 images.
    # Les images de chaque cubemap sont spécifiés dans cet ordre : X+, X-, Y+, Y-, Z+, Z-
    # (dans le système de coordonnées de Godot, donc Y+ est "haut" et Z- est "avant").
    var tableau_cubemap = CubemapArray.new()
    tableau_cubemap.create_from_images(images)
    ResourceSaver.save(tableau_cubemap, "res://tableau_cubemap.res", ResourceSaver.FLAG_COMPRESS)

.. rst-class:: classref-item-separator

----

.. _class_ImageTextureLayered_method_update_layer:

.. rst-class:: classref-method

|void| **update_layer**\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImageTextureLayered_method_update_layer>`

Remplace les données de l':ref:`Image<class_Image>` existante à la couche ``layer`` donnée par cette nouvelle image.

L'image donnée doit avoir la même largeur, hauteur, format d'image et drapeau de mipmapping que le reste des images référencées.

Si le format d'image n'est pas supporté, elle sera décompressée et convertie en un :ref:`Format<enum_Image_Format>` similaire et supporté.

La mise à jour est immédiate : elle est synchronisée avec le dessin.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
