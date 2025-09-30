:github_url: hide

.. _class_InputEventScreenDrag:

InputEventScreenDrag
====================

**Успадковує:** :ref:`InputEventFromWindow<class_InputEventFromWindow>` **<** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляється екранний перетягування події.

.. rst-class:: classref-introduction-group

Опис
--------

Зберігати інформацію про події перетягування екрану. Див. :ref:`Node._input()<class_Node_private_method__input>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Вхіду Події <../tutorials/inputs/inputevent>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`         | :ref:`index<class_InputEventScreenDrag_property_index>`                     | ``0``             |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`       | :ref:`pen_inverted<class_InputEventScreenDrag_property_pen_inverted>`       | ``false``         |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_InputEventScreenDrag_property_position>`               | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`     | :ref:`pressure<class_InputEventScreenDrag_property_pressure>`               | ``0.0``           |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`relative<class_InputEventScreenDrag_property_relative>`               | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_relative<class_InputEventScreenDrag_property_screen_relative>` | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`screen_velocity<class_InputEventScreenDrag_property_screen_velocity>` | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`tilt<class_InputEventScreenDrag_property_tilt>`                       | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`velocity<class_InputEventScreenDrag_property_velocity>`               | ``Vector2(0, 0)`` |
   +-------------------------------+-----------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_InputEventScreenDrag_property_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **index** = ``0`` :ref:`🔗<class_InputEventScreenDrag_property_index>`

.. rst-class:: classref-property-setget

- |void| **set_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_index**\ (\ )

Індекс перетягування події у випадку багатосугового заходу.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_pen_inverted:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pen_inverted** = ``false`` :ref:`🔗<class_InputEventScreenDrag_property_pen_inverted>`

.. rst-class:: classref-property-setget

- |void| **set_pen_inverted**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_pen_inverted**\ (\ )

Повертає ``true`` при використанні торцю торця шпильки.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_position>`

.. rst-class:: classref-property-setget

- |void| **set_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_position**\ (\ )

Перетягувати позицію у видпорті вузол знаходиться в тому, що за допомогою координатної системи даного виду порту.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_pressure:

.. rst-class:: classref-property

:ref:`float<class_float>` **pressure** = ``0.0`` :ref:`🔗<class_InputEventScreenDrag_property_pressure>`

.. rst-class:: classref-property-setget

- |void| **set_pressure**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pressure**\ (\ )

Представляє тиск, користувач кладе на ручку. Діапазони ``0.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_relative>`

.. rst-class:: classref-property-setget

- |void| **set_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_relative**\ (\ )

Перетягне положення відносно попереднього положення (положення на останньому кадрі).

\ **Примітка:** :ref:`relative<class_InputEventScreenDrag_property_relative>` автоматично ваговий фактор, який визначається налаштуваннями режиму розтяжки проекту. Це означає сенсорну чутливість з'явиться в залежності від роздільної здатності при використанні :ref:`relative<class_InputEventScreenDrag_property_relative>` в скрипті, який ручить сенсорну мету. Щоб уникнути цього, скористайтеся :ref:`screen_relative<class_InputEventScreenDrag_property_screen_relative>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_screen_relative:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_relative** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_screen_relative>`

.. rst-class:: classref-property-setget

- |void| **set_screen_relative**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_relative**\ (\ )

Немасштабне положення перетягування відносно попереднього положення в координатах екрана (положення на останньому кадрі). Ця позиція є *not* ваговим фактором або дзвінками до :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. Для дотику, спрямованих незалежно від способу розтяжки проекту, слід віддавати перевагу :ref:`relative<class_InputEventScreenDrag_property_relative>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_screen_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_screen_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_screen_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_velocity**\ (\ )

Немасштабна швидкість перетягування в пікселів на секунду в координатах екрана. Ця швидкість *not* ваговим фактором або дзвінками до :ref:`InputEvent.xformed_by()<class_InputEvent_method_xformed_by>`. Це має бути перевагою над :ref:`velocity<class_InputEventScreenDrag_property_velocity>` для сенсорної мети незалежно від режиму розтяжки проекту.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_tilt:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **tilt** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_tilt>`

.. rst-class:: classref-property-setget

- |void| **set_tilt**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_tilt**\ (\ )

Представляє кути нахилу ручки. Позитивне X-координатне значення вказує на те, що тент вправо. Позитивне значення Y-координат вказує на нахил до користувача. Діапазони з ``-1.0`` до ``1.0`` для обох осей.

.. rst-class:: classref-item-separator

----

.. _class_InputEventScreenDrag_property_velocity:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **velocity** = ``Vector2(0, 0)`` :ref:`🔗<class_InputEventScreenDrag_property_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_velocity**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_velocity**\ (\ )

Швидкість перетягування.

\ **Примітка:** :ref:`velocity<class_InputEventScreenDrag_property_velocity>` автоматично масштабується за індексом ваги контенту, який визначається налаштуваннями режиму розтяжки проекту. Це означає сенсорну чутливість з'явиться в залежності від роздільної здатності при використанні :ref:`velocity<class_InputEventScreenDrag_property_velocity>` в скрипті, який керує сенсорною метою. Щоб уникнути цього, використовуйте :ref:`screen_velocity<class_InputEventScreenDrag_property_screen_velocity>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
