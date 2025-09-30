:github_url: hide

.. _class_ConvexPolygonShape2D:

ConvexPolygonShape2D
====================

**Успадковує:** :ref:`Shape2D<class_Shape2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Форма полігону 2D використовується для зіткнення фізики.

.. rst-class:: classref-introduction-group

Опис
--------

Форма полігону 2D, призначена для використання в фізиці. Використовується внутрішньо в режимі :ref:`CollisionPolygon2D<class_CollisionPolygon2D>`, коли це в режимі :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>`.

\ **ConvexPolygonShape2D** is *solid*, що означає, що він виявляє зіткнення з об'єктів, які повністю всередині нього, на відміну від :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, який є порожнистим. Це робить його більш придатними для виявлення і фізики.

\ **Положення конвексу:** Полігон можна розбити на кілька конвекційних полігонів. Це дозволяє динамічним органам фізики мати складні зіткнені зіткнення (вартість продуктивності) і може бути досягнуто за допомогою декількох вузлів **ConvexPolygonShape2D** або за допомогою вузла :ref:`CollisionPolygon2D<class_CollisionPolygon2D>` в :ref:`CollisionPolygon2D.BUILD_SOLIDS<class_CollisionPolygon2D_constant_BUILD_SOLIDS>`. Щоб створити полігон зіткнення з спрайтом, виберіть вузол :ref:`Sprite2D<class_Sprite2D>`, перейдіть до меню **Sprite2D**, яке з'являється над переглядом, і виберіть **Create Polygon2D Sibling**.

\ **Продуктивность:** **ConvexPolygonShape2D** швидше перевіряє зіткнення порівняно з :ref:`ConcavePolygonShape2D<class_ConcavePolygonShape2D>`, але він повільніше, ніж примітивні форми зіткнення, такі як :ref:`CircleShape2D<class_CircleShape2D>` і :ref:`RectangleShape2D<class_RectangleShape2D>`. Його використання, як правило, обмежуються об'єктами середнього розміру, які не можуть мати їх зіткнення точно представлені примітивними формами.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`points<class_ConvexPolygonShape2D_property_points>` | ``PackedVector2Array()`` |
   +-----------------------------------------------------+-----------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_point_cloud<class_ConvexPolygonShape2D_method_set_point_cloud>`\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ConvexPolygonShape2D_property_points:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **points** = ``PackedVector2Array()`` :ref:`🔗<class_ConvexPolygonShape2D_property_points>`

.. rst-class:: classref-property-setget

- |void| **set_points**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_points**\ (\ )

Список вершин многокутника, які утворюють опуклу оболонку. Може бути як за годинниковою стрілкою, так і проти годинникової стрілки.

\ **Попередження:** Встановлюйте цю властивість тільки для списку точок, які дійсно утворюють опуклу оболонку. Використовуйте :ref:`set_point_cloud()<class_ConvexPolygonShape2D_method_set_point_cloud>` для генерації опуклої оболонки з довільного набору точок.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_ConvexPolygonShape2D_method_set_point_cloud:

.. rst-class:: classref-method

|void| **set_point_cloud**\ (\ point_cloud\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_ConvexPolygonShape2D_method_set_point_cloud>`

На основі наданого набору точок, ця функція призначає властивість :ref:`points<class_ConvexPolygonShape2D_property_points>` за допомогою алгоритму опуклої оболонки, видаляючи всі непотрібні точки. Див. :ref:`Geometry2D.convex_hull()<class_Geometry2D_method_convex_hull>` для отримання детальної інформації.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
