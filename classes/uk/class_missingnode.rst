:github_url: hide

.. _class_MissingNode:

MissingNode
===========

**Успадковує:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Внутрішній клас редактора, призначений для збереження даних невизнаних вузлів.

.. rst-class:: classref-introduction-group

Опис
--------

Це внутрішній клас редактора, призначений для зберігання даних вузлів невідомого типу (найбільш ймовірніше цей тип був доставлений розширенням, яке більше не завантажується). Не можна вручну миттєво розташувати або розмістити на сцені.

\ **Попередження:** Ігнорувати відсутні вершини, якщо ви знаєте, що ви робите. Випробування властивостей на відсутній вузол може вільно змінюватися в коді, незалежно від типу вони призначені для того, щоб бути.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`original_class<class_MissingNode_property_original_class>`             |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`original_scene<class_MissingNode_property_original_scene>`             |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`recording_properties<class_MissingNode_property_recording_properties>` |
   +-----------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`recording_signals<class_MissingNode_property_recording_signals>`       |
   +-----------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_MissingNode_property_original_class:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_class** :ref:`🔗<class_MissingNode_property_original_class>`

.. rst-class:: classref-property-setget

- |void| **set_original_class**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_class**\ (\ )

Ім'я класу цього вузла повинно бути (див. :ref:`Об'єкт.get_class()<class_Об'єкт_method_get_class>`).

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_original_scene:

.. rst-class:: classref-property

:ref:`String<class_String>` **original_scene** :ref:`🔗<class_MissingNode_property_original_scene>`

.. rst-class:: classref-property-setget

- |void| **set_original_scene**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_original_scene**\ (\ )

Повертає шлях сцени, що ця вершина була екземпляром спочатку.

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_recording_properties:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recording_properties** :ref:`🔗<class_MissingNode_property_recording_properties>`

.. rst-class:: classref-property-setget

- |void| **set_recording_properties**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recording_properties**\ (\ )

Якщо ``true``, дозволяє встановлювати нові властивості разом з існуючими. Якщо ``false``, можна встановити тільки існуючі значення властивостей, а нові властивості не можна додавати.

.. rst-class:: classref-item-separator

----

.. _class_MissingNode_property_recording_signals:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **recording_signals** :ref:`🔗<class_MissingNode_property_recording_signals>`

.. rst-class:: classref-property-setget

- |void| **set_recording_signals**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_recording_signals**\ (\ )

If ``true``, allows new signals to be connected to along with existing ones. If ``false``, only existing signals can be connected to, and new signals cannot be added.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
