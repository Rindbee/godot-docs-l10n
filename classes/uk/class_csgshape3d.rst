:github_url: hide

.. _class_CSGShape3D:

CSGShape3D
==========

**Успадковує:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`CSGCombiner3D<class_CSGCombiner3D>`, :ref:`CSGPrimitive3D<class_CSGPrimitive3D>`

Базовий клас CSG.

.. rst-class:: classref-introduction-group

Опис
--------

Це базовий клас CSG, який забезпечує підтримку операцій CSG для різних вузлів CSG у Godot.

\ **Продуктивність:** Вузли CSG призначені лише для прототипування, оскільки вони мають значні витрати на продуктивність процесора. Розгляньте можливість запивання кінцевих результатів операцій CSG у статичну геометрію, яка замінює вузли CSG.

Окремі результати кореневих вузлів CSG можна запивати у вузли зі статичними ресурсами за допомогою меню редактора, яке з'являється при виборі кореневого вузла CSG.

Окремі кореневі вузли CSG також можна запивати у статичні ресурси за допомогою скриптів, викликаючи :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` для візуальної сітки або :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` для фізичного зіткнення.

Цілі сцени вузлів CSG можна запивати у статичну геометрію та експортувати за допомогою редактора експортера сцен glTF: **Сцена > Експортувати як... > glTF 2.0 Сцена...**

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Прототипування рівнів з CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`calculate_tangents<class_CSGShape3D_property_calculate_tangents>` | ``true``  |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`       | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`         | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`collision_priority<class_CSGShape3D_property_collision_priority>` | ``1.0``   |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`Operation<enum_CSGShape3D_Operation>` | :ref:`operation<class_CSGShape3D_property_operation>`                   | ``0``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`snap<class_CSGShape3D_property_snap>`                             |           |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`use_collision<class_CSGShape3D_property_use_collision>`           | ``false`` |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` | :ref:`bake_collision_shape<class_CSGShape3D_method_bake_collision_shape>`\ (\ )                                                                                  |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`                         | :ref:`bake_static_mesh<class_CSGShape3D_method_bake_static_mesh>`\ (\ )                                                                                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_layer_value<class_CSGShape3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_mask_value<class_CSGShape3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`get_meshes<class_CSGShape3D_method_get_meshes>`\ (\ ) |const|                                                                                              |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`is_root_shape<class_CSGShape3D_method_is_root_shape>`\ (\ ) |const|                                                                                        |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_layer_value<class_CSGShape3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_mask_value<class_CSGShape3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )   |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_CSGShape3D_Operation:

.. rst-class:: classref-enumeration

enum **Operation**: :ref:`🔗<enum_CSGShape3D_Operation>`

.. _class_CSGShape3D_constant_OPERATION_UNION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_UNION** = ``0``

Геометрія як примітивів зливається, знімається міжсекційна геометрія.

.. _class_CSGShape3D_constant_OPERATION_INTERSECTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_INTERSECTION** = ``1``

Залишається тільки міжсекційна геометрія, решта знімається.

.. _class_CSGShape3D_constant_OPERATION_SUBTRACTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_SUBTRACTION** = ``2``

Друга форма відхилена від першого, залишаючи відступ зі своєю формою.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CSGShape3D_property_calculate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **calculate_tangents** = ``true`` :ref:`🔗<class_CSGShape3D_property_calculate_tangents>`

.. rst-class:: classref-property-setget

- |void| **set_calculate_tangents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_calculating_tangents**\ (\ )

Обчисліть дотичні для фігури CSG, що дозволяє використовувати карти нормалей та висот. Це застосовується лише до кореневої фігури, цей параметр ігнорується для будь-якої дочірньої фігури. Встановлення цього параметра на ``false`` може дещо пришвидшити генерацію фігури.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Фізика шарів цієї області знаходиться в.

Виключні об'єкти можуть існувати в будь-якому з 32 різних шарів. Ці шари працюють як система блювоти, і не візуально. З'єднання може використовувати ці шари, щоб вибрати, з якими об'єктами він може з'єднатися, використовуючи зіткнень_маску власності.

Якщо об'єкт A знаходиться в будь-якому з шарів, які об'єкт B сканування, або об'єкт B знаходиться в будь-якому шарі, відскановані об'єктом A. Див. `Коллізійні шари та маски <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документації для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Фізика шарів цієї форми CSG сканування для зіткнення. ``true``. Див. `Коллізійні шари та маски <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документації для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CSGShape3D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

Пріоритет, який використовується для вирішення співвідношенні при виникненні проникнення. ``true``. Чим вище пріоритет, тим нижче проникнення в об'єкт буде. Цей приклад можна використовувати для запобігання розбиття гравця за кордонами рівня.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_operation:

.. rst-class:: classref-property

:ref:`Operation<enum_CSGShape3D_Operation>` **operation** = ``0`` :ref:`🔗<class_CSGShape3D_property_operation>`

.. rst-class:: classref-property-setget

- |void| **set_operation**\ (\ value\: :ref:`Operation<enum_CSGShape3D_Operation>`\ )
- :ref:`Operation<enum_CSGShape3D_Operation>` **get_operation**\ (\ )

Операція, яка виконується за цією формою. Це ігнорується для першого CSG дочірнього вузла, оскільки операція є між цією вершиною і попередньої дитини цього вершини батьків.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_snap:

.. rst-class:: classref-property

:ref:`float<class_float>` **snap** :ref:`🔗<class_CSGShape3D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_snap**\ (\ )

**Застаріло:** The CSG library no longer uses snapping.

Це властивість нічого не робить.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_use_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_collision** = ``false`` :ref:`🔗<class_CSGShape3D_property_use_collision>`

.. rst-class:: classref-property-setget

- |void| **set_use_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_collision**\ (\ )

Додає форму зіткнення на фізичний двигун для нашої форми CSG. Це завжди буде діяти як статичне тіло. Зверніть увагу, що форма зіткнення все ще активна навіть якщо сама форма CSG прихована. Дивись також :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` і :ref:`collision_priority<class_CSGShape3D_property_collision_priority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_CSGShape3D_method_bake_collision_shape:

.. rst-class:: classref-method

:ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` **bake_collision_shape**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_collision_shape>`

Повертає запечену фізику :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` результату операції CSG цього вузла. Повертає порожню фігуру, якщо вузол не є кореневим вузлом CSG або не має дійсної геометрії.

\ **Продуктивність:** Якщо операція CSG призводить до дуже детальної геометрії з багатьма гранями, продуктивність фізики буде дуже повільною. Увігнуті фігури загалом слід використовувати лише для геометрії статичного рівня, а не з динамічними об'єктами, що рухаються.

\ **Примітка:** Оновлення даних сітки CSG відкладаються, що означає, що вони оновлюються із затримкою в один кадр візуалізації. Щоб уникнути отримання порожньої фігури або застарілих даних сітки, обов'язково викликайте ``await get_tree().process_frame`` перед використанням :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` у :ref:`Node._ready()<class_Node_private_method__ready>` або після зміни властивостей на **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_bake_static_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_static_mesh**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_static_mesh>`

Повертає запечений статичний результат операції CSG цього вузла :ref:`ArrayMesh<class_ArrayMesh>`. Матеріали із задіяних вузлів CSG додаються як додаткові поверхні сітки. Повертає порожню сітку, якщо вузол не є кореневим вузлом CSG або не має дійсної геометрії.

\ **Примітка:** Оновлення даних сітки CSG відкладаються, що означає, що вони оновлюються із затримкою в один відрендерений кадр. Щоб уникнути отримання порожньої сітки або застарілих даних сітки, обов'язково викликайте ``await get_tree().process_frame`` перед використанням :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` у :ref:`Node._ready()<class_Node_private_method__ready>` або після зміни властивостей на **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_layer_value>`

Повертаємо, чи не вказаний шар :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`, враховуючи ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_mask_value>`

Повертаємо, чи не вказаний шар :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`, враховуючи ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_meshes>`

Повертає :ref:`Array<class_Array>` з двома елементами, перший – це :ref:`Transform3D<class_Transform3D>` цього вузла, а другий – корінь :ref:`Mesh<class_Mesh>` цього вузла. Працює лише тоді, коли цей вузол є кореневою фігурою.

\ **Примітка:** Оновлення даних сітки CSG відкладаються, тобто вони оновлюються із затримкою в один кадр візуалізації. Щоб уникнути отримання порожньої фігури або застарілих даних сітки, обов’язково викликайте ``await get_tree().process_frame`` перед використанням :ref:`get_meshes()<class_CSGShape3D_method_get_meshes>` у :ref:`Node._ready()<class_Node_private_method__ready>` або після зміни властивостей **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_is_root_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_root_shape**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_is_root_shape>`

Повертає ``true``, якщо це коренева форма і таким чином, об'єкт, який продається.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_layer_value>`

На основі ``value``, умикає чи вимикає зазначений шар в :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`, для ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_mask_value>`

На основі ``value``, умикає чи вимикає зазначений шар в :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`, для ``layer_number`` між 1 і 32.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
