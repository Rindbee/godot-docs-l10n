:github_url: hide

.. _class_EditorScriptPicker:

EditorScriptPicker
==================

**Успадковує:** :ref:`EditorResourcePicker<class_EditorResourcePicker>` **<** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Контроль редактора Godot для вибору ``script``.

.. rst-class:: classref-introduction-group

Опис
--------

Подібно до :ref:`EditorResourcePicker<class_EditorResourcePicker>` цей вузол :ref:`Control<class_Control>` використовується в додатку редактора, але тільки для редагування ``script`` власності :ref:`Node<class_Node>`. Параметри за замовчуванням для створення нових ресурсів всіх можливих підтипів замінюються спеціальними кнопками, які відкривають діалогове вікно "Attach Node Script". Може використовуватися з :ref:`EditorInspectorPlugin<class_EditorInspectorPlugin>` для відтворення тієї ж поведінки.

\ **Примітка:** Ви повинні встановити :ref:`script_owner<class_EditorScriptPicker_property_script_owner>` для користувацького контекстного меню для роботи.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------+
   | :ref:`Node<class_Node>` | :ref:`script_owner<class_EditorScriptPicker_property_script_owner>` |
   +-------------------------+---------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_EditorScriptPicker_property_script_owner:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **script_owner** :ref:`🔗<class_EditorScriptPicker_property_script_owner>`

.. rst-class:: classref-property-setget

- |void| **set_script_owner**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_script_owner**\ (\ )

Власник :ref:`Node<class_Node>` об'єкта скрипта, який має редагований ресурс.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
