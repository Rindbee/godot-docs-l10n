:github_url: hide

.. _class_InputEvent:

InputEvent
==========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`InputEventAction<class_InputEventAction>`, :ref:`InputEventFromWindow<class_InputEventFromWindow>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventMIDI<class_InputEventMIDI>`, :ref:`InputEventShortcut<class_InputEventShortcut>`

Абстрактний базовий клас для вхідних заходів.

.. rst-class:: classref-introduction-group

Опис
--------

Абстрактний базовий клас всіх типів вхідних заходів. Див. :ref:`Node._input()<class_Node_private_method__input>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Вхіду Події <../tutorials/inputs/inputevent>`

- :doc:`Перетворення вікна перегляду та полотна <../tutorials/2d/2d_transforms>`

- `2D демонстрація Dodge The Creeps <https://godotengine.org/asset-library/asset/2712>`__

- `Демонстрація 3D вокселів <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`device<class_InputEvent_property_device>` | ``0`` |
   +-----------------------+-------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`accumulate<class_InputEvent_method_accumulate>`\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ )                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`as_text<class_InputEvent_method_as_text>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_action_strength<class_InputEvent_method_get_action_strength>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action<class_InputEvent_method_is_action>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_pressed<class_InputEvent_method_is_action_pressed>`\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_released<class_InputEvent_method_is_action_released>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                             |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_type<class_InputEvent_method_is_action_type>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_canceled<class_InputEvent_method_is_canceled>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_echo<class_InputEvent_method_is_echo>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_match<class_InputEvent_method_is_match>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const|                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_pressed<class_InputEvent_method_is_pressed>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_released<class_InputEvent_method_is_released>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`InputEvent<class_InputEvent>` | :ref:`xformed_by<class_InputEvent_method_xformed_by>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_InputEvent_constant_DEVICE_ID_EMULATION:

.. rst-class:: classref-constant

**DEVICE_ID_EMULATION** = ``-1`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_EMULATION>`

Ідентифікатор пристрою використовується для емуляції введення мишки з сенсорного екрана, або для емульсійного входу з миші. Це може бути використаний для розрізнення емуляції введення мишки від фізичного введення мишки, або емульсійного входу з фізичного дотику.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_InputEvent_property_device:

.. rst-class:: classref-property

:ref:`int<class_int>` **device** = ``0`` :ref:`🔗<class_InputEvent_property_device>`

.. rst-class:: classref-property-setget

- |void| **set_device**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_device**\ (\ )

Ідентифікатор заходу.

\ **Примітка:** :ref:`device<class_InputEvent_property_device>` може бути негативним для спеціальних випадків використання, які не відносяться до пристроїв, що фізично присутні на системі. Див. :ref:`DEVICE_ID_EMULATION<class_InputEvent_constant_DEVICE_ID_EMULATION>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_InputEvent_method_accumulate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **accumulate**\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputEvent_method_accumulate>`

Повертає ``true``, якщо задану вхідну подію та цю вхідну подію можна додати разом (лише для подій типу :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`).

Буде скопійовано позицію даної вхідної події, глобальну позицію та швидкість. Отриманий ``відносний`` є сумою обох подій. Модифікатори обох подій мають бути ідентичними.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_as_text>`

Повертаємо участь у презентації заходу.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_get_action_strength:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_action_strength**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_get_action_strength>`

Повертає значення між 0,0 і 1,0 в залежності від стану даної дії. Корисно для отримання значення подій типу :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

Якщо ``exact_match`` є ``false``, він ігнорує додаткові модифікатори введення для :ref:`InputEventKey<class_InputEventKey>` і :ref:`InputEventMouseButton<class_InputEventMouseButton>` події, і напрямок для :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` події.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action>`

Повертає ``true``, якщо цей вхідний захід відповідає попередньо визначеній дії будь-якого типу.

Якщо ``exact_match`` є ``false``, він ігнорує додаткові модифікатори введення для :ref:`InputEventKey<class_InputEventKey>` і :ref:`InputEventMouseButton<class_InputEventMouseButton>` події, і напрямок для :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` події.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_pressed**\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_pressed>`

Повертає ``true``, якщо задана дія відповідає цій події та натискається (і не є подією echo для подій :ref:`InputEventKey<class_InputEventKey>`, окрім випадків, коли ``allow_echo`` має значення ``true``). Не стосується подій типу :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` або :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

Якщо ``exact_match`` має значення ``false``, він ігнорує додаткові модифікатори введення для подій :ref:`InputEventKey<class_InputEventKey>` та :ref:`InputEventMouseButton<class_InputEventMouseButton>`, а також напрямок для подій :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

\ **Примітка:** Через фантомне натискання клавіш, :ref:`is_action_pressed()<class_InputEvent_method_is_action_pressed>` може повертати ``false``, навіть якщо натиснуто одну з клавіш дії. Див. `Приклади введення <../tutorials/inputs/input_examples.html#keyboard-events>`__ у документації для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_released**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_released>`

Повертає ``true``, якщо задана дія відповідає цій події та відпущена (тобто не натиснута). Не стосується подій типу :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` або :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

Якщо ``exact_match`` має значення ``false``, він ігнорує додаткові модифікатори вводу для подій :ref:`InputEventKey<class_InputEventKey>` та :ref:`InputEventMouseButton<class_InputEventMouseButton>`, а також напрямок для подій :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_type**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_type>`

Повертає ``true``, якщо тип цього вхідного події є типом, який можна призначити вхідній дії: :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventAction<class_InputEventAction>`. Повертає ``false`` для всіх інших типів вхідних подій.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_canceled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_canceled**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_canceled>`

Повертаємо ``true``, якщо цей захід було скасовано.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_echo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_echo**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_echo>`

Повертаємо ``true``, якщо цей вхідний захід є echo подія (тільки для подій типу :ref:`InputEventKey<class_InputEventKey>`). Якщо користувач тримає ключ. Будь-який інший тип події повертає ``false``.

\ **Примітка:** Ставка, на яку надсилаються події, як правило, близько 20 подій за секунду (після проведення ключа на шорстку половину другого). Тим не менше, затримка ключа / швидкість може бути змінена користувачем або повністю вимкнена в налаштуваннях операційної системи. Щоб переконатися, що ваш проект працює правильно на всіх конфігураціях, не припустимо, користувач має конкретну функцію повторення ключа в поведінці вашого проекту.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_match:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_match**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_InputEvent_method_is_match>`

Повертає ``true``, якщо вказаний ``event`` відповідає цій події. Дійсно лише для подій дій, включаючи події клавіші (:ref:`InputEventKey<class_InputEventKey>`), кнопки (:ref:`InputEventMouseButton<class_InputEventMouseButton>` або :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`), осі :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` та дії (:ref:`InputEventAction<class_InputEventAction>`).

Якщо ``exact_match`` має значення ``false``, перевірка ігнорує додаткові модифікатори вводу для подій :ref:`InputEventKey<class_InputEventKey>` та :ref:`InputEventMouseButton<class_InputEventMouseButton>`, а також напрямок для подій :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

\ **Примітка:** Цей метод враховує лише конфігурацію події (наприклад, клавішу клавіатури або вісь джойстика), а не інформацію про стан, таку як :ref:`is_pressed()<class_InputEvent_method_is_pressed>`, :ref:`is_released()<class_InputEvent_method_is_released>`, :ref:`is_echo()<class_InputEvent_method_is_echo>` або :ref:`is_canceled()<class_InputEvent_method_is_canceled>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_pressed>`

Повертаємо ``true``, якщо цей вхідний захід натискається. Не актуально для подій типу ``InputEventMouseMouseMotion`` або :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

\ **Примітка:** У зв'язку з привидами клавіатури, :ref:`is_pressed()<class_InputEvent_method_is_pressed>` може повернутися ``false`` навіть якщо один з ключів дії натискається. Див. `Налаштування прикладів <../tutorials/inputs/input_examples.html#keyboard-events>`__ в документації для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_released**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_released>`

Повертає ``true``, якщо цей вхідний захід вийшов. Не актуально для подій типу ``InputEventMouseMouseMotion`` або :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_xformed_by:

.. rst-class:: classref-method

:ref:`InputEvent<class_InputEvent>` **xformed_by**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_InputEvent_method_xformed_by>`

Повертає копію даної події введення, яка була зміщена ``Local_ofs`` та перетворена ``xform``. Relevant для подій типу :ref:`InputEventMouseButton<class_InputEventMouseButton>`, ``InputEventMouseMouseMouseMouseMotion``, :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`, :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`, :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>` і :ref:`InputEventPanGesture<class_InputEventPanGesture>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
