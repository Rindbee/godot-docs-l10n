:github_url: hide

.. _class_TextureButton:

TextureButton
=============

**Hérite de :** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un bouton affiché avec une Texture. Supporte les états appuyé, survolé, désactivé, et avec le focus.

.. rst-class:: classref-introduction-group

Description
-----------

**TextureButton** has the same functionality as :ref:`Button<class_Button>`, except it uses sprites instead of Godot's :ref:`Theme<class_Theme>` resource. It is faster to create, but it doesn't support localization like more complex :ref:`Control<class_Control>`\ s.

See also :ref:`BaseButton<class_BaseButton>` which contains common properties and methods associated with this node.

\ **Note:** Setting a texture for the "normal" state (:ref:`texture_normal<class_TextureButton_property_texture_normal>`) is recommended. If :ref:`texture_normal<class_TextureButton_property_texture_normal>` is not set, the **TextureButton** will still receive input events and be clickable, but the user will not be able to see it unless they activate another one of its states with a texture assigned (e.g., hover over it to show :ref:`texture_hover<class_TextureButton_property_texture_hover>`).

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                            | :ref:`flip_h<class_TextureButton_property_flip_h>`                           | ``false`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                            | :ref:`flip_v<class_TextureButton_property_flip_v>`                           | ``false`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                            | :ref:`ignore_texture_size<class_TextureButton_property_ignore_texture_size>` | ``false`` |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`StretchMode<enum_TextureButton_StretchMode>` | :ref:`stretch_mode<class_TextureButton_property_stretch_mode>`               | ``2``     |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`BitMap<class_BitMap>`                        | :ref:`texture_click_mask<class_TextureButton_property_texture_click_mask>`   |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_disabled<class_TextureButton_property_texture_disabled>`       |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_focused<class_TextureButton_property_texture_focused>`         |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_hover<class_TextureButton_property_texture_hover>`             |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_normal<class_TextureButton_property_texture_normal>`           |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                  | :ref:`texture_pressed<class_TextureButton_property_texture_pressed>`         |           |
   +----------------------------------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_TextureButton_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_TextureButton_StretchMode>`

.. _class_TextureButton_constant_STRETCH_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_SCALE** = ``0``

Change l'échelle pour adapter le rectangle total du nœud.

.. _class_TextureButton_constant_STRETCH_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_TILE** = ``1``

Répétition à l'intérieur du rectangle délimitant du nœud.

.. _class_TextureButton_constant_STRETCH_KEEP:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP** = ``2``

La texture conserve sa taille d’origine et reste dans le coin supérieur gauche du rectangle délimitant.

.. _class_TextureButton_constant_STRETCH_KEEP_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_CENTERED** = ``3``

La texture conserve sa taille d’origine et reste centrée dans le rectangle délimitant du nœud.

.. _class_TextureButton_constant_STRETCH_KEEP_ASPECT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_ASPECT** = ``4``

Échelonne la texture pour s'adapter au rectangle délimitant du nœud, mais maintient le rapport d'aspect de la texture.

.. _class_TextureButton_constant_STRETCH_KEEP_ASPECT_CENTERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_ASPECT_CENTERED** = ``5``

Scale the texture to fit the node's bounding rectangle, center it, and maintain its aspect ratio.

.. _class_TextureButton_constant_STRETCH_KEEP_ASPECT_COVERED:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_TextureButton_StretchMode>` **STRETCH_KEEP_ASPECT_COVERED** = ``6``

Échelonne la texture pour que le côté le plus court rentre dans le rectangle délimitant du nœud. L'autre côté est coupé aux limites du nœud.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_TextureButton_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TextureButton_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Si ``true``, la texture est inversée horizontalement.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TextureButton_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Si ``true``, la texture est inversée verticalement.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_ignore_texture_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_texture_size** = ``false`` :ref:`🔗<class_TextureButton_property_ignore_texture_size>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_texture_size**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_ignore_texture_size**\ (\ )

If ``true``, the size of the texture won't be considered for minimum size calculation, so the **TextureButton** can be shrunk down past the texture size.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_TextureButton_StretchMode>` **stretch_mode** = ``2`` :ref:`🔗<class_TextureButton_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_TextureButton_StretchMode>`\ )
- :ref:`StretchMode<enum_TextureButton_StretchMode>` **get_stretch_mode**\ (\ )

Controls the texture's behavior when you resize the node's bounding rectangle. See the :ref:`StretchMode<enum_TextureButton_StretchMode>` constants for available options.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_click_mask:

.. rst-class:: classref-property

:ref:`BitMap<class_BitMap>` **texture_click_mask** :ref:`🔗<class_TextureButton_property_texture_click_mask>`

.. rst-class:: classref-property-setget

- |void| **set_click_mask**\ (\ value\: :ref:`BitMap<class_BitMap>`\ )
- :ref:`BitMap<class_BitMap>` **get_click_mask**\ (\ )

Image :ref:`BitMap<class_BitMap>` en pur noir et blanc à utiliser pour la détection de clics. Sur le masque, les pixels blancs représentent la zone cliquable du bouton. Utilisez-le pour créer des boutons avec des formes courbes.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_disabled:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_disabled** :ref:`🔗<class_TextureButton_property_texture_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_texture_disabled**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_disabled**\ (\ )

Texture to display when the node is disabled. See :ref:`BaseButton.disabled<class_BaseButton_property_disabled>`. If not assigned, the **TextureButton** displays :ref:`texture_normal<class_TextureButton_property_texture_normal>` instead.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_focused:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_focused** :ref:`🔗<class_TextureButton_property_texture_focused>`

.. rst-class:: classref-property-setget

- |void| **set_texture_focused**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_focused**\ (\ )

Texture to *overlay on the base texture* when the node has mouse or keyboard focus. Because :ref:`texture_focused<class_TextureButton_property_texture_focused>` is displayed on top of the base texture, a partially transparent texture should be used to ensure the base texture remains visible. A texture that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a fully transparent texture of any size. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_hover:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_hover** :ref:`🔗<class_TextureButton_property_texture_hover>`

.. rst-class:: classref-property-setget

- |void| **set_texture_hover**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_hover**\ (\ )

Texture to display when the mouse hovers over the node. If not assigned, the **TextureButton** displays :ref:`texture_normal<class_TextureButton_property_texture_normal>` instead when hovered over.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_TextureButton_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture_normal**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_normal**\ (\ )

Texture to display by default, when the node is **not** in the disabled, hover or pressed state. This texture is still displayed in the focused state, with :ref:`texture_focused<class_TextureButton_property_texture_focused>` drawn on top.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_pressed:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_pressed** :ref:`🔗<class_TextureButton_property_texture_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_texture_pressed**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_pressed**\ (\ )

Texture to display on mouse down over the node, if the node has keyboard focus and the player presses the Enter key or if the player presses the :ref:`BaseButton.shortcut<class_BaseButton_property_shortcut>` key. If not assigned, the **TextureButton** displays :ref:`texture_hover<class_TextureButton_property_texture_hover>` instead when pressed.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
