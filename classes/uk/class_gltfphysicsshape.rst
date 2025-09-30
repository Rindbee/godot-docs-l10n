:github_url: hide

.. _class_GLTFPhysicsShape:

GLTFPhysicsShape
================

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляє фізичну форму glTF.

.. rst-class:: classref-introduction-group

Опис
--------

Представляє фізичну форму, як визначено розширеннями glTF ``OMI_physics_shape`` або ``OMI_collider``. Цей клас є посередником між даними glTF і вузлами Godot, і він абстрагований таким чином, що дозволяє додавати підтримку для різних розширень фізики glTF у майбутньому.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Завантаження та збереження файлів під час виконання <../tutorials/io/runtime_file_loading_and_saving>`

- `Розширення OMI_physics_shape glTF <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_shape>`__

- `Розширення OMI_collider glTF <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/Archived/OMI_collider>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`               | :ref:`height<class_GLTFPhysicsShape_property_height>`               | ``2.0``              |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`ImporterMesh<class_ImporterMesh>` | :ref:`importer_mesh<class_GLTFPhysicsShape_property_importer_mesh>` |                      |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                 | :ref:`is_trigger<class_GLTFPhysicsShape_property_is_trigger>`       | ``false``            |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                   | :ref:`mesh_index<class_GLTFPhysicsShape_property_mesh_index>`       | ``-1``               |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`               | :ref:`radius<class_GLTFPhysicsShape_property_radius>`               | ``0.5``              |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`String<class_String>`             | :ref:`shape_type<class_GLTFPhysicsShape_property_shape_type>`       | ``""``               |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`           | :ref:`size<class_GLTFPhysicsShape_property_size>`                   | ``Vector3(1, 1, 1)`` |
   +-----------------------------------------+---------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_dictionary<class_GLTFPhysicsShape_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_node<class_GLTFPhysicsShape_method_from_node>`\ (\ shape_node\: :ref:`CollisionShape3D<class_CollisionShape3D>`\ ) |static| |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` | :ref:`from_resource<class_GLTFPhysicsShape_method_from_resource>`\ (\ shape_resource\: :ref:`Shape3D<class_Shape3D>`\ ) |static|       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`             | :ref:`to_dictionary<class_GLTFPhysicsShape_method_to_dictionary>`\ (\ ) |const|                                                        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CollisionShape3D<class_CollisionShape3D>` | :ref:`to_node<class_GLTFPhysicsShape_method_to_node>`\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ )                            |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Shape3D<class_Shape3D>`                   | :ref:`to_resource<class_GLTFPhysicsShape_method_to_resource>`\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ )                    |
   +-------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GLTFPhysicsShape_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_GLTFPhysicsShape_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Висота фігури в метрах. Використовується лише тоді, коли тип фігури — ``"капсула"`` або ``"циліндр"``. Це значення не повинно бути від'ємним, а для ``"капсули"`` воно має бути щонайменше вдвічі більшим за радіус.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_importer_mesh:

.. rst-class:: classref-property

:ref:`ImporterMesh<class_ImporterMesh>` **importer_mesh** :ref:`🔗<class_GLTFPhysicsShape_property_importer_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_importer_mesh**\ (\ value\: :ref:`ImporterMesh<class_ImporterMesh>`\ )
- :ref:`ImporterMesh<class_ImporterMesh>` **get_importer_mesh**\ (\ )

Ресурс :ref:`ImporterMesh<class_ImporterMesh>` фігури. Використовується лише тоді, коли тип фігури — ``"hull"`` (опукла оболонка) або ``"trimesh"`` (увігнута trimesh).

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_is_trigger:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_trigger** = ``false`` :ref:`🔗<class_GLTFPhysicsShape_property_is_trigger>`

.. rst-class:: classref-property-setget

- |void| **set_is_trigger**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_trigger**\ (\ )

Якщо ``true``, це означає, що ця фігура є тригером. Для Godot це означає, що фігура має бути дочірньою для вузла :ref:`Area3D<class_Area3D>`.

Це єдина змінна, яка не використовується в методі :ref:`to_node()<class_GLTFPhysicsShape_method_to_node>`, вона призначена для використання разом із ним під час визначення місця додавання згенерованого вузла як дочірнього.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_mesh_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **mesh_index** = ``-1`` :ref:`🔗<class_GLTFPhysicsShape_property_mesh_index>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mesh_index**\ (\ )

Індекс сітки фігури у файлі glTF. Використовується лише тоді, коли тип фігури — ``"hull"`` (опукла оболонка) або ``"trimesh"`` (увігнута trimesh).

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_GLTFPhysicsShape_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радіус фігури в метрах. Використовується лише тоді, коли тип фігури — ``"капсула"``, ``"циліндр"`` або ``"сфера"``. Це значення не повинно бути від'ємним.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_shape_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **shape_type** = ``""`` :ref:`🔗<class_GLTFPhysicsShape_property_shape_type>`

.. rst-class:: classref-property-setget

- |void| **set_shape_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_shape_type**\ (\ )

Тип фігури, яку представляє ця фігура. Дійсні значення: ``"box"``, ``"capsule"``, ``"cylinder"``, ``"sphere"``, ``"hull"`` та ``"trimesh"``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_GLTFPhysicsShape_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Розмір фігури в метрах. Використовується лише тоді, коли тип фігури — ``"коробка"``, і представляє ``"діаметр"`` коробки. Це значення не повинно бути від'ємним.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GLTFPhysicsShape_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_dictionary>`

Створення нової GLTFPhysics Форма екземпляра при парсингу даної :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_node**\ (\ shape_node\: :ref:`CollisionShape3D<class_CollisionShape3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_node>`

Створення нової GLTFPhysics Форма екземпляра з даної Godot :ref:`CollisionShape3D<class_CollisionShape3D>` вершина.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_from_resource:

.. rst-class:: classref-method

:ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>` **from_resource**\ (\ shape_resource\: :ref:`Shape3D<class_Shape3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsShape_method_from_resource>`

Створення нової GLTFPhysics Форма екземпляра з даного ресурсу Godot :ref:`Shape3D<class_Shape3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsShape_method_to_dictionary>`

Серіалізувати цю GLTFPhysics У форматі, визначеному ``OMI_physics_shape``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_node:

.. rst-class:: classref-method

:ref:`CollisionShape3D<class_CollisionShape3D>` **to_node**\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GLTFPhysicsShape_method_to_node>`

Перетворення цієї GLTFPhysics Форма екземпляра в вузол Godot :ref:`CollisionShape3D<class_CollisionShape3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsShape_method_to_resource:

.. rst-class:: classref-method

:ref:`Shape3D<class_Shape3D>` **to_resource**\ (\ cache_shapes\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GLTFPhysicsShape_method_to_resource>`

Перетворення цієї GLTFPhysics Форма інстанції в Godot :ref:`Shape3D<class_Shape3D>` ресурс.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
