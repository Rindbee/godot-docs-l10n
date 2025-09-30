:github_url: hide

.. _class_AudioStreamPlaybackPolyphonic:

AudioStreamPlaybackPolyphonic
=============================

**Наследует:** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Экземпляр воспроизведения для :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Экземпляр воспроизведения для :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`. После установки свойства ``stream`` для :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` или :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>` экземпляр воспроизведения можно получить, вызвав методы :ref:`AudioStreamPlayer.get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`, :ref:`AudioStreamPlayer2D.get_stream_playback()<class_AudioStreamPlayer2D_method_get_stream_playback>` или :ref:`AudioStreamPlayer3D.get_stream_playback()<class_AudioStreamPlayer3D_method_get_stream_playback>`.

.. rst-class:: classref-reftable-group

Методы
------------

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

Константы
------------------

.. _class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID:

.. rst-class:: classref-constant

**INVALID_ID** = ``-1`` :ref:`🔗<class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID>`

Возвращается :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>` в случае, если не удалось выделить поток для воспроизведения.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioStreamPlaybackPolyphonic_method_is_stream_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stream_playing**\ (\ stream\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_is_stream_playing>`

Возвращает ``true``, если поток, связанный с данным целочисленным идентификатором, все еще воспроизводится. Проверьте :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>` для получения информации о том, когда этот идентификатор становится недействительным.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_play_stream:

.. rst-class:: classref-method

:ref:`int<class_int>` **play_stream**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`, from_offset\: :ref:`float<class_float>` = 0, volume_db\: :ref:`float<class_float>` = 0, pitch_scale\: :ref:`float<class_float>` = 1.0, playback_type\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>` = 0, bus\: :ref:`StringName<class_StringName>` = &"Master"\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_play_stream>`

Воспроизвести :ref:`AudioStream<class_AudioStream>` с заданным смещением, громкостью, высотой тона, типом воспроизведения и шиной. Воспроизведение начинается немедленно.

Возвращаемое значение — уникальный целочисленный идентификатор, связанный с этим потоком воспроизведения и который можно использовать для управления им.

Этот идентификатор становится недействительным, когда поток заканчивается (если он не зацикливается), когда останавливается **AudioStreamPlaybackPolyphonic** или когда вызывается :ref:`stop_stream()<class_AudioStreamPlaybackPolyphonic_method_stop_stream>`.

Эта функция возвращает :ref:`INVALID_ID<class_AudioStreamPlaybackPolyphonic_constant_INVALID_ID>`, если количество потоков, воспроизводимых в данный момент, равно :ref:`AudioStreamPolyphonic.polyphony<class_AudioStreamPolyphonic_property_polyphony>`. Если вам требуется большее количество максимальной полифонии, увеличьте это значение.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale:

.. rst-class:: classref-method

|void| **set_stream_pitch_scale**\ (\ stream\: :ref:`int<class_int>`, pitch_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_set_stream_pitch_scale>`

Изменить масштаб тона потока. Аргумент ``stream`` — это целочисленный идентификатор, возвращаемый :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_set_stream_volume:

.. rst-class:: classref-method

|void| **set_stream_volume**\ (\ stream\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_set_stream_volume>`

Изменить громкость потока (в БД). Аргумент ``stream`` — это целочисленный идентификатор, возвращаемый :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlaybackPolyphonic_method_stop_stream:

.. rst-class:: classref-method

|void| **stop_stream**\ (\ stream\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioStreamPlaybackPolyphonic_method_stop_stream>`

Остановить поток. Аргумент ``stream`` — это целочисленный идентификатор, возвращаемый :ref:`play_stream()<class_AudioStreamPlaybackPolyphonic_method_play_stream>`, который становится недействительным после вызова этой функции.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
