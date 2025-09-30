:github_url: hide

.. _class_SpriteFrames:

SpriteFrames
============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Bibliothèque de trames de sprites pour AnimatedSprite2D et AnimatedSprite3D.

.. rst-class:: classref-introduction-group

Description
-----------

Sprite frame library for an :ref:`AnimatedSprite2D<class_AnimatedSprite2D>` or :ref:`AnimatedSprite3D<class_AnimatedSprite3D>` node. Contains frames and animation data for playback.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_animation<class_SpriteFrames_method_add_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`\ )                                                                                                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_frame<class_SpriteFrames_method_add_frame>`\ (\ anim\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0, at_position\: :ref:`int<class_int>` = -1\ ) |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_SpriteFrames_method_clear>`\ (\ anim\: :ref:`StringName<class_StringName>`\ )                                                                                                                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear_all<class_SpriteFrames_method_clear_all>`\ (\ )                                                                                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`duplicate_animation<class_SpriteFrames_method_duplicate_animation>`\ (\ anim_from\: :ref:`StringName<class_StringName>`, anim_to\: :ref:`StringName<class_StringName>`\ )                                                            |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`get_animation_loop<class_SpriteFrames_method_get_animation_loop>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                          |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_animation_names<class_SpriteFrames_method_get_animation_names>`\ (\ ) |const|                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                         | :ref:`get_animation_speed<class_SpriteFrames_method_get_animation_speed>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                        |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_frame_count<class_SpriteFrames_method_get_frame_count>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                         | :ref:`get_frame_duration<class_SpriteFrames_method_get_frame_duration>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const|                                                                             |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                 | :ref:`get_frame_texture<class_SpriteFrames_method_get_frame_texture>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const|                                                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_animation<class_SpriteFrames_method_has_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_animation<class_SpriteFrames_method_remove_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`\ )                                                                                                                      |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_frame<class_SpriteFrames_method_remove_frame>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ )                                                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`rename_animation<class_SpriteFrames_method_rename_animation>`\ (\ anim\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ )                                                                       |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_animation_loop<class_SpriteFrames_method_set_animation_loop>`\ (\ anim\: :ref:`StringName<class_StringName>`, loop\: :ref:`bool<class_bool>`\ )                                                                                  |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_animation_speed<class_SpriteFrames_method_set_animation_speed>`\ (\ anim\: :ref:`StringName<class_StringName>`, fps\: :ref:`float<class_float>`\ )                                                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_frame<class_SpriteFrames_method_set_frame>`\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0\ )              |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SpriteFrames_method_add_animation:

.. rst-class:: classref-method

|void| **add_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_add_animation>`

Adds a new ``anim`` animation to the library.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_add_frame:

.. rst-class:: classref-method

|void| **add_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0, at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_SpriteFrames_method_add_frame>`

Adds a frame to the ``anim`` animation. If ``at_position`` is ``-1``, the frame will be added to the end of the animation. ``duration`` specifies the relative duration, see :ref:`get_frame_duration()<class_SpriteFrames_method_get_frame_duration>` for details.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_clear>`

Retire toutes les trames de l'animation ``anim``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_clear_all:

.. rst-class:: classref-method

|void| **clear_all**\ (\ ) :ref:`🔗<class_SpriteFrames_method_clear_all>`

Removes all animations. An empty ``default`` animation will be created.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_duplicate_animation:

.. rst-class:: classref-method

|void| **duplicate_animation**\ (\ anim_from\: :ref:`StringName<class_StringName>`, anim_to\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_duplicate_animation>`

Duplicates the animation ``anim_from`` to a new animation named ``anim_to``. Fails if ``anim_to`` already exists, or if ``anim_from`` does not exist.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_loop:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_animation_loop**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_loop>`

Renvoie ``true`` si l'animation donnée est configurée pour boucler lorsqu'elle termine de jouer. Sinon, renvoie ``false``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_animation_names**\ (\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_names>`

Renvoie un tableau contenant les noms associés à chaque animation. Ces valeurs sont triées dans l'ordre alphabétique.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_animation_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_animation_speed**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_animation_speed>`

Returns the speed in frames per second for the ``anim`` animation.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frame_count**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_count>`

Returns the number of frames for the ``anim`` animation.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_duration:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_frame_duration**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_duration>`

Returns a relative duration of the frame ``idx`` in the ``anim`` animation (defaults to ``1.0``). For example, a frame with a duration of ``2.0`` is displayed twice as long as a frame with a duration of ``1.0``. You can calculate the absolute duration (in seconds) of a frame using the following formula:

::

    absolute_duration = relative_duration / (animation_fps * abs(playing_speed))

In this example, ``playing_speed`` refers to either :ref:`AnimatedSprite2D.get_playing_speed()<class_AnimatedSprite2D_method_get_playing_speed>` or :ref:`AnimatedSprite3D.get_playing_speed()<class_AnimatedSprite3D_method_get_playing_speed>`.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_get_frame_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_frame_texture**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_get_frame_texture>`

Returns the texture of the frame ``idx`` in the ``anim`` animation.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_SpriteFrames_method_has_animation>`

Renvoie ``true`` si l'animation ``anim`` existe.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_remove_animation:

.. rst-class:: classref-method

|void| **remove_animation**\ (\ anim\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_remove_animation>`

Retire l'animation ``anim``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_remove_frame:

.. rst-class:: classref-method

|void| **remove_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SpriteFrames_method_remove_frame>`

Removes the ``anim`` animation's frame ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_rename_animation:

.. rst-class:: classref-method

|void| **rename_animation**\ (\ anim\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_SpriteFrames_method_rename_animation>`

Changes the ``anim`` animation's name to ``newname``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_animation_loop:

.. rst-class:: classref-method

|void| **set_animation_loop**\ (\ anim\: :ref:`StringName<class_StringName>`, loop\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpriteFrames_method_set_animation_loop>`

If ``loop`` is ``true``, the ``anim`` animation will loop when it reaches the end, or the start if it is played in reverse.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_animation_speed:

.. rst-class:: classref-method

|void| **set_animation_speed**\ (\ anim\: :ref:`StringName<class_StringName>`, fps\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SpriteFrames_method_set_animation_speed>`

Sets the speed for the ``anim`` animation in frames per second.

.. rst-class:: classref-item-separator

----

.. _class_SpriteFrames_method_set_frame:

.. rst-class:: classref-method

|void| **set_frame**\ (\ anim\: :ref:`StringName<class_StringName>`, idx\: :ref:`int<class_int>`, texture\: :ref:`Texture2D<class_Texture2D>`, duration\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_SpriteFrames_method_set_frame>`

Sets the ``texture`` and the ``duration`` of the frame ``idx`` in the ``anim`` animation. ``duration`` specifies the relative duration, see :ref:`get_frame_duration()<class_SpriteFrames_method_get_frame_duration>` for details.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
