:github_url: hide

.. _class_TextureButton:

TextureButton
=============

**Hérite de :** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un bouton affiché avec une Texture. Supporte les états appuyé, survolé, désactivé, et avec le focus.

.. rst-class:: classref-introduction-group

Description
-----------

**TextureButton** a les même fonctionnalités que :ref:`Button<class_Button>`, sauf qu'il utilise des sprites plutôt que la ressource :ref:`Theme<class_Theme>` de Godot. Il est plus rapide à créer, mais ne supporte pas la localisation comme certains :ref:`Control<class_Control>` plus complexes.

Voir aussi :ref:`BaseButton<class_BaseButton>` qui contient les propriétés et méthodes communes associées avec ce nœud.

\ **Note :** Il est recommandé de définir une texture pour l'état "normal" (:ref:`texture_normal<class_TextureButton_property_texture_normal>`). Si :ref:`texture_normal<class_TextureButton_property_texture_normal>` n'est pas définie, le **TextureButton** recevra encore des événements d'entrée et sera cliquable, mais l'utilisateur ne pourra pas le voir à moins qu'ils activent un autre de ses états avec une texture assignée (par exemple, le survoler pour afficher :ref:`texture_hover<class_TextureButton_property_texture_hover>`).

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

Échelonne la texture pour s'adapter au rectangle délimitant du nœud, la centre, et maintient son rapport d'aspect.

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

Si ``true``, la taille de la texture ne sera pas considérée pour le calcul de la taille minimale, de sorte que le **TextureButton** puisse être rétréci au delà de la taille de la texture.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_TextureButton_StretchMode>` **stretch_mode** = ``2`` :ref:`🔗<class_TextureButton_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_TextureButton_StretchMode>`\ )
- :ref:`StretchMode<enum_TextureButton_StretchMode>` **get_stretch_mode**\ (\ )

Contrôle le comportement de la texture lorsque vous redimensionnez le rectangle délimitant du nœud. Voir les constantes :ref:`StretchMode<enum_TextureButton_StretchMode>` pour les options disponibles.

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

Texture à afficher lorsque le nœud est désactivé. Voir :ref:`BaseButton.disabled<class_BaseButton_property_disabled>`. Si non assignée, le **TextureButton** affiche :ref:`texture_normal<class_TextureButton_property_texture_normal>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_focused:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_focused** :ref:`🔗<class_TextureButton_property_texture_focused>`

.. rst-class:: classref-property-setget

- |void| **set_texture_focused**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_focused**\ (\ )

Texture à *superposer sur la texture de base* lorsque le nœud a le focus de la souris ou du clavier. Comme :ref:`texture_focused<class_TextureButton_property_texture_focused>` est affiché au-dessus de la texture de base, une texture partiellement transparente devrait être utilisée pour s'assurer que la texture de base reste visible. Une texture qui représente un contour ou une soulignage fonctionne bien à cette fin. Pour désactiver l'effet visuel du focus, assignez une texture entièrement transparente de n'importe quelle taille. Notez que la désactivation de l'effet visuel du focus va nuire à l'utilisabilité de navigation clavier/contrôleur, ce qui n'est donc pas recommandé pour des raisons d'accessibilité.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_hover:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_hover** :ref:`🔗<class_TextureButton_property_texture_hover>`

.. rst-class:: classref-property-setget

- |void| **set_texture_hover**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_hover**\ (\ )

Texture à afficher lorsque la souris survole le nœud. Si non assignée, le **TextureButton** affiche :ref:`texture_normal<class_TextureButton_property_texture_normal>` à la place lorsqu'il est survolé.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_TextureButton_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture_normal**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_normal**\ (\ )

Texture à afficher par défaut, quand le nœud n'est **pas** dans l'état désactivé, survolé or appuyé. Cette texture sera toujours affichée dans l'état avec le focus, avec :ref:`texture_focused<class_TextureButton_property_texture_focused>` dessiné par dessus.

.. rst-class:: classref-item-separator

----

.. _class_TextureButton_property_texture_pressed:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_pressed** :ref:`🔗<class_TextureButton_property_texture_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_texture_pressed**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_pressed**\ (\ )

Texture à afficher quand la souris appuie sur le nœud, si le nœud a le focus du clavier et que l'utilisateur appuie sur la touche Entrée, ou quand l'utilisateur appuie sur la touche :ref:`BaseButton.shortcut<class_BaseButton_property_shortcut>`. Si non assignée, le **TextureButton** affiche :ref:`texture_hover<class_TextureButton_property_texture_hover>` à la place lors qu’appuyé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
