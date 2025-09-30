:github_url: hide

.. _class_AnimationNodeBlendSpace2D:

AnimationNodeBlendSpace2D
=========================

**Успадковує:** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Набір :ref:`AnimationRootNode<class_AnimationRootNode>`, розміщений у 2D-координатах, перехресне затухання між трьома сусідніми. Використовується :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Опис
--------

Ресурс, який використовується :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

\ **AnimationNodeBlendSpace2D** представляє віртуальний 2D-простір, у якому розміщено :ref:`AnimationRootNode<class_AnimationRootNode>`. Виводить лінійне поєднання трьох суміжних анімацій за допомогою ваги :ref:`Vector2<class_Vector2>`. Суміжний у цьому контексті означає три :ref:`AnimationRootNode<class_AnimationRootNode>`, що утворюють трикутник, який містить поточне значення.

 Ви можете додати вершини до простору змішування за допомогою :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>` і автоматично триангуляти його, встановивши для :ref:`auto_triangles<class_AnimationNodeBlendSpace2D_property_auto_triangles>` значення ``true``. В іншому випадку використовуйте :ref:`add_triangle()<class_AnimationNodeBlendSpace2D_method_add_triangle>` і :ref:`remove_triangle()<class_AnimationNodeBlendSpace2D_method_remove_triangle>`, щоб тріангулювати простір змішування вручну.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Дерева анімації <../tutorials/animation/animation_tree>`

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`auto_triangles<class_AnimationNodeBlendSpace2D_property_auto_triangles>` | ``true``              |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` | :ref:`blend_mode<class_AnimationNodeBlendSpace2D_property_blend_mode>`         | ``0``                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`max_space<class_AnimationNodeBlendSpace2D_property_max_space>`           | ``Vector2(1, 1)``     |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`min_space<class_AnimationNodeBlendSpace2D_property_min_space>`           | ``Vector2(-1, -1)``   |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                              | :ref:`snap<class_AnimationNodeBlendSpace2D_property_snap>`                     | ``Vector2(0.1, 0.1)`` |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`sync<class_AnimationNodeBlendSpace2D_property_sync>`                     | ``false``             |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                                | :ref:`x_label<class_AnimationNodeBlendSpace2D_property_x_label>`               | ``"x"``               |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>`                                | :ref:`y_label<class_AnimationNodeBlendSpace2D_property_y_label>`               | ``"y"``               |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_blend_point<class_AnimationNodeBlendSpace2D_method_add_blend_point>`\ (\ node\: :ref:`AnimationRootNode<class_AnimationRootNode>`, pos\: :ref:`Vector2<class_Vector2>`, at_index\: :ref:`int<class_int>` = -1\ ) |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_triangle<class_AnimationNodeBlendSpace2D_method_add_triangle>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, at_index\: :ref:`int<class_int>` = -1\ )                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_blend_point_count<class_AnimationNodeBlendSpace2D_method_get_blend_point_count>`\ (\ ) |const|                                                                                                                   |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationRootNode<class_AnimationRootNode>` | :ref:`get_blend_point_node<class_AnimationNodeBlendSpace2D_method_get_blend_point_node>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                     | :ref:`get_blend_point_position<class_AnimationNodeBlendSpace2D_method_get_blend_point_position>`\ (\ point\: :ref:`int<class_int>`\ ) |const|                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_triangle_count<class_AnimationNodeBlendSpace2D_method_get_triangle_count>`\ (\ ) |const|                                                                                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_triangle_point<class_AnimationNodeBlendSpace2D_method_get_triangle_point>`\ (\ triangle\: :ref:`int<class_int>`, point\: :ref:`int<class_int>`\ )                                                                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_blend_point<class_AnimationNodeBlendSpace2D_method_remove_blend_point>`\ (\ point\: :ref:`int<class_int>`\ )                                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_triangle<class_AnimationNodeBlendSpace2D_method_remove_triangle>`\ (\ triangle\: :ref:`int<class_int>`\ )                                                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_node<class_AnimationNodeBlendSpace2D_method_set_blend_point_node>`\ (\ point\: :ref:`int<class_int>`, node\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ )                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_blend_point_position<class_AnimationNodeBlendSpace2D_method_set_blend_point_position>`\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`Vector2<class_Vector2>`\ )                                                 |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_AnimationNodeBlendSpace2D_signal_triangles_updated:

.. rst-class:: classref-signal

**triangles_updated**\ (\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_signal_triangles_updated>`

Випромінюється кожного разу, коли трикутники простору змішування створюються, видаляються або коли одна з їхніх вершин змінює положення.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_AnimationNodeBlendSpace2D_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_AnimationNodeBlendSpace2D_BlendMode>`

.. _class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_INTERPOLATED:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **BLEND_MODE_INTERPOLATED** = ``0``

Інтерполяція між анімаціями лінійна.

.. _class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_DISCRETE:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **BLEND_MODE_DISCRETE** = ``1``

Простір змішування відтворює анімацію вузла анімації, позиція змішування якої є найближчою. Корисно для покадрової 2D-анімації.

.. _class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_DISCRETE_CARRY:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **BLEND_MODE_DISCRETE_CARRY** = ``2``

Подібно до :ref:`BLEND_MODE_DISCRETE<class_AnimationNodeBlendSpace2D_constant_BLEND_MODE_DISCRETE>`, але починає нову анімацію з позиції відтворення останньої анімації.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AnimationNodeBlendSpace2D_property_auto_triangles:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_triangles** = ``true`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_auto_triangles>`

.. rst-class:: classref-property-setget

- |void| **set_auto_triangles**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_auto_triangles**\ (\ )

Якщо ``true``, простір змішування тріангулюється автоматично. Меш (сітка) оновлюється щоразу, коли ви додаєте або видаляєте точки за допомогою :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>` і :ref:`remove_blend_point()<class_AnimationNodeBlendSpace2D_method_remove_blend_point>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>`\ )
- :ref:`BlendMode<enum_AnimationNodeBlendSpace2D_BlendMode>` **get_blend_mode**\ (\ )

Керує інтерполяцією між анімаціями.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_max_space:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **max_space** = ``Vector2(1, 1)`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_max_space>`

.. rst-class:: classref-property-setget

- |void| **set_max_space**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_max_space**\ (\ )

Верхня межа осей X та Y простору змішування для розташування точок. Дивіться :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_min_space:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **min_space** = ``Vector2(-1, -1)`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_min_space>`

.. rst-class:: classref-property-setget

- |void| **set_min_space**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_min_space**\ (\ )

Нижня межа осей X та Y простору змішування для розташування точок. Дивіться :ref:`add_blend_point()<class_AnimationNodeBlendSpace2D_method_add_blend_point>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_snap:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **snap** = ``Vector2(0.1, 0.1)`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_snap**\ (\ )

Приріст позиції, до якого слід прив'язуватись при переміщенні точки.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_sync:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync** = ``false`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_sync>`

.. rst-class:: classref-property-setget

- |void| **set_use_sync**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_sync**\ (\ )

Якщо ``false``, кадр змішаної анімації зупиняється, коли значення змішування дорівнює ``0``.

Якщо ``true``, примушує змішані анімації відтворюватися вперед на один кадр.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_x_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **x_label** = ``"x"`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_x_label>`

.. rst-class:: classref-property-setget

- |void| **set_x_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_x_label**\ (\ )

Назва осі X простору змішування.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_property_y_label:

.. rst-class:: classref-property

:ref:`String<class_String>` **y_label** = ``"y"`` :ref:`🔗<class_AnimationNodeBlendSpace2D_property_y_label>`

.. rst-class:: classref-property-setget

- |void| **set_y_label**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_y_label**\ (\ )

Назва осі Y простору змішування.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AnimationNodeBlendSpace2D_method_add_blend_point:

.. rst-class:: classref-method

|void| **add_blend_point**\ (\ node\: :ref:`AnimationRootNode<class_AnimationRootNode>`, pos\: :ref:`Vector2<class_Vector2>`, at_index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_add_blend_point>`

Додає нову точку, яка представляє вузол ``node`` у позиції, заданій параметром ``pos``. Ви можете вставити її за певним індексом за допомогою аргументу ``at_index``. Якщо ви використовуєте значення за замовчуванням для ``at_index``, точка буде вставлена в кінець масиву точок накладання.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_add_triangle:

.. rst-class:: classref-method

|void| **add_triangle**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, at_index\: :ref:`int<class_int>` = -1\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_add_triangle>`

Створює новий трикутник за трьома точками ``x``, ``y``, і ``z``. Трикутники можуть накладатися один на одного. Ви можете вставити трикутник за певним індексом за допомогою аргументу ``at_index``. Якщо ви використовуєте значення за замовчуванням для ``at_index``, точка буде вставлена в кінець масиву точок змішування.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_blend_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_blend_point_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_blend_point_count>`

Повертає кількість точок у просторі змішування.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_blend_point_node:

.. rst-class:: classref-method

:ref:`AnimationRootNode<class_AnimationRootNode>` **get_blend_point_node**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_blend_point_node>`

Повертає :ref:`AnimationRootNode<class_AnimationRootNode>`, на який посилається точка з індексом ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_blend_point_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_blend_point_position**\ (\ point\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_blend_point_position>`

Повертає позицію точки за індексом ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_triangle_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_triangle_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_triangle_count>`

Повертає кількість трикутників в просторі змішування.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_get_triangle_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_triangle_point**\ (\ triangle\: :ref:`int<class_int>`, point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_get_triangle_point>`

Повертає позицію точки з індексом ``point`` у трикутнику з індексом ``triangle``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_remove_blend_point:

.. rst-class:: classref-method

|void| **remove_blend_point**\ (\ point\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_remove_blend_point>`

Видаляє точку з індексом ``point`` з простору змішування.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_remove_triangle:

.. rst-class:: classref-method

|void| **remove_triangle**\ (\ triangle\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_remove_triangle>`

Видаляє трикутник з індексом ``triangle`` з простору змішування.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_set_blend_point_node:

.. rst-class:: classref-method

|void| **set_blend_point_node**\ (\ point\: :ref:`int<class_int>`, node\: :ref:`AnimationRootNode<class_AnimationRootNode>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_set_blend_point_node>`

Змінює :ref:`AnimationNode<class_AnimationNode>`, на який посилається точка з індексом ``point``.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeBlendSpace2D_method_set_blend_point_position:

.. rst-class:: classref-method

|void| **set_blend_point_position**\ (\ point\: :ref:`int<class_int>`, pos\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeBlendSpace2D_method_set_blend_point_position>`

Оновлює позицію точки за індексом ``point`` у просторі змішування.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
