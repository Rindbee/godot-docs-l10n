:github_url: hide

.. _class_AnimationNodeStateMachinePlayback:

AnimationNodeStateMachinePlayback
=================================

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Обеспечивает управление воспроизведением для :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Позволяет управлять конечными автоматами :ref:`AnimationTree<class_AnimationTree>`, созданными с помощью :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`. Извлечь с помощью ``$AnimationTree.get("parameters/playback")``.


.. tabs::

 .. code-tab:: gdscript

    var state_machine = $AnimationTree.get("parameters/playback")
    state_machine.travel("some_state")

 .. code-tab:: csharp

    var stateMachine = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback").As<AnimationNodeStateMachinePlayback>();
    stateMachine.Travel("some_state");



.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование дерева анимации <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``true`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_current_length<class_AnimationNodeStateMachinePlayback_method_get_current_length>`\ (\ ) |const|                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_current_node<class_AnimationNodeStateMachinePlayback_method_get_current_node>`\ (\ ) |const|                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_current_play_position<class_AnimationNodeStateMachinePlayback_method_get_current_play_position>`\ (\ ) |const|                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_from_length<class_AnimationNodeStateMachinePlayback_method_get_fading_from_length>`\ (\ ) |const|                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                              | :ref:`get_fading_from_node<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`\ (\ ) |const|                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_from_play_position<class_AnimationNodeStateMachinePlayback_method_get_fading_from_play_position>`\ (\ ) |const|                                              |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_length<class_AnimationNodeStateMachinePlayback_method_get_fading_length>`\ (\ ) |const|                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_fading_position<class_AnimationNodeStateMachinePlayback_method_get_fading_position>`\ (\ ) |const|                                                                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_travel_path<class_AnimationNodeStateMachinePlayback_method_get_travel_path>`\ (\ ) |const|                                                                          |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_playing<class_AnimationNodeStateMachinePlayback_method_is_playing>`\ (\ ) |const|                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`next<class_AnimationNodeStateMachinePlayback_method_next>`\ (\ )                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`start<class_AnimationNodeStateMachinePlayback_method_start>`\ (\ node\: :ref:`StringName<class_StringName>`, reset\: :ref:`bool<class_bool>` = true\ )                  |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`stop<class_AnimationNodeStateMachinePlayback_method_stop>`\ (\ )                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`travel<class_AnimationNodeStateMachinePlayback_method_travel>`\ (\ to_node\: :ref:`StringName<class_StringName>`, reset_on_teleport\: :ref:`bool<class_bool>` = true\ ) |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_AnimationNodeStateMachinePlayback_signal_state_finished:

.. rst-class:: classref-signal

**state_finished**\ (\ state\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_signal_state_finished>`

Генерируется, когда ``state`` завершает воспроизведение. Если ``state`` — это конечный автомат, установленный в групповой режим, его сигналы передаются с префиксом его имени.

Если используется плавный переход, он срабатывает, когда влияние анимации :ref:`get_fading_from_node()<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>` прекращается.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_signal_state_started:

.. rst-class:: classref-signal

**state_started**\ (\ state\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_signal_state_started>`

Генерируется, когда ``state`` начинает воспроизведение. Если ``state`` — это конечный автомат, установленный в групповой режим, его сигналы передаются с префиксом его имени.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AnimationNodeStateMachinePlayback_method_get_current_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_current_length**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_current_length>`

Возвращает текущую длину состояния.

\ **Примечание:** Возможно, что любой :ref:`AnimationRootNode<class_AnimationRootNode>` может быть как узлами, так и анимациями. Это означает, что в одном состоянии может быть несколько анимаций. Какая длина анимации имеет приоритет, зависит от узлов, подключенных внутри него. Кроме того, если переход не сбрасывается, будет возвращена оставшаяся длина в этой точке.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_current_node:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_current_node**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_current_node>`

Возвращает текущее состояние воспроизводимой анимации.

\ **Примечание:** При использовании кроссфейда текущее состояние меняется на следующее состояние сразу после начала кроссфейда.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_current_play_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_current_play_position**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_current_play_position>`

Возвращает позицию воспроизведения в текущем состоянии анимации.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_from_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_from_length**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_from_length>`

Returns the playback state length of the node from :ref:`get_fading_from_node()<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`. Returns ``0`` if no animation fade is occurring.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_from_node:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_fading_from_node**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`

Возвращает начальное состояние текущей затухающей анимации.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_from_play_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_from_play_position**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_from_play_position>`

Returns the playback position of the node from :ref:`get_fading_from_node()<class_AnimationNodeStateMachinePlayback_method_get_fading_from_node>`. Returns ``0`` if no animation fade is occurring.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_length**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_length>`

Returns the length of the current fade animation. Returns ``0`` if no animation fade is occurring.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_fading_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fading_position**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_fading_position>`

Returns the playback position of the current fade animation. Returns ``0`` if no animation fade is occurring.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_get_travel_path:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_travel_path**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_get_travel_path>`

Возвращает текущий путь перемещения, рассчитанный внутренним алгоритмом A\*.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_is_playing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_playing**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_is_playing>`

Возвращает ``true``, если анимация воспроизводится.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_next:

.. rst-class:: classref-method

|void| **next**\ (\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_next>`

Если есть следующий путь посредством перемещения или автоматического продвижения, немедленно переходит из текущего состояния в следующее состояние.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ node\: :ref:`StringName<class_StringName>`, reset\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_start>`

Начинает воспроизведение заданной анимации.

Если ``reset`` равен ``true``, анимация воспроизводится с начала.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_stop>`

Останавливает текущую анимацию.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachinePlayback_method_travel:

.. rst-class:: classref-method

|void| **travel**\ (\ to_node\: :ref:`StringName<class_StringName>`, reset_on_teleport\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AnimationNodeStateMachinePlayback_method_travel>`

Переход из текущего состояния в другое по кратчайшему пути.

Если путь не соединяется с текущим состоянием, анимация будет воспроизводиться после телепортации состояния.

Если ``reset_on_teleport`` равен ``true``, анимация воспроизводится с начала, когда путешествие вызывает телепортацию.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
