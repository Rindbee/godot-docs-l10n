:github_url: hide

.. _class_CenterContainer:

CenterContainer
===============

**Успадковує:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контейнер, у центрі якого зберігаються дочірні елементи керування.

.. rst-class:: classref-introduction-group

Опис
--------

**CenterContainer** — це контейнер, який зберігає всі дочірні елементи керування в центрі з мінімальним розміром.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання контейнерів <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`use_top_left<class_CenterContainer_property_use_top_left>` | ``false`` |
   +-------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CenterContainer_property_use_top_left:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_top_left** = ``false`` :ref:`🔗<class_CenterContainer_property_use_top_left>`

.. rst-class:: classref-property-setget

- |void| **set_use_top_left**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_top_left**\ (\ )

Якщо ``true``, дочірні елементи центруються відносно верхнього лівого кута **CenterContainer**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
