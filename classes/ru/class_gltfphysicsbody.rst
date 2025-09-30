:github_url: hide

.. _class_GLTFPhysicsBody:

GLTFPhysicsBody
===============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет собой физическое тело glTF.

.. rst-class:: classref-introduction-group

Описание
----------------

Представляет физическое тело как посредник между данными glTF ``OMI_physics_body`` и узлами Годо, и оно абстрагировано таким образом, что позволяет добавлять поддержку различных расширений физики glTF в будущем.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Загрузка и сохранение файла времени выполнения <../tutorials/io/runtime_file_loading_and_saving>`

- `Расширение OMI_physics_body glTF <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_body>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`angular_velocity<class_GLTFPhysicsBody_property_angular_velocity>`       | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`String<class_String>`         | :ref:`body_type<class_GLTFPhysicsBody_property_body_type>`                     | ``"rigid"``                          |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`center_of_mass<class_GLTFPhysicsBody_property_center_of_mass>`           | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`inertia_diagonal<class_GLTFPhysicsBody_property_inertia_diagonal>`       | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`inertia_orientation<class_GLTFPhysicsBody_property_inertia_orientation>` | ``Quaternion(0, 0, 0, 1)``           |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`inertia_tensor<class_GLTFPhysicsBody_property_inertia_tensor>`           | ``Basis(0, 0, 0, 0, 0, 0, 0, 0, 0)`` |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`linear_velocity<class_GLTFPhysicsBody_property_linear_velocity>`         | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`           | :ref:`mass<class_GLTFPhysicsBody_property_mass>`                               | ``1.0``                              |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`     | :ref:`from_dictionary<class_GLTFPhysicsBody_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`     | :ref:`from_node<class_GLTFPhysicsBody_method_from_node>`\ (\ body_node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) |static| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`to_dictionary<class_GLTFPhysicsBody_method_to_dictionary>`\ (\ ) |const|                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CollisionObject3D<class_CollisionObject3D>` | :ref:`to_node<class_GLTFPhysicsBody_method_to_node>`\ (\ ) |const|                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GLTFPhysicsBody_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

Угловая скорость физического тела в радианах в секунду. Используется только в случае, если тип тела — «rigid» или «vehicle».

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_body_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **body_type** = ``"rigid"`` :ref:`🔗<class_GLTFPhysicsBody_property_body_type>`

.. rst-class:: classref-property-setget

- |void| **set_body_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_body_type**\ (\ )

Тип тела.

При импорте это управляет тем, какой тип узла :ref:`CollisionObject3D<class_CollisionObject3D>` Godot должен генерировать. Допустимые значения: ``"static"``, ``"animatable"``, ``"character"``, ``"rigid"``, ``"vehicle"`` и ``"trigger"``.

При экспорте это будет сжато до одного из типов движения ``"static"``, ``"kinematic"`` или ``"dynamic"`` или свойства ``"trigger"``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_center_of_mass**\ (\ )

Центр масс тела в метрах. Это в локальном пространстве относительно тела. По умолчанию центр масс — это начало координат тела.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_diagonal:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **inertia_diagonal** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_diagonal>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_diagonal**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_inertia_diagonal**\ (\ )

Сила инерции физического тела в килограммах на метр в квадрате (кг⋅м²). Это представляет инерцию вокруг главных осей, диагональ матрицы тензора инерции. Используется только в том случае, если тип тела «rigid» или «vehicle».

При преобразовании в узел Godot :ref:`RigidBody3D<class_RigidBody3D>`, если это значение равно нулю, инерция будет рассчитана автоматически.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_orientation:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **inertia_orientation** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_orientation**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_inertia_orientation**\ (\ )

Ориентация инерции физического тела. Определяет вращение главных осей инерции относительно локальных осей объекта. Используется только в том случае, если тип тела — «rigid» или «vehicle», а :ref:`inertia_diagonal<class_GLTFPhysicsBody_property_inertia_diagonal>` имеет ненулевое значение.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_tensor:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **inertia_tensor** = ``Basis(0, 0, 0, 0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_tensor>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_tensor**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_inertia_tensor**\ (\ )

**Устарело:** Это свойство может быть изменено или удалено в будущих версиях.

Тензор инерции физического тела в килограммах на метр в квадрате (кг⋅м²). Используется только в том случае, если тип тела — «rigid» или «vehicle».

При преобразовании в узел Godot :ref:`RigidBody3D<class_RigidBody3D>`, если это значение равно нулю, инерция будет рассчитана автоматически.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

Линейная скорость физического тела в метрах в секунду. Используется только в случае, если тип тела — «rigid» или «vehicle».

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_GLTFPhysicsBody_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

Масса физического тела в килограммах. Используется только в случае, если тип тела — «rigid» или «vehicle».

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GLTFPhysicsBody_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFPhysicsBody_method_from_dictionary>`

Создает новый экземпляр GLTFPhysicsBody путем анализа указанного :ref:`Dictionary<class_Dictionary>` в формате расширения ``OMI_physics_body`` glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>` **from_node**\ (\ body_node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsBody_method_from_node>`

Создает новый экземпляр GLTFPhysicsBody из заданного узла Godot :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsBody_method_to_dictionary>`

Сериализует этот экземпляр GLTFPhysicsBody в :ref:`Dictionary<class_Dictionary>`. Он будет в формате, ожидаемом расширением ``OMI_physics_body`` glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_to_node:

.. rst-class:: classref-method

:ref:`CollisionObject3D<class_CollisionObject3D>` **to_node**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsBody_method_to_node>`

Преобразует этот экземпляр GLTFPhysicsBody в узел Godot :ref:`CollisionObject3D<class_CollisionObject3D>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
