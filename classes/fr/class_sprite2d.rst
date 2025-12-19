:github_url: hide

.. _class_Sprite2D:

Sprite2D
========

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nœud de sprite à usage général.

.. rst-class:: classref-introduction-group

Description
-----------

Un nœud qui affiche une texture 2D. La texture affichée peut être une région à partir d'une texture plus grande de l'atlas, ou d'une trame d'une animation de feuille de sprite.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo des instanciations <https://godotengine.org/asset-library/asset/2716>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`centered<class_Sprite2D_property_centered>`                                     | ``true``              |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`flip_h<class_Sprite2D_property_flip_h>`                                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`flip_v<class_Sprite2D_property_flip_v>`                                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`frame<class_Sprite2D_property_frame>`                                           | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`frame_coords<class_Sprite2D_property_frame_coords>`                             | ``Vector2i(0, 0)``    |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`hframes<class_Sprite2D_property_hframes>`                                       | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`     | :ref:`offset<class_Sprite2D_property_offset>`                                         | ``Vector2(0, 0)``     |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_enabled<class_Sprite2D_property_region_enabled>`                         | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_filter_clip_enabled<class_Sprite2D_property_region_filter_clip_enabled>` | ``false``             |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region_rect<class_Sprite2D_property_region_rect>`                               | ``Rect2(0, 0, 0, 0)`` |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_Sprite2D_property_texture>`                                       |                       |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`vframes<class_Sprite2D_property_vframes>`                                       | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_rect<class_Sprite2D_method_get_rect>`\ (\ ) |const|                                                    |
   +---------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_pixel_opaque<class_Sprite2D_method_is_pixel_opaque>`\ (\ pos\: :ref:`Vector2<class_Vector2>`\ ) |const| |
   +---------------------------+------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Sprite2D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_Sprite2D_signal_frame_changed>`

Émis quand une :ref:`frame<class_Sprite2D_property_frame>` changes.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_Sprite2D_signal_texture_changed>`

Émis quand une :ref:`texture<class_Sprite2D_property_texture>` change.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Sprite2D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_Sprite2D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

Si ``true``, la texture est centrée.

\ **Note :** Pour les jeux avec une esthétique pixel art, les textures peuvent apparaître déformées lorsqu'elles sont centrées. Ceci est causé par leur position se trouvant entre les pixels. Pour éviter cela, définissez cette propriété à ``false``, ou envisagez d'activer :ref:`ProjectSettings.rendering/2d/snap/snap_2d_vertices_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_vertices_to_pixel>` et :ref:`ProjectSettings.rendering/2d/snap/snap_2d_transforms_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_transforms_to_pixel>`.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_Sprite2D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Si ``true``, la texture est inversée horizontalement.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_Sprite2D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Si ``true``, la texture est inversée verticalement.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_Sprite2D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Trame actuelle à afficher à partir de la feuille de sprite. :ref:`hframes<class_Sprite2D_property_hframes>` ou :ref:`vframes<class_Sprite2D_property_vframes>` doivent être supérieurs à 1. Cette propriété est automatiquement rajustée lorsque :ref:`hframes<class_Sprite2D_property_hframes>` ou :ref:`vframes<class_Sprite2D_property_vframes>` sont modifiés pour garder le pointage sur la même trame visuelle (même colonne et rangée). Si c'est impossible, cette valeur est réinitialisée à ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_frame_coords:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **frame_coords** = ``Vector2i(0, 0)`` :ref:`🔗<class_Sprite2D_property_frame_coords>`

.. rst-class:: classref-property-setget

- |void| **set_frame_coords**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_frame_coords**\ (\ )

Les coordonnées de la trame à afficher de la feuille de sprite. Il s'agit d'un raccourci de la propriété :ref:`frame<class_Sprite2D_property_frame>`. :ref:`hframes<class_Sprite2D_property_hframes>` ou :ref:`vframes<class_Sprite2D_property_vframes>` doivent être supérieurs à 1.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_hframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **hframes** = ``1`` :ref:`🔗<class_Sprite2D_property_hframes>`

.. rst-class:: classref-property-setget

- |void| **set_hframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hframes**\ (\ )

The number of columns in the sprite sheet. When this property is changed, :ref:`frame<class_Sprite2D_property_frame>` is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, :ref:`frame<class_Sprite2D_property_frame>` is reset to ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Sprite2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Le décalage de dessin de la texture.

\ **Note :** Lorsque vous augmentez :ref:`offset<class_Sprite2D_property_offset>`.y dans Sprite2D, le sprite se déplace vers le bas à l'écran (c.-à-d. +Y pointe vers le bas).

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_enabled** = ``false`` :ref:`🔗<class_Sprite2D_property_region_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_enabled**\ (\ )

If ``true``, texture is cut from a larger atlas texture. See :ref:`region_rect<class_Sprite2D_property_region_rect>`.

\ **Note:** When using a custom :ref:`Shader<class_Shader>` on a **Sprite2D**, the ``UV`` shader built-in will refer to the entire texture space. Use the ``REGION_RECT`` built-in to get the currently visible region defined in :ref:`region_rect<class_Sprite2D_property_region_rect>` instead. See :doc:`CanvasItem shaders <../tutorials/shaders/shader_reference/canvas_item_shader>` for details.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_filter_clip_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_filter_clip_enabled** = ``false`` :ref:`🔗<class_Sprite2D_property_region_filter_clip_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_filter_clip_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_filter_clip_enabled**\ (\ )

If ``true``, the area outside of the :ref:`region_rect<class_Sprite2D_property_region_rect>` is clipped to avoid bleeding of the surrounding texture pixels. :ref:`region_enabled<class_Sprite2D_property_region_enabled>` must be ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_Sprite2D_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

La région de la texture atlas à afficher. :ref:`region_enabled<class_Sprite2D_property_region_enabled>` doit être ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Sprite2D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

L’objet :ref:`Texture2D<class_Texture2D>` à dessiner.

.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_property_vframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **vframes** = ``1`` :ref:`🔗<class_Sprite2D_property_vframes>`

.. rst-class:: classref-property-setget

- |void| **set_vframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vframes**\ (\ )

The number of rows in the sprite sheet. When this property is changed, :ref:`frame<class_Sprite2D_property_frame>` is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, :ref:`frame<class_Sprite2D_property_frame>` is reset to ``0``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Sprite2D_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_Sprite2D_method_get_rect>`

Renvoie un :ref:`Rect2<class_Rect2>` représentant la bordure du Sprite2D dans les coordonnées locales.

\ **Exemple :** Détecter si le Sprite2D a été cliqué :


.. tabs::

 .. code-tab:: gdscript

    func _input(event):
        if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
            if get_rect().has_point(to_local(event.position)):
                print("Un clic !")

 .. code-tab:: csharp

    public override void _Input(InputEvent @event)
    {
        if (@event is InputEventMouseButton inputEventMouse)
        {
            if (inputEventMouse.Pressed && inputEventMouse.ButtonIndex == MouseButton.Left)
            {
                if (GetRect().HasPoint(ToLocal(inputEventMouse.Position)))
                {
                    GD.Print("Un clic !");
                }
            }
        }
    }



.. rst-class:: classref-item-separator

----

.. _class_Sprite2D_method_is_pixel_opaque:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pixel_opaque**\ (\ pos\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Sprite2D_method_is_pixel_opaque>`

Renvoie ``true``, si le pixel à la position donnée est opaque, ou ``false`` sinon. La position est dans les coordonnées locales.

\ **Note :** Elle renvoie également ``false`` si la texture du sprite est ``null`` ou si la position donnée est invalide.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
