:github_url: hide

.. _class_AnimationMixer:

AnimationMixer
==============

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AnimationPlayer<class_AnimationPlayer>`, :ref:`AnimationTree<class_AnimationTree>`

Базовый класс для :ref:`AnimationPlayer<class_AnimationPlayer>` и :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый класс для :ref:`AnimationPlayer<class_AnimationPlayer>` и :ref:`AnimationTree<class_AnimationTree>` для управления списками анимации. Он также имеет общие свойства и методы для воспроизведения и смешивания.

После создания экземпляра данных информации о воспроизведении в расширенном классе, смешивание и обработка происходит в **AnimationMixer**.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Перенос анимации из Godot 4.0 в 4.3 <https://godotengine.org/article/migrating-animations-from-godot-4-0-to-4-3/>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`active<class_AnimationMixer_property_active>`                                 | ``true``           |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                                                   | :ref:`audio_max_polyphony<class_AnimationMixer_property_audio_max_polyphony>`       | ``32``             |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` | :ref:`callback_mode_discrete<class_AnimationMixer_property_callback_mode_discrete>` | ``1``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>`     | :ref:`callback_mode_method<class_AnimationMixer_property_callback_mode_method>`     | ``0``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>`   | :ref:`callback_mode_process<class_AnimationMixer_property_callback_mode_process>`   | ``1``              |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`deterministic<class_AnimationMixer_property_deterministic>`                   | ``false``          |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`reset_on_save<class_AnimationMixer_property_reset_on_save>`                   | ``true``           |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`                                                                 | :ref:`root_motion_local<class_AnimationMixer_property_root_motion_local>`           | ``false``          |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>`           | ``NodePath("")``   |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                                                         | :ref:`root_node<class_AnimationMixer_property_root_node>`                           | ``NodePath("..")`` |
   +-----------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`_post_process_key_value<class_AnimationMixer_private_method__post_process_key_value>`\ (\ animation\: :ref:`Animation<class_Animation>`, track\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, object_id\: :ref:`int<class_int>`, object_sub_idx\: :ref:`int<class_int>`\ ) |virtual| |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`add_animation_library<class_AnimationMixer_method_add_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`, library\: :ref:`AnimationLibrary<class_AnimationLibrary>`\ )                                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`advance<class_AnimationMixer_method_advance>`\ (\ delta\: :ref:`float<class_float>`\ )                                                                                                                                                                                                                        |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`capture<class_AnimationMixer_method_capture>`\ (\ name\: :ref:`StringName<class_StringName>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>` = 0, ease_type\: :ref:`EaseType<enum_Tween_EaseType>` = 0\ )                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear_caches<class_AnimationMixer_method_clear_caches>`\ (\ )                                                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`find_animation<class_AnimationMixer_method_find_animation>`\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`find_animation_library<class_AnimationMixer_method_find_animation_library>`\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const|                                                                                                                                                                      |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Animation<class_Animation>`                                | :ref:`get_animation<class_AnimationMixer_method_get_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationLibrary<class_AnimationLibrary>`                  | :ref:`get_animation_library<class_AnimationMixer_method_get_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_animation_library_list<class_AnimationMixer_method_get_animation_library_list>`\ (\ ) |const|                                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_animation_list<class_AnimationMixer_method_get_animation_list>`\ (\ ) |const|                                                                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_position<class_AnimationMixer_method_get_root_motion_position>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_position_accumulator<class_AnimationMixer_method_get_root_motion_position_accumulator>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_root_motion_rotation<class_AnimationMixer_method_get_root_motion_rotation>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>`                              | :ref:`get_root_motion_rotation_accumulator<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`\ (\ ) |const|                                                                                                                                                                                         |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_scale<class_AnimationMixer_method_get_root_motion_scale>`\ (\ ) |const|                                                                                                                                                                                                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                    | :ref:`get_root_motion_scale_accumulator<class_AnimationMixer_method_get_root_motion_scale_accumulator>`\ (\ ) |const|                                                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation<class_AnimationMixer_method_has_animation>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_animation_library<class_AnimationMixer_method_has_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_animation_library<class_AnimationMixer_method_remove_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_animation_library<class_AnimationMixer_method_rename_animation_library>`\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ )                                                                                                                              |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_AnimationMixer_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_signal_animation_finished>`

Уведомляет об окончании воспроизведения анимации.

\ **Примечание:** Этот сигнал не выдается, если анимация зацикливается.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_libraries_updated:

.. rst-class:: classref-signal

**animation_libraries_updated**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_animation_libraries_updated>`

Уведомляет об изменении библиотек анимации.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_list_changed:

.. rst-class:: classref-signal

**animation_list_changed**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_animation_list_changed>`

Уведомляет об изменении списка анимаций.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_animation_started:

.. rst-class:: classref-signal

**animation_started**\ (\ anim_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_signal_animation_started>`

Уведомляет о начале воспроизведения анимации.

\ **Примечание:** Этот сигнал не выдаётся, если анимация повторяется.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_caches_cleared:

.. rst-class:: classref-signal

**caches_cleared**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_caches_cleared>`

Уведомляет об очистке кэшей автоматически или вручную с помощью :ref:`clear_caches()<class_AnimationMixer_method_clear_caches>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_mixer_applied:

.. rst-class:: classref-signal

**mixer_applied**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_mixer_applied>`

Уведомляет, когда соответствующий результат смешивания был применен к целевым объектам.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_signal_mixer_updated:

.. rst-class:: classref-signal

**mixer_updated**\ (\ ) :ref:`🔗<class_AnimationMixer_signal_mixer_updated>`

Уведомляет об обновлении процесса, связанного с свойством.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_AnimationMixer_AnimationCallbackModeProcess:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeProcess**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeProcess>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS** = ``0``

Анимация процесса во время физических кадров (см. :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`). Это особенно полезно при анимации физических тел.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_IDLE** = ``1``

Анимация процесса во время кадров процесса (см. :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_MANUAL:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **ANIMATION_CALLBACK_MODE_PROCESS_MANUAL** = ``2``

Не обрабатывать анимацию. Используйте :ref:`advance()<class_AnimationMixer_method_advance>` для ручной обработки анимации.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationMixer_AnimationCallbackModeMethod:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeMethod**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeMethod>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_METHOD_DEFERRED:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **ANIMATION_CALLBACK_MODE_METHOD_DEFERRED** = ``0``

Пакетные вызовы методов во время процесса анимации, затем вызовы после обработки событий. Это позволяет избежать ошибок, связанных с удалением узлов или изменением AnimationPlayer во время воспроизведения.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE** = ``1``

Вызывайте методы немедленно при достижении их в анимации.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationMixer_AnimationCallbackModeDiscrete:

.. rst-class:: classref-enumeration

enum **AnimationCallbackModeDiscrete**: :ref:`🔗<enum_AnimationMixer_AnimationCallbackModeDiscrete>`

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT** = ``0``

Значение дорожки :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` имеет приоритет при смешивании значений дорожки :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` или :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` и значений дорожки :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE** = ``1``

Значение дорожки :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` или :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` имеет приоритет при смешивании значений дорожки :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` или :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>` и значений дорожки :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`. Это поведение по умолчанию для :ref:`AnimationPlayer<class_AnimationPlayer>`.

.. _class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS:

.. rst-class:: classref-enumeration-constant

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS** = ``2``

Всегда обрабатывайте значение дорожки :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` как :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` с :ref:`Animation.INTERPOLATION_NEAREST<class_Animation_constant_INTERPOLATION_NEAREST>`. Это поведение по умолчанию для :ref:`AnimationTree<class_AnimationTree>`.

Если дорожка значений имеет неинтерполируемые значения типа ключа, она внутренне преобразуется для использования :ref:`ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE>` с :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>`.

Список неинтерполируемых типов:

- :ref:`@GlobalScope.TYPE_NIL<class_@GlobalScope_constant_TYPE_NIL>`\ 

- :ref:`@GlobalScope.TYPE_NODE_PATH<class_@GlobalScope_constant_TYPE_NODE_PATH>`\ 

- :ref:`@GlobalScope.TYPE_RID<class_@GlobalScope_constant_TYPE_RID>`\ 

- :ref:`@GlobalScope.TYPE_OBJECT<class_@GlobalScope_constant_TYPE_OBJECT>`\ 

- :ref:`@GlobalScope.TYPE_CALLABLE<class_@GlobalScope_constant_TYPE_CALLABLE>`\ 

- :ref:`@GlobalScope.TYPE_SIGNAL<class_@GlobalScope_constant_TYPE_SIGNAL>`\ 

- :ref:`@GlobalScope.TYPE_DICTIONARY<class_@GlobalScope_constant_TYPE_DICTIONARY>`\ 

- :ref:`@GlobalScope.TYPE_PACKED_BYTE_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_BYTE_ARRAY>`\ 

\ :ref:`@GlobalScope.TYPE_BOOL<class_@GlobalScope_constant_TYPE_BOOL>` и :ref:`@GlobalScope.TYPE_INT<class_@GlobalScope_constant_TYPE_INT>` обрабатываются как :ref:`@GlobalScope.TYPE_FLOAT<class_@GlobalScope_constant_TYPE_FLOAT>` во время смешивания и округляются при получении результата.

То же самое касается массивов и векторов, например, :ref:`@GlobalScope.TYPE_PACKED_INT32_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_INT32_ARRAY>` или :ref:`@GlobalScope.TYPE_VECTOR2I<class_@GlobalScope_constant_TYPE_VECTOR2I>`, они обрабатываются как :ref:`@GlobalScope.TYPE_PACKED_FLOAT32_ARRAY<class_@GlobalScope_constant_TYPE_PACKED_FLOAT32_ARRAY>` или :ref:`@GlobalScope.TYPE_VECTOR2<class_@GlobalScope_constant_TYPE_VECTOR2>`. Также обратите внимание, что для массивов размер также интерполируется.

\ :ref:`@GlobalScope.TYPE_STRING<class_@GlobalScope_constant_TYPE_STRING>` и :ref:`@GlobalScope.TYPE_STRING_NAME<class_@GlobalScope_constant_TYPE_STRING_NAME>` интерполируются между кодами символов и длинами, но обратите внимание, что есть разница в алгоритме между интерполяцией между ключами и интерполяцией путем смешивания.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AnimationMixer_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_AnimationMixer_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Если ``true``, **AnimationMixer** будет выполнять обработку.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_audio_max_polyphony:

.. rst-class:: classref-property

:ref:`int<class_int>` **audio_max_polyphony** = ``32`` :ref:`🔗<class_AnimationMixer_property_audio_max_polyphony>`

.. rst-class:: classref-property-setget

- |void| **set_audio_max_polyphony**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_audio_max_polyphony**\ (\ )

Количество возможных одновременных звуков для каждого из назначенных AudioStreamPlayers.

Например, если это значение равно ``32`` и анимация имеет две аудиодорожки, два назначенных :ref:`AudioStreamPlayer<class_AudioStreamPlayer>` могут одновременно воспроизводить до ``32`` голосов каждый.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_discrete:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **callback_mode_discrete** = ``1`` :ref:`🔗<class_AnimationMixer_property_callback_mode_discrete>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_discrete**\ (\ value\: :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>`\ )
- :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>` **get_callback_mode_discrete**\ (\ )

Обычно дорожки можно установить на :ref:`Animation.UPDATE_DISCRETE<class_Animation_constant_UPDATE_DISCRETE>` для редкого обновления, обычно при использовании ближайшей интерполяции.

Однако при смешивании с :ref:`Animation.UPDATE_CONTINUOUS<class_Animation_constant_UPDATE_CONTINUOUS>` рассматриваются несколько результатов. :ref:`callback_mode_discrete<class_AnimationMixer_property_callback_mode_discrete>` указывает это явно. См. также :ref:`AnimationCallbackModeDiscrete<enum_AnimationMixer_AnimationCallbackModeDiscrete>`.

Чтобы смешанные результаты выглядели хорошо, рекомендуется установить это на :ref:`ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS>` для обновления каждого кадра во время смешивания. Существуют другие значения для совместимости, и они хороши, если смешивания нет, но не так, могут создавать артефакты.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_method:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **callback_mode_method** = ``0`` :ref:`🔗<class_AnimationMixer_property_callback_mode_method>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_method**\ (\ value\: :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>`\ )
- :ref:`AnimationCallbackModeMethod<enum_AnimationMixer_AnimationCallbackModeMethod>` **get_callback_mode_method**\ (\ )

Режим вызова, используемый для треков «Вызов Метода».

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_callback_mode_process:

.. rst-class:: classref-property

:ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **callback_mode_process** = ``1`` :ref:`🔗<class_AnimationMixer_property_callback_mode_process>`

.. rst-class:: classref-property-setget

- |void| **set_callback_mode_process**\ (\ value\: :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>`\ )
- :ref:`AnimationCallbackModeProcess<enum_AnimationMixer_AnimationCallbackModeProcess>` **get_callback_mode_process**\ (\ )

Уведомление о процессе, в котором необходимо обновить анимацию.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_deterministic:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deterministic** = ``false`` :ref:`🔗<class_AnimationMixer_property_deterministic>`

.. rst-class:: classref-property-setget

- |void| **set_deterministic**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deterministic**\ (\ )

Если ``true``, смешивание использует детерминированный алгоритм. Общий вес не нормализуется, а результат накапливается с начальным значением (``0`` или анимацией ``"RESET"``, если она присутствует).

Это означает, что если общий объем смешивания равен ``0.0``, результат равен анимации ``"RESET"``. 

Если количество дорожек между смешанными анимациями отличается, анимация с отсутствующей дорожкой обрабатывается так, как если бы она имела начальное значение.

Если ``false``, смешивание не использует детерминированный алгоритм. Общий вес нормализуется и всегда ``1.0``. Если количество дорожек между смешанными анимациями отличается, ничего не делается для анимации, в которой отсутствует дорожка.

\ **Примечание:** В :ref:`AnimationTree<class_AnimationTree>` смешивание с :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`, :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`, :ref:`AnimationNodeSub2<class_AnimationNodeSub2>` или весом больше ``1.0`` может привести к неожиданным результатам.

Например, если :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` смешивает два узла с количеством ``1.0``, то общий вес составит ``2.0``, но он будет нормализован, чтобы сделать общее количество ``1.0``, а результат будет равен :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>` с количеством ``0.5``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_reset_on_save:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset_on_save** = ``true`` :ref:`🔗<class_AnimationMixer_property_reset_on_save>`

.. rst-class:: classref-property-setget

- |void| **set_reset_on_save_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reset_on_save_enabled**\ (\ )

Это используется редактором. Если установлено значение ``true``, сцена будет сохранена с эффектами анимации сброса (анимация с ключом ``"RESET"``), примененными так, как если бы она была перенесена на время 0, при этом редактор сохраняет значения, которые сцена имела до сохранения. 

Это делает более удобным предварительный просмотр и редактирование анимаций в редакторе, поскольку изменения в сцене не будут сохранены, пока они установлены в анимации сброса.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_motion_local:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **root_motion_local** = ``false`` :ref:`🔗<class_AnimationMixer_property_root_motion_local>`

.. rst-class:: classref-property-setget

- |void| **set_root_motion_local**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_root_motion_local**\ (\ )

Если ``true``, значение :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>` извлекается как локальное значение перевода перед смешиванием. Другими словами, оно обрабатывается так, как будто перевод выполняется после поворота.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_motion_track:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_motion_track** = ``NodePath("")`` :ref:`🔗<class_AnimationMixer_property_root_motion_track>`

.. rst-class:: classref-property-setget

- |void| **set_root_motion_track**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_motion_track**\ (\ )

Путь к дорожке анимации, используемой для корневого движения. Пути должны быть допустимыми путями дерева сцены к узлу и должны быть указаны, начиная с родительского узла узла, который будет воспроизводить анимацию. ``Member root_motion_track`` использует тот же формат, что и :ref:`Animation.track_set_path()<class_Animation_method_track_set_path>`, но обратите внимание, что должна быть указана кость.

Если дорожка имеет тип :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>`, :ref:`Animation.TYPE_ROTATION_3D<class_Animation_constant_TYPE_ROTATION_3D>` или :ref:`Animation.TYPE_SCALE_3D<class_Animation_constant_TYPE_SCALE_3D>`, преобразование будет визуально отменено, и анимация будет казаться оставшейся на месте. См. также :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>`, :ref:`get_root_motion_rotation()<class_AnimationMixer_method_get_root_motion_rotation>`, :ref:`get_root_motion_scale()<class_AnimationMixer_method_get_root_motion_scale>` и :ref:`RootMotionView<class_RootMotionView>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_property_root_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **root_node** = ``NodePath("..")`` :ref:`🔗<class_AnimationMixer_property_root_node>`

.. rst-class:: classref-property-setget

- |void| **set_root_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_root_node**\ (\ )

Узел, на который ссылается путь узла, будет отправлен.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AnimationMixer_private_method__post_process_key_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_post_process_key_value**\ (\ animation\: :ref:`Animation<class_Animation>`, track\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`, object_id\: :ref:`int<class_int>`, object_sub_idx\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AnimationMixer_private_method__post_process_key_value>`

Виртуальная функция для обработки после получения ключа во время воспроизведения.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_add_animation_library:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`, library\: :ref:`AnimationLibrary<class_AnimationLibrary>`\ ) :ref:`🔗<class_AnimationMixer_method_add_animation_library>`

Добавляет ``library`` в проигрыватель анимации под ключом ``name``.

AnimationMixer имеет глобальную библиотеку по умолчанию с пустой строкой в качестве ключа. Для добавления анимации в глобальную библиотеку:


.. tabs::

 .. code-tab:: gdscript

    var global_library = mixer.get_animation_library("")
    global_library.add_animation("animation_name", animation_resource)



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_advance:

.. rst-class:: classref-method

|void| **advance**\ (\ delta\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimationMixer_method_advance>`

Вручную продвиньте анимацию на указанное время (в секундах).

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_capture:

.. rst-class:: classref-method

|void| **capture**\ (\ name\: :ref:`StringName<class_StringName>`, duration\: :ref:`float<class_float>`, trans_type\: :ref:`TransitionType<enum_Tween_TransitionType>` = 0, ease_type\: :ref:`EaseType<enum_Tween_EaseType>` = 0\ ) :ref:`🔗<class_AnimationMixer_method_capture>`

Если анимационная дорожка, указанная ``name``, имеет опцию :ref:`Animation.UPDATE_CAPTURE<class_Animation_constant_UPDATE_CAPTURE>`, сохраняет текущие значения объектов, указанных путем дорожки, как кэш. Если уже есть захваченный кэш, старый кэш отбрасывается.

После этого он будет интерполироваться с текущим результатом смешивания анимации во время процесса воспроизведения в течение времени, указанного ``duration``, работая как кроссфейд.

Вы можете указать ``trans_type`` в качестве кривой для интерполяции. Для лучших результатов может быть целесообразно указать :ref:`Tween.TRANS_LINEAR<class_Tween_constant_TRANS_LINEAR>` для случаев, когда первый ключ дорожки начинается с ненулевого значения или когда значение ключа не меняется, и :ref:`Tween.TRANS_QUAD<class_Tween_constant_TRANS_QUAD>` для случаев, когда значение ключа изменяется линейно.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_clear_caches:

.. rst-class:: classref-method

|void| **clear_caches**\ (\ ) :ref:`🔗<class_AnimationMixer_method_clear_caches>`

**AnimationMixer** кэширует анимированные узлы. Он может не заметить, если узел исчезнет; :ref:`clear_caches()<class_AnimationMixer_method_clear_caches>` заставляет его обновить кэш снова.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_find_animation:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_animation**\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_find_animation>`

Возвращает ключ ``animation`` или пустой :ref:`StringName<class_StringName>`, если он не найден.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_find_animation_library:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **find_animation_library**\ (\ animation\: :ref:`Animation<class_Animation>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_find_animation_library>`

Возвращает ключ для :ref:`AnimationLibrary<class_AnimationLibrary>`, содержащий ``animation``, или пустой :ref:`StringName<class_StringName>`, если он не найден.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation:

.. rst-class:: classref-method

:ref:`Animation<class_Animation>` **get_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation>`

Возвращает :ref:`Animation<class_Animation>` с ключом ``name``. Если анимация не существует, возвращается ``null`` и регистрируется ошибка.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_library:

.. rst-class:: classref-method

:ref:`AnimationLibrary<class_AnimationLibrary>` **get_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_library>`

Возвращает первую :ref:`AnimationLibrary<class_AnimationLibrary>` с ключом ``name`` или ``null``, если не найдена.

Чтобы получить глобальную библиотеку анимации **AnimationMixer**, используйте ``get_animation_library("")``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_library_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_animation_library_list**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_library_list>`

Возвращает список сохраненных ключей библиотеки.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_animation_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_animation_list**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_animation_list>`

Возвращает список сохраненных ключей анимации.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_position**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_position>`

Извлеките дельту движения позиции с :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` как :ref:`Vector3<class_Vector3>`, который можно использовать в другом месте.

Если :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` не является путем к треку типа :ref:`Animation.TYPE_POSITION_3D<class_Animation_constant_TYPE_POSITION_3D>`, возвращает ``Vector3(0, 0, 0)``.

См. также :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` и :ref:`RootMotionView<class_RootMotionView>`.

Самый простой пример — применение позиции к :ref:`CharacterBody3D<class_CharacterBody3D>`:


.. tabs::

 .. code-tab:: gdscript

    var current_rotation

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            current_rotation = get_quaternion()
            state_machine.travel("Animate")
        var velocity = current_rotation * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



Используя это в сочетании с :ref:`get_root_motion_rotation_accumulator()<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`, вы можете более правильно применить положение движения корня для учета вращения узла.


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
        var velocity = (animation_tree.get_root_motion_rotation_accumulator().inverse() * get_quaternion()) * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



Если :ref:`root_motion_local<class_AnimationMixer_property_root_motion_local>` равен ``true``, возвращает предварительно умноженное значение смещения с инвертированным вращением.

В этом случае код можно записать следующим образом:


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())
        var velocity = get_quaternion() * animation_tree.get_root_motion_position() / delta
        set_velocity(velocity)
        move_and_slide()



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_position_accumulator:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_position_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_position_accumulator>`

Получите смешанное значение треков положения с :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` как :ref:`Vector3<class_Vector3>`, которое можно использовать в другом месте.

Это полезно в случаях, когда вы хотите соблюдать начальные ключевые значения анимации.

Например, если анимация только с одним ключом ``Vector3(0, 0, 0)`` воспроизводится в предыдущем кадре, а затем анимация только с одним ключом ``Vector3(1, 0, 1)`` воспроизводится в следующем кадре, разницу можно вычислить следующим образом:


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_position_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_position_accumulator = animation_tree.get_root_motion_position_accumulator()
        var difference = current_root_motion_position_accumulator - prev_root_motion_position_accumulator
        prev_root_motion_position_accumulator = current_root_motion_position_accumulator
        transform.origin += difference



Однако если анимация зацикливается, может произойти непреднамеренное дискретное изменение, поэтому это полезно только для некоторых простых случаев использования.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_rotation:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_root_motion_rotation**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_rotation>`

Извлеките дельту движения вращения с :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` как :ref:`Quaternion<class_Quaternion>`, который можно использовать в другом месте.

Если :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` не является путем к треку типа :ref:`Animation.TYPE_ROTATION_3D<class_Animation_constant_TYPE_ROTATION_3D>`, возвращает ``Quaternion(0, 0, 0, 1)``.

См. также :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` и :ref:`RootMotionView<class_RootMotionView>`.

Самый простой пример — применение вращения к :ref:`CharacterBody3D<class_CharacterBody3D>`:


.. tabs::

 .. code-tab:: gdscript

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        set_quaternion(get_quaternion() * animation_tree.get_root_motion_rotation())



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_rotation_accumulator:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_root_motion_rotation_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_rotation_accumulator>`

Извлеките смешанное значение треков вращения с ``memberroot_motion_track`` как :ref:`Quaternion<class_Quaternion>`, которое можно использовать в другом месте.

Это необходимо для правильного применения корневой позиции движения с учетом вращения. См. также :ref:`get_root_motion_position()<class_AnimationMixer_method_get_root_motion_position>`.

Кроме того, это полезно в случаях, когда вы хотите соблюдать начальные ключевые значения анимации.

Например, если анимация только с одним ключом ``Quaternion(0, 0, 0, 1)`` воспроизводится в предыдущем кадре, а затем анимация только с одним ключом ``Quaternion(0, 0.707, 0, 0.707)`` воспроизводится в следующем кадре, разницу можно вычислить следующим образом:


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_rotation_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_rotation_accumulator = animation_tree.get_root_motion_rotation_accumulator()
        var difference = prev_root_motion_rotation_accumulator.inverse() * current_root_motion_rotation_accumulator
        prev_root_motion_rotation_accumulator = current_root_motion_rotation_accumulator
        transform.basis *=  Basis(difference)



Однако если анимация зацикливается, может произойти непреднамеренное дискретное изменение, поэтому это полезно только для некоторых простых случаев использования.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_scale**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_scale>`

Извлеките дельту движения масштаба с :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` как :ref:`Vector3<class_Vector3>`, который можно использовать в другом месте.

Если :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` не является путем к треку типа :ref:`Animation.TYPE_SCALE_3D<class_Animation_constant_TYPE_SCALE_3D>`, возвращает ``Vector3(0, 0, 0)``.

См. также :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` и :ref:`RootMotionView<class_RootMotionView>`.

Самый простой пример — применение масштаба к :ref:`CharacterBody3D<class_CharacterBody3D>`:


.. tabs::

 .. code-tab:: gdscript

    var current_scale = Vector3(1, 1, 1)
    var scale_accum = Vector3(1, 1, 1)

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            current_scale = get_scale()
            scale_accum = Vector3(1, 1, 1)
            state_machine.travel("Animate")
        scale_accum += animation_tree.get_root_motion_scale()
        set_scale(current_scale * scale_accum)



.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_get_root_motion_scale_accumulator:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_root_motion_scale_accumulator**\ (\ ) |const| :ref:`🔗<class_AnimationMixer_method_get_root_motion_scale_accumulator>`

Получите смешанное значение треков масштабирования с :ref:`root_motion_track<class_AnimationMixer_property_root_motion_track>` как :ref:`Vector3<class_Vector3>`, которое можно использовать в другом месте.

Например, если анимация только с одним ключом ``Vector3(1, 1, 1)`` воспроизводится в предыдущем кадре, а затем анимация только с одним ключом ``Vector3(2, 2, 2)`` воспроизводится в следующем кадре, разницу можно рассчитать следующим образом:


.. tabs::

 .. code-tab:: gdscript

    var prev_root_motion_scale_accumulator

    func _process(delta):
        if Input.is_action_just_pressed("animate"):
            state_machine.travel("Animate")
        var current_root_motion_scale_accumulator = animation_tree.get_root_motion_scale_accumulator()
        var difference = current_root_motion_scale_accumulator - prev_root_motion_scale_accumulator
        prev_root_motion_scale_accumulator = current_root_motion_scale_accumulator
        transform.basis = transform.basis.scaled(difference)



Однако если анимация зацикливается, может произойти непреднамеренное дискретное изменение, поэтому это полезно только для некоторых простых случаев использования.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_has_animation:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_has_animation>`

Возвращает ``true``, если **AnimationMixer** хранит :ref:`Animation<class_Animation>` с ключом ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_has_animation_library:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationMixer_method_has_animation_library>`

Возвращает ``true``, если **AnimationMixer** хранит :ref:`AnimationLibrary<class_AnimationLibrary>` с ключом ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_remove_animation_library:

.. rst-class:: classref-method

|void| **remove_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_method_remove_animation_library>`

Удаляет :ref:`AnimationLibrary<class_AnimationLibrary>`, связанный с ключом ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationMixer_method_rename_animation_library:

.. rst-class:: classref-method

|void| **rename_animation_library**\ (\ name\: :ref:`StringName<class_StringName>`, newname\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationMixer_method_rename_animation_library>`

Перемещает :ref:`AnimationLibrary<class_AnimationLibrary>`, связанный с ключом ``name``, в ключ ``newname``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
