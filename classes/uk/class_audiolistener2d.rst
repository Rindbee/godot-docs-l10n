:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/AudioListener2D.xml.

.. _class_AudioListener2D:

AudioListener2D
===============

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Перекриває звуки розташування.

.. rst-class:: classref-introduction-group

Опис
--------

Після додавання до дерева сцени та ввімкнення за допомогою :ref:`make_current()<class_AudioListener2D_method_make_current>` цей вузол замінить звуки розташування, з яких чути. Лише один **AudioListener2D** може бути поточним. Використання :ref:`make_current()<class_AudioListener2D_method_make_current>` вимкне попередній **AudioListener2D**.

 Якщо в поточному :ref:`Viewport<class_Viewport>` немає активного **AudioListener2D**, центр екрана використовуватиметься як точка прослуховування аудіо. Для роботи **AudioListener2D** має бути в :ref:`SceneTree<class_SceneTree>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_current<class_AudioListener2D_method_clear_current>`\ (\ )   |
   +-------------------------+--------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_current<class_AudioListener2D_method_is_current>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------+
   | |void|                  | :ref:`make_current<class_AudioListener2D_method_make_current>`\ (\ )     |
   +-------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AudioListener2D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ ) :ref:`🔗<class_AudioListener2D_method_clear_current>`

Вимикає **AudioListener2D**. Якщо його не встановлено як поточний, цей метод не матиме ефекту.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener2D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_AudioListener2D_method_is_current>`

Повернення ``true``, якщо це **AudioListener2D** в даний час активний.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener2D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_AudioListener2D_method_make_current>`

Робить **AudioListener2D** активним, встановлюючи його як точку слуху для звуків. Якщо вже є інший активний **AudioListener2D**, його буде вимкнено.

 Цей метод не матиме ефекту, якщо **AudioListener2D** не додано до :ref:`SceneTree<class_SceneTree>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
