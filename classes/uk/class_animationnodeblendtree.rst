:github_url: hide

.. _class_AnimationNodeBlendTree:

AnimationNodeBlendTree
======================

**Успадковує:** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Піддерево багатьох типів :ref:`AnimationNode<class_AnimationNode>`, що використовується для складних анімацій. Використовується :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей анімаційний вузол може містити піддерево будь-якого іншого типу анімаційних вузлів, наприклад :ref:`AnimationNodeTransition<class_AnimationNodeTransition>`, :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>`, :ref:`AnimationNodeBlend3<class_AnimationNodeBlend3>`, :ref:`AnimationNodeOneShot<class_AnimationNodeOneShot>` тощо. Це один із найпоширеніших коренів анімаційного вузла.

 Вузол :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` під назвою ``output`` створюється за замовчуванням.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Дерева анімації <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`graph_offset<class_AnimationNodeBlendTree_property_graph_offset>` | ``Vector2(0, 0)`` |
   +-------------------------------+-------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_node<class_AnimationNodeBlendTree_method_add_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`connect_node<class_AnimationNodeBlendTree_method_connect_node>`\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`, output_node\: :ref:`StringName<class_StringName>`\ )       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`disconnect_node<class_AnimationNodeBlendTree_method_disconnect_node>`\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`\ )                                                    |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNode<class_AnimationNode>`                        | :ref:`get_node<class_AnimationNodeBlendTree_method_get_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_node_list<class_AnimationNodeBlendTree_method_get_node_list>`\ (\ ) |const|                                                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                    | :ref:`get_node_position<class_AnimationNodeBlendTree_method_get_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_node<class_AnimationNodeBlendTree_method_has_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                     |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_node<class_AnimationNodeBlendTree_method_remove_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`rename_node<class_AnimationNodeBlendTree_method_rename_node>`\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_node_position<class_AnimationNodeBlendTree_method_set_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_AnimationNodeBlendTree_signal_node_changed:

.. rst-class:: classref-signal

**node_changed**\ (\ node_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_signal_node_changed>`

Випромінюється при зміні інформації про вхідний порт.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_AnimationNodeBlendTree_constant_CONNECTION_OK:

.. rst-class:: classref-constant

**CONNECTION_OK** = ``0`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_OK>`

З'єднання пройшло успішно.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_INPUT** = ``1`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT>`

Вхідний вузол - ``null``.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT_INDEX:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_INPUT_INDEX** = ``2`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_INPUT_INDEX>`

Вказаний вхідний порт знаходиться поза діапазоном.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_OUTPUT:

.. rst-class:: classref-constant

**CONNECTION_ERROR_NO_OUTPUT** = ``3`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_NO_OUTPUT>`

Вихідний вузол - ``null``.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_SAME_NODE:

.. rst-class:: classref-constant

**CONNECTION_ERROR_SAME_NODE** = ``4`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_SAME_NODE>`

Вхідні та вихідні вузли однакові.

.. _class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_CONNECTION_EXISTS:

.. rst-class:: classref-constant

**CONNECTION_ERROR_CONNECTION_EXISTS** = ``5`` :ref:`🔗<class_AnimationNodeBlendTree_constant_CONNECTION_ERROR_CONNECTION_EXISTS>`

Зазначене з'єднання вже існує.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AnimationNodeBlendTree_property_graph_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **graph_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_AnimationNodeBlendTree_property_graph_offset>`

.. rst-class:: classref-property-setget

- |void| **set_graph_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ )

Глобальне зміщення всіх суб-вузлів анімації.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AnimationNodeBlendTree_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_add_node>`

Додає :ref:`AnimationNode<class_AnimationNode>` у вказану ``position``. ``name`` використовується для ідентифікації створеного підвузла анімації пізніше.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_connect_node:

.. rst-class:: classref-method

|void| **connect_node**\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`, output_node\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_connect_node>`

Підключає вихід :ref:`AnimationNode<class_AnimationNode>` як вхід для іншого :ref:`AnimationNode<class_AnimationNode>`, через вхідний порт, вказаний у ``input_index``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_disconnect_node:

.. rst-class:: classref-method

|void| **disconnect_node**\ (\ input_node\: :ref:`StringName<class_StringName>`, input_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_disconnect_node>`

Відключає вузол анімації, підключений до вказаного входу.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **get_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node>`

Повертає вузол піданімації з указаним ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_node_list**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node_list>`

Повертає список, що містить імена всіх вузлів піданімації в цьому дереві поєднання.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_get_node_position>`

Повертає позицію підвузла анімації з указаним ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendTree_method_has_node>`

Повертає ``true``, якщо існує вузол піданімації з указаним ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_remove_node>`

Видаляє підвузол анімації.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_rename_node:

.. rst-class:: classref-method

|void| **rename_node**\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_rename_node>`

Змінює назву підвузла анімації.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendTree_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeBlendTree_method_set_node_position>`

Змінює положення підвузла анімації.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
