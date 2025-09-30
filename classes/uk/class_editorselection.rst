:github_url: hide

.. _class_EditorSelection:

EditorSelection
===============

**Успадковує:** :ref:`Object<class_Object>`

Керує вибором SceneTree в редакторі.

.. rst-class:: classref-introduction-group

Опис
--------

Цей об'єкт керує вибіркою SceneTree в редакторі.

\ **Примітка:** Цей клас не повинен бути миттєвим. Замість, доступ до Єдиного редактора :ref:`EditorInterface.get_selection()<class_EditorInterface_method_get_selection>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`add_node<class_EditorSelection_method_add_node>`\ (\ node\: :ref:`Node<class_Node>`\ )                 |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`clear<class_EditorSelection_method_clear>`\ (\ )                                                       |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_selected_nodes<class_EditorSelection_method_get_selected_nodes>`\ (\ )                             |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_top_selected_nodes<class_EditorSelection_method_get_top_selected_nodes>`\ (\ )                     |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] | :ref:`get_transformable_selected_nodes<class_EditorSelection_method_get_transformable_selected_nodes>`\ (\ ) |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+
   | |void|                                               | :ref:`remove_node<class_EditorSelection_method_remove_node>`\ (\ node\: :ref:`Node<class_Node>`\ )           |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_EditorSelection_signal_selection_changed:

.. rst-class:: classref-signal

**selection_changed**\ (\ ) :ref:`🔗<class_EditorSelection_signal_selection_changed>`

Випробувано при зміні вибору.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorSelection_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorSelection_method_add_node>`

Додає вузол до вибору.

\ **Примітка:** Новий вибраний вузол не буде автоматично відредаговано в інспекторі. Якщо ви хочете редагувати вузол, скористайтеся :ref:`EditorInterface.edit_node()<class_EditorInterface_method_edit_node>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_EditorSelection_method_clear>`

Очистити вибір.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_selected_nodes>`

Повертає список вибраних вузлів.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_top_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_top_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_top_selected_nodes>`

Повертає список лише найвище вибраних вузлів, виключаючи будь-які дочірні вузли. Це корисно для виконання операцій перетворення (їх переміщення, обертання тощо).

Наприклад, якщо є вузол A з дочірнім вузлом B та рідним вузлом C, то вибір усіх трьох призведе до того, що цей метод поверне лише A та C. Зміна глобального перетворення A вплине на глобальне перетворення B, тому немає потреби змінювати B окремо.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_get_transformable_selected_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Node<class_Node>`\] **get_transformable_selected_nodes**\ (\ ) :ref:`🔗<class_EditorSelection_method_get_transformable_selected_nodes>`

**Застаріло:** Use :ref:`get_top_selected_nodes()<class_EditorSelection_method_get_top_selected_nodes>` instead.

Повертає список лише верхніх вибраних вузлів, виключаючи будь-яких дочірніх вузлів. Це корисно для виконання операцій перетворення (їх переміщення, обертання тощо). Див. :ref:`get_top_selected_nodes()<class_EditorSelection_method_get_top_selected_nodes>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSelection_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_EditorSelection_method_remove_node>`

Видалити вузол з вибору.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
