:github_url: hide

.. _class_Container:

Container
=========

**Успадковує:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`AspectRatioContainer<class_AspectRatioContainer>`, :ref:`BoxContainer<class_BoxContainer>`, :ref:`CenterContainer<class_CenterContainer>`, :ref:`EditorProperty<class_EditorProperty>`, :ref:`FlowContainer<class_FlowContainer>`, :ref:`FoldableContainer<class_FoldableContainer>`, :ref:`GraphElement<class_GraphElement>`, :ref:`GridContainer<class_GridContainer>`, :ref:`MarginContainer<class_MarginContainer>`, :ref:`PanelContainer<class_PanelContainer>`, :ref:`ScrollContainer<class_ScrollContainer>`, :ref:`SplitContainer<class_SplitContainer>`, :ref:`SubViewportContainer<class_SubViewportContainer>`, :ref:`TabContainer<class_TabContainer>`

Базовий клас для всіх контейнерів GUI.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий клас для всіх контейнерів GUI. **Container** автоматично влаштовує контроль дитини певним чином. Цей клас може бути спадковим, щоб зробити нестандартні типи контейнерів.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання контейнерів <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------+--------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>` | mouse_filter | ``1`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +----------------------------------------------+--------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_allowed_size_flags_horizontal<class_Container_private_method__get_allowed_size_flags_horizontal>`\ (\ ) |virtual| |const|              |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_allowed_size_flags_vertical<class_Container_private_method__get_allowed_size_flags_vertical>`\ (\ ) |virtual| |const|                  |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fit_child_in_rect<class_Container_method_fit_child_in_rect>`\ (\ child\: :ref:`Control<class_Control>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`queue_sort<class_Container_method_queue_sort>`\ (\ )                                                                                        |
   +-------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_Container_signal_pre_sort_children:

.. rst-class:: classref-signal

**pre_sort_children**\ (\ ) :ref:`🔗<class_Container_signal_pre_sort_children>`

Увімкнути, коли діти будуть сортувати.

.. rst-class:: classref-item-separator

----

.. _class_Container_signal_sort_children:

.. rst-class:: classref-signal

**sort_children**\ (\ ) :ref:`🔗<class_Container_signal_sort_children>`

Випробувано при сортування дітей.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_Container_constant_NOTIFICATION_PRE_SORT_CHILDREN:

.. rst-class:: classref-constant

**NOTIFICATION_PRE_SORT_CHILDREN** = ``50`` :ref:`🔗<class_Container_constant_NOTIFICATION_PRE_SORT_CHILDREN>`

Повідомляємо, перш ніж діти будуть відсортовані, якщо є щось для обробки передньою рукою.

.. _class_Container_constant_NOTIFICATION_SORT_CHILDREN:

.. rst-class:: classref-constant

**NOTIFICATION_SORT_CHILDREN** = ``51`` :ref:`🔗<class_Container_constant_NOTIFICATION_SORT_CHILDREN>`

Повідомлень про при сортування дітей, його необхідно негайно обробити.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Container_private_method__get_allowed_size_flags_horizontal:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_allowed_size_flags_horizontal**\ (\ ) |virtual| |const| :ref:`🔗<class_Container_private_method__get_allowed_size_flags_horizontal>`

Впровадження для повернення списку дозволених горизонтальних Control. SizeFlags для дитячих вузлів. Це не технічно запобігає використанню будь-яких інших прапорів розмірів, якщо це вимагає. Це обмежує можливості, доступні користувачу в Inspector dock.

\ **Примітка:** Не має значення прапорів дорівнює :ref:`Control. SIZE_SHRINK_BEGIN<class_Control_constant_ SIZE_SHRINK_BEGIN>`. Як це значення завжди дозволяється.

.. rst-class:: classref-item-separator

----

.. _class_Container_private_method__get_allowed_size_flags_vertical:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_allowed_size_flags_vertical**\ (\ ) |virtual| |const| :ref:`🔗<class_Container_private_method__get_allowed_size_flags_vertical>`

Впроваджувати для повернення списку дозволених вертикалей Control. SizeFlags для дитячих вузлів. Це не технічно запобігає використанню будь-яких інших прапорів розмірів, якщо це вимагає. Це обмежує можливості, доступні користувачу в Inspector dock.

\ **Примітка:** Не має значення прапорів дорівнює :ref:`Control. SIZE_SHRINK_BEGIN<class_Control_constant_ SIZE_SHRINK_BEGIN>`. Як це значення завжди дозволяється.

.. rst-class:: classref-item-separator

----

.. _class_Container_method_fit_child_in_rect:

.. rst-class:: classref-method

|void| **fit_child_in_rect**\ (\ child\: :ref:`Control<class_Control>`, rect\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Container_method_fit_child_in_rect>`

Підходить для контролю дитини в даній дентиці. Це в основному помічник для створення індивідуальних контейнерів.

.. rst-class:: classref-item-separator

----

.. _class_Container_method_queue_sort:

.. rst-class:: classref-method

|void| **queue_sort**\ (\ ) :ref:`🔗<class_Container_method_queue_sort>`

Курорт з дітьми, що містяться. Це називається автоматично будь-яким чином, але може бути викликаний запитом.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
