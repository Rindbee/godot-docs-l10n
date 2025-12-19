:github_url: hide

.. _class_AudioStream:

AudioStream
===========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`AudioStreamGenerator<class_AudioStreamGenerator>`, :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`, :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`, :ref:`AudioStreamMP3<class_AudioStreamMP3>`, :ref:`AudioStreamOggVorbis<class_AudioStreamOggVorbis>`, :ref:`AudioStreamPlaylist<class_AudioStreamPlaylist>`, :ref:`AudioStreamPolyphonic<class_AudioStreamPolyphonic>`, :ref:`AudioStreamRandomizer<class_AudioStreamRandomizer>`, :ref:`AudioStreamSynchronized<class_AudioStreamSynchronized>`, :ref:`AudioStreamWAV<class_AudioStreamWAV>`

Базовий клас для аудіопотоків.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий клас для аудіопотоків. Аудіопотоки використовуються для звукових ефектів і відтворення музики та підтримують формати файлів WAV (через ``AudioStream WAV``) і Ogg (через ``AudioStream Ogg Vorbis``).

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові потоки <../tutorials/audio/audio_streams>`

- `Демонстрація аудіогенератора <https://godotengine.org/asset-library/asset/2759>`__

- `Демонстраційний запис аудіо з мікрофона <https://godotengine.org/asset-library/asset/2760>`__

- `Демонстрація візуалізатора аудіоспектру <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Методи
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

Сигнали
--------------

.. _class_AudioStream_signal_parameter_list_changed:

.. rst-class:: classref-signal

**parameter_list_changed**\ (\ ) :ref:`🔗<class_AudioStream_signal_parameter_list_changed>`

Сигнал, який подається для сповіщення про зміну списку параметрів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AudioStream_private_method__get_bar_beats:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_bar_beats**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_bar_beats>`

Перевизначте цей метод, щоб повернути такти цього потоку.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_beat_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_beat_count**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_beat_count>`

Метод перевизначення. Має повернути загальну кількість ударів цього аудіопотоку. Використовується двигуном для визначення положення кожного удару.

 В ідеалі повернуте значення має базуватися на частоті дискретизації потоку (наприклад, :ref:`AudioStreamWAV.mix_rate<class_AudioStreamWAV_property_mix_rate>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_bpm:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_bpm**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_bpm>`

Метод перевизначення. Має повернути темп цього аудіопотоку в ударах на хвилину (BPM). Використовується двигуном для визначення положення кожного удару.

 В ідеалі повернуте значення має базуватися на частоті дискретизації потоку (наприклад, :ref:`AudioStreamWAV.mix_rate<class_AudioStreamWAV_property_mix_rate>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **_get_length**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_length>`

Перевизначте цей метод, щоб налаштувати значення, що повертається :ref:`get_length()<class_AudioStream_method_get_length>`. Має повернути довжину цього аудіопотоку в секундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_parameter_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **_get_parameter_list**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_parameter_list>`

Перевизначте цей метод, щоб налаштувати значення, що повертається :ref:`get_length()<class_AudioStream_method_get_length>`. Маєти повернути довжину цього аудіопотоку в секундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_stream_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_stream_name**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_stream_name>`

Перевизначте цей метод, щоб налаштувати назву, призначену цьому аудіопотоку. Не використовувався двигуном.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__get_tags:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_tags**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__get_tags>`

Перевизначте цей метод, щоб налаштувати теги для цього аудіопотоку. Повинен повертати :ref:`Dictionary<class_Dictionary>` рядків з тегом як ключем та його вмістом як значенням.

Зазвичай використовуються такі теги: ``назва``, ``виконавець``, ``альбом``, ``номер треку`` та ``дата``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__has_loop:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_loop**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__has_loop>`

Перевизначте цей метод, щоб повернути ``true``, якщо цей потік має цикл.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__instantiate_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **_instantiate_playback**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_AudioStream_private_method__instantiate_playback>`

Перевизначте цей метод, щоб налаштувати значення, що повертається :ref:`instantiate_playback()<class_AudioStream_method_instantiate_playback>`. Має повертати новий :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`, створений під час відтворення потоку (наприклад, :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_private_method__is_monophonic:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_monophonic**\ (\ ) |virtual| |const| :ref:`🔗<class_AudioStream_private_method__is_monophonic>`

Перевизначте цей метод, щоб налаштувати значення, що повертається :ref:`is_monophonic()<class_AudioStream_method_is_monophonic>`. Має повертати ``true``, якщо цей аудіопотік підтримує лише один канал.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_can_be_sampled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_be_sampled**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_can_be_sampled>`

**Експериментальний:** Цей метод може бути змінений або усунутий у наступних версіях.

Повертає, якщо поточний **AudioStream** можна використовувати як зразок. Лише статичні потоки можуть бути відібрані.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_generate_sample:

.. rst-class:: classref-method

:ref:`AudioSample<class_AudioSample>` **generate_sample**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_generate_sample>`

**Експериментальний:** Цей метод може бути змінений або усунутий у наступних версіях.

Створює :ref:`AudioSample<class_AudioSample>` на основі поточного потоку.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_get_length>`

Повертає тривалість аудіопотоку в секундах. Якщо цей потік є :ref:`AudioStreamRandomizer<class_AudioStreamRandomizer>`, повертає тривалість останнього відтвореного потоку. Якщо цей потік має невизначену тривалість (наприклад, для :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` та :ref:`AudioStreamMicrophone<class_AudioStreamMicrophone>`), повертає ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_instantiate_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **instantiate_playback**\ (\ ) :ref:`🔗<class_AudioStream_method_instantiate_playback>`

Повертає щойно створений :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`, призначений для відтворення цього аудіопотоку. Корисно, коли ви хочете розширити :ref:`_instantiate_playback()<class_AudioStream_private_method__instantiate_playback>`, але викликати :ref:`instantiate_playback()<class_AudioStream_method_instantiate_playback>` із внутрішнього субресурсу AudioStream. Приклад цього можна знайти у вихідному коді ``AudioStreamRandomPitch::instantiate_playback``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_is_meta_stream:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_meta_stream**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_is_meta_stream>`

Повертає ``true``, якщо потік є збіркою інших потоків, ``false`` іншим чином.

.. rst-class:: classref-item-separator

----

.. _class_AudioStream_method_is_monophonic:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_monophonic**\ (\ ) |const| :ref:`🔗<class_AudioStream_method_is_monophonic>`

Повертає ``true``, якщо цей аудіопотік підтримує лише один канал (*монофонія*), або ``false``, якщо аудіопотік підтримує два або більше каналів (* поліфонія*).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
