:github_url: hide

.. _class_InputEventPanGesture:

InputEventPanGesture
====================

**Успадковує:** :ref:`InputEventGesture<class_InputEventGesture>` **<** :ref:`InputEventWithModifiers<class_InputEventWithModifiers>` **<** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляє собою панування торкнутися жест.

.. rst-class:: classref-introduction-group

Опис
--------

Зберігайте інформацію про жести сковороди. Жести сковороди виконуються, коли користувач завантажує сенсорний екран двома пальцями. Зазвичай використовується для сковороди / прокручування.

\ **Примітка:** На Андроїд, це вимагає :ref:`ProjectSettings.input_devices/pointing/android/enable_pan_and_scale_gestures<class_ProjectSettings_property_input_devices/pointing/android/enable_pan_and_scale_gestures>` налаштування проекту для включення.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Вхіду Події <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`delta<class_InputEventPanGesture_property_delta>` | ``Vector2(0, 0)`` |
   +-------------------------------+---------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_InputEventPanGesture_property_delta:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **delta** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventPanGesture_property_delta>`

.. rst-class:: classref-property-setget

- |void| **set_delta**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_delta**\ (\ )

Кількість панування з останнього заходу.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
