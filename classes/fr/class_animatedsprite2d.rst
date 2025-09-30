:github_url: hide

.. _class_AnimatedSprite2D:

AnimatedSprite2D
================

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Le nœud de sprite qui peut utiliser plusieurs textures pour jouer une animation.

.. rst-class:: classref-introduction-group

Description
-----------

**AnimatedSprite2D** est semblable au nœud :ref:`Sprite2D<class_Sprite2D>`, sauf qu'il contient plusieurs textures comme des trames d'animation. Les animations sont créées à l'aide d'une ressource :ref:`SpriteFrames<class_SpriteFrames>` qui vous permet d'importer des fichiers d'image (ou un dossier contenant ces fichiers) pour fournir les trames d'animation pour le sprite. La ressource :ref:`SpriteFrames<class_SpriteFrames>` peut être configurée dans l'éditeur via le panneau inférieur SpriteFrames.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Animation Sprite 2D <../tutorials/2d/2d_sprite_animation>`

- `Démo 2D « Dodge The Creeps » <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`StringName<class_StringName>`     | :ref:`animation<class_AnimatedSprite2D_property_animation>`           | ``&"default"``    |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`String<class_String>`             | :ref:`autoplay<class_AnimatedSprite2D_property_autoplay>`             | ``""``            |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`centered<class_AnimatedSprite2D_property_centered>`             | ``true``          |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`flip_h<class_AnimatedSprite2D_property_flip_h>`                 | ``false``         |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                 | :ref:`flip_v<class_AnimatedSprite2D_property_flip_v>`                 | ``false``         |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                   | :ref:`frame<class_AnimatedSprite2D_property_frame>`                   | ``0``             |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`               | :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` | ``0.0``           |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`           | :ref:`offset<class_AnimatedSprite2D_property_offset>`                 | ``Vector2(0, 0)`` |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`               | :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>`       | ``1.0``           |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`SpriteFrames<class_SpriteFrames>` | :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>`   |                   |
   +-----------------------------------------+-----------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_playing_speed<class_AnimatedSprite2D_method_get_playing_speed>`\ (\ ) |const|                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_playing<class_AnimatedSprite2D_method_is_playing>`\ (\ ) |const|                                                                                                                           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`pause<class_AnimatedSprite2D_method_pause>`\ (\ )                                                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play<class_AnimatedSprite2D_method_play>`\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play_backwards<class_AnimatedSprite2D_method_play_backwards>`\ (\ name\: :ref:`StringName<class_StringName>` = &""\ )                                                                         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_frame_and_progress<class_AnimatedSprite2D_method_set_frame_and_progress>`\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ )                                      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`stop<class_AnimatedSprite2D_method_stop>`\ (\ )                                                                                                                                               |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_AnimatedSprite2D_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_changed>`

Émis lorsque :ref:`animation<class_AnimatedSprite2D_property_animation>` change.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_finished>`

Émis lorsque l'animation atteint la fin, ou le départ si elle est jouée à l'envers. Lorsque l'animation se termine, elle met en pause la lecture.

\ **Note :** Ce signal n'est pas émis si une animation boucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_animation_looped:

.. rst-class:: classref-signal

**animation_looped**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_animation_looped>`

Émis lorsque l'animation boucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_frame_changed>`

Émis lorsque :ref:`frame<class_AnimatedSprite2D_property_frame>` change.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_signal_sprite_frames_changed:

.. rst-class:: classref-signal

**sprite_frames_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_signal_sprite_frames_changed>`

Émis lorsque :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>` change.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AnimatedSprite2D_property_animation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **animation** = ``&"default"`` :ref:`🔗<class_AnimatedSprite2D_property_animation>`

.. rst-class:: classref-property-setget

- |void| **set_animation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_animation**\ (\ )

L'animation actuelle de la ressource :ref:`sprite_frames<class_AnimatedSprite2D_property_sprite_frames>`. Si cette valeur est modifiée, le compteur :ref:`frame<class_AnimatedSprite2D_property_frame>` et :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` sont réinitialisés.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_autoplay:

.. rst-class:: classref-property

:ref:`String<class_String>` **autoplay** = ``""`` :ref:`🔗<class_AnimatedSprite2D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_autoplay**\ (\ )

La clé d'animation à jouer quand la scène est chargée.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_AnimatedSprite2D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

Si ``true``, la texture sera centrée.

\ **Note :** Pour les jeux avec une esthétique pixel art, les textures peuvent apparaître déformées lorsqu'elles sont centrées. Ceci est causé par leur position se trouvant entre les pixels. Pour éviter cela, définissez cette propriété à ``false``, ou envisagez d'activer :ref:`ProjectSettings.rendering/2d/snap/snap_2d_vertices_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_vertices_to_pixel>` et :ref:`ProjectSettings.rendering/2d/snap/snap_2d_transforms_to_pixel<class_ProjectSettings_property_rendering/2d/snap/snap_2d_transforms_to_pixel>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_AnimatedSprite2D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Si ``true``, la texture est inversée horizontalement.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_AnimatedSprite2D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Si ``true``, la texture est inversée verticalement.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_AnimatedSprite2D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

L'index de la trame d'animation affichée. Définir cette propriété réinitialise aussi :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>`. Si cela n'est pas souhaité, utilisez :ref:`set_frame_and_progress()<class_AnimatedSprite2D_method_set_frame_and_progress>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_frame_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **frame_progress** = ``0.0`` :ref:`🔗<class_AnimatedSprite2D_property_frame_progress>`

.. rst-class:: classref-property-setget

- |void| **set_frame_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frame_progress**\ (\ )

La valeur de progression entre ``0.0`` et ``1.0`` jusqu'à ce que la trame actuelle transitionne vers la prochain trame. Si l'animation joue à l'envers, la valeur passe de ``1.0`` à ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AnimatedSprite2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Le décalage du dessin de la texture.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_AnimatedSprite2D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Le rapport d'échelle de vitesse. Par exemple, si cette valeur vaut ``1``, alors l'animation joue à la vitesse normale. À ``0,5``, elle est joué deux fois moins vite. À ``2``, elle est jouée deux fois plus vite.

S'il est négatif, l'animation est jouée à l'envers. S'il est défini à ``0``, l'animation n'avancera pas.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_property_sprite_frames:

.. rst-class:: classref-property

:ref:`SpriteFrames<class_SpriteFrames>` **sprite_frames** :ref:`🔗<class_AnimatedSprite2D_property_sprite_frames>`

.. rst-class:: classref-property-setget

- |void| **set_sprite_frames**\ (\ value\: :ref:`SpriteFrames<class_SpriteFrames>`\ )
- :ref:`SpriteFrames<class_SpriteFrames>` **get_sprite_frames**\ (\ )

La ressource :ref:`SpriteFrames<class_SpriteFrames>` contenant les animations. Vous permet de charger, modifier, effacer, rendre unique et sauvegarder les états de la ressource :ref:`SpriteFrames<class_SpriteFrames>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AnimatedSprite2D_method_get_playing_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playing_speed**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite2D_method_get_playing_speed>`

Renvoie la vitesse réelle de lecture de l'animation actuelle ou ``0`` si elle n'est pas en train de jouer. Cette vitesse est la propriété :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>` multipliée par l'argument ``custom_speed`` spécifié lors de l'appel de la méthode :ref:`play()<class_AnimatedSprite2D_method_play>`.

Renvoie une valeur négative si l'animation actuelle se joue à l'envers.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite2D_method_is_playing>`

Renvoie ``true`` si une animation est jouée actuellement (même si :ref:`speed_scale<class_AnimatedSprite2D_property_speed_scale>` et/ou ``custom_speed`` valent ``0``).

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_method_pause>`

Pause l'animation en cours de lecture. La trame :ref:`frame<class_AnimatedSprite2D_property_frame>` et :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` seront conservés et appeler :ref:`play()<class_AnimatedSprite2D_method_play>` ou :ref:`play_backwards()<class_AnimatedSprite2D_method_play_backwards>` sans arguments reprendra l'animation à la position de lecture actuelle.

Voir aussi :ref:`stop()<class_AnimatedSprite2D_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimatedSprite2D_method_play>`

Joue l'animation avec la clé ``name``. Si ``custom_speed`` est négatif et ``from_end`` vaut ``true``, l'animation jouera à l'envers (ce qui est équivalent à appeler :ref:`play_backwards()<class_AnimatedSprite2D_method_play_backwards>`).

Si cette méthode est appelée avec ce même nom d'animation ``name``, ou sans paramètre ``name``, l'animation assignée reprendra la lecture si elle a été interrompue.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_play_backwards:

.. rst-class:: classref-method

|void| **play_backwards**\ (\ name\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_AnimatedSprite2D_method_play_backwards>`

Joue à l'envers l'animation avec la clé ``name``.

Cette méthode est un raccourci pour :ref:`play()<class_AnimatedSprite2D_method_play>` avec ``custom_speed = -1.0`` et ``from_end = true``, voir donc sa description pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_set_frame_and_progress:

.. rst-class:: classref-method

|void| **set_frame_and_progress**\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimatedSprite2D_method_set_frame_and_progress>`

Définit :ref:`frame<class_AnimatedSprite2D_property_frame>` et :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` aux valeurs données. Contrairement à définir :ref:`frame<class_AnimatedSprite2D_property_frame>`, cette méthode ne réinitialise pas implicitement :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>` à ``0.0``.

\ **Exemple :** Changer l'animation tout en gardant la même :ref:`frame<class_AnimatedSprite2D_property_frame>` et :ref:`frame_progress<class_AnimatedSprite2D_property_frame_progress>`\  :


.. tabs::

 .. code-tab:: gdscript

    var trame_actuelle = animated_sprite.get_frame()
    var progresion_actuelle = animated_sprite.get_frame_progress()
    animated_sprite.play("marche_autre_skin")
    animated_sprite.set_frame_and_progress(trame_actuelle, progresion_actuelle)



.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite2D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AnimatedSprite2D_method_stop>`

Arrête l'animation en cours de lecture. La position d'animation est réinitialisée à ``0`` et la vitesse ``custom_speed`` est réinitialisée à ``1.0``. Voir aussi :ref:`pause()<class_AnimatedSprite2D_method_pause>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
