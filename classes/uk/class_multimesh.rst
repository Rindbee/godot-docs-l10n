:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMesh:

MultiMesh
=========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Забезпечує високопродуктивний малюнок сітки кілька разів за допомогою інсталяції GPU.

.. rst-class:: classref-introduction-group

Опис
--------

MultiMesh забезпечує знезараження сітки низького рівня. Нанесення тисяч вузлів :ref:`MeshInstance3D<class_MeshInstance3D>` може бути повільним, так як кожен об'єкт подається на GPU, після чого проводиться індивідуально.

MultiMesh набагато швидше, оскільки це може малювати тисячі екземплярів з одним викликом, що призводить до меншого API накладної.

Як недолік, якщо екземпляри занадто далеко один від одного, продуктивність може бути зменшена, оскільки кожен окремий екземпляр завжди буде рендером (і просторово індексований як один, для усього об'єкта).

Оскільки екземпляри можуть мати будь-яку поведінку, AABB, яка використовується для видимості, повинна бути надана користувачем.

\ **Примітка:** A MultiMesh є єдиним об'єктом, тому в той же самий максимальний світильник для обмеження об'єкта. Це означає, що один раз максимальні світильники споживають один або кілька екземплярів, інші екземпляри MultiMesh будуть ** не** отримувати будь-яке освітлення.

\ **Примітка:** Бленд Шапес ігнорується, якщо використовується в мультимеш.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання MultiMeshInstance <../tutorials/3d/using_multi_mesh_instance>`

- :doc:`Оптимізація за допомогою MultiMeshes <../tutorials/performance/using_multimesh>`

- :doc:`Анімація тисяч риб з м'яким <../tutorials/performance/vertex_animation/animating_thousands_of_fish>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>`                            | :ref:`buffer<class_MultiMesh_property_buffer>`                                               | ``PackedFloat32Array()``   |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`                                | :ref:`color_array<class_MultiMesh_property_color_array>`                                     |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                                                        | :ref:`custom_aabb<class_MultiMesh_property_custom_aabb>`                                     | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>`                                | :ref:`custom_data_array<class_MultiMesh_property_custom_data_array>`                         |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                                          | :ref:`instance_count<class_MultiMesh_property_instance_count>`                               | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Mesh<class_Mesh>`                                                        | :ref:`mesh<class_MultiMesh_property_mesh>`                                                   |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` | :ref:`physics_interpolation_quality<class_MultiMesh_property_physics_interpolation_quality>` | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                            | :ref:`transform_2d_array<class_MultiMesh_property_transform_2d_array>`                       |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`                            | :ref:`transform_array<class_MultiMesh_property_transform_array>`                             |                            |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`TransformFormat<enum_MultiMesh_TransformFormat>`                         | :ref:`transform_format<class_MultiMesh_property_transform_format>`                           | ``0``                      |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`use_colors<class_MultiMesh_property_use_colors>`                                       | ``false``                  |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                        | :ref:`use_custom_data<class_MultiMesh_property_use_custom_data>`                             | ``false``                  |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`int<class_int>`                                                          | :ref:`visible_instance_count<class_MultiMesh_property_visible_instance_count>`               | ``-1``                     |
   +--------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`               | :ref:`get_aabb<class_MultiMesh_method_get_aabb>`\ (\ ) |const|                                                                                                                                                             |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`get_instance_color<class_MultiMesh_method_get_instance_color>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                                       |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`             | :ref:`get_instance_custom_data<class_MultiMesh_method_get_instance_custom_data>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_instance_transform<class_MultiMesh_method_get_instance_transform>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                               |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`get_instance_transform_2d<class_MultiMesh_method_get_instance_transform_2d>`\ (\ instance\: :ref:`int<class_int>`\ ) |const|                                                                                         |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`reset_instance_physics_interpolation<class_MultiMesh_method_reset_instance_physics_interpolation>`\ (\ instance\: :ref:`int<class_int>`\ )                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`reset_instances_physics_interpolation<class_MultiMesh_method_reset_instances_physics_interpolation>`\ (\ )                                                                                                           |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_buffer_interpolated<class_MultiMesh_method_set_buffer_interpolated>`\ (\ buffer_curr\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, buffer_prev\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_color<class_MultiMesh_method_set_instance_color>`\ (\ instance\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ )                                                                            |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_custom_data<class_MultiMesh_method_set_instance_custom_data>`\ (\ instance\: :ref:`int<class_int>`, custom_data\: :ref:`Color<class_Color>`\ )                                                          |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_transform<class_MultiMesh_method_set_instance_transform>`\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ )                                                    |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`set_instance_transform_2d<class_MultiMesh_method_set_instance_transform_2d>`\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ )                                              |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_MultiMesh_TransformFormat:

.. rst-class:: classref-enumeration

enum **TransformFormat**: :ref:`🔗<enum_MultiMesh_TransformFormat>`

.. _class_MultiMesh_constant_TRANSFORM_2D:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **TRANSFORM_2D** = ``0``

Використовуйте це при використанні 2D трансформаторів.

.. _class_MultiMesh_constant_TRANSFORM_3D:

.. rst-class:: classref-enumeration-constant

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **TRANSFORM_3D** = ``1``

Використовуйте це при використанні трансформаторів 3D.

.. rst-class:: classref-item-separator

----

.. _enum_MultiMesh_PhysicsInterpolationQuality:

.. rst-class:: classref-enumeration

enum **PhysicsInterpolationQuality**: :ref:`🔗<enum_MultiMesh_PhysicsInterpolationQuality>`

.. _class_MultiMesh_constant_INTERP_QUALITY_FAST:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **INTERP_QUALITY_FAST** = ``0``

Завжди інтерполюйте з використанням Basis lerping, який у деяких ситуаціях може спричиняти артефакти викривлення.

.. _class_MultiMesh_constant_INTERP_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **INTERP_QUALITY_HIGH** = ``1``

Спробуйте виконати інтерполяцію за допомогою Basis slerping (сферична лінійна інтерполяція), де це можливо, інакше поверніться до lerping.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_MultiMesh_property_buffer:

.. rst-class:: classref-property

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **buffer** = ``PackedFloat32Array()`` :ref:`🔗<class_MultiMesh_property_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_buffer**\ (\ value\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )
- :ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_buffer**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedFloat32Array<class_PackedFloat32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_color_array:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **color_array** :ref:`🔗<class_MultiMesh_property_color_array>`

**Застаріло:** Accessing this property is very slow. Use :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>` and :ref:`get_instance_color()<class_MultiMesh_method_get_instance_color>` instead.

Арра, що містить кожну :ref:`Color<class_Color>`, яка використовується всіма екземплярами цієї сітки.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_MultiMesh_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Призначений для користувача AABB для цього багатомецького ресурсу. Налаштування цього вручну запобігає швидкому перерахунку AABB.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_custom_data_array:

.. rst-class:: classref-property

:ref:`PackedColorArray<class_PackedColorArray>` **custom_data_array** :ref:`🔗<class_MultiMesh_property_custom_data_array>`

**Застаріло:** Accessing this property is very slow. Use :ref:`set_instance_custom_data()<class_MultiMesh_method_set_instance_custom_data>` and :ref:`get_instance_custom_data()<class_MultiMesh_method_get_instance_custom_data>` instead.

Арра, що містить кожний на замовлення значення даних, що використовується всіма екземплярами цієї сітки, як :ref:`PackedColorArray<class_PackedColorArray>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedColorArray<class_PackedColorArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_instance_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **instance_count** = ``0`` :ref:`🔗<class_MultiMesh_property_instance_count>`

.. rst-class:: classref-property-setget

- |void| **set_instance_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instance_count**\ (\ )

Кількість екземплярів, які будуть намальовані. Це очищає і (re)розміри буферів. Налаштування форматів даних або прапорів після

За замовчуванням, всі екземпляри витягуються, але ви можете обмежити це з :ref:`visible_instance_count<class_MultiMesh_property_visible_instance_count>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_MultiMesh_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

:ref:`Mesh<class_Mesh>` ресурс для інстанції.

Перегляд окремих екземплярів можна змінити за допомогою :ref:`set_instance_color()<class_MultiMesh_method_set_instance_color>` та :ref:`_instance_custom_data()<class_MultiMesh_private_method__instance_custom_data>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_physics_interpolation_quality:

.. rst-class:: classref-property

:ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **physics_interpolation_quality** = ``0`` :ref:`🔗<class_MultiMesh_property_physics_interpolation_quality>`

.. rst-class:: classref-property-setget

- |void| **set_physics_interpolation_quality**\ (\ value\: :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>`\ )
- :ref:`PhysicsInterpolationQuality<enum_MultiMesh_PhysicsInterpolationQuality>` **get_physics_interpolation_quality**\ (\ )

Виберіть метод інтерполяції, що сприяє швидкості чи якості. 

Використовуючи низькі показники фізики (зазвичай нижче 20) або високі показники обертання об’єкта, ви можете отримати кращі результати завдяки високій якості. 

\ **Примітка. ** Швидка якість не означає низьку якість. За винятком особливих випадків, згаданих вище, якість має бути порівнянна з високою якістю.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_2d_array:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **transform_2d_array** :ref:`🔗<class_MultiMesh_property_transform_2d_array>`

**Застаріло:** Accessing this property is very slow. Use :ref:`set_instance_transform_2d()<class_MultiMesh_method_set_instance_transform_2d>` and :ref:`get_instance_transform_2d()<class_MultiMesh_method_get_instance_transform_2d>` instead.

Array, що містить кожний :ref:`Transform2D<class_Transform2D>` значення, що використовується всіма екземплярами цієї сітки, як :ref:`PackedVector2Array<class_PackedVector2Array>`. Кожен трансформатор ділиться на 3 :ref:`Vector2<class_Vector2>` значення, що відповідають трансформам ``x``, ``y``, і ``origin``.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_array:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **transform_array** :ref:`🔗<class_MultiMesh_property_transform_array>`

**Застаріло:** Accessing this property is very slow. Use :ref:`set_instance_transform()<class_MultiMesh_method_set_instance_transform>` and :ref:`get_instance_transform()<class_MultiMesh_method_get_instance_transform>` instead.

Array, що містить кожний :ref:`Transform3D<class_Transform3D>` значення, що використовується усіма екземплярами цієї сітки, як :ref:`PackedVector3Array<class_PackedVector3Array>`. Кожен трансформатор ділиться на 4 :ref:`Vector3<class_Vector3>` значення, що відповідають значенням трансформатора ``x``, ``y``, ``z``, і ``origin``.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_transform_format:

.. rst-class:: classref-property

:ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **transform_format** = ``0`` :ref:`🔗<class_MultiMesh_property_transform_format>`

.. rst-class:: classref-property-setget

- |void| **set_transform_format**\ (\ value\: :ref:`TransformFormat<enum_MultiMesh_TransformFormat>`\ )
- :ref:`TransformFormat<enum_MultiMesh_TransformFormat>` **get_transform_format**\ (\ )

Формат перетворення, що використовується для перетворення сітки, або 2D або 3D.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_use_colors:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_colors** = ``false`` :ref:`🔗<class_MultiMesh_property_use_colors>`

.. rst-class:: classref-property-setget

- |void| **set_use_colors**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_colors**\ (\ )

Якщо ``true``, то **MultiMesh** буде використовувати кольорові дані (див. :ref:`_instance_color()<class_MultiMesh_private_method__instance_color>`). ``0`` або менше. Це означає, що потрібно викликати цей метод перед встановленням кількості екземплярів або тимчасово скидати його на ``0``.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_use_custom_data:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_custom_data** = ``false`` :ref:`🔗<class_MultiMesh_property_use_custom_data>`

.. rst-class:: classref-property-setget

- |void| **set_use_custom_data**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_custom_data**\ (\ )

Якщо ``true``, то **MultiMesh** використовуватиме користувацькі дані (див. :ref:`_instance_custom_data()<class_MultiMesh_private_method__instance_custom_data>`). ``0`` або менше. Це означає, що потрібно викликати цей метод перед встановленням кількості екземплярів або тимчасово скидати його на ``0``.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_property_visible_instance_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **visible_instance_count** = ``-1`` :ref:`🔗<class_MultiMesh_property_visible_instance_count>`

.. rst-class:: classref-property-setget

- |void| **set_visible_instance_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_visible_instance_count**\ (\ )

Знімає кількість екземплярів, намальованих, -1 виводить всі екземпляри. Зміна розмірів буферів.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_MultiMesh_method_get_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_aabb**\ (\ ) |const| :ref:`🔗<class_MultiMesh_method_get_aabb>`

Повертає видимість вісь вирівнюється замика в локальному просторі.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_instance_color**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_color>`

Прискорює колірну множицю.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_custom_data:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_instance_custom_data**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_custom_data>`

Повернути спеціальні дані, які були встановлені для конкретного екземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_instance_transform**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_transform>`

Повернення :ref:`Transform3D<class_Transform3D>` конкретного екземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_get_instance_transform_2d:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **get_instance_transform_2d**\ (\ instance\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiMesh_method_get_instance_transform_2d>`

Повернення :ref:`Transform2D<class_Transform2D>` конкретного екземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_reset_instance_physics_interpolation:

.. rst-class:: classref-method

|void| **reset_instance_physics_interpolation**\ (\ instance\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiMesh_method_reset_instance_physics_interpolation>`

Під час використання *фізичної інтерполяції* ця функція дозволяє запобігти інтерполяції на екземплярі в поточному фізичному тику. 

Це дозволяє миттєво переміщувати екземпляри, і зазвичай його слід використовувати під час початкового розміщення екземпляра, наприклад кулі, щоб запобігти графічним збоям.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_reset_instances_physics_interpolation:

.. rst-class:: classref-method

|void| **reset_instances_physics_interpolation**\ (\ ) :ref:`🔗<class_MultiMesh_method_reset_instances_physics_interpolation>`

When using *physics interpolation*, this function allows you to prevent interpolation for all instances in the current physics tick.

This allows you to move all instances instantaneously, and should usually be used when initially placing instances to prevent graphical glitches.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_buffer_interpolated:

.. rst-class:: classref-method

|void| **set_buffer_interpolated**\ (\ buffer_curr\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, buffer_prev\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_MultiMesh_method_set_buffer_interpolated>`

Альтернатива встановленню властивості :ref:`buffer<class_MultiMesh_property_buffer>`, яку можна використовувати з *фізичною інтерполяцією*. Цей метод використовує два масиви та може встановити дані для поточного та попереднього тику за один раз. Програма візуалізації автоматично інтерполює дані в кожному кадрі. 

Це корисно для ситуацій, коли порядок екземплярів може змінюватися від тиканки до тиканки, наприклад у системах частинок. 

Коли порядок екземплярів узгоджений, простіший варіант налаштування :ref:`buffer<class_MultiMesh_property_buffer>` все ще може використовуватися з інтерполяцією.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_color:

.. rst-class:: classref-method

|void| **set_instance_color**\ (\ instance\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_color>`

Налаштовує колір конкретного екземпляра *multiplying* наявні вершини кольору сітки. Це дозволяє різним кольором настоюватися в екземплярі.

\ **Примітка:** Кожен компонент зберігається в 32 бітах в методах переадресації + та мобільного рендерингу, але упаковується в 16 біт в методі сумісності.

Для кольору, щоб прийняти ефект, переконайтеся, що :ref:`use_colors<class_MultiMesh_property_use_colors>` є ``true`` на **MultiMesh** і :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` ``true`` на матеріалі. Якщо ви хочете встановити абсолютний колір замість настоянки, переконайтеся, що матеріал альбедо колір встановлюється на чистий білий (``Color(1, 1, 1)``).

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_custom_data:

.. rst-class:: classref-method

|void| **set_instance_custom_data**\ (\ instance\: :ref:`int<class_int>`, custom_data\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_custom_data>`

Налаштовує спеціальні дані для конкретного екземпляра. ``Custom_data`` типу :ref:`Color<class_Color>` містить 4 плаваючі номери.

\ **Примітка:** Кожен номер зберігається в 32 бітах в методах переадресації + та мобільного рендерингу, але упаковується в 16 біт в методі сумісності.

Для спеціальних даних, які використовуються, переконайтеся, що :ref:`use_custom_data<class_MultiMesh_property_use_custom_data>` ``true``.

Цей користувальницький екземпляр даних має бути вручну доступним у користувальницьких шейкерах за допомогою ``INSTANCE_CUSTOM``.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_transform:

.. rst-class:: classref-method

|void| **set_instance_transform**\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_transform>`

Налаштовує :ref:`Transform3D<class_Transform3D>` для конкретного екземпляра.

.. rst-class:: classref-item-separator

----

.. _class_MultiMesh_method_set_instance_transform_2d:

.. rst-class:: classref-method

|void| **set_instance_transform_2d**\ (\ instance\: :ref:`int<class_int>`, transform\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_MultiMesh_method_set_instance_transform_2d>`

Налаштовує :ref:`Transform2D<class_Transform2D>` для конкретного екземпляра.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
