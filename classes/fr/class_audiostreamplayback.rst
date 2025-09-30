:github_url: hide

.. _class_AudioStreamPlayback:

AudioStreamPlayback
===================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`AudioStreamPlaybackInteractive<class_AudioStreamPlaybackInteractive>`, :ref:`AudioStreamPlaybackPlaylist<class_AudioStreamPlaybackPlaylist>`, :ref:`AudioStreamPlaybackPolyphonic<class_AudioStreamPlaybackPolyphonic>`, :ref:`AudioStreamPlaybackResampled<class_AudioStreamPlaybackResampled>`, :ref:`AudioStreamPlaybackSynchronized<class_AudioStreamPlaybackSynchronized>`

Classe méta pour la lecture audio.

.. rst-class:: classref-introduction-group

Description
-----------

Peut jouer, boucler, faire pause dans l'audio. Voir :ref:`AudioStream<class_AudioStream>` et :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>` pour l'utilisation.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo du générateur audio <https://godotengine.org/asset-library/asset/2759>`__

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`_get_loop_count<class_AudioStreamPlayback_private_method__get_loop_count>`\ (\ ) |virtual| |const|                                                                                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                         | :ref:`_get_parameter<class_AudioStreamPlayback_private_method__get_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                      |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`_get_playback_position<class_AudioStreamPlayback_private_method__get_playback_position>`\ (\ ) |virtual| |const|                                                                  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`_is_playing<class_AudioStreamPlayback_private_method__is_playing>`\ (\ ) |virtual| |const|                                                                                        |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`_mix<class_AudioStreamPlayback_private_method__mix>`\ (\ buffer\: ``AudioFrame*``, rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) |virtual| |required| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_seek<class_AudioStreamPlayback_private_method__seek>`\ (\ position\: :ref:`float<class_float>`\ ) |virtual|                                                                      |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_set_parameter<class_AudioStreamPlayback_private_method__set_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual|       |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_start<class_AudioStreamPlayback_private_method__start>`\ (\ from_pos\: :ref:`float<class_float>`\ ) |virtual|                                                                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_stop<class_AudioStreamPlayback_private_method__stop>`\ (\ ) |virtual|                                                                                                            |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`_tag_used_streams<class_AudioStreamPlayback_private_method__tag_used_streams>`\ (\ ) |virtual|                                                                                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_loop_count<class_AudioStreamPlayback_method_get_loop_count>`\ (\ ) |const|                                                                                                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayback_method_get_playback_position>`\ (\ ) |const|                                                                                      |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioSamplePlayback<class_AudioSamplePlayback>` | :ref:`get_sample_playback<class_AudioStreamPlayback_method_get_sample_playback>`\ (\ ) |const|                                                                                          |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_playing<class_AudioStreamPlayback_method_is_playing>`\ (\ ) |const|                                                                                                            |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`   | :ref:`mix_audio<class_AudioStreamPlayback_method_mix_audio>`\ (\ rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayback_method_seek>`\ (\ time\: :ref:`float<class_float>` = 0.0\ )                                                                                        |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_sample_playback<class_AudioStreamPlayback_method_set_sample_playback>`\ (\ playback_sample\: :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`\ )                         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`start<class_AudioStreamPlayback_method_start>`\ (\ from_pos\: :ref:`float<class_float>` = 0.0\ )                                                                                  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayback_method_stop>`\ (\ )                                                                                                                                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AudioStreamPlayback_private_method__get_loop_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_loop_count**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_loop_count>`

Méthode surchargeable. Devrait renvoyer combien de fois ce flux audio a bouclé. La plupart des lecteurs intégrés renverront toujours ``0``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__get_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_parameter>`

Renvoie la valeur courante d'un paramètre de lecture par son nom (voir :ref:`AudioStream._get_parameter_list()<class_AudioStream_private_method__get_parameter_list>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_playback_position**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__get_playback_position>`

Méthode redéfinissable. Devrait renvoyer la progression actuelle du flux audio, en secondes.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_playing**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStreamPlayback_private_method__is_playing>`

Méthode redéfinissable. Devrait renvoyer ``true`` si la lecture est active et joue son flux audio.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__mix:

.. rst-class:: classref-method

:ref:`int<class_int>` **_mix**\ (\ buffer\: ``AudioFrame*``, rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) |virtual| |required| :ref:`🔗<class_AudioStreamPlayback_private_method__mix>`

Redéfinissez cette méthode pour personnaliser la façon dont le flux audio est mixé. Cette méthode est appelée même si la lecture n'est pas active.

\ **Note :** Il n'est pas utile de redéfinir cette méthode en GDScript ou C#. Seul GDExtension peut en profiter.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__seek:

.. rst-class:: classref-method

|void| **_seek**\ (\ position\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__seek>`

Redéfinissez cette méthode pour personnaliser ce qui se passe lors de la recherche de ce flux audio pour la position ``position`` donnée, comme lors de l'appel de :ref:`AudioStreamPlayer.seek()<class_AudioStreamPlayer_method_seek>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__set_parameter:

.. rst-class:: classref-method

|void| **_set_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__set_parameter>`

Définit la valeur actuelle d'un paramètre de lecture par nom (voir :ref:`AudioStream._get_parameter_list()<class_AudioStream_private_method__get_parameter_list>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__start:

.. rst-class:: classref-method

|void| **_start**\ (\ from_pos\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__start>`

Redéfinissez cette méthode pour personnaliser ce qui se passe lorsque la lecture commence à la position donnée, comme lors de l'appel :ref:`AudioStreamPlayer.play()<class_AudioStreamPlayer_method_play>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__stop:

.. rst-class:: classref-method

|void| **_stop**\ (\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__stop>`

Redéfinissez cette méthode pour personnaliser ce qui se passe lorsque la lecture est arrêtée, comme lors de l'appel de :ref:`AudioStreamPlayer.stop()<class_AudioStreamPlayer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_private_method__tag_used_streams:

.. rst-class:: classref-method

|void| **_tag_used_streams**\ (\ ) |virtual| :ref:`🔗<class_AudioStreamPlayback_private_method__tag_used_streams>`

Méthode redéfinissable. Appelée chaque fois que le flux audio est mixé si la lecture est active et que :ref:`AudioServer.set_enable_tagging_used_audio_streams()<class_AudioServer_method_set_enable_tagging_used_audio_streams>` a été défini à ``true``. Les plugins d'éditeur peuvent utiliser cette méthode pour marquer la position courante le long du flux audio et l'afficher dans un aperçu.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_loop_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_loop_count**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_loop_count>`

Renvoie le nombre de fois que le flux a bouclé.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_playback_position>`

Renvoie la position actuelle dans le flux, en secondes.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_get_sample_playback:

.. rst-class:: classref-method

:ref:`AudioSamplePlayback<class_AudioSamplePlayback>` **get_sample_playback**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_get_sample_playback>`

**Expérimental :** Cette méthode peut être changée ou retirée dans de futures versions.

Renvoie l':ref:`AudioSamplePlayback<class_AudioSamplePlayback>` associé à ce **AudioStreamPlayback** pour lire l'échantillon audio de ce flux.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AudioStreamPlayback_method_is_playing>`

Renvoie ``true`` si le flux joue.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_mix_audio:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **mix_audio**\ (\ rate_scale\: :ref:`float<class_float>`, frames\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlayback_method_mix_audio>`

Mixes up to ``frames`` of audio from the stream from the current position, at a rate of ``rate_scale``, advancing the stream.

Returns a :ref:`PackedVector2Array<class_PackedVector2Array>` where each element holds the left and right channel volume levels of each frame.

\ **Note:** Can return fewer frames than requested, make sure to use the size of the return value.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ time\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayback_method_seek>`

Avance le flux au temps ``time`` donné, en secondes.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_set_sample_playback:

.. rst-class:: classref-method

|void| **set_sample_playback**\ (\ playback_sample\: :ref:`AudioSamplePlayback<class_AudioSamplePlayback>`\ ) :ref:`🔗<class_AudioStreamPlayback_method_set_sample_playback>`

**Expérimental :** Cette méthode peut être changée ou retirée dans de futures versions.

Associe l':ref:`AudioSamplePlayback<class_AudioSamplePlayback>` à ce **AudioStreamPlayback** pour jouer l'échantillon audio de ce flux.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ from_pos\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayback_method_start>`

Démarre le flux depuis la position ``from_pos`` donnée, en secondes.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayback_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayback_method_stop>`

Arrête le flux.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
