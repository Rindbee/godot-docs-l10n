:github_url: hide

.. _class_CanvasTexture:

CanvasTexture
=============

**Hérite de :** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Texture avec des normal maps et specular maps optionnelles à utiliser pour le rendu 2D.

.. rst-class:: classref-introduction-group

Description
-----------

**CanvasTexture** is an alternative to :ref:`ImageTexture<class_ImageTexture>` for 2D rendering. It allows using normal maps and specular maps in any node that inherits from :ref:`CanvasItem<class_CanvasItem>`. **CanvasTexture** also allows overriding the texture's filter and repeat mode independently of the node's properties (or the project settings).

\ **Note:** **CanvasTexture** cannot be used in 3D. It will not display correctly when applied to any :ref:`VisualInstance3D<class_VisualInstance3D>`, such as :ref:`Sprite3D<class_Sprite3D>` or :ref:`Decal<class_Decal>`. For physically-based materials in 3D, use :ref:`BaseMaterial3D<class_BaseMaterial3D>` instead.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Lumières et ombres 2D <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`diffuse_texture<class_CanvasTexture_property_diffuse_texture>`       |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`normal_texture<class_CanvasTexture_property_normal_texture>`         |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | resource_local_to_scene                                                    | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`specular_color<class_CanvasTexture_property_specular_color>`         | ``Color(1, 1, 1, 1)``                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`specular_shininess<class_CanvasTexture_property_specular_shininess>` | ``1.0``                                                                                |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`specular_texture<class_CanvasTexture_property_specular_texture>`     |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureFilter<enum_CanvasItem_TextureFilter>` | :ref:`texture_filter<class_CanvasTexture_property_texture_filter>`         | ``0``                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` | :ref:`texture_repeat<class_CanvasTexture_property_texture_repeat>`         | ``0``                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CanvasTexture_property_diffuse_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **diffuse_texture** :ref:`🔗<class_CanvasTexture_property_diffuse_texture>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_diffuse_texture**\ (\ )

La texture de diffusion (couleur) à utiliser. C'est la texture principale que vous voulez définir dans la plupart des cas.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_normal_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **normal_texture** :ref:`🔗<class_CanvasTexture_property_normal_texture>`

.. rst-class:: classref-property-setget

- |void| **set_normal_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_normal_texture**\ (\ )

La normal map à utiliser. A seulement un effet visible si des :ref:`Light2D<class_Light2D>`\ s affectent cette **CanvasTexture**.

\ **Note :** Godot s'attend à ce que la normal map utilise des coordonnées X+, Y+ et Z+. Voir `cette page <http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates>`__ pour une comparaison des coordonnées de normal map attendues par les moteurs populaires.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **specular_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CanvasTexture_property_specular_color>`

.. rst-class:: classref-property-setget

- |void| **set_specular_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_specular_color**\ (\ )

Le multiplicateur pour les couleurs de réflexion spéculaire. La couleur de la :ref:`Light2D<class_Light2D>` est également prise en compte lors de la détermination de la couleur de réflexion. A seulement un effet visible si des :ref:`Light2D<class_Light2D>`\ s affectent cette **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_shininess:

.. rst-class:: classref-property

:ref:`float<class_float>` **specular_shininess** = ``1.0`` :ref:`🔗<class_CanvasTexture_property_specular_shininess>`

.. rst-class:: classref-property-setget

- |void| **set_specular_shininess**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_specular_shininess**\ (\ )

The specular exponent for :ref:`Light2D<class_Light2D>` specular reflections. Higher values result in a more glossy/"wet" look, with reflections becoming more localized and less visible overall. The default value of ``1.0`` disables specular reflections entirely. Only has a visible effect if :ref:`Light2D<class_Light2D>`\ s are affecting this **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **specular_texture** :ref:`🔗<class_CanvasTexture_property_specular_texture>`

.. rst-class:: classref-property-setget

- |void| **set_specular_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_specular_texture**\ (\ )

The specular map to use for :ref:`Light2D<class_Light2D>` specular reflections. This should be a grayscale or colored texture, with brighter areas resulting in a higher :ref:`specular_shininess<class_CanvasTexture_property_specular_shininess>` value. Using a colored :ref:`specular_texture<class_CanvasTexture_property_specular_texture>` allows controlling specular shininess on a per-channel basis. Only has a visible effect if :ref:`Light2D<class_Light2D>`\ s are affecting this **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_CanvasItem_TextureFilter>` **texture_filter** = ``0`` :ref:`🔗<class_CanvasTexture_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_CanvasItem_TextureFilter>`\ )
- :ref:`TextureFilter<enum_CanvasItem_TextureFilter>` **get_texture_filter**\ (\ )

The texture filtering mode to use when drawing this **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_texture_repeat:

.. rst-class:: classref-property

:ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` **texture_repeat** = ``0`` :ref:`🔗<class_CanvasTexture_property_texture_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_texture_repeat**\ (\ value\: :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>`\ )
- :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` **get_texture_repeat**\ (\ )

Le mode de répétition de texture à utiliser lors du dessin de cette **CanvasTexture**.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
