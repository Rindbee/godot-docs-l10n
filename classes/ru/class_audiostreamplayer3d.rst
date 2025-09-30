:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/AudioStreamPlayer3D.xml.

.. _class_AudioStreamPlayer3D:

AudioStreamPlayer3D
===================

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Воспроизводит позиционный звук в трехмерном пространстве.

.. rst-class:: classref-introduction-group

Описание
----------------

Воспроизводит аудио с позиционными звуковыми эффектами, основанными на относительном положении слушателя аудио. Позиционные эффекты включают затухание на расстоянии, направленность и эффект Доплера. Для большей реалистичности к удаленным звукам применяется фильтр нижних частот. Это можно отключить, установив :ref:`attenuation_filter_cutoff_hz<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>` на ``20500``.

По умолчанию звук слышен из положения камеры. Это можно изменить, добавив узел :ref:`AudioListener3D<class_AudioListener3D>` в сцену и включив его, вызвав :ref:`AudioListener3D.make_current()<class_AudioListener3D_method_make_current>` для него.

См. также :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`, чтобы воспроизвести звук непозиционно.

\ **Примечание:** Скрытие узла **AudioStreamPlayer3D** не отключает его аудиовыход. Чтобы временно отключить аудиовыход **AudioStreamPlayer3D**, установите для :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` очень низкое значение, например ``-100`` (которое не слышно человеческому уху).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Аудиопотоки <../tutorials/audio/audio_streams>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                                              | :ref:`area_mask<class_AudioStreamPlayer3D_property_area_mask>`                                                       | ``1``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`attenuation_filter_cutoff_hz<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>`                 | ``5000.0``    |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`attenuation_filter_db<class_AudioStreamPlayer3D_property_attenuation_filter_db>`                               | ``-24.0``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` | :ref:`attenuation_model<class_AudioStreamPlayer3D_property_attenuation_model>`                                       | ``0``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`autoplay<class_AudioStreamPlayer3D_property_autoplay>`                                                         | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`StringName<class_StringName>`                                | :ref:`bus<class_AudioStreamPlayer3D_property_bus>`                                                                   | ``&"Master"`` |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>`   | :ref:`doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>`                                         | ``0``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`emission_angle_degrees<class_AudioStreamPlayer3D_property_emission_angle_degrees>`                             | ``45.0``      |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`emission_angle_enabled<class_AudioStreamPlayer3D_property_emission_angle_enabled>`                             | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`emission_angle_filter_attenuation_db<class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db>` | ``-12.0``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`max_db<class_AudioStreamPlayer3D_property_max_db>`                                                             | ``3.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>`                                                 | ``0.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`                                              | :ref:`max_polyphony<class_AudioStreamPlayer3D_property_max_polyphony>`                                               | ``1``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`panning_strength<class_AudioStreamPlayer3D_property_panning_strength>`                                         | ``1.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`                                                   | ``1.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`PlaybackType<enum_AudioServer_PlaybackType>`                 | :ref:`playback_type<class_AudioStreamPlayer3D_property_playback_type>`                                               | ``0``         |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`playing<class_AudioStreamPlayer3D_property_playing>`                                                           | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`AudioStream<class_AudioStream>`                              | :ref:`stream<class_AudioStreamPlayer3D_property_stream>`                                                             |               |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                                            | :ref:`stream_paused<class_AudioStreamPlayer3D_property_stream_paused>`                                               | ``false``     |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>`                                                       | ``10.0``      |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>`                                                       | ``0.0``       |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                                          | :ref:`volume_linear<class_AudioStreamPlayer3D_property_volume_linear>`                                               |               |
   +--------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                             | :ref:`get_playback_position<class_AudioStreamPlayer3D_method_get_playback_position>`\ (\ )                |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` | :ref:`get_stream_playback<class_AudioStreamPlayer3D_method_get_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`has_stream_playback<class_AudioStreamPlayer3D_method_has_stream_playback>`\ (\ )                    |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`play<class_AudioStreamPlayer3D_method_play>`\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`seek<class_AudioStreamPlayer3D_method_seek>`\ (\ to_position\: :ref:`float<class_float>`\ )         |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`stop<class_AudioStreamPlayer3D_method_stop>`\ (\ )                                                  |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_AudioStreamPlayer3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_signal_finished>`

Издается, когда прекращается воспроизведение звука.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_AudioStreamPlayer3D_AttenuationModel:

.. rst-class:: classref-enumeration

enum **AttenuationModel**: :ref:`🔗<enum_AudioStreamPlayer3D_AttenuationModel>`

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_INVERSE_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_INVERSE_DISTANCE** = ``0``

Ослабление громкости в зависимости от линейного расстояния.

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_INVERSE_SQUARE_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_INVERSE_SQUARE_DISTANCE** = ``1``

Ослабление громкости пропорционально квадрату расстояния.

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_LOGARITHMIC:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_LOGARITHMIC** = ``2``

Ослабление громкости в зависимости от логарифмического расстояния.

.. _class_AudioStreamPlayer3D_constant_ATTENUATION_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **ATTENUATION_DISABLED** = ``3``

Нет ослабления громкости в зависимости от расстояния. Звук все равно будет слышен позиционно, в отличие от :ref:`AudioStreamPlayer<class_AudioStreamPlayer>`. :ref:`ATTENUATION_DISABLED<class_AudioStreamPlayer3D_constant_ATTENUATION_DISABLED>` можно объединить со значением :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>`, большим, чем ``0.0``, чтобы добиться линейного затухания, привязанного к сфере определенного размера.

.. rst-class:: classref-item-separator

----

.. _enum_AudioStreamPlayer3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_AudioStreamPlayer3D_DopplerTracking>`

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

Откл. доплеровского слежения.

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

Выполняет доплеровское отслеживание во время кадров процесса (см. :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

Выполняет доплеровское отслеживание во время физических кадров (см. :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AudioStreamPlayer3D_property_area_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **area_mask** = ``1`` :ref:`🔗<class_AudioStreamPlayer3D_property_area_mask>`

.. rst-class:: classref-property-setget

- |void| **set_area_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_area_mask**\ (\ )

Определяет, какие слои :ref:`Area3D<class_Area3D>` влияют на звук для эффектов реверберации и аудиошины. Области можно использовать для перенаправления :ref:`AudioStream<class_AudioStream>`\ s так, чтобы они воспроизводились на определенной аудиошине. Примером того, как это можно использовать, является создание области «воды», чтобы звуки, воспроизводимые в воде, перенаправлялись через аудиошину, чтобы они звучали так, как будто они воспроизводятся под водой.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation_filter_cutoff_hz** = ``5000.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_filter_cutoff_hz>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_filter_cutoff_hz**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation_filter_cutoff_hz**\ (\ )

Частота среза фильтра нижних частот ослабления в Гц. Звук выше этой частоты ослабляется сильнее, чем звук ниже этой частоты. Чтобы отключить этот эффект, установите его на ``20500``, так как эта частота выше предела человеческого слуха.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_filter_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation_filter_db** = ``-24.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_filter_db>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_filter_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation_filter_db**\ (\ )

Величина, в которой фильтр влияет на громкость, в децибелах.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_attenuation_model:

.. rst-class:: classref-property

:ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **attenuation_model** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_attenuation_model>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation_model**\ (\ value\: :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>`\ )
- :ref:`AttenuationModel<enum_AudioStreamPlayer3D_AttenuationModel>` **get_attenuation_model**\ (\ )

Решает, должен ли звук становиться тише с расстоянием линейно, квадратично, логарифмически или не зависеть от расстояния, эффективно отключая затухание.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_autoplay:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autoplay** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_autoplay_enabled**\ (\ )

Если ``true``, звук воспроизводится при добавлении узла AudioStreamPlayer3D в дерево сцены.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_bus:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **bus** = ``&"Master"`` :ref:`🔗<class_AudioStreamPlayer3D_property_bus>`

.. rst-class:: classref-property-setget

- |void| **set_bus**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_bus**\ (\ )

Шина, на которой воспроизводится этот звук.

\ **Примечание:** При установке этого свойства имейте в виду, что проверка соответствия данного имени существующей шине не выполняется. Это связано с тем, что макеты аудиошин могут быть загружены после установки этого свойства. Если данное имя не может быть разрешено во время выполнения, оно вернется к ``"Master"``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_AudioStreamPlayer3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

Решает, на каком этапе следует рассчитывать эффект Доплера.

\ **Примечание:** Если :ref:`doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` не является :ref:`DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>`, но в текущем :ref:`Camera3D<class_Camera3D>`/:ref:`AudioListener3D<class_AudioListener3D>` отключён доплеровский трекинг, эффект Доплера будет слышен, но не будет учитывать движение текущего слушателя. Для получения точного доплеровского трекинга доплеровский трекинг следует включить как в **AudioStreamPlayer3D**, так и в текущем :ref:`Camera3D<class_Camera3D>`/:ref:`AudioListener3D<class_AudioListener3D>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_angle_degrees** = ``45.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_angle**\ (\ )

Угол, под которым звук достигает слушателя без ослабления.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emission_angle_enabled** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emission_angle_enabled**\ (\ )

Если ``true``, звук должен быть ослаблен в соответствии с направлением звука.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_angle_filter_attenuation_db** = ``-12.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_emission_angle_filter_attenuation_db>`

.. rst-class:: classref-property-setget

- |void| **set_emission_angle_filter_attenuation_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_angle_filter_attenuation_db**\ (\ )

Коэффициент затухания, используемый, если слушатель находится за пределами :ref:`emission_angle_degrees<class_AudioStreamPlayer3D_property_emission_angle_degrees>` и задан :ref:`emission_angle_enabled<class_AudioStreamPlayer3D_property_emission_angle_enabled>`, в децибелах.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_db** = ``3.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_db>`

.. rst-class:: classref-property-setget

- |void| **set_max_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_db**\ (\ )

Устанавливает абсолютный максимум уровня звука в децибелах.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

Расстояние, за пределами которого звук больше не слышен. Действует только если установлено значение больше ``0.0``. :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` работает в паре с :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>`. Однако, в отличие от :ref:`unit_size<class_AudioStreamPlayer3D_property_unit_size>`, поведение которого зависит от :ref:`attenuation_model<class_AudioStreamPlayer3D_property_attenuation_model>`, :ref:`max_distance<class_AudioStreamPlayer3D_property_max_distance>` всегда работает линейно. Это можно использовать для предотвращения необходимости микширования звука **AudioStreamPlayer3D**, когда слушатель находится далеко, что экономит ресурсы ЦП.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_polyphony** = ``1`` :ref:`🔗<class_AudioStreamPlayer3D_property_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_polyphony**\ (\ )

Максимальное количество звуков, которые этот узел может воспроизводить одновременно. Воспроизведение дополнительных звуков после достижения этого значения приведет к отключению самых старых звуков.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_panning_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **panning_strength** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_panning_strength>`

.. rst-class:: classref-property-setget

- |void| **set_panning_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_panning_strength**\ (\ )

Масштабирует силу панорамирования для этого узла, умножая базовый :ref:`ProjectSettings.audio/general/3d_panning_strength<class_ProjectSettings_property_audio/general/3d_panning_strength>` на этот коэффициент. Если произведение равно ``0.0``, то стереопанорамирование отключено, а громкость одинакова для всех каналов. Если произведение равно ``1.0``, то один из каналов будет отключен, когда звук расположен точно слева (или справа) от слушателя.

Двухканальные стереосистемы реализуют `стандарт WebAudio для панорамирования StereoPannerNode <https://webaudio.github.io/web-audio-api/#stereopanner-algorithm>`__, где громкость равна косинусу половины угла азимута к уху.

Для других схем расположения динамиков, таких как 5.1 и 7.1, реализован алгоритм SPCAP (Speaker-Placement Correction Amplitude).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_pitch_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **pitch_scale** = ``1.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_pitch_scale>`

.. rst-class:: classref-property-setget

- |void| **set_pitch_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pitch_scale**\ (\ )

Высота тона и темп звука как множитель частоты дискретизации аудиосэмпла.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_playback_type:

.. rst-class:: classref-property

:ref:`PlaybackType<enum_AudioServer_PlaybackType>` **playback_type** = ``0`` :ref:`🔗<class_AudioStreamPlayer3D_property_playback_type>`

.. rst-class:: classref-property-setget

- |void| **set_playback_type**\ (\ value\: :ref:`PlaybackType<enum_AudioServer_PlaybackType>`\ )
- :ref:`PlaybackType<enum_AudioServer_PlaybackType>` **get_playback_type**\ (\ )

**Экспериментальное:** Это свойство может быть изменено или удалено в будущих версиях.

Тип воспроизведения потокового проигрывателя. Если установлено значение, отличное от значения по умолчанию, будет принудительно выбран этот тип воспроизведения.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_playing:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **playing** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_playing>`

.. rst-class:: classref-property-setget

- |void| **set_playing**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_playing**\ (\ )

Если ``true``, звук воспроизводится или поставлен в очередь на воспроизведение (см. :ref:`play()<class_AudioStreamPlayer3D_method_play>`).

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_stream:

.. rst-class:: classref-property

:ref:`AudioStream<class_AudioStream>` **stream** :ref:`🔗<class_AudioStreamPlayer3D_property_stream>`

.. rst-class:: classref-property-setget

- |void| **set_stream**\ (\ value\: :ref:`AudioStream<class_AudioStream>`\ )
- :ref:`AudioStream<class_AudioStream>` **get_stream**\ (\ )

Ресурс :ref:`AudioStream<class_AudioStream>` для воспроизведения.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_stream_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **stream_paused** = ``false`` :ref:`🔗<class_AudioStreamPlayer3D_property_stream_paused>`

.. rst-class:: classref-property-setget

- |void| **set_stream_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_stream_paused**\ (\ )

Если ``true``, воспроизведение приостанавливается. Вы можете возобновить его, установив :ref:`stream_paused<class_AudioStreamPlayer3D_property_stream_paused>` на ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_unit_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **unit_size** = ``10.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_unit_size>`

.. rst-class:: classref-property-setget

- |void| **set_unit_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_unit_size**\ (\ )

Фактор эффекта затухания. Более высокие значения делают звук слышимым на большем расстоянии.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_volume_db:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_db** = ``0.0`` :ref:`🔗<class_AudioStreamPlayer3D_property_volume_db>`

.. rst-class:: classref-property-setget

- |void| **set_volume_db**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_db**\ (\ )

Базовый уровень звука до затухания, в децибелах.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_property_volume_linear:

.. rst-class:: classref-property

:ref:`float<class_float>` **volume_linear** :ref:`🔗<class_AudioStreamPlayer3D_property_volume_linear>`

.. rst-class:: classref-property-setget

- |void| **set_volume_linear**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_volume_linear**\ (\ )

Базовый уровень звука до затухания, как линейное значение.

\ **Примечание:** Этот член изменяет :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` для удобства. Возвращаемое значение эквивалентно результату :ref:`@GlobalScope.db_to_linear()<class_@GlobalScope_method_db_to_linear>` для :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>`. Установка этого члена эквивалентна установке :ref:`volume_db<class_AudioStreamPlayer3D_property_volume_db>` на результат :ref:`@GlobalScope.linear_to_db()<class_@GlobalScope_method_linear_to_db>` для значения.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioStreamPlayer3D_method_get_playback_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playback_position**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_get_playback_position>`

Возвращает позицию в :ref:`AudioStream<class_AudioStream>`.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_get_stream_playback:

.. rst-class:: classref-method

:ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **get_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_get_stream_playback>`

Возвращает объект :ref:`AudioStreamPlayback<class_AudioStreamPlayback>`, связанный с этим **AudioStreamPlayer3D**.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_has_stream_playback:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_stream_playback**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_has_stream_playback>`

Возвращает, может ли :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` вернуть объект :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` или нет.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ from_position\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_play>`

Ставит звук в очередь для воспроизведения в следующем физическом кадре, начиная с указанной позиции ``from_position`` в секундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_seek:

.. rst-class:: classref-method

|void| **seek**\ (\ to_position\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_seek>`

Устанавливает позицию, с которой будет воспроизводиться звук, в секундах.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamPlayer3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AudioStreamPlayer3D_method_stop>`

Остановка звука.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
