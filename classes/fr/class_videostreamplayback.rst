:github_url: hide

.. _class_VideoStreamPlayback:

VideoStreamPlayback
===================

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe interne utilisée par :ref:`VideoStream<class_VideoStream>` pour gérer l'état de lecture lorsque joué depyis un :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe est destinée à être redéfinie par des extensions de décodeur vidéo avec des implémentations personnalisées de :ref:`VideoStream<class_VideoStream>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`_get_channels<class_VideoStreamPlayback_private_method__get_channels>`\ (\ ) |virtual| |const|                                                                                                                            |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`_get_length<class_VideoStreamPlayback_private_method__get_length>`\ (\ ) |virtual| |const|                                                                                                                                |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`_get_mix_rate<class_VideoStreamPlayback_private_method__get_mix_rate>`\ (\ ) |virtual| |const|                                                                                                                            |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`         | :ref:`_get_playback_position<class_VideoStreamPlayback_private_method__get_playback_position>`\ (\ ) |virtual| |const|                                                                                                          |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`_get_texture<class_VideoStreamPlayback_private_method__get_texture>`\ (\ ) |virtual| |const|                                                                                                                              |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_is_paused<class_VideoStreamPlayback_private_method__is_paused>`\ (\ ) |virtual| |const|                                                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`_is_playing<class_VideoStreamPlayback_private_method__is_playing>`\ (\ ) |virtual| |const|                                                                                                                                |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_play<class_VideoStreamPlayback_private_method__play>`\ (\ ) |virtual|                                                                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_seek<class_VideoStreamPlayback_private_method__seek>`\ (\ time\: :ref:`float<class_float>`\ ) |virtual|                                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_set_audio_track<class_VideoStreamPlayback_private_method__set_audio_track>`\ (\ idx\: :ref:`int<class_int>`\ ) |virtual|                                                                                                 |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_set_paused<class_VideoStreamPlayback_private_method__set_paused>`\ (\ paused\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                      |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_stop<class_VideoStreamPlayback_private_method__stop>`\ (\ ) |virtual|                                                                                                                                                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`_update<class_VideoStreamPlayback_private_method__update>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |required|                                                                                                  |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`             | :ref:`mix_audio<class_VideoStreamPlayback_method_mix_audio>`\ (\ num_frames\: :ref:`int<class_int>`, buffer\: :ref:`PackedFloat32Array<class_PackedFloat32Array>` = PackedFloat32Array(), offset\: :ref:`int<class_int>` = 0\ ) |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_VideoStreamPlayback_private_method__get_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_channels**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_channels>`

Renvoie le nombre de canaux audio.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_length**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_length>`

Renvoie la durée de la vidéo en secondes, si elle est connue, ou 0 si elle est inconnue.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_mix_rate:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_mix_rate**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_mix_rate>`

Renvoie le taux d'échantillonnage audio utilisé pour le mixage.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_playback_position**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_playback_position>`

Renvoie l’horodatage de lecture actuel. Appelée en réponse au getter :ref:`VideoStreamPlayer.stream_position<class_VideoStreamPlayer_property_stream_position>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **_get_texture**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__get_texture>`

Alloue une :ref:`Texture2D<class_Texture2D>` dans laquelle les trames vidéos décodées seront dessinées.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__is_paused:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_paused**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__is_paused>`

Renvoie le statut de pause, tel que défini par :ref:`_set_paused()<class_VideoStreamPlayback_private_method__set_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_playing**\ (\ ) |virtual| |const| :ref:`🔗<class_VideoStreamPlayback_private_method__is_playing>`

Renvoie l'état de la lecture, tel que déterminé par les appels à :ref:`_play()<class_VideoStreamPlayback_private_method__play>` et :ref:`_stop()<class_VideoStreamPlayback_private_method__stop>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__play:

.. rst-class:: classref-method

|void| **_play**\ (\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__play>`

Appelée en réponse à :ref:`VideoStreamPlayer.autoplay<class_VideoStreamPlayer_property_autoplay>` ou :ref:`VideoStreamPlayer.play()<class_VideoStreamPlayer_method_play>`. Notez que la lecture manuelle peut également invoquer :ref:`_stop()<class_VideoStreamPlayback_private_method__stop>` plusieurs fois avant que cette méthode soit appelée. :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` devrait renvoyer ``true`` lors de la lecture.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__seek:

.. rst-class:: classref-method

|void| **_seek**\ (\ time\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__seek>`

Se rend au temps ``time``, en secondes. Appelée en réponse au setter :ref:`VideoStreamPlayer.stream_position<class_VideoStreamPlayer_property_stream_position>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__set_audio_track:

.. rst-class:: classref-method

|void| **_set_audio_track**\ (\ idx\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__set_audio_track>`

Sélectionne la piste audio d'index ``idx``. Appelée quand la lecture commence, et en réponse au setter de :ref:`VideoStreamPlayer.audio_track<class_VideoStreamPlayer_property_audio_track>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__set_paused:

.. rst-class:: classref-method

|void| **_set_paused**\ (\ paused\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__set_paused>`

Définit l'état de la pause de la lecture vidéo. :ref:`_is_paused()<class_VideoStreamPlayback_private_method__is_paused>` doit renvoyer ``paused``. Appelée en réponse au setter de :ref:`VideoStreamPlayer.paused<class_VideoStreamPlayer_property_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__stop:

.. rst-class:: classref-method

|void| **_stop**\ (\ ) |virtual| :ref:`🔗<class_VideoStreamPlayback_private_method__stop>`

Arrête la lecture. Peut être appelée plusieurs fois avant :ref:`_play()<class_VideoStreamPlayback_private_method__play>`, ou en réponse à :ref:`VideoStreamPlayer.stop()<class_VideoStreamPlayer_method_stop>`. :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` devrait renvoyer ``false`` une fois arrêtée.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_private_method__update:

.. rst-class:: classref-method

|void| **_update**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| |required| :ref:`🔗<class_VideoStreamPlayback_private_method__update>`

Avance la lecture vidéo de ``delta`` secondes. Appelée à chaque trame tant que :ref:`_is_paused()<class_VideoStreamPlayback_private_method__is_paused>` et :ref:`_is_playing()<class_VideoStreamPlayback_private_method__is_playing>` renvoient ``true``.

.. rst-class:: classref-item-separator

----

.. _class_VideoStreamPlayback_method_mix_audio:

.. rst-class:: classref-method

:ref:`int<class_int>` **mix_audio**\ (\ num_frames\: :ref:`int<class_int>`, buffer\: :ref:`PackedFloat32Array<class_PackedFloat32Array>` = PackedFloat32Array(), offset\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_VideoStreamPlayback_method_mix_audio>`

Rend ``num_frames`` trames audio (de :ref:`_get_channels()<class_VideoStreamPlayback_private_method__get_channels>` flottants chacun) du ``buffer``, à partir de l'index ``offset`` dans le tableau. Renvoie le nombre de trames audio rendues, ou -1 lors d'une erreur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
