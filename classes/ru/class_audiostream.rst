:github_url: hide

.. _class_AudioStream:

AudioStream
===========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AudioStreamGenerator<class_AudioStreamGenerator>`, :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`, :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`, :ref:`AudioStreamMP3<class_AudioStreamMP3>`, :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>`, :ref:`AudioStreamPlaylist<class_AudioStreamPlaylist>`, :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`, :ref:`AudioStreamRandomizer<class_AudioStreamRandomizer>`, :ref:`AudioStreamSynchronized<class_AudioStreamSynchronized>`, :ref:`AudioStreamWAV<class_AudioStreamWAV>`

Базовый класс для аудиопотоков.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый класс для аудиопотоков. Аудиопотоки используются для звуковых эффектов и воспроизведения музыки и поддерживают форматы файлов WAV (через :ref:`AudioStreamWAV<class_AudioStreamWAV>`) и Ogg (через :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>`).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиопотоки <../tutorials/audio/audio_streams>`

- `Демонстрация звукового генератора <https://godotengine.org/asset-library/asset/2759>`__

- `Демонстрация записи аудио с микрофона <https://godotengine.org/asset-library/asset/2760>`__

- `Демонстрация визуализатора аудиоспектра <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_bar_beats<class_AudioStream_private_method__get_bar_beats>`\ (\ ) |virtual| |const|                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`_get_beat_count<class_AudioStream_private_method__get_beat_count>`\ (\ ) |virtual| |const|                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_get_bpm<class_AudioStream_private_method__get_bpm>`\ (\ ) |virtual| |const|                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`_get_length<class_AudioStream_private_method__get_length>`\ (\ ) |virtual| |const|                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`_get_parameter_list<class_AudioStream_private_method__get_parameter_list>`\ (\ ) |virtual| |const|                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`_get_stream_name<class_AudioStream_private_method__get_stream_name>`\ (\ ) |virtual| |const|                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                              | :ref:`_get_tags<class_AudioStream_private_method__get_tags>`\ (\ ) |virtual| |const|                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_has_loop<class_AudioStream_private_method__has_loop>`\ (\ ) |virtual| |const|                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`            | :ref:`_instantiate_playback<class_AudioStream_private_method__instantiate_playback>`\ (\ ) |virtual| |required| |const| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`_is_monophonic<class_AudioStream_private_method__is_monophonic>`\ (\ ) |virtual| |const|                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_be_sampled<class_AudioStream_method_can_be_sampled>`\ (\ ) |const|                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioSample<class_AudioSample>`                            | :ref:`generate_sample<class_AudioStream_method_generate_sample>`\ (\ ) |const|                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_length<class_AudioStream_method_get_length>`\ (\ ) |const|                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`            | :ref:`instantiate_playback<class_AudioStream_method_instantiate_playback>`\ (\ )                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_meta_stream<class_AudioStream_method_is_meta_stream>`\ (\ ) |const|                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_monophonic<class_AudioStream_method_is_monophonic>`\ (\ ) |const|                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_AudioStream_signal_parameter_list_changed:

.. rst-class:: classref-signal

**parameter_list_changed**\ (\ ) :ref:`🔗<class_AudioStream_signal_parameter_list_changed>`

Сигнал, который будет подаваться для уведомления об изменении списка параметров.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioStream_private_method__get_bar_beats:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_bar_beats**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_bar_beats>`

Переопределите этот метод, чтобы вернуть тактовые доли этого потока.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_beat_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_beat_count**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_beat_count>`

Переопределяемый метод. Должен возвращать общее количество тактов этого аудиопотока. Используется движком для определения позиции каждого такта.

В идеале возвращаемое значение должно основываться на частоте дискретизации потока (например, :ref:`AudioStreamWAV.mix_rate<class_AudioStreamWAV_property_mix_rate>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_bpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_bpm**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_bpm>`

Переопределяемый метод. Должен возвращать темп этого аудиопотока в ударах в минуту (BPM). Используется движком для определения позиции каждого удара.

В идеале возвращаемое значение должно основываться на частоте дискретизации потока (например, :ref:`AudioStreamWAV.mix_rate<class_AudioStreamWAV_property_mix_rate>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_length**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_length>`

Переопределите этот метод, чтобы настроить возвращаемое значение :ref:`get_length()<class_AudioStream_method_get_length>`. Должен возвращать длину этого аудиопотока в секундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_parameter_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_parameter_list**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_parameter_list>`

Верните контролируемые параметры этого потока. Этот массив содержит словари с форматом описания информации о свойствах (см. :ref:`Object.get_property_list()<class_Object_method_get_property_list>`). Кроме того, значение по умолчанию для этого параметра должно быть добавлено в каждый словарь в поле "default_value".

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_stream_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_stream_name**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_stream_name>`

Переопределите этот метод, чтобы настроить имя, назначенное этому аудиопотоку. Не используется движком.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_tags:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_tags**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_tags>`

Переопределите этот метод, чтобы настроить теги для этого аудиопотока. Должен возвращать :ref:`Dictionary<class_Dictionary>` строк с тегом в качестве ключа и его содержимым в качестве значения.

Обычно используемые теги включают ``title``, ``artist``, ``album``, ``tracknumber`` и ``date``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__has_loop:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_loop**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__has_loop>`

Переопределите этот метод, чтобы он возвращал ``true``, если этот поток имеет зацикленность.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__instantiate_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **_instantiate_playback**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStream_private_method__instantiate_playback>`

Переопределите этот метод, чтобы настроить возвращаемое значение :ref:`instantiate_playback()<class_AudioStream_method_instantiate_playback>`. Должен возвращать новый :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`, созданный при воспроизведении потока (например, :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__is_monophonic:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_monophonic**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__is_monophonic>`

Переопределите этот метод, чтобы настроить возвращаемое значение :ref:`is_monophonic()<class_AudioStream_method_is_monophonic>`. Должен возвращать ``true``, если этот аудиопоток поддерживает только один канал.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_can_be_sampled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_be_sampled**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_can_be_sampled>`

**Экспериментальное:** Этот метод может быть изменён или удалён в будущих версиях.

Возвращает, если текущий **AudioStream** может быть использован в качестве образца. Только статические потоки могут быть сэмплированы.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_generate_sample:

.. rst-class:: classref-method

:ref:`AudioSample<class_AudioSample>` **generate_sample**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_generate_sample>`

**Экспериментальное:** Этот метод может быть изменён или удалён в будущих версиях.

Генерирует :ref:`AudioSample<class_AudioSample>` на основе текущего потока.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_get_length>`

Возвращает длительность аудиопотока в секундах. Если этот поток является :ref:`AudioStreamRandomizer<class_AudioStreamRandomizer>`, возвращает длительность последнего воспроизведенного потока. Если длительность потока не определена (например, для :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` и :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`), возвращает ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_instantiate_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **instantiate_playback**\ (\ ) :ref:`🔗<class_AudioStream_method_instantiate_playback>`

Возвращает недавно созданный :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`, предназначенный для воспроизведения этого аудиопотока. Полезно, когда вы хотите расширить :ref:`_instantiate_playback()<class_AudioStream_private_method__instantiate_playback>`, но вызвать :ref:`instantiate_playback()<class_AudioStream_method_instantiate_playback>` из внутреннего подресурса AudioStream. Пример этого можно найти в исходном коде для ``AudioStreamRandomPitch::instantiate_playback``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_is_meta_stream:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_meta_stream**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_is_meta_stream>`

Возвращает ``true``, если поток является набором других потоков, и ``false`` в противном случае.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_is_monophonic:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_monophonic**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_is_monophonic>`

Возвращает ``true``, если этот аудиопоток поддерживает только один канал (*монофония (monophony)*), или ``false``, если аудиопоток поддерживает два или более каналов (*полифония (polyphony)*).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
