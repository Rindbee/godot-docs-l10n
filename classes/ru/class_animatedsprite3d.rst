:github_url: hide

.. _class_AnimatedSprite3D:

AnimatedSprite3D
================

**Наследует:** :ref:`SpriteBase3D<class_SpriteBase3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел 2D спрайта в 3D мире, который может использовать несколько 2D текстур для анимации.

.. rst-class:: classref-introduction-group

Описание
----------------

**AnimatedSprite3D** похож на узел :ref:`Sprite3D<class_Sprite3D>`, за исключением того, что он содержит несколько текстур в качестве анимации :ref:`sprite_frames<class_AnimatedSprite3D_property_sprite_frames>`. Анимации создаются с использованием ресурса :ref:`SpriteFrames<class_SpriteFrames>`, который позволяет импортировать файлы изображений (или папку, содержащую указанные файлы) для предоставления кадров анимации для спрайта. Ресурс :ref:`SpriteFrames<class_SpriteFrames>` можно настроить в редакторе через нижнюю панель SpriteFrames.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Анимация 2D-спрайта (также применимо к 3D) <../tutorials/2d/2d_sprite_animation>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`StringName<class_StringName>`     | :ref:`animation<class_AnimatedSprite3D_property_animation>`           | ``&"default"`` |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`String<class_String>`             | :ref:`autoplay<class_AnimatedSprite3D_property_autoplay>`             | ``""``         |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`                   | :ref:`frame<class_AnimatedSprite3D_property_frame>`                   | ``0``          |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>`               | :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>` | ``0.0``        |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>`               | :ref:`speed_scale<class_AnimatedSprite3D_property_speed_scale>`       | ``1.0``        |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+
   | :ref:`SpriteFrames<class_SpriteFrames>` | :ref:`sprite_frames<class_AnimatedSprite3D_property_sprite_frames>`   |                |
   +-----------------------------------------+-----------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_playing_speed<class_AnimatedSprite3D_method_get_playing_speed>`\ (\ ) |const|                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`is_playing<class_AnimatedSprite3D_method_is_playing>`\ (\ ) |const|                                                                                                                           |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`pause<class_AnimatedSprite3D_method_pause>`\ (\ )                                                                                                                                             |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play<class_AnimatedSprite3D_method_play>`\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`play_backwards<class_AnimatedSprite3D_method_play_backwards>`\ (\ name\: :ref:`StringName<class_StringName>` = &""\ )                                                                         |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_frame_and_progress<class_AnimatedSprite3D_method_set_frame_and_progress>`\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ )                                      |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`stop<class_AnimatedSprite3D_method_stop>`\ (\ )                                                                                                                                               |
   +---------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_AnimatedSprite3D_signal_animation_changed:

.. rst-class:: classref-signal

**animation_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_signal_animation_changed>`

Вызывается при изменении :ref:`animation<class_AnimatedSprite3D_property_animation>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_signal_animation_finished:

.. rst-class:: classref-signal

**animation_finished**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_signal_animation_finished>`

Выдается, когда анимация достигает конца или начала, если она воспроизводится в обратном порядке. Когда анимация заканчивается, воспроизведение приостанавливается.

\ **Примечание:** Этот сигнал не выдается, если анимация зациклена.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_signal_animation_looped:

.. rst-class:: classref-signal

**animation_looped**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_signal_animation_looped>`

Вызывается при зацикливании анимации.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_signal_frame_changed>`

Выдается при изменении :ref:`frame<class_AnimatedSprite3D_property_frame>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_signal_sprite_frames_changed:

.. rst-class:: classref-signal

**sprite_frames_changed**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_signal_sprite_frames_changed>`

Вызывается при изменении :ref:`sprite_frames<class_AnimatedSprite3D_property_sprite_frames>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AnimatedSprite3D_property_animation:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **animation** = ``&"default"`` :ref:`🔗<class_AnimatedSprite3D_property_animation>`

.. rst-class:: classref-property-setget

- |void| **set_animation**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_animation**\ (\ )

Текущая анимация из ресурса :ref:`sprite_frames<class_AnimatedSprite3D_property_sprite_frames>`. Если это значение изменяется, то сбрасываются счетчик :ref:`frame<class_AnimatedSprite3D_property_frame>` и :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_property_autoplay:

.. rst-class:: classref-property

:ref:`String<class_String>` **autoplay** = ``""`` :ref:`🔗<class_AnimatedSprite3D_property_autoplay>`

.. rst-class:: classref-property-setget

- |void| **set_autoplay**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_autoplay**\ (\ )

Ключ анимации, воспроизводимой при загрузке сцены.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_AnimatedSprite3D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Индекс отображаемого кадра анимации. Установка этого свойства также сбрасывает :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>`. Если это нежелательно, используйте :ref:`set_frame_and_progress()<class_AnimatedSprite3D_method_set_frame_and_progress>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_property_frame_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **frame_progress** = ``0.0`` :ref:`🔗<class_AnimatedSprite3D_property_frame_progress>`

.. rst-class:: classref-property-setget

- |void| **set_frame_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frame_progress**\ (\ )

Значение прогресса между ``0.0`` и ``1.0`` до тех пор, пока текущий кадр не перейдет к следующему кадру. Если анимация воспроизводится в обратном направлении, значение переходит от ``1.0`` к ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_AnimatedSprite3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Коэффициент масштабирования скорости. Например, если это значение равно ``1``, то анимация воспроизводится с нормальной скоростью. Если это ``0.5``, то она воспроизводится с половинной скоростью. Если это ``2``, то она воспроизводится с двойной скоростью.

Если установлено отрицательное значение, анимация воспроизводится в обратном направлении. Если установлено значение ``0``, анимация не будет продвигаться.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_property_sprite_frames:

.. rst-class:: classref-property

:ref:`SpriteFrames<class_SpriteFrames>` **sprite_frames** :ref:`🔗<class_AnimatedSprite3D_property_sprite_frames>`

.. rst-class:: classref-property-setget

- |void| **set_sprite_frames**\ (\ value\: :ref:`SpriteFrames<class_SpriteFrames>`\ )
- :ref:`SpriteFrames<class_SpriteFrames>` **get_sprite_frames**\ (\ )

Ресурс :ref:`SpriteFrames<class_SpriteFrames>`, содержащий анимацию(и). Позволяет загружать, редактировать, очищать, делать уникальными и сохранять состояния ресурса :ref:`SpriteFrames<class_SpriteFrames>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AnimatedSprite3D_method_get_playing_speed:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_playing_speed**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite3D_method_get_playing_speed>`

Возвращает фактическую скорость воспроизведения текущей анимации или ``0``, если не воспроизводится. Эта скорость — свойство :ref:`speed_scale<class_AnimatedSprite3D_property_speed_scale>`, умноженное на аргумент ``custom_speed``, указанный при вызове метода :ref:`play()<class_AnimatedSprite3D_method_play>`.

Возвращает отрицательное значение, если текущая анимация воспроизводится в обратном направлении.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AnimatedSprite3D_method_is_playing>`

Возвращает ``true``, если в данный момент воспроизводится анимация (даже если :ref:`speed_scale<class_AnimatedSprite3D_property_speed_scale>` и/или ``custom_speed`` равны ``0``).

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_pause:

.. rst-class:: classref-method

|void| **pause**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_method_pause>`

Приостанавливает текущую воспроизводимую анимацию. ``Member frame`` и :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>` будут сохранены, а вызов :ref:`play()<class_AnimatedSprite3D_method_play>` или :ref:`play_backwards()<class_AnimatedSprite3D_method_play_backwards>` без аргументов возобновит анимацию с текущей позиции воспроизведения.

См. также :ref:`stop()<class_AnimatedSprite3D_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_play:

.. rst-class:: classref-method

|void| **play**\ (\ name\: :ref:`StringName<class_StringName>` = &"", custom_speed\: :ref:`float<class_float>` = 1.0, from_end\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimatedSprite3D_method_play>`

Воспроизводит анимацию с ключом ``name``. Если ``custom_speed`` отрицательный, а ``from_end`` равен ``true``, анимация будет воспроизводиться в обратном направлении (что эквивалентно вызову :ref:`play_backwards()<class_AnimatedSprite3D_method_play_backwards>`). 

Если этот метод вызывается с той же анимацией ``name`` или без параметра ``name``, назначенная анимация возобновит воспроизведение, если она была приостановлена.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_play_backwards:

.. rst-class:: classref-method

|void| **play_backwards**\ (\ name\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_AnimatedSprite3D_method_play_backwards>`

Воспроизводит анимацию с ключом ``name`` в обратном порядке.

Этот метод является сокращением для :ref:`play()<class_AnimatedSprite3D_method_play>` с ``custom_speed = -1.0`` и ``from_end = true``, поэтому см. его описание для получения дополнительной информации.

.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_set_frame_and_progress:

.. rst-class:: classref-method

|void| **set_frame_and_progress**\ (\ frame\: :ref:`int<class_int>`, progress\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AnimatedSprite3D_method_set_frame_and_progress>`

Устанавливает :ref:`frame<class_AnimatedSprite3D_property_frame>` и :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>` на заданные значения. В отличие от установки :ref:`frame<class_AnimatedSprite3D_property_frame>`, этот метод не сбрасывает :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>` на ``0.0`` неявно.

\ **Пример:** Измените анимацию, сохранив те же :ref:`frame<class_AnimatedSprite3D_property_frame>` и :ref:`frame_progress<class_AnimatedSprite3D_property_frame_progress>`:


.. tabs::

 .. code-tab:: gdscript

    var current_frame = animated_sprite.get_frame()
    var current_progress = animated_sprite.get_frame_progress()
    animated_sprite.play("walk_another_skin")
    animated_sprite.set_frame_and_progress(current_frame, current_progress)



.. rst-class:: classref-item-separator

----

.. _class_AnimatedSprite3D_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AnimatedSprite3D_method_stop>`

Останавливает текущую воспроизводимую анимацию. Позиция анимации сбрасывается на ``0``, а ``custom_speed`` сбрасывается на ``1.0``. См. также :ref:`pause()<class_AnimatedSprite3D_method_pause>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
