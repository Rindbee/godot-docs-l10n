:github_url: hide

.. _class_AnimationNode:

AnimationNode
=============

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`AnimationNodeExtension<class_AnimationNodeExtension>`, :ref:`AnimationNodeOutput<class_AnimationNodeOutput>`, :ref:`AnimationNodeSync<class_AnimationNodeSync>`, :ref:`AnimationNodeTimeScale<class_AnimationNodeTimeScale>`, :ref:`AnimationNodeTimeSeek<class_AnimationNodeTimeSeek>`, :ref:`AnimationRootNode<class_AnimationRootNode>`

Базовий клас для вузлів :ref:`AnimationTree<class_AnimationTree>`. Не стосується вузлів сцени.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий ресурс для вузлів :ref:`AnimationTree<class_AnimationTree>`. Загалом він не використовується безпосередньо, але ви можете створювати власні за допомогою спеціальних формул змішування.

 Успадкуйте це під час створення вузлів анімації, головним чином для використання в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`, інакше замість нього слід використовувати :ref:`AnimationRootNode<class_AnimationRootNode>`.

 Ви можете отримати доступ до інформації про час як параметра лише для читання, який обробляється та зберігається в попередньому кадрі для всіх вузлів, крім :ref:`AnimationNodeOutput<class_AnimationNodeOutput>`.

\ **Примітка:** Якщо в **AnimationNode** існує кілька вхідних даних, яка інформація про час матиме пріоритет, залежить від типу **AnimationNode**.

::

    var current_length = $AnimationTree[parameters/AnimationNodeName/current_length]
    var current_position = $AnimationTree[parameters/AnimationNodeName/current_position]
    var current_delta = $AnimationTree[parameters/AnimationNodeName/current_delta]

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Дерева анімації <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`filter_enabled<class_AnimationNode_property_filter_enabled>` |
   +-------------------------+--------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`               | :ref:`_get_caption<class_AnimationNode_private_method__get_caption>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                                            |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNode<class_AnimationNode>` | :ref:`_get_child_by_name<class_AnimationNode_private_method__get_child_by_name>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`       | :ref:`_get_child_nodes<class_AnimationNode_private_method__get_child_nodes>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`             | :ref:`_get_parameter_default_value<class_AnimationNode_private_method__get_parameter_default_value>`\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                 | :ref:`_get_parameter_list<class_AnimationNode_private_method__get_parameter_list>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`_has_filter<class_AnimationNode_private_method__has_filter>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`_is_parameter_read_only<class_AnimationNode_private_method__is_parameter_read_only>`\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                     |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`_process<class_AnimationNode_private_method__process>`\ (\ time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual|                                                                                                                                                                                                                                      |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`add_input<class_AnimationNode_method_add_input>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`blend_animation<class_AnimationNode_method_blend_animation>`\ (\ animation\: :ref:`StringName<class_StringName>`, time\: :ref:`float<class_float>`, delta\: :ref:`float<class_float>`, seeked\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, looped_flag\: :ref:`LoopedFlag<enum_Animation_LoopedFlag>` = 0\ )                                                                                      |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`blend_input<class_AnimationNode_method_blend_input>`\ (\ input_index\: :ref:`int<class_int>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ )                                                        |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                 | :ref:`blend_node<class_AnimationNode_method_blend_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`find_input<class_AnimationNode_method_find_input>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_input_count<class_AnimationNode_method_get_input_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                        |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`               | :ref:`get_input_name<class_AnimationNode_method_get_input_name>`\ (\ input\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                           |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`             | :ref:`get_parameter<class_AnimationNode_method_get_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                                                                                                                                                                                                                |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                     | :ref:`get_processing_animation_tree_instance_id<class_AnimationNode_method_get_processing_animation_tree_instance_id>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_path_filtered<class_AnimationNode_method_is_path_filtered>`\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const|                                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`is_process_testing<class_AnimationNode_method_is_process_testing>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`remove_input<class_AnimationNode_method_remove_input>`\ (\ index\: :ref:`int<class_int>`\ )                                                                                                                                                                                                                                                                                                                                                                       |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_filter_path<class_AnimationNode_method_set_filter_path>`\ (\ path\: :ref:`NodePath<class_NodePath>`, enable\: :ref:`bool<class_bool>`\ )                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                   | :ref:`set_input_name<class_AnimationNode_method_set_input_name>`\ (\ input\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                                                                                                                               |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                    | :ref:`set_parameter<class_AnimationNode_method_set_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                                                                                 |
   +-------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_AnimationNode_signal_animation_node_removed:

.. rst-class:: classref-signal

**animation_node_removed**\ (\ object_id\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_signal_animation_node_removed>`

Випускається вузлами, які успадковують цей клас і мають внутрішнє дерево, коли один із їхніх вузлів анімації видаляється. Вузли анімації, які видають цей сигнал, це :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` і :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_signal_animation_node_renamed:

.. rst-class:: classref-signal

**animation_node_renamed**\ (\ object_id\: :ref:`int<class_int>`, old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_signal_animation_node_renamed>`

Випромінюється вузлами, які успадковують цей клас і мають внутрішнє дерево, коли одне з їхніх імен вузлів анімації змінюється. Вузли анімації, які видають цей сигнал, це :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` і :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_signal_tree_changed:

.. rst-class:: classref-signal

**tree_changed**\ (\ ) :ref:`🔗<class_AnimationNode_signal_tree_changed>`

Випускається вузлами, які успадковують цей клас і мають внутрішнє дерево, коли один із їхніх вузлів анімації змінюється. Вузли анімації, які випромінюють цей сигнал: :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`, :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` і :ref:`AnimationNodeTransition<class_AnimationNodeTransition>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_AnimationNode_FilterAction:

.. rst-class:: classref-enumeration

enum **FilterAction**: :ref:`🔗<enum_AnimationNode_FilterAction>`

.. _class_AnimationNode_constant_FILTER_IGNORE:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_IGNORE** = ``0``

Не використовувати фільтрування.

.. _class_AnimationNode_constant_FILTER_PASS:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_PASS** = ``1``

Шляхи, що відповідають фільтру, будуть пропущені.

.. _class_AnimationNode_constant_FILTER_STOP:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_STOP** = ``2``

Шляхи, що відповідають фільтру, будуть відкинуті.

.. _class_AnimationNode_constant_FILTER_BLEND:

.. rst-class:: classref-enumeration-constant

:ref:`FilterAction<enum_AnimationNode_FilterAction>` **FILTER_BLEND** = ``3``

Шляхи, що відповідають фільтру, будуть змішані (за значенням змішування).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AnimationNode_property_filter_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_enabled** :ref:`🔗<class_AnimationNode_property_filter_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_filter_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_filter_enabled**\ (\ )

Якщо ``true``, фільтрування ввімкнено.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AnimationNode_private_method__get_caption:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_caption**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_caption>`

Успадковуючи від :ref:`AnimationRootNode<class_AnimationRootNode>`, реалізуйте цей віртуальний метод, щоб замінити текстовий підпис для цього вузла анімації.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_child_by_name:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **_get_child_by_name**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_child_by_name>`

Успадковуючи від :ref:`AnimationRootNode<class_AnimationRootNode>`, реалізуйте цей віртуальний метод, щоб повернути дочірній вузол анімації за його ``name``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_child_nodes:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **_get_child_nodes**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_child_nodes>`

Успадковуючи від :ref:`AnimationRootNode<class_AnimationRootNode>`, реалізуйте цей віртуальний метод, щоб повернути всі дочірні вузли анімації в порядку ``name: node`` словник.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_parameter_default_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_parameter_default_value**\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_parameter_default_value>`

При успадкуванні від :ref:`AnimationRootNode<class_AnimationRootNode>` реалізуйте цей віртуальний метод, щоб повернути значення за замовчуванням для ``parameter``. Параметри — це спеціальна локальна пам’ять, яка використовується для ваших вузлів анімації, оскільки ресурс можна перевикористовувати в кількох деревах.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__get_parameter_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **_get_parameter_list**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__get_parameter_list>`

Успадковуючи від :ref:`AnimationRootNode<class_AnimationRootNode>`, реалізуйте цей віртуальний метод, щоб повернути список властивостей цього вузла анімації. Параметри — це спеціальна локальна пам’ять, яка використовується для ваших вузлів анімації, оскільки ресурс можна повторно використовувати в кількох деревах. Формат схожий на :ref:`Object.get_property_list()<class_Object_method_get_property_list>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__has_filter:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_filter**\ (\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__has_filter>`

Успадковуючи від :ref:`AnimationRootNode<class_AnimationRootNode>`, реалізуйте цей віртуальний метод, щоб повернути, чи повинен редактор дерева змішування відображати редагування фільтра на цьому вузлі анімації.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__is_parameter_read_only:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_is_parameter_read_only**\ (\ parameter\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_AnimationNode_private_method__is_parameter_read_only>`

Під час успадкування від :ref:`AnimationRootNode<class_AnimationRootNode>` реалізуйте цей віртуальний метод, щоб повернути, чи є ``parameter`` лише для читання. Параметри — це спеціальна локальна пам’ять, яка використовується для ваших вузлів анімації, оскільки ресурс можна повторно використовувати в кількох деревах.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_private_method__process:

.. rst-class:: classref-method

:ref:`float<class_float>` **_process**\ (\ time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_AnimationNode_private_method__process>`

**Застаріло:** Currently this is mostly useless as there is a lack of many APIs to extend AnimationNode by GDScript. It is planned that a more flexible API using structures will be provided in the future.

Успадковуючи від :ref:`AnimationRootNode<class_AnimationRootNode>`, реалізуйте цей віртуальний метод для запуску деякого коду під час обробки цього вузла анімації. Параметр ``time`` є відносною дельтою, якщо ``seek`` не має значення ``true``, у такому випадку він є абсолютним.

 Тут викличте функції :ref:`blend_input()<class_AnimationNode_method_blend_input>`, :ref:`blend_node()<class_AnimationNode_method_blend_node>` або :ref:`blend_animation()<class_AnimationNode_method_blend_animation>`. Ви також можете використовувати :ref:`get_parameter()<class_AnimationNode_method_get_parameter>` і :ref:`set_parameter()<class_AnimationNode_method_set_parameter>` для зміни локальної пам'яті.

 Ця функція має повертати дельту.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_add_input:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_input**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_method_add_input>`

Додає вхідні дані до вузла анімації. Це корисно лише для вузлів анімації, створених для використання в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Якщо додавання не вдається, повертає ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_animation:

.. rst-class:: classref-method

|void| **blend_animation**\ (\ animation\: :ref:`StringName<class_StringName>`, time\: :ref:`float<class_float>`, delta\: :ref:`float<class_float>`, seeked\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, looped_flag\: :ref:`LoopedFlag<enum_Animation_LoopedFlag>` = 0\ ) :ref:`🔗<class_AnimationNode_method_blend_animation>`

Змішує анімацію на величину ``blend`` (назва має бути дійсною у пов'язаному :ref:`AnimationPlayer<class_AnimationPlayer>`). Можна передати ``time`` і ``delta``, а також те, чи відбулося ``seeked``.

Позначка ``looped_flag`` використовується внутрішньою обробкою одразу після циклу. Дивіться також :ref:`LoopedFlag<enum_Animation_LoopedFlag>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_input:

.. rst-class:: classref-method

:ref:`float<class_float>` **blend_input**\ (\ input_index\: :ref:`int<class_int>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimationNode_method_blend_input>`

Змішування входу. Це корисно лише для вузлів анімації, створених для :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Параметр ``time`` є відносною дельтою, якщо ``seek`` не має значення ``true``, у такому випадку він є абсолютним. Додатково можна передати режим фільтра (параметри див. :ref:`FilterAction<enum_AnimationNode_FilterAction>`).

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_blend_node:

.. rst-class:: classref-method

:ref:`float<class_float>` **blend_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, time\: :ref:`float<class_float>`, seek\: :ref:`bool<class_bool>`, is_external_seeking\: :ref:`bool<class_bool>`, blend\: :ref:`float<class_float>`, filter\: :ref:`FilterAction<enum_AnimationNode_FilterAction>` = 0, sync\: :ref:`bool<class_bool>` = true, test_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AnimationNode_method_blend_node>`

Змішайте інший вузол анімації (якщо цей вузол анімації містить дочірні вузли анімації). Ця функція корисна, лише якщо ви наслідуєте :ref:`AnimationRootNode<class_AnimationRootNode>`, інакше редактори не відображатимуть ваш вузол анімації для додавання.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_find_input:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_input**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_AnimationNode_method_find_input>`

Повертає вхідний індекс, який відповідає ``name``. Якщо не знайдено, повертає ``-1``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_input_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_input_count**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_get_input_count>`

Кількість вхідних даних у цьому вузлі анімації, корисна лише для вузлів анімації, які входять до :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_input_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_input_name**\ (\ input\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNode_method_get_input_name>`

Отримує назву вхідних даних за індексом.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNode_method_get_parameter>`

Отримує значення параметра. Параметри — це спеціальна локальна пам’ять, яка використовується для ваших вузлів анімації, оскільки ресурс можна повторно використовувати в кількох деревах.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_get_processing_animation_tree_instance_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_processing_animation_tree_instance_id**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_get_processing_animation_tree_instance_id>`

Повертає ідентифікатор об’єкта :ref:`AnimationTree<class_AnimationTree>`, якому належить цей вузол. 

\ **Примітка.** Цей метод слід викликати лише з методу :ref:`AnimationNodeExtension._process_animation_node()<class_AnimationNodeExtension_private_method__process_animation_node>`, інакше він поверне недійсний ідентифікатор.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_is_path_filtered:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_path_filtered**\ (\ path\: :ref:`NodePath<class_NodePath>`\ ) |const| :ref:`🔗<class_AnimationNode_method_is_path_filtered>`

Повертає ``true``, якщо заданий шлях відфільтровано.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_is_process_testing:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_process_testing**\ (\ ) |const| :ref:`🔗<class_AnimationNode_method_is_process_testing>`

Повертає ``true``, якщо цей вузол анімації обробляється лише в тестовому режимі.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_remove_input:

.. rst-class:: classref-method

|void| **remove_input**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNode_method_remove_input>`

Видаляє вхід, робіть виклик лише коли він неактивний.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_filter_path:

.. rst-class:: classref-method

|void| **set_filter_path**\ (\ path\: :ref:`NodePath<class_NodePath>`, enable\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_AnimationNode_method_set_filter_path>`

Додає або видаляє шлях до фільтра.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_input_name:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_input_name**\ (\ input\: :ref:`int<class_int>`, name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AnimationNode_method_set_input_name>`

Встановлює назву входу за заданим індексом ``input``. Якщо встановлення не вдалося, повертає ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNode_method_set_parameter:

.. rst-class:: classref-method

|void| **set_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_AnimationNode_method_set_parameter>`

Задає користувацький параметр. Вони використовуються як локальна пам'ять, оскільки ресурси можна повторно використовувати у дереві або сценах.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
