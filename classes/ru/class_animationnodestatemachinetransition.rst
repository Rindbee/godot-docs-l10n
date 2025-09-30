:github_url: hide

.. _class_AnimationNodeStateMachineTransition:

AnimationNodeStateMachineTransition
===================================

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Переход внутри :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`, соединяющий два :ref:`AnimationRootNode<class_AnimationRootNode>`-ов.

.. rst-class:: classref-introduction-group

Описание
----------------

Путь, сгенерированный при использовании :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`, ограничен узлами, соединенными **AnimationNodeStateMachineTransition**.

Вы можете подробно задать время и условия перехода.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование дерева анимации <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>`                                      | :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>`   | ``&""``   |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                              | :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` | ``""``    |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` | :ref:`advance_mode<class_AnimationNodeStateMachineTransition_property_advance_mode>`             | ``1``     |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`break_loop_at_end<class_AnimationNodeStateMachineTransition_property_break_loop_at_end>`   | ``false`` |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                    | :ref:`priority<class_AnimationNodeStateMachineTransition_property_priority>`                     | ``1``     |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`reset<class_AnimationNodeStateMachineTransition_property_reset>`                           | ``true``  |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>`   | :ref:`switch_mode<class_AnimationNodeStateMachineTransition_property_switch_mode>`               | ``0``     |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>`                                                | :ref:`xfade_curve<class_AnimationNodeStateMachineTransition_property_xfade_curve>`               |           |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                | :ref:`xfade_time<class_AnimationNodeStateMachineTransition_property_xfade_time>`                 | ``0.0``   |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_AnimationNodeStateMachineTransition_signal_advance_condition_changed:

.. rst-class:: classref-signal

**advance_condition_changed**\ (\ ) :ref:`🔗<class_AnimationNodeStateMachineTransition_signal_advance_condition_changed>`

Вызывается при изменении :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_AnimationNodeStateMachineTransition_SwitchMode:

.. rst-class:: classref-enumeration

enum **SwitchMode**: :ref:`🔗<enum_AnimationNodeStateMachineTransition_SwitchMode>`

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_IMMEDIATE** = ``0``

Немедленно переключиться на следующее состояние. Текущее состояние закончится и сольется с началом нового.

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_SYNC:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_SYNC** = ``1``

Немедленно переключиться на следующее состояние, но новое состояние будет искаться в позиции воспроизведения старого состояния.

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_AT_END:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_AT_END** = ``2``

Дождитесь окончания воспроизведения текущего состояния, затем переключитесь на начало анимации следующего состояния.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationNodeStateMachineTransition_AdvanceMode:

.. rst-class:: classref-enumeration

enum **AdvanceMode**: :ref:`🔗<enum_AnimationNodeStateMachineTransition_AdvanceMode>`

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_DISABLED** = ``0``

Не используйте этот переход.

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_ENABLED** = ``1``

Используйте этот переход только во время :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`.

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_AUTO** = ``2``

Автоматически использовать этот переход, если проверки :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` и :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` равны ``true`` (если назначено).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AnimationNodeStateMachineTransition_property_advance_condition:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **advance_condition** = ``&""`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_condition>`

.. rst-class:: classref-property-setget

- |void| **set_advance_condition**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_advance_condition**\ (\ )

Включите автоматическое продвижение, когда задано это условие. Предоставленное имя станет булевым параметром в :ref:`AnimationTree<class_AnimationTree>`, которым можно управлять из кода (см. `Использование AnimationTree <../tutorials/animation/animation_tree.html#controlling-from-code>`__). Например, если :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` является :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`, а :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` установлен в ``"idle"``:


.. tabs::

 .. code-tab:: gdscript

    $animation_tree.set("parameters/conditions/idle", is_on_floor and (linear_velocity.x == 0))

 .. code-tab:: csharp

    GetNode<AnimationTree>("animation_tree").Set("parameters/conditions/idle", IsOnFloor && (LinearVelocity.X == 0));



.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_advance_expression:

.. rst-class:: classref-property

:ref:`String<class_String>` **advance_expression** = ``""`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_expression>`

.. rst-class:: classref-property-setget

- |void| **set_advance_expression**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_advance_expression**\ (\ )

Используйте выражение как условие для переходов между состояниями машины. Можно создавать сложные условия продвижения анимации для переключения между состояниями и обеспечивает гораздо большую гибкость для создания сложных машин состояний путем прямого взаимодействия с кодом скрипта.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_advance_mode:

.. rst-class:: classref-property

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **advance_mode** = ``1`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_mode>`

.. rst-class:: classref-property-setget

- |void| **set_advance_mode**\ (\ value\: :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>`\ )
- :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **get_advance_mode**\ (\ )

Определяет, следует ли отключить переход, включить его при использовании :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` или выполнить переход автоматически, если проверки :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` и :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` равны ``true`` (если назначено).

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_break_loop_at_end:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **break_loop_at_end** = ``false`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_break_loop_at_end>`

.. rst-class:: classref-property-setget

- |void| **set_break_loop_at_end**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_loop_broken_at_end**\ (\ )

Если ``true``, прерывает цикл в конце цикла перехода, даже если анимация зациклена.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``1`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

Переходы с более низким приоритетом предпочтительны при перемещении по дереву с помощью :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` или :ref:`advance_mode<class_AnimationNodeStateMachineTransition_property_advance_mode>` установлен в :ref:`ADVANCE_MODE_AUTO<class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_AUTO>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_reset:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset** = ``true`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_reset>`

.. rst-class:: classref-property-setget

- |void| **set_reset**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reset**\ (\ )

Если ``true``, то при переключении анимация назначения воспроизводится с начала.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_switch_mode:

.. rst-class:: classref-property

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **switch_mode** = ``0`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_switch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_switch_mode**\ (\ value\: :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>`\ )
- :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **get_switch_mode**\ (\ )

Тип перехода.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_xfade_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **xfade_curve** :ref:`🔗<class_AnimationNodeStateMachineTransition_property_xfade_curve>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_xfade_curve**\ (\ )

Кривая плавности для лучшего контроля над кроссфейдом (cross-fade) между этим состоянием и следующим. Должна быть единицей ``Кривая``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_xfade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **xfade_time** = ``0.0`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_xfade_time>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_xfade_time**\ (\ )

Время для перехода между этим состоянием и следующим.

\ **Примечание:** :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` переходит в текущее состояние сразу после начала перехода. Точное оставшееся время можно вывести только из основной анимации. Когда :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` считается самым верхним по потоку, то :ref:`xfade_time<class_AnimationNodeStateMachineTransition_property_xfade_time>` не масштабируется в зависимости от дельты нижнего потока. См. также :ref:`AnimationNodeOneShot.fadeout_time<class_AnimationNodeOneShot_property_fadeout_time>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
