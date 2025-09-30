:github_url: hide

.. _class_AudioStreamPlaybackPolyphonic:

AudioStreamPlaybackPolyphonic
=============================

**Hereda:** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Instancia de reproducción para :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Playback instance for :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`. After setting the ``stream`` property of :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>`, or :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`, the playback instance can be obtained by calling :ref:`AudioStreamPlayer.get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`, :ref:`AudioStreamPlayer2D.get_stream_playback()<class_AudioStreamPlayer2D_method_get_stream_playback>` or :ref:`AudioStreamPlayer3D.get_stream_playback()<class_AudioStreamPlayer3D_method_get_stream_playback>` methods.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_stream_playing<class_AudioStreamPlaybackPolyphonic_method_is_stream_playing>`\ (\ stream\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                   |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`play_stream<class_AudioStreamPlaybackPolyphonic_method_play_stream>`\ (\ stream\: :ref:`AudioStream<class_AudioStream>`, from_offset\: :ref:`float<class_float>` = 0, volume_db\: :ref:`float<class_float>` = 0, pitch_scale\: :ref:`float<class_float>` = 1.0, playback_type\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>` = 0, bus\: :ref:`StringName<class_StringName>` = &"Master"\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_stream_pitch_scale<class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale>`\ (\ stream\: :ref:`int<class_int>`, pitch_scale\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                        |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_stream_volume<class_AudioStreamPlaybackPolyphonic_method_set_stream_volume>`\ (\ stream\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                                    |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`stop_stream<class_AudioStreamPlaybackPolyphonic_method_stop_stream>`\ (\ stream\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                       |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID:

.. rst-class:: classref-constant

**INVALID_ID** = ``-1`` :ref:`🔗<class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID>`

Returned by :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>` in case it could not allocate a stream for playback.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AudioStreamPlaybackPolyphonic_method_is_stream_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stream_playing**\ (\ stream\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_is_stream_playing>`

Returns ``true`` if the stream associated with the given integer ID is still playing. Check :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>` for information on when this ID becomes invalid.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_play_stream:

.. rst-class:: classref-method

:ref:`int<class_int>` **play_stream**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`, from_offset\: :ref:`float<class_float>` = 0, volume_db\: :ref:`float<class_float>` = 0, pitch_scale\: :ref:`float<class_float>` = 1.0, playback_type\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>` = 0, bus\: :ref:`StringName<class_StringName>` = &"Master"\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_play_stream>`

Play an :ref:`AudioStream<class_AudioStream>` at a given offset, volume, pitch scale, playback type, and bus. Playback starts immediately.

The return value is a unique integer ID that is associated to this playback stream and which can be used to control it.

This ID becomes invalid when the stream ends (if it does not loop), when the **AudioStreamPlaybackPolyphonic** is stopped, or when :ref:`stop_stream()<class_AudioStreamPlaybackPolyphonic_method_stop_stream>` is called.

This function returns :ref:`INVALID_ID<class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID>` if the amount of streams currently playing equals :ref:`AudioStreamPolyphonic.polyphony<class_AudioStreamPolyphonic_property_polyphony>`. If you need a higher amount of maximum polyphony, raise this value.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale:

.. rst-class:: classref-method

|void| **set_stream_pitch_scale**\ (\ stream\: :ref:`int<class_int>`, pitch_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale>`

Change the stream pitch scale. The ``stream`` argument is an integer ID returned by :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_set_stream_volume:

.. rst-class:: classref-method

|void| **set_stream_volume**\ (\ stream\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_set_stream_volume>`

Change the stream volume (in db). The ``stream`` argument is an integer ID returned by :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_stop_stream:

.. rst-class:: classref-method

|void| **stop_stream**\ (\ stream\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_stop_stream>`

Stop a stream. The ``stream`` argument is an integer ID returned by :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>`, which becomes invalid after calling this function.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
