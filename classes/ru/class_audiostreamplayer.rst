:github_url: hide

.. meta::
	:keywords: sound, music, song

.. _class_AudioStreamPlayer:

AudioStreamPlayer
=================

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел для воспроизведения звука.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел **AudioStreamPlayer** воспроизводит аудиопоток непозиционно. Он идеально подходит для пользовательских интерфейсов, меню или фоновой музыки.

Чтобы использовать этот узел, :ref:`stream<class_AudioStreamPlayer_property_stream>` необходимо установить на допустимый ресурс :ref:`AudioStream<class_AudioStream>`. Также поддерживается воспроизведение более одного звука одновременно, см. :ref:`max_polyphony<class_AudioStreamPlayer_property_max_polyphony>`.

Если вам нужно воспроизвести звук в определенной позиции, используйте вместо этого :ref:`AudioStreamPlayer2D<class_AudioStreamPlayer2D>` или :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиопотоки <../tutorials/audio/audio_streams>`

- `2D Dodge The Creeps Демо <https://godotengine.org/asset-library/asset/2712>`__

- `Демонстрация Audio Device Changer <https://godotengine.org/asset-library/asset/2758>`__

- `Демонстрация звукового генератора <https://godotengine.org/asset-library/asset/2759>`__

- `Демонстрация записи аудио с микрофона <https://godotengine.org/asset-library/asset/2760>`__

- `Демонстрация визуализатора аудиоспектра <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`autoplay<class_AudioStreamPlayer_property_autoplay>`           | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`                | :ref:`bus<class_AudioStreamPlayer_property_bus>`                     | ``&"Master"`` |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                              | :ref:`max_polyphony<class_AudioStreamPlayer_property_max_polyphony>` | ``1``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` | :ref:`mix_target<class_AudioStreamPlayer_property_mix_target>`       | ``0``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`pitch_scale<class_AudioStreamPlayer_property_pitch_scale>`     | ``1.0``       |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`PlaybackType<enum_AudioServer_PlaybackType>` | :ref:`playback_type<class_AudioStreamPlayer_property_playback_type>` | ``0``         |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`playing<class_AudioStreamPlayer_property_playing>`             | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`AudioStream<class_AudioStream>`              | :ref:`stream<class_AudioStreamPlayer_property_stream>`               |               |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                            | :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` | ``false``     |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>`         | ``0.0``       |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                          | :ref:`volume_linear<class_AudioStreamPlayer_property_volume_linear>` |               |
   +----------------------------------------------------+----------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayer_method_get_playback_position>`\ (\ )                |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` | :ref:`get_stream_playback<class_AudioStreamPlayer_method_get_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_stream_playback<class_AudioStreamPlayer_method_has_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`play<class_AudioStreamPlayer_method_play>`\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayer_method_seek>`\ (\ to_position\: :ref:`float<class_float>`\ )         |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayer_method_stop>`\ (\ )                                                  |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_AudioStreamPlayer_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_signal_finished>`

Выдается, когда звук заканчивается без прерываний. Этот сигнал *не* выдается при вызове :ref:`stop()<class_AudioStreamPlayer_method_stop>` или при выходе из дерева во время воспроизведения звуков.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_AudioStreamPlayer_MixTarget:

.. rst-class:: classref-enumeration

enum **MixTarget**: :ref:`🔗<enum_AudioStreamPlayer_MixTarget>`

.. _class_AudioStreamPlayer_constant_MIX_TARGET_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_STEREO** = ``0``

Звук будет воспроизводиться только на первом канале. Это значение по умолчанию.

.. _class_AudioStreamPlayer_constant_MIX_TARGET_SURROUND:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_SURROUND** = ``1``

Звук будет воспроизводиться на всех каналах объемного звучания.

.. _class_AudioStreamPlayer_constant_MIX_TARGET_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **MIX_TARGET_CENTER** = ``2``

Звук будет воспроизводиться на втором канале, который обычно является центральным.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioStreamPlayer_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

Если ``true``, этот узел вызывает :ref:`play()<class_AudioStreamPlayer_method_play>` при входе в дерево.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

Имя целевой шины. Все звуки из этого узла будут воспроизводиться на этой шине.

\ **Примечание:** Во время выполнения, если шины с указанным именем не существует, все звуки будут возвращаться на ``"Master"``. См. также :ref:`AudioServer.get_bus_name()<class_AudioServer_method_get_bus_name>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

Максимальное количество звуков, которые этот узел может воспроизводить одновременно. Вызов :ref:`play()<class_AudioStreamPlayer_method_play>` после достижения этого значения отсечет самые старые звуки.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_mix_target:

.. rst-class:: classref-property

:ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **mix_target** = ``0`` :ref:`🔗<class_AudioStreamPlayer_property_mix_target>`

.. rst-class:: classref-property-setget

- |void| **set_mix_target**\ (\ value\: :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>`\ )
- :ref:`MixTarget<enum_AudioStreamPlayer_MixTarget>` **get_mix_target**\ (\ )

Каналы микширования. Не оказывает никакого эффекта, если обнаружено два динамика или меньше (см. :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

Высота и темп аудио, как множитель частоты дискретизации :ref:`stream<class_AudioStreamPlayer_property_stream>`. Значение ``2.0`` удваивает высоту аудио, а значение ``0.5`` уменьшает высоту вдвое.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**Экспериментальное:** Это свойство может быть изменено или удалено в будущих версиях.

Тип воспроизведения потокового проигрывателя. Если установлено значение, отличное от значения по умолчанию, будет принудительно выбран этот тип воспроизведения.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

Если ``true``, этот узел воспроизводит звуки. Установка этого свойства имеет тот же эффект, что и :ref:`play()<class_AudioStreamPlayer_method_play>` и :ref:`stop()<class_AudioStreamPlayer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

Ресурс :ref:`AudioStream<class_AudioStream>` для воспроизведения. Установка этого свойства останавливает все воспроизводимые в данный момент звуки. Если оставить пустым, **AudioStreamPlayer** не будет работать.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

Если ``true``, звуки приостанавливаются. Установка :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` в ``false`` возобновляет все звуки.

\ **Примечание:** Это свойство автоматически изменяется при выходе или входе в дерево, или этот узел приостанавливается (см. :ref:`Node.process_mode<class_Node_property_process_mode>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Громкость звука в децибелах. Это смещение громкости :ref:`stream<class_AudioStreamPlayer_property_stream>`.

\ **Примечание:** Для преобразования между децибелами и линейной энергией (как это делают большинство ползунков громкости) используйте :ref:`volume_linear<class_AudioStreamPlayer_property_volume_linear>` или :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` и :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

Громкость звука, как линейное значение.

\ **Примечание:** Этот член изменяет :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>` для удобства. Возвращаемое значение эквивалентно результату :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` для :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>`. Установка этого члена эквивалентна установке :ref:`volume_db<class_AudioStreamPlayer_property_volume_db>` на результат :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` для значения.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioStreamPlayer_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_get_playback_position>`

Возвращает позицию в :ref:`AudioStream<class_AudioStream>` последнего звука в секундах. Возвращает ``0.0``, если звуки не воспроизводятся.

\ **Примечание:** Позиция не всегда точна, так как :ref:`AudioServer<class_AudioServer>` не микширует звук в каждом обработанном кадре. Чтобы получить более точные результаты, добавьте :ref:`AudioServer.get_time_since_last_mix()<class_AudioServer_method_get_time_since_last_mix>` к возвращаемой позиции.

\ **Примечание:** Этот метод всегда возвращает ``0.0``, если :ref:`stream<class_AudioStreamPlayer_property_stream>` является :ref:`AudioStreamInteractive<class_AudioStreamInteractive>`, так как он может воспроизводить несколько клипов одновременно.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_get_stream_playback>`

Возвращает последний :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` этого узла, обычно последний созданный :ref:`play()<class_AudioStreamPlayer_method_play>`. Если звуки не воспроизводятся, этот метод завершается ошибкой и возвращает пустое воспроизведение.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_has_stream_playback>`

Возвращает ``true``, если какой-либо звук активен, даже если :ref:`stream_paused<class_AudioStreamPlayer_property_stream_paused>` установлен в ``true``. См. также :ref:`playing<class_AudioStreamPlayer_property_playing>` и :ref:`get_stream_playback()<class_AudioStreamPlayer_method_get_stream_playback>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer_method_play>`

Воспроизводит звук с начала или с указанного ``from_position`` в секундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer_method_seek>`

Перезапускает все звуки, которые должны быть воспроизведены с указанного ``to_position``, в секундах. Ничего не делает, если звуки не воспроизводятся.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer_method_stop>`

Останавливает все звуки из этого узла.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
