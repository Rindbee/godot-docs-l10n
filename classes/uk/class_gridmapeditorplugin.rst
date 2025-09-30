:github_url: hide

.. meta::
	:keywords: tilemap

.. _class_GridMapEditorPlugin:

GridMapEditorPlugin
===================

**Успадковує:** :ref:`EditorPlugin<class_EditorPlugin>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Редактор для вузлів :ref:`GridMap<class_GridMap>`.

.. rst-class:: classref-introduction-group

Опис
--------

GridMapEditorPlugin надає доступ до функцій редактора :ref:`GridMap<class_GridMap>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_selection<class_GridMapEditorPlugin_method_clear_selection>`\ (\ )                                                                             |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GridMap<class_GridMap>` | :ref:`get_current_grid_map<class_GridMapEditorPlugin_method_get_current_grid_map>`\ (\ ) |const|                                                           |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`get_selected_cells<class_GridMapEditorPlugin_method_get_selected_cells>`\ (\ ) |const|                                                               |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_selected_palette_item<class_GridMapEditorPlugin_method_get_selected_palette_item>`\ (\ ) |const|                                                 |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`get_selection<class_GridMapEditorPlugin_method_get_selection>`\ (\ ) |const|                                                                         |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_selection<class_GridMapEditorPlugin_method_has_selection>`\ (\ ) |const|                                                                         |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_selected_palette_item<class_GridMapEditorPlugin_method_set_selected_palette_item>`\ (\ item\: :ref:`int<class_int>`\ ) |const|                   |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_selection<class_GridMapEditorPlugin_method_set_selection>`\ (\ begin\: :ref:`Vector3i<class_Vector3i>`, end\: :ref:`Vector3i<class_Vector3i>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GridMapEditorPlugin_method_clear_selection:

.. rst-class:: classref-method

|void| **clear_selection**\ (\ ) :ref:`🔗<class_GridMapEditorPlugin_method_clear_selection>`

Скасовує виділення будь-яких поточних вибраних клітинок.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_current_grid_map:

.. rst-class:: classref-method

:ref:`GridMap<class_GridMap>` **get_current_grid_map**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_current_grid_map>`

Повертає вузол :ref:`GridMap<class_GridMap>`, редагований редактором карт сітки.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selected_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_selected_cells**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selected_cells>`

Повертає масив :ref:`Vector3i<class_Vector3i>` з координатами вибраних клітинок.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selected_palette_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selected_palette_item**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selected_palette_item>`

Повертає індекс вибраного елемента :ref:`MeshLibrary<class_MeshLibrary>` у палітрі редактора карт сітки або ``-1``, якщо жоден елемент не вибрано. 

\ **Примітка:** Порядок індексів може відрізнятися від того, у якому вони відображаються в інтерфейсі редактора.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_selection**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selection>`

Повертає межі координат комірки поточного виділення. Використовуйте :ref:`has_selection()<class_GridMapEditorPlugin_method_has_selection>`, щоб перевірити, чи є активний вибір.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_has_selection:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_selection**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_has_selection>`

Повертає ``true``, якщо є вибрані клітинки.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_set_selected_palette_item:

.. rst-class:: classref-method

|void| **set_selected_palette_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_set_selected_palette_item>`

Вибирає елемент :ref:`MeshLibrary<class_MeshLibrary>` із заданим індексом у палітрі редактора карт сітки. Якщо вказано від’ємний індекс, жоден елемент не буде вибрано. Якщо вказано значення, що перевищує останній індекс, буде вибрано останній елемент. 

\ **Примітка: ** Порядок індексів може відрізнятися від того, у якому вони відображаються в інтерфейсі редактора.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_set_selection:

.. rst-class:: classref-method

|void| **set_selection**\ (\ begin\: :ref:`Vector3i<class_Vector3i>`, end\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_GridMapEditorPlugin_method_set_selection>`

Вибирає комірки в заданих межах від ``begin`` до ``end``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
