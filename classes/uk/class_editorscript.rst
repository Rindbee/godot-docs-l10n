:github_url: hide

.. _class_EditorScript:

EditorScript
============

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Базовий скрипт, який можна використовувати для додавання функцій розширення до редактора.

.. rst-class:: classref-introduction-group

Опис
--------

Скрипти, що розширюють цей клас та реалізують його метод :ref:`_run()<class_EditorScript_private_method__run>`, можна виконати з пункту меню **Файл > Виконати** редактора скриптів (або натисканням :kbd:`Ctrl + Shift + X`) під час роботи редактора. Це корисно для додавання користувацьких функцій редактора до Godot. Для складніших доповнень розгляньте можливість використання :ref:`EditorPlugin<class_EditorPlugin>`.

Якщо скрипт, що розширює цей клас, також має глобальну назву класу, він буде включений до палітри команд редактора.

\ **Примітка:** Для скриптів, що розширюють цей клас, потрібно ввімкнути режим ``tool``.

\ **Приклад:** Запуск наступного скрипта виводить "Привіт від редактора Godot!":


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorScript

    func _run():
        print("Вітання від редактора журналу «Ґодо»!")

 .. code-tab:: csharp

    using Godot;

    [Tool]
    public partial class HelloEditor : EditorScript
    {
        public override void _Run()
        {
            GD.Print("Вітання від редактора журналу «Ґодо»!");
        }
    }



\ **Примітка:** EditorScript має значення :ref:`RefCounted<class_RefCounted>`, що означає, що він знищується, коли на нього немає посилань. Це може спричинити помилки під час асинхронних операцій, якщо немає посилань на скрипт.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`_run<class_EditorScript_private_method__run>`\ (\ ) |virtual| |required|                      |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | |void|                                        | :ref:`add_root_node<class_EditorScript_method_add_root_node>`\ (\ node\: :ref:`Node<class_Node>`\ ) |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`EditorInterface<class_EditorInterface>` | :ref:`get_editor_interface<class_EditorScript_method_get_editor_interface>`\ (\ ) |const|           |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                       | :ref:`get_scene<class_EditorScript_method_get_scene>`\ (\ ) |const|                                 |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorScript_private_method__run:

.. rst-class:: classref-method

|void| **_run**\ (\ ) |virtual| |required| :ref:`🔗<class_EditorScript_private_method__run>`

Цей метод виконується редактором, коли **File > Запуск ** використовується.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_add_root_node:

.. rst-class:: classref-method

|void| **add_root_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorScript_method_add_root_node>`

Зробіть ``node`` корінь в даний час відкритої сцени. Тільки роботи, якщо сцена порожній. Якщо ``node`` є екземпляром сцени, буде створена спадкова сцена.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_editor_interface:

.. rst-class:: classref-method

:ref:`EditorInterface<class_EditorInterface>` **get_editor_interface**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_editor_interface>`

**Застаріло:** :ref:`EditorInterface<class_EditorInterface>` is a global singleton and can be accessed directly by its name.

Повертає екземпляр одиночного типу :ref:`EditorInterface<class_EditorInterface>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorScript_method_get_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_scene**\ (\ ) |const| :ref:`🔗<class_EditorScript_method_get_scene>`

Повертає корінь відредагованої (поточної) сцени :ref:`Node<class_Node>`. Еквівалент методу :ref:`EditorInterface.get_edited_scene_root()<class_EditorInterface_method_get_edited_scene_root>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
