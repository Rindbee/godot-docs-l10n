:github_url: hide

.. _class_Timer:

Timer
=====

**Успадковує:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Відлік таймера.

.. rst-class:: classref-introduction-group

Опис
--------

The **Timer** node is a countdown timer and is the simplest way to handle time-based logic in the engine. When a timer reaches the end of its :ref:`wait_time<class_Timer_property_wait_time>`, it will emit the :ref:`timeout<class_Timer_signal_timeout>` signal.

After a timer enters the scene tree, it can be manually started with :ref:`start()<class_Timer_method_start>`. A timer node is also started automatically if :ref:`autostart<class_Timer_property_autostart>` is ``true``.

Without requiring much code, a timer node can be added and configured in the editor. The :ref:`timeout<class_Timer_signal_timeout>` signal it emits can also be connected through the Signals dock in the editor:

::

    func _on_timer_timeout():
        print("Time to attack!")

\ **Note:** To create a one-shot timer without instantiating a node, use :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`.

\ **Note:** Timers are affected by :ref:`Engine.time_scale<class_Engine_property_time_scale>` unless :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` is ``true``. The higher the time scale, the sooner timers will end. How often a timer processes may depend on the framerate or :ref:`Engine.physics_ticks_per_second<class_Engine_property_physics_ticks_per_second>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `2D демонстрація Dodge The Creeps <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`autostart<class_Timer_property_autostart>`                 | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`ignore_time_scale<class_Timer_property_ignore_time_scale>` | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`one_shot<class_Timer_property_one_shot>`                   | ``false`` |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`paused<class_Timer_property_paused>`                       |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` | :ref:`process_callback<class_Timer_property_process_callback>`   | ``1``     |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`time_left<class_Timer_property_time_left>`                 |           |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                    | :ref:`wait_time<class_Timer_property_wait_time>`                 | ``1.0``   |
   +--------------------------------------------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_stopped<class_Timer_method_is_stopped>`\ (\ ) |const|                          |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`start<class_Timer_method_start>`\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------+
   | |void|                  | :ref:`stop<class_Timer_method_stop>`\ (\ )                                              |
   +-------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_Timer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_Timer_signal_timeout>`

Випробувано, коли таймер досягає кінця.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Timer_TimerProcessCallback:

.. rst-class:: classref-enumeration

enum **TimerProcessCallback**: :ref:`🔗<enum_Timer_TimerProcessCallback>`

.. _class_Timer_constant_TIMER_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_PHYSICS** = ``0``

Оновлювати таймер у кожному кадрі фізичного процесу (див. :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Timer_constant_TIMER_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **TIMER_PROCESS_IDLE** = ``1``

Оновлювати таймер кожного кадру процесу (рендера) (див. :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Timer_property_autostart:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **autostart** = ``false`` :ref:`🔗<class_Timer_property_autostart>`

.. rst-class:: classref-property-setget

- |void| **set_autostart**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autostart**\ (\ )

Якщо ``true``, таймер запуститься одразу після входу в дерево сцен. 

\ **Примітка: ** Після того, як таймер увійде в дерево, для цієї властивості автоматично встановлюється значення ``false``. 

\ **Примітка:** Ця властивість нічого не робить, коли таймер запущено в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_ignore_time_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_time_scale** = ``false`` :ref:`🔗<class_Timer_property_ignore_time_scale>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_time_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_time_scale**\ (\ )

Якщо ``true``, таймер ігноруватиме :ref:`Engine.time_scale<class_Engine_property_time_scale>` і оновлюватиме реальний час, що минув.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_Timer_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_shot**\ (\ )

Якщо ``true``, таймер зупиниться після досягнення кінця. В іншому випадку, як за замовчуванням, таймер автоматично перезавантажить.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_paused:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **paused** :ref:`🔗<class_Timer_property_paused>`

.. rst-class:: classref-property-setget

- |void| **set_paused**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_paused**\ (\ )

Якщо значення ``true``, таймер призупиняється. Призупинений таймер не обробляється, доки ця властивість не буде знову встановлена на значення ``false``, навіть коли викликається метод :ref:`start()<class_Timer_method_start>`. Див. також :ref:`stop()<class_Timer_method_stop>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_process_callback:

.. rst-class:: classref-property

:ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Timer_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_timer_process_callback**\ (\ value\: :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>`\ )
- :ref:`TimerProcessCallback<enum_Timer_TimerProcessCallback>` **get_timer_process_callback**\ (\ )

Визначає, коли таймер оновлюється під час основного циклу.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_Timer_property_time_left>`

.. rst-class:: classref-property-setget

- :ref:`float<class_float>` **get_time_left**\ (\ )

Час прибуття таймера за секундами. Це завжди ``0``, якщо таймер припиняється.

\ **Примітка:** Ця властивість не може бути змінена. На основі :ref:`wait_time<class_Timer_property_wait_time>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_property_wait_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **wait_time** = ``1.0`` :ref:`🔗<class_Timer_property_wait_time>`

.. rst-class:: classref-property-setget

- |void| **set_wait_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wait_time**\ (\ )

Час, необхідний для таймера до кінця, за секундами. Ця властивість також може бути встановлена в будь-який час.

\ **Примітка:** Тимерси можуть обробляти тільки один раз на фізику або технологічну раму (в залежності від :ref:`process_callback<class_Timer_property_process_callback>`). Нестабільний каркас може призвести до того, що таймер до кінця невідповідно, що особливо помітно, якщо час очікування нижче, ніж грубо ``0.05`` секунди. Для дуже коротких таймерів рекомендується писати власний код замість використання вузла **Timer**. Тимерси також впливають на :ref:`Engine.time_scale<class_Engine_property_time_scale>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Timer_method_is_stopped:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_stopped**\ (\ ) |const| :ref:`🔗<class_Timer_method_is_stopped>`

Повернення ``true``, якщо таймер припиняється або не почався.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_start:

.. rst-class:: classref-method

|void| **start**\ (\ time_sec\: :ref:`float<class_float>` = -1\ ) :ref:`🔗<class_Timer_method_start>`

Запускає таймер або скидає його, якщо він вже був запущений. Не вдається виконати дію, якщо таймер не знаходиться всередині дерева сцен. Якщо ``time_sec`` більше за ``0``, це значення використовується для :ref:`wait_time<class_Timer_property_wait_time>`.

\ **Примітка:** Цей метод не відновлює призупинений таймер. Див. :ref:`paused<class_Timer_property_paused>`.

.. rst-class:: classref-item-separator

----

.. _class_Timer_method_stop:

.. rst-class:: classref-method

|void| **stop**\ (\ ) :ref:`🔗<class_Timer_method_stop>`

Зупиняє таймер. Див. також :ref:`paused<class_Timer_property_paused>`. На відміну від :ref:`start()<class_Timer_method_start>`, цей метод можна безпечно викликати, якщо таймер не знаходиться всередині дерева сцен.

\ **Примітка:** Виклик :ref:`stop()<class_Timer_method_stop>` не генерує сигнал :ref:`timeout<class_Timer_signal_timeout>`, оскільки вважається, що таймер не вичерпав час очікування. Якщо це потрібно, використовуйте ``$Timer.timeout.emit()`` після виклику :ref:`stop()<class_Timer_method_stop>`, щоб вручну генерувати сигнал.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
