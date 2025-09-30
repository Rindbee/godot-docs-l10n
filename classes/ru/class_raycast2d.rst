:github_url: hide

.. _class_RayCast2D:

RayCast2D
=========

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Луч в 2D пространстве, используемый для нахождения первого объекта столкновения, который он пересекает.

.. rst-class:: classref-introduction-group

Описание
----------------

Рейкаст представляет собой луч от начала до :ref:`target_position<class_RayCast2D_property_target_position>`, который находит ближайший объект на своём пути, если пересекает какой-либо объект.

\ **RayCast2D** может игнорировать некоторые объекты, добавляя их в список исключений, заставляя отчёты об обнаружении игнорировать :ref:`Area2D<class_Area2D>` (:ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`) или :ref:`PhysicsBody2D<class_PhysicsBody2D>` (:ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>`), или настраивая физические слои.

\ **RayCast2D** вычисляет пересечение в каждом физическом кадре и сохраняет результат до следующего физического кадра. Для немедленного рейкаста или если вы хотите настроить **RayCast2D** несколько раз в одном физическом кадре, используйте :ref:`force_raycast_update()<class_RayCast2D_method_force_raycast_update>`.

Чтобы охватить область двумерного пространства, можно аппроксимировать её несколькими **RayCast2D** или использовать :ref:`ShapeCast2D<class_ShapeCast2D>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Трассировка лучей <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_areas<class_RayCast2D_property_collide_with_areas>`   | ``false``          |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`collide_with_bodies<class_RayCast2D_property_collide_with_bodies>` | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`         | :ref:`collision_mask<class_RayCast2D_property_collision_mask>`           | ``1``              |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`enabled<class_RayCast2D_property_enabled>`                         | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`exclude_parent<class_RayCast2D_property_exclude_parent>`           | ``true``           |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`bool<class_bool>`       | :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>`         | ``false``          |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`target_position<class_RayCast2D_property_target_position>`         | ``Vector2(0, 50)`` |
   +-------------------------------+--------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception<class_RayCast2D_method_add_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                                    |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`add_exception_rid<class_RayCast2D_method_add_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_exceptions<class_RayCast2D_method_clear_exceptions>`\ (\ )                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_raycast_update<class_RayCast2D_method_force_raycast_update>`\ (\ )                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`   | :ref:`get_collider<class_RayCast2D_method_get_collider>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`         | :ref:`get_collider_rid<class_RayCast2D_method_get_collider_rid>`\ (\ ) |const|                                                                                |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_collider_shape<class_RayCast2D_method_get_collider_shape>`\ (\ ) |const|                                                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`get_collision_mask_value<class_RayCast2D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_normal<class_RayCast2D_method_get_collision_normal>`\ (\ ) |const|                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_collision_point<class_RayCast2D_method_get_collision_point>`\ (\ ) |const|                                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_colliding<class_RayCast2D_method_is_colliding>`\ (\ ) |const|                                                                                        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception<class_RayCast2D_method_remove_exception>`\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ )                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`remove_exception_rid<class_RayCast2D_method_remove_exception_rid>`\ (\ rid\: :ref:`RID<class_RID>`\ )                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_collision_mask_value<class_RayCast2D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RayCast2D_property_collide_with_areas:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_areas** = ``false`` :ref:`🔗<class_RayCast2D_property_collide_with_areas>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_areas**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_areas_enabled**\ (\ )

Если ``true``, будут сообщаться столкновения с :ref:`Area2D<class_Area2D>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collide_with_bodies:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **collide_with_bodies** = ``true`` :ref:`🔗<class_RayCast2D_property_collide_with_bodies>`

.. rst-class:: classref-property-setget

- |void| **set_collide_with_bodies**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_collide_with_bodies_enabled**\ (\ )

Если ``true``, будут сообщаться столкновения с :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_RayCast2D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Маска столкновений луча. Будут обнаружены только объекты, находящиеся хотя бы в одном слое столкновений, включенном в маске. Для получения дополнительной информации см. `Слои и маски столкновений <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документации.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_RayCast2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Если ``true``, будут сообщаться столкновения.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_exclude_parent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **exclude_parent** = ``true`` :ref:`🔗<class_RayCast2D_property_exclude_parent>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_parent_body**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_parent_body**\ (\ )

Если ``true``, этот луч не будет сообщать о столкновениях с родительским узлом. Это свойство действует только в том случае, если родительский узел — :ref:`CollisionObject2D<class_CollisionObject2D>`. См. также :ref:`Node.get_parent()<class_Node_method_get_parent>` и :ref:`add_exception()<class_RayCast2D_method_add_exception>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_hit_from_inside:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hit_from_inside** = ``false`` :ref:`🔗<class_RayCast2D_property_hit_from_inside>`

.. rst-class:: classref-property-setget

- |void| **set_hit_from_inside**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hit_from_inside_enabled**\ (\ )

Если ``true``, луч обнаружит попадание при запуске внутри фигур. В этом случае нормаль столкновения будет ``Vector2(0, 0)``. Не влияет на вогнутые полигоны фигуры.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_property_target_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **target_position** = ``Vector2(0, 50)`` :ref:`🔗<class_RayCast2D_property_target_position>`

.. rst-class:: classref-property-setget

- |void| **set_target_position**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_target_position**\ (\ )

Точка назначения луча относительно :ref:`Node2D.position<class_Node2D_property_position>` этого луча.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RayCast2D_method_add_exception:

.. rst-class:: classref-method

|void| **add_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception>`

Добавляет исключение столкновений, чтобы луч не сообщал о столкновениях с указанным узлом ``node``.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_add_exception_rid:

.. rst-class:: classref-method

|void| **add_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_add_exception_rid>`

Добавляет исключение столкновений, чтобы луч не сообщал о столкновениях с указанным :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_clear_exceptions:

.. rst-class:: classref-method

|void| **clear_exceptions**\ (\ ) :ref:`🔗<class_RayCast2D_method_clear_exceptions>`

Удаляет все исключения столкновений для этого луча.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_force_raycast_update:

.. rst-class:: classref-method

|void| **force_raycast_update**\ (\ ) :ref:`🔗<class_RayCast2D_method_force_raycast_update>`

Обновляет информацию о столкновении для луча немедленно, не дожидаясь следующего вызова ``_physics_process``. Используйте этот метод, например, когда луч или его родительский элемент изменили состояние.

\ **Примечание:** :ref:`enabled<class_RayCast2D_property_enabled>` не обязательно должен быть ``true``, чтобы это работало.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_collider**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider>`

Возвращает первый объект, пересекаемый лучом, или ``null``, если ни один объект не пересекает луч (т.е. :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` возвращает ``false``).

\ **Примечание:** Этот объект не обязательно является :ref:`CollisionObject2D<class_CollisionObject2D>`. Например, если луч пересекает :ref:`TileMapLayer<class_TileMapLayer>`, метод вернет экземпляр :ref:`TileMapLayer<class_TileMapLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_collider_rid**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_rid>`

Возвращает :ref:`RID<class_RID>` первого объекта, который пересекает луч, или пустой :ref:`RID<class_RID>`, если ни один объект не пересекает луч (т. е. :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` возвращает ``false``).

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collider_shape:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collider_shape**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collider_shape>`

Возвращает идентификатор формы первого объекта, который пересекает луч, или ``0``, если ни один объект не пересекает луч (т. е. :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` возвращает ``false``).

Чтобы получить узел пересекаемой формы для цели :ref:`CollisionObject2D<class_CollisionObject2D>`, используйте:


.. tabs::

 .. code-tab:: gdscript

    var target = get_collider() # CollisionObject2D.
    var shape_id = get_collider_shape() # Индекс формы в коллайдере.
    var owner_id = target.shape_find_owner(shape_id) # Идентификатор владельца в коллайдере.
    var shape = target.shape_owner_get_owner(owner_id)

 .. code-tab:: csharp

    var target = (CollisionObject2D)GetCollider(); // CollisionObject2D.
    var shapeId = GetColliderShape(); // Индекс формы в коллайдере.
    var ownerId = target.ShapeFindOwner(shapeId); // Идентификатор владельца в коллайдере.
    var shape = target.ShapeOwnerGetOwner(ownerId);



.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_mask_value>`

Возвращает, включен ли указанный слой :ref:`collision_mask<class_RayCast2D_property_collision_mask>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_normal:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_normal**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_normal>`

Возвращает нормаль формы пересекающегося объекта в точке столкновения, или ``Vector2(0, 0)``, если луч начинается внутри формы и :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` равен ``true``.

\ **Примечание:** Проверьте, что :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` возвращает ``true`` перед вызовом этого метода, чтобы убедиться, что возвращаемая нормаль является допустимой и актуальной.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_get_collision_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_collision_point**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_get_collision_point>`

Возвращает точку столкновения, в которой луч пересекает ближайший объект в глобальной системе координат. Если :ref:`hit_from_inside<class_RayCast2D_property_hit_from_inside>` равен ``true`` и луч начинается внутри формы столкновения, эта функция вернет исходную точку луча.

\ **Примечание:** Проверьте, что :ref:`is_colliding()<class_RayCast2D_method_is_colliding>` возвращает ``true`` перед вызовом этого метода, чтобы убедиться, что возвращаемая точка является допустимой и актуальной.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_is_colliding:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_colliding**\ (\ ) |const| :ref:`🔗<class_RayCast2D_method_is_colliding>`

Возвращает, пересекается ли какой-либо объект с вектором луча (с учетом длины вектора).

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception:

.. rst-class:: classref-method

|void| **remove_exception**\ (\ node\: :ref:`CollisionObject2D<class_CollisionObject2D>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception>`

Удаляет исключение столкновений, чтобы луч мог сообщать о столкновениях с указанным ``node``.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_remove_exception_rid:

.. rst-class:: classref-method

|void| **remove_exception_rid**\ (\ rid\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RayCast2D_method_remove_exception_rid>`

Удаляет исключение столкновений, чтобы луч мог сообщать о столкновениях с указанным :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_RayCast2D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_RayCast2D_method_set_collision_mask_value>`

На основе ``value`` включает или отключает указанный слой в :ref:`collision_mask<class_RayCast2D_property_collision_mask>` при заданном ``layer_number`` от 1 до 32.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
