:github_url: hide

.. _class_InputEventFromWindow:

InputEventFromWindow
====================

**Успадковує:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`, :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`, :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`

Абстрактний базовий клас для подій введення на основі :ref:`Viewport<class_Viewport>`.

.. rst-class:: classref-introduction-group

Опис
--------

InputEventЗ альбомуWindow – це події, які отримали вікна. Це включає події миші, клавіатурні події в фокусі вікна або сенсорні дії екрана.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`window_id<class_InputEventFromWindow_property_window_id>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_InputEventFromWindow_property_window_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **window_id** = ``0`` :ref:`🔗<class_InputEventFromWindow_property_window_id>`

.. rst-class:: classref-property-setget

- |void| **set_window_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_window_id**\ (\ )

Ідентифікатор :ref:`Window<class_Window>`, який отримав цей захід.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
