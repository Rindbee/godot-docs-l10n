:github_url: hide

.. _class_ViewportTexture:

ViewportTexture
===============

**Hérite de :** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Fournit le contenu d'un :ref:`Viewport<class_Viewport>` en tant que texture dynamique.

.. rst-class:: classref-introduction-group

Description
-----------

A **ViewportTexture** provides the content of a :ref:`Viewport<class_Viewport>` as a dynamic :ref:`Texture2D<class_Texture2D>`. This can be used to combine the rendering of :ref:`Control<class_Control>`, :ref:`Node2D<class_Node2D>` and :ref:`Node3D<class_Node3D>` nodes. For example, you can use this texture to display a 3D scene inside a :ref:`TextureRect<class_TextureRect>`, or a 2D overlay in a :ref:`Sprite3D<class_Sprite3D>`.

To get a **ViewportTexture** in code, use the :ref:`Viewport.get_texture()<class_Viewport_method_get_texture>` method on the target viewport.

\ **Note:** A **ViewportTexture** is always local to its scene (see :ref:`Resource.resource_local_to_scene<class_Resource_property_resource_local_to_scene>`). If the scene root is not ready, it may return incorrect data (see :ref:`Node.ready<class_Node_signal_ready>`).

\ **Note:** Instantiating scenes containing a high-resolution **ViewportTexture** may cause noticeable stutter.

\ **Note:** When using a :ref:`Viewport<class_Viewport>` with :ref:`Viewport.use_hdr_2d<class_Viewport_property_use_hdr_2d>` set to ``true``, the returned texture will be an HDR image encoded in linear space. This may look darker than normal when displayed directly on screen. To convert to gamma space, you can do the following:

::

    img.convert(Image.FORMAT_RGBA8)
    imb.linear_to_srgb()

\ **Note:** Some nodes such as :ref:`Decal<class_Decal>`, :ref:`Light3D<class_Light3D>`, and :ref:`PointLight2D<class_PointLight2D>` do not support using **ViewportTexture** directly. To use texture data from a **ViewportTexture** in these nodes, you need to create an :ref:`ImageTexture<class_ImageTexture>` by calling :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` on the **ViewportTexture** and passing the result to :ref:`ImageTexture.create_from_image()<class_ImageTexture_method_create_from_image>`. This conversion is a slow operation, so it should not be performed every frame.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de GUI dans un Viewport 3D <https://godotengine.org/asset-library/asset/2807>`__

- `Démo pour de la 3D dans un viewport 2D <https://godotengine.org/asset-library/asset/2804>`__

- `Démo pour de la 2D dans un viewport 3D <https://godotengine.org/asset-library/asset/2803>`__

- `Démo de redimensionnement de la résolution 3D <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`viewport_path<class_ViewportTexture_property_viewport_path>` | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ViewportTexture_property_viewport_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **viewport_path** = ``NodePath("")`` :ref:`🔗<class_ViewportTexture_property_viewport_path>`

.. rst-class:: classref-property-setget

- |void| **set_viewport_path_in_scene**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_viewport_path_in_scene**\ (\ )

Le chemin vers le nœud :ref:`Viewport<class_Viewport>` à afficher. Ceci est relatif à la racine de la scène locale (voir :ref:`Resource.get_local_scene()<class_Resource_method_get_local_scene>`), **pas** aux nœuds qui utilisent cette texture.

\ **Note :** Dans l'éditeur, ce chemin est automatiquement mis à jour lorsque le viewport cible ou l'un de ses ancêtres est renommé ou déplacé. Durant l'exécution, ce chemin peut ne pas être automatiquement mis à jour si la racine de la scène ne peut pas être trouvée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
