:github_url: hide

.. _class_Bone2D:

Bone2D
======

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

З’єднання, яке використовується разом із :ref:`Skeleton2D<class_Skeleton2D>` для керування та анімації інших вузлів.

.. rst-class:: classref-introduction-group

Опис
--------

Ієрархію **Bone2D** можна прив’язати до :ref:`Skeleton2D<class_Skeleton2D>` для керування та анімації інших вузлів :ref:`Node2D<class_Node2D>`.

 Ви можете використовувати вузли **Bone2D** і :ref:`Skeleton2D<class_Skeleton2D>` для анімації 2D-сіток, створених за допомогою UV-редактора :ref:`Polygon2D<class_Polygon2D>`.

 Кожна кістка має перетворення :ref:`rest<class_Bone2D_property_rest>`, яке можна скинути за допомогою :ref:`apply_rest()<class_Bone2D_method_apply_rest>`. Ці пози відпочинку відносяться до батьківської кістки.

 Якщо в редакторі ви можете встановити позу відпочинку цілого скелета за допомогою опції меню, у коді вам потрібно перейти до кісток, щоб встановити їхні окремі пози відпочинку.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------+-----------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rest<class_Bone2D_property_rest>` | ``Transform2D(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------------+-----------------------------------------+-----------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`apply_rest<class_Bone2D_method_apply_rest>`\ (\ )                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`get_autocalculate_length_and_angle<class_Bone2D_method_get_autocalculate_length_and_angle>`\ (\ ) |const|                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_bone_angle<class_Bone2D_method_get_bone_angle>`\ (\ ) |const|                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_index_in_skeleton<class_Bone2D_method_get_index_in_skeleton>`\ (\ ) |const|                                                             |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_length<class_Bone2D_method_get_length>`\ (\ ) |const|                                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_skeleton_rest<class_Bone2D_method_get_skeleton_rest>`\ (\ ) |const|                                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_autocalculate_length_and_angle<class_Bone2D_method_set_autocalculate_length_and_angle>`\ (\ auto_calculate\: :ref:`bool<class_bool>`\ ) |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_bone_angle<class_Bone2D_method_set_bone_angle>`\ (\ angle\: :ref:`float<class_float>`\ )                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_length<class_Bone2D_method_set_length>`\ (\ length\: :ref:`float<class_float>`\ )                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Bone2D_property_rest:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **rest** = ``Transform2D(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_Bone2D_property_rest>`

.. rst-class:: classref-property-setget

- |void| **set_rest**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_rest**\ (\ )

Трансформація спокою кістки. Ви можете скинути перетворення вузла до цього значення за допомогою :ref:`apply_rest()<class_Bone2D_method_apply_rest>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Bone2D_method_apply_rest:

.. rst-class:: classref-method

|void| **apply_rest**\ (\ ) :ref:`🔗<class_Bone2D_method_apply_rest>`

Повертає кістку в позу спокою. Це еквівалентно встановленню :ref:`Node2D.transform<class_Node2D_property_transform>` на :ref:`rest<class_Bone2D_property_rest>`.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_autocalculate_length_and_angle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_autocalculate_length_and_angle**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_autocalculate_length_and_angle>`

Повертає, чи збирається цей **Bone2D** автоматично обчислювати свою довжину та кут кістки за допомогою свого першого дочірнього вузла **Bone2D**, якщо він існує. Якщо дочірніх елементів **Bone2D** немає, він не зможе автоматично обчислити ці значення та виведе попередження.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_bone_angle:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_bone_angle**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_bone_angle>`

Повертає кут кістки в **Bone2D**.

\ **Примітка:** Це відрізняється від обертання **Bone2D**. Кут кістки — це поворот кістки, показаний гізмо, на який не впливає **Bone2D** :ref:`Node2D.transform<class_Node2D_property_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_index_in_skeleton:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_index_in_skeleton**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_index_in_skeleton>`

Повертає індекс вузла як частину всього скелета. Дивіться :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_length**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_length>`

Повертає довжину кістки у вузлі **Bone2D**.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_get_skeleton_rest:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_skeleton_rest**\ (\ ) |const| :ref:`🔗<class_Bone2D_method_get_skeleton_rest>`

Повертає :ref:`rest<class_Bone2D_property_rest>` :ref:`Transform2D<class_Transform2D>` вузла, якщо він не має батьківського елемента, або його позицію відпочинку відносно батьківського вузла.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_autocalculate_length_and_angle:

.. rst-class:: classref-method

|void| **set_autocalculate_length_and_angle**\ (\ auto_calculate\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Bone2D_method_set_autocalculate_length_and_angle>`

Якщо встановлено значення ``true``, вузол **Bone2D** намагатиметься автоматично обчислити кут і довжину кістки за допомогою першого дочірнього вузла **Bone2D**, якщо він існує. Якщо їх немає, **Bone2D** не зможе автоматично обчислити ці значення та виведе попередження.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_bone_angle:

.. rst-class:: classref-method

|void| **set_bone_angle**\ (\ angle\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Bone2D_method_set_bone_angle>`

Встановлює кут кістки для **Bone2D**. Це зазвичай встановлено на обертання від **Bone2D** до дочірнього вузла **Bone2D**.

\ **Примітка:** Це відрізняється від обертання **Bone2D**. Кут кістки — це поворот кістки, показаний гізмо, на який не впливає **Bone2D** :ref:`Node2D.transform<class_Node2D_property_transform>`.

.. rst-class:: classref-item-separator

----

.. _class_Bone2D_method_set_length:

.. rst-class:: classref-method

|void| **set_length**\ (\ length\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Bone2D_method_set_length>`

Встановлює довжину кістки в **Bone2D**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
