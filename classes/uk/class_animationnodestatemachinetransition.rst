:github_url: hide

.. _class_AnimationNodeStateMachineTransition:

AnimationNodeStateMachineTransition
===================================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Перехід у :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`, що з’єднує два :ref:`AnimationRootNode<class_AnimationRootNode>`.

.. rst-class:: classref-introduction-group

Опис
--------

Шлях, згенерований при використанні :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`, обмежується вузлами, з'єднаними за допомогою **AnimationNodeStateMachineTransition**.

Ви можете детально задати час та умови переходу.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Дерева анімації <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Сигнали
--------------

.. _class_AnimationNodeStateMachineTransition_signal_advance_condition_changed:

.. rst-class:: classref-signal

**advance_condition_changed**\ (\ ) :ref:`🔗<class_AnimationNodeStateMachineTransition_signal_advance_condition_changed>`

Випромінюється, коли змінюється :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_AnimationNodeStateMachineTransition_SwitchMode:

.. rst-class:: classref-enumeration

enum **SwitchMode**: :ref:`🔗<enum_AnimationNodeStateMachineTransition_SwitchMode>`

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_IMMEDIATE** = ``0``

Негайно перейти до наступного стану. Поточний стан завершиться і змішається з початком нового.

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_SYNC:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_SYNC** = ``1``

Перехід до наступного стану відбувається негайно, але новий стан буде шукати позицію відтворення старого стану.

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_AT_END:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_AT_END** = ``2``

Дочекатися завершення відтворення поточного стану, а потім перейти до початку анімації наступного стану.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationNodeStateMachineTransition_AdvanceMode:

.. rst-class:: classref-enumeration

enum **AdvanceMode**: :ref:`🔗<enum_AnimationNodeStateMachineTransition_AdvanceMode>`

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_DISABLED** = ``0``

Не використовувати цей перехід.

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_ENABLED** = ``1``

Використовувати цей перехід лише під час :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`.

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_AUTO** = ``2``

Автоматично використовувати цей перехід, якщо перевірки :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` і :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` мають значення ``true`` (якщо призначено).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AnimationNodeStateMachineTransition_property_advance_condition:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **advance_condition** = ``&""`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_condition>`

.. rst-class:: classref-property-setget

- |void| **set_advance_condition**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_advance_condition**\ (\ )

Вмикає автоматичний перехід при виконанні цієї умови. Введене ім'я стане логічним параметром у :ref:`AnimationTree<class_AnimationTree>`, яким можна керувати з коду (див. `Використання Дерева Анімації <../tutorials/animation/animation_tree.html#controlling-from-code>`__). Для прикладу, якщо :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` є :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` і :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` виставлено на ``"idle"``:


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

Використовуйте вираз як умову для переходів машини станів. Можна створювати складні анімаційні умови переходу між станами, що дає набагато більшу гнучкість у створенні складних машин станів, безпосередньо взаємодіючи з кодом скрипту.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_advance_mode:

.. rst-class:: classref-property

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **advance_mode** = ``1`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_mode>`

.. rst-class:: classref-property-setget

- |void| **set_advance_mode**\ (\ value\: :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>`\ )
- :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **get_advance_mode**\ (\ )

Визначає, чи слід вимкнути перехід, увімкнути його під час використання :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` або обійти автоматично, якщо перевірки :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` і :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` мають значення ``true`` (якщо призначено).

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_break_loop_at_end:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **break_loop_at_end** = ``false`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_break_loop_at_end>`

.. rst-class:: classref-property-setget

- |void| **set_break_loop_at_end**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_loop_broken_at_end**\ (\ )

Якщо ``true``, розриває цикл у кінці циклу цикла для переходу, навіть якщо анімація повторюється.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``1`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

Переходи з нижчим пріоритетом є кращими, якщо переходити по дереву за допомогою :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` або :ref:`advance_mode<class_AnimationNodeStateMachineTransition_property_advance_mode>` встановлено на :ref:`ADVANCE_MODE_AUTO<class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_AUTO>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_reset:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset** = ``true`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_reset>`

.. rst-class:: classref-property-setget

- |void| **set_reset**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reset**\ (\ )

Якщо ``true``, то цільова анімація, після перемикання, відтворюється з початку.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_switch_mode:

.. rst-class:: classref-property

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **switch_mode** = ``0`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_switch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_switch_mode**\ (\ value\: :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>`\ )
- :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **get_switch_mode**\ (\ )

Тип переходу.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_xfade_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **xfade_curve** :ref:`🔗<class_AnimationNodeStateMachineTransition_property_xfade_curve>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_xfade_curve**\ (\ )

Крива полегшення для кращого контролю над затуханням між цим станом і наступним. Має бути одиницею :ref:`Curve<class_Curve>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_xfade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **xfade_time** = ``0.0`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_xfade_time>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_xfade_time**\ (\ )

Час переходу між цим станом і наступним.

\ **Примітка:** :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` переносить поточний стан одразу після початку затухання. Точний час, що залишився, можна визначити лише за основною анімацією. Коли :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` вважається найвищим потоком, тому :ref:`xfade_time<class_AnimationNodeStateMachineTransition_property_xfade_time>` не масштабується залежно від дельти низхідного потоку. Дивіться також :ref:`AnimationNodeOneShot.fadeout_time<class_AnimationNodeOneShot_property_fadeout_time>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
