:github_url: hide

.. _class_AudioServer:

AudioServer
===========

**Успадковує:** :ref:`Object<class_Object>`

Інтерфейс сервера для низькорівневого аудіодоступу.

.. rst-class:: classref-introduction-group

Опис
--------

**AudioServer** — це низькорівневий інтерфейс сервера для доступу до аудіо. Він відповідає за створення зразків даних (аудіо, які можна відтворити), а також за їх відтворення через голосовий інтерфейс.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові шини <../tutorials/audio/audio_buses>`

- `Демонстрація зміни аудіопристроїв <https://godotengine.org/asset-library/asset/2758>`__

- `Демонстраційний запис аудіо з мікрофона <https://godotengine.org/asset-library/asset/2760>`__

- `Демонстрація візуалізатора аудіоспектру <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`       | :ref:`bus_count<class_AudioServer_property_bus_count>`                       | ``1``         |
   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`String<class_String>` | :ref:`input_device<class_AudioServer_property_input_device>`                 | ``"Default"`` |
   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`String<class_String>` | :ref:`output_device<class_AudioServer_property_output_device>`               | ``"Default"`` |
   +-----------------------------+------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`   | :ref:`playback_speed_scale<class_AudioServer_property_playback_speed_scale>` | ``1.0``       |
   +-----------------------------+------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_bus<class_AudioServer_method_add_bus>`\ (\ at_position\: :ref:`int<class_int>` = -1\ )                                                                                                 |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`add_bus_effect<class_AudioServer_method_add_bus_effect>`\ (\ bus_idx\: :ref:`int<class_int>`, effect\: :ref:`AudioEffect<class_AudioEffect>`, at_position\: :ref:`int<class_int>` = -1\ )  |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioBusLayout<class_AudioBusLayout>`           | :ref:`generate_bus_layout<class_AudioServer_method_generate_bus_layout>`\ (\ ) |const|                                                                                                           |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_bus_channels<class_AudioServer_method_get_bus_channels>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioEffect<class_AudioEffect>`                 | :ref:`get_bus_effect<class_AudioServer_method_get_bus_effect>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ )                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_bus_effect_count<class_AudioServer_method_get_bus_effect_count>`\ (\ bus_idx\: :ref:`int<class_int>`\ )                                                                                |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AudioEffectInstance<class_AudioEffectInstance>` | :ref:`get_bus_effect_instance<class_AudioServer_method_get_bus_effect_instance>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_bus_index<class_AudioServer_method_get_bus_index>`\ (\ bus_name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                       |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`get_bus_name<class_AudioServer_method_get_bus_name>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_peak_volume_left_db<class_AudioServer_method_get_bus_peak_volume_left_db>`\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const|                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_peak_volume_right_db<class_AudioServer_method_get_bus_peak_volume_right_db>`\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const|                       |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                   | :ref:`get_bus_send<class_AudioServer_method_get_bus_send>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_volume_db<class_AudioServer_method_get_bus_volume_db>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_bus_volume_linear<class_AudioServer_method_get_bus_volume_linear>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                      |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                           | :ref:`get_driver_name<class_AudioServer_method_get_driver_name>`\ (\ ) |const|                                                                                                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`get_input_device_list<class_AudioServer_method_get_input_device_list>`\ (\ )                                                                                                               |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_input_mix_rate<class_AudioServer_method_get_input_mix_rate>`\ (\ ) |const|                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_mix_rate<class_AudioServer_method_get_mix_rate>`\ (\ ) |const|                                                                                                                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`     | :ref:`get_output_device_list<class_AudioServer_method_get_output_device_list>`\ (\ )                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_output_latency<class_AudioServer_method_get_output_latency>`\ (\ ) |const|                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SpeakerMode<enum_AudioServer_SpeakerMode>`      | :ref:`get_speaker_mode<class_AudioServer_method_get_speaker_mode>`\ (\ ) |const|                                                                                                                 |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_time_since_last_mix<class_AudioServer_method_get_time_since_last_mix>`\ (\ ) |const|                                                                                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_time_to_next_mix<class_AudioServer_method_get_time_to_next_mix>`\ (\ ) |const|                                                                                                         |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_bypassing_effects<class_AudioServer_method_is_bus_bypassing_effects>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_effect_enabled<class_AudioServer_method_is_bus_effect_enabled>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) |const|                                  |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_mute<class_AudioServer_method_is_bus_mute>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_bus_solo<class_AudioServer_method_is_bus_solo>`\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const|                                                                                          |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_stream_registered_as_sample<class_AudioServer_method_is_stream_registered_as_sample>`\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ )                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`lock<class_AudioServer_method_lock>`\ (\ )                                                                                                                                                 |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`move_bus<class_AudioServer_method_move_bus>`\ (\ index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ )                                                                        |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`register_stream_as_sample<class_AudioServer_method_register_stream_as_sample>`\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ )                                                       |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_bus<class_AudioServer_method_remove_bus>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                      |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_bus_effect<class_AudioServer_method_remove_bus_effect>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ )                                                  |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_bypass_effects<class_AudioServer_method_set_bus_bypass_effects>`\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                          |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_effect_enabled<class_AudioServer_method_set_bus_effect_enabled>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )     |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_layout<class_AudioServer_method_set_bus_layout>`\ (\ bus_layout\: :ref:`AudioBusLayout<class_AudioBusLayout>`\ )                                                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_mute<class_AudioServer_method_set_bus_mute>`\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                                              |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_name<class_AudioServer_method_set_bus_name>`\ (\ bus_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                            |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_send<class_AudioServer_method_set_bus_send>`\ (\ bus_idx\: :ref:`int<class_int>`, send\: :ref:`StringName<class_StringName>`\ )                                                    |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_solo<class_AudioServer_method_set_bus_solo>`\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ )                                                              |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_volume_db<class_AudioServer_method_set_bus_volume_db>`\ (\ bus_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ )                                               |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_bus_volume_linear<class_AudioServer_method_set_bus_volume_linear>`\ (\ bus_idx\: :ref:`int<class_int>`, volume_linear\: :ref:`float<class_float>`\ )                                   |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`set_enable_tagging_used_audio_streams<class_AudioServer_method_set_enable_tagging_used_audio_streams>`\ (\ enable\: :ref:`bool<class_bool>`\ )                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`swap_bus_effects<class_AudioServer_method_swap_bus_effects>`\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, by_effect_idx\: :ref:`int<class_int>`\ )             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`unlock<class_AudioServer_method_unlock>`\ (\ )                                                                                                                                             |
   +-------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_AudioServer_signal_bus_layout_changed:

.. rst-class:: classref-signal

**bus_layout_changed**\ (\ ) :ref:`🔗<class_AudioServer_signal_bus_layout_changed>`

Видається, коли аудіошина додається, видаляється або переміщується.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_signal_bus_renamed:

.. rst-class:: classref-signal

**bus_renamed**\ (\ bus_index\: :ref:`int<class_int>`, old_name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioServer_signal_bus_renamed>`

Видається, коли аудіошина в ``bus_index`` перейменовується з ``old_name`` на ``new_name``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_AudioServer_SpeakerMode:

.. rst-class:: classref-enumeration

enum **SpeakerMode**: :ref:`🔗<enum_AudioServer_SpeakerMode>`

.. _class_AudioServer_constant_SPEAKER_MODE_STEREO:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_MODE_STEREO** = ``0``

Виявлено два або менше динаміків.

.. _class_AudioServer_constant_SPEAKER_SURROUND_31:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_31** = ``1``

Було виявлено налаштування 3.1-канального об’ємного звуку.

.. _class_AudioServer_constant_SPEAKER_SURROUND_51:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_51** = ``2``

Виявлено налаштування 5.1-канального об’ємного звуку.

.. _class_AudioServer_constant_SPEAKER_SURROUND_71:

.. rst-class:: classref-enumeration-constant

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **SPEAKER_SURROUND_71** = ``3``

Було виявлено налаштування об’ємного звуку 7.1.

.. rst-class:: classref-item-separator

----

.. _enum_AudioServer_PlaybackType:

.. rst-class:: classref-enumeration

enum **PlaybackType**: :ref:`🔗<enum_AudioServer_PlaybackType>`

.. _class_AudioServer_constant_PLAYBACK_TYPE_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_DEFAULT** = ``0``

**Експериментальний:** Ця константа може бути змінена або усунута у наступних версіях.

Відтворення вважатиметься типом, оголошеним у :ref:`ProjectSettings.audio/general/default_playback_type<class_ProjectSettings_property_audio/general/default_playback_type>`.

.. _class_AudioServer_constant_PLAYBACK_TYPE_STREAM:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_STREAM** = ``1``

**Експериментальний:** Ця константа може бути змінена або усунута у наступних версіях.

Примусово розглядати відтворення як потік.

.. _class_AudioServer_constant_PLAYBACK_TYPE_SAMPLE:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_SAMPLE** = ``2``

**Експериментальний:** Ця константа може бути змінена або усунута у наступних версіях.

Примусово вважати відтворення зразком. Це може забезпечити меншу затримку та більш стабільне відтворення (з меншим ризиком потріскування звуку) ціною меншої гнучкості.

\ **Примітка:** наразі підтримується лише на веб-платформі.

\ **Примітка:** :ref:`AudioEffect<class_AudioEffect>` не підтримуються, якщо відтворення розглядається як семпл.

.. _class_AudioServer_constant_PLAYBACK_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **PLAYBACK_TYPE_MAX** = ``3``

**Експериментальний:** Ця константа може бути змінена або усунута у наступних версіях.

Представляє розмір переліку :ref:`PlaybackType<enum_AudioServer_PlaybackType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioServer_property_bus_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **bus_count** = ``1`` :ref:`🔗<class_AudioServer_property_bus_count>`

.. rst-class:: classref-property-setget

- |void| **set_bus_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bus_count**\ (\ )

Кількість доступних аудіо шин.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_input_device:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_device** = ``"Default"`` :ref:`🔗<class_AudioServer_property_input_device>`

.. rst-class:: classref-property-setget

- |void| **set_input_device**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_device**\ (\ )

Назва поточного пристрою для аудіовходу (див. :ref:`get_input_device_list()<class_AudioServer_method_get_input_device_list>`). У системах із декількома аудіовходами (такими як аналоговий, аудіо USB та HDMI) це можна використовувати для вибору пристрою введення аудіо. Значення ``"За замовчуванням"`` записуватиме аудіо на загальносистемний аудіовхід за замовчуванням. Якщо встановлено недійсне ім’я пристрою, значення буде повернено до ``"Default"``.

\ **Примітка:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` має мати значення ``true``, щоб аудіовхід працював. Перегляньте також опис цього параметра, щоб дізнатися про застереження щодо дозволів і налаштувань конфіденційності операційної системи.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_output_device:

.. rst-class:: classref-property

:ref:`String<class_String>` **output_device** = ``"Default"`` :ref:`🔗<class_AudioServer_property_output_device>`

.. rst-class:: classref-property-setget

- |void| **set_output_device**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_output_device**\ (\ )

Назва поточного пристрою для виведення аудіо (див. :ref:`get_output_device_list()<class_AudioServer_method_get_output_device_list>`). У системах із декількома аудіовиходами (такими як аналоговий, аудіо USB та HDMI) це можна використовувати для вибору пристрою аудіовиходу. Значення ``"Default"`` відтворюватиме аудіо на загальносистемному аудіовиході за замовчуванням. Якщо встановлено недійсне ім’я пристрою, значення буде повернено до ``"Default"``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_property_playback_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **playback_speed_scale** = ``1.0`` :ref:`🔗<class_AudioServer_property_playback_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_playback_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_playback_speed_scale**\ (\ )

Масштабує швидкість відтворення аудіо (тобто, встановивши значення ``0,5``, аудіо відтворюватиметься з половинною швидкістю). Перегляньте також :ref:`Engine.time_scale<class_Engine_property_time_scale>`, щоб вплинути на загальну швидкість симуляції, яка не залежить від :ref:`playback_speed_scale<class_AudioServer_property_playback_speed_scale>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AudioServer_method_add_bus:

.. rst-class:: classref-method

|void| **add_bus**\ (\ at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AudioServer_method_add_bus>`

Додає шину в ``at_position``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_add_bus_effect:

.. rst-class:: classref-method

|void| **add_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect\: :ref:`AudioEffect<class_AudioEffect>`, at_position\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AudioServer_method_add_bus_effect>`

Додає ефект :ref:`AudioEffect<class_AudioEffect>` до шини ``bus_idx`` у ``at_position``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_generate_bus_layout:

.. rst-class:: classref-method

:ref:`AudioBusLayout<class_AudioBusLayout>` **generate_bus_layout**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_generate_bus_layout>`

Створює :ref:`AudioBusLayout<class_AudioBusLayout>` за допомогою доступних шин і ефектів.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_channels:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_channels**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_channels>`

Повертає кількість каналів шини за індексом ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect:

.. rst-class:: classref-method

:ref:`AudioEffect<class_AudioEffect>` **get_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect>`

Повертає :ref:`AudioEffect<class_AudioEffect>` у позиції ``effect_idx`` у шині ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_effect_count**\ (\ bus_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect_count>`

Повертає кількість ефектів на шині в ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_effect_instance:

.. rst-class:: classref-method

:ref:`AudioEffectInstance<class_AudioEffectInstance>` **get_bus_effect_instance**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_AudioServer_method_get_bus_effect_instance>`

Повертає :ref:`AudioEffectInstance<class_AudioEffectInstance>`, призначений вказаній шині та індексам ефекту (і додатково каналу).

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bus_index**\ (\ bus_name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_index>`

Повертає індекс шини з назвою ``bus_name``. Повертає ``-1``, якщо не існує шини з вказаною назвою.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_bus_name**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_name>`

Повертає назву шини з індексом ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_peak_volume_left_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_peak_volume_left_db**\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_peak_volume_left_db>`

Повертає пікову гучність лівого динаміка в індексі шини ``bus_idx`` та індексі каналу ``channel``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_peak_volume_right_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_peak_volume_right_db**\ (\ bus_idx\: :ref:`int<class_int>`, channel\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_peak_volume_right_db>`

Повертає пікову гучність правого динаміка в індексі шини ``bus_idx`` та індексі каналу ``channel``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_send:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_bus_send**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_send>`

Повертає назву шини, на яку надсилає шина з індексом ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_volume_db:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_volume_db**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_volume_db>`

Повертає гучність шини за індексом ``bus_idx`` у дБ.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_bus_volume_linear:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bus_volume_linear**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_get_bus_volume_linear>`

Повертає гучність шини за індексом ``bus_idx`` як лінійне значення. 

\ **Примітка:** Повернене значення еквівалентно результату :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` щодо результату :ref:`get_bus_volume_db()<class_AudioServer_method_get_bus_volume_db>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_driver_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_driver_name**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_driver_name>`

Повертає назву поточного звукового драйвера. Значення за замовчуванням зазвичай залежить від операційної системи, але його можна змінити за допомогою :doc:`аргументу командного рядка <../tutorials/editor/command_line_tutorial>` ``--audio-driver``. ``--headless`` також автоматично встановлює аудіодрайвер на ``Dummy``. Дивіться також :ref:`ProjectSettings.audio/driver/driver<class_ProjectSettings_property_audio/driver/driver>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_device_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_input_device_list**\ (\ ) :ref:`🔗<class_AudioServer_method_get_input_device_list>`

Повертає назви всіх пристроїв аудіовведення, виявлених у системі.

\ **Примітка:** :ref:`ProjectSettings.audio/driver/enable_input<class_ProjectSettings_property_audio/driver/enable_input>` має мати значення ``true``, щоб аудіовхід працював. Перегляньте також опис цього параметра, щоб дізнатися про застереження щодо дозволів і налаштувань конфіденційності операційної системи.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_input_mix_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_input_mix_rate**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_input_mix_rate>`

Повертає частоту дискретизації на вході **AudioServer**.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_mix_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_mix_rate**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_mix_rate>`

Повертає частоту дискретизації на виході **AudioServer**.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_output_device_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_output_device_list**\ (\ ) :ref:`🔗<class_AudioServer_method_get_output_device_list>`

Повертає назви всіх пристроїв аудіовиведення, виявлених у системі.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_output_latency:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_output_latency**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_output_latency>`

Повертає ефективну вихідну затримку звукового драйвера. Це базується на :ref:`ProjectSettings.audio/driver/output_latency<class_ProjectSettings_property_audio/driver/output_latency>`, але точне повернуте значення буде відрізнятися залежно від операційної системи та аудіодрайвера.

\ **Примітка:** Це може бути дорогим; не рекомендується викликати :ref:`get_output_latency()<class_AudioServer_method_get_output_latency>` кожного кадру.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_speaker_mode:

.. rst-class:: classref-method

:ref:`SpeakerMode<enum_AudioServer_SpeakerMode>` **get_speaker_mode**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_speaker_mode>`

Повертає конфігурацію динаміка.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_time_since_last_mix:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_time_since_last_mix**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_time_since_last_mix>`

Повертає відносний час з моменту останнього змішування.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_get_time_to_next_mix:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_time_to_next_mix**\ (\ ) |const| :ref:`🔗<class_AudioServer_method_get_time_to_next_mix>`

Повертає відносний час до наступного змішування.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_bypassing_effects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_bypassing_effects**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_bypassing_effects>`

Якщо ``true``, автобус в індексі ``bus_idx`` є охоплюючий ефект.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_effect_enabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_effect_enabled**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_effect_enabled>`

Якщо ``true``, ефект за індексом ``effect_idx`` на шині за індексом ``bus_idx`` увімкнено.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_mute:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_mute**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_mute>`

Якщо ``true``, автобус в індексі ``bus_idx`` приглушений.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_bus_solo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_bus_solo**\ (\ bus_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioServer_method_is_bus_solo>`

Якщо ``true``, автобус в індексі ``bus_idx`` знаходиться в сольному режимі.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_is_stream_registered_as_sample:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stream_registered_as_sample**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioServer_method_is_stream_registered_as_sample>`

**Експериментальний:** Цей метод може бути змінений або усунутий у наступних версіях.

Якщо ``true``, потік реєструється як зразок. Двигуну не доведеться реєструвати його перед відтворенням зразка.

 Якщо ``false``, потік потрібно буде зареєструвати перед його відтворенням. Щоб запобігти стрибкам затримки, зареєструйте потік як вибірку за допомогою :ref:`register_stream_as_sample()<class_AudioServer_method_register_stream_as_sample>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_lock:

.. rst-class:: classref-method

|void| **lock**\ (\ ) :ref:`🔗<class_AudioServer_method_lock>`

Блокує основний цикл аудіодрайвера.

\ **Примітка:** не забудьте розблокувати його після цього.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_move_bus:

.. rst-class:: classref-method

|void| **move_bus**\ (\ index\: :ref:`int<class_int>`, to_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_move_bus>`

Переміщує шину від індексу ``index`` до індексу ``to_index``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_register_stream_as_sample:

.. rst-class:: classref-method

|void| **register_stream_as_sample**\ (\ stream\: :ref:`AudioStream<class_AudioStream>`\ ) :ref:`🔗<class_AudioServer_method_register_stream_as_sample>`

**Експериментальний:** Цей метод може бути змінений або усунутий у наступних версіях.

Примусово реєструє потік як вибірку.

\ **Примітка:** Під час виклику цього методу можуть виникнути стрибки затримки, особливо в однопоточних збірках. Пропонується викликати цей метод під час завантаження активів, де стрибок затримки можна замаскувати, замість того, щоб реєструвати зразок безпосередньо перед його відтворенням.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_remove_bus:

.. rst-class:: classref-method

|void| **remove_bus**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_remove_bus>`

Видаляє шину за індексом ``index``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_remove_bus_effect:

.. rst-class:: classref-method

|void| **remove_bus_effect**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_remove_bus_effect>`

Видаляє ефект за індексом ``effect_idx`` із шини за індексом ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_bypass_effects:

.. rst-class:: classref-method

|void| **set_bus_bypass_effects**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_bypass_effects>`

Якщо ``true``, автобус в індексі ``bus_idx`` є охоплюючий ефект.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_effect_enabled:

.. rst-class:: classref-method

|void| **set_bus_effect_enabled**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_effect_enabled>`

Якщо ``true``, ефект за індексом ``effect_idx`` на шині за індексом ``bus_idx`` увімкнено.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_layout:

.. rst-class:: classref-method

|void| **set_bus_layout**\ (\ bus_layout\: :ref:`AudioBusLayout<class_AudioBusLayout>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_layout>`

Перезаписує поточний :ref:`AudioBusLayout<class_AudioBusLayout>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_mute:

.. rst-class:: classref-method

|void| **set_bus_mute**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_mute>`

Якщо ``true``, автобус в індексі ``bus_idx`` приглушений.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_name:

.. rst-class:: classref-method

|void| **set_bus_name**\ (\ bus_idx\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_name>`

Встановлює назву шини за індексом ``bus_idx`` на ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_send:

.. rst-class:: classref-method

|void| **set_bus_send**\ (\ bus_idx\: :ref:`int<class_int>`, send\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_send>`

Підключає вихід шини ``bus_idx`` до шини з назвою ``send``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_solo:

.. rst-class:: classref-method

|void| **set_bus_solo**\ (\ bus_idx\: :ref:`int<class_int>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_solo>`

Якщо ``true``, автобус в індексі ``bus_idx`` знаходиться в сольному режимі.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_volume_db:

.. rst-class:: classref-method

|void| **set_bus_volume_db**\ (\ bus_idx\: :ref:`int<class_int>`, volume_db\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_volume_db>`

Встановлює гучність шини за індексом ``bus_idx`` на ``volume_db``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_bus_volume_linear:

.. rst-class:: classref-method

|void| **set_bus_volume_linear**\ (\ bus_idx\: :ref:`int<class_int>`, volume_linear\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioServer_method_set_bus_volume_linear>`

Встановлює гучність як лінійне значення шини за індексом ``bus_idx`` до ``volume_linear``. 

\ **Примітка.** Використання цього методу еквівалентно виклику :ref:`set_bus_volume_db()<class_AudioServer_method_set_bus_volume_db>` із результатом :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` для значення.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_set_enable_tagging_used_audio_streams:

.. rst-class:: classref-method

|void| **set_enable_tagging_used_audio_streams**\ (\ enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AudioServer_method_set_enable_tagging_used_audio_streams>`

Якщо встановлено значення ``true``, усі екземпляри :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` викликатимуть :ref:`AudioStreamPlayback._tag_used_streams()<class_AudioStreamPlayback_private_method__tag_used_streams>` на кожному кроці мікшування.

\ **Примітка:** це ввімкнено за умовчанням у редакторі, оскільки воно використовується плагінами редактора для попереднього перегляду аудіопотоку.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_swap_bus_effects:

.. rst-class:: classref-method

|void| **swap_bus_effects**\ (\ bus_idx\: :ref:`int<class_int>`, effect_idx\: :ref:`int<class_int>`, by_effect_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AudioServer_method_swap_bus_effects>`

Міняє місцями положення двох ефектів у шині ``bus_idx``.

.. rst-class:: classref-item-separator

----

.. _class_AudioServer_method_unlock:

.. rst-class:: classref-method

|void| **unlock**\ (\ ) :ref:`🔗<class_AudioServer_method_unlock>`

Розблоковує основний цикл аудіодрайвера. (Після блокування його слід завжди розблокувати.)

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
