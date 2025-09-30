:github_url: hide

.. _class_SkeletonModification2DPhysicalBones:

SkeletonModification2DPhysicalBones
===================================

**Экспериментальное:** Physical bones may be changed in the future to perform the position update of :ref:`Bone2D<class_Bone2D>` on their own, without needing this resource.

**Наследует:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Модификация, которая применяет преобразования узлов :ref:`PhysicalBone2D<class_PhysicalBone2D>` к узлам :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Эта модификация берет преобразования узлов :ref:`PhysicalBone2D<class_PhysicalBone2D>` и применяет их к узлам :ref:`Bone2D<class_Bone2D>`. Это позволяет узлам :ref:`Bone2D<class_Bone2D>` реагировать на физику благодаря связанным узлам :ref:`PhysicalBone2D<class_PhysicalBone2D>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`physical_bone_chain_length<class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length>` | ``0`` |
   +-----------------------+------------------------------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`fetch_physical_bones<class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones>`\ (\ )                                                                                               |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_physical_bone_node<class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node>`\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const|                                                |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_physical_bone_node<class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node>`\ (\ joint_idx\: :ref:`int<class_int>`, physicalbone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`start_simulation<class_SkeletonModification2DPhysicalBones_method_start_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                        |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`stop_simulation<class_SkeletonModification2DPhysicalBones_method_stop_simulation>`\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ )                          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length:

.. rst-class:: classref-property

:ref:`int<class_int>` **physical_bone_chain_length** = ``0`` :ref:`🔗<class_SkeletonModification2DPhysicalBones_property_physical_bone_chain_length>`

.. rst-class:: classref-property-setget

- |void| **set_physical_bone_chain_length**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_physical_bone_chain_length**\ (\ )

Количество узлов :ref:`PhysicalBone2D<class_PhysicalBone2D>`, связанных в этой модификации.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones:

.. rst-class:: classref-method

|void| **fetch_physical_bones**\ (\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_fetch_physical_bones>`

Очищает список узлов :ref:`PhysicalBone2D<class_PhysicalBone2D>` и заполняет его всеми узлами :ref:`PhysicalBone2D<class_PhysicalBone2D>`, которые являются дочерними узлами :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_physical_bone_node**\ (\ joint_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_get_physical_bone_node>`

Возвращает узел :ref:`PhysicalBone2D<class_PhysicalBone2D>` в ``joint_idx``.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node:

.. rst-class:: classref-method

|void| **set_physical_bone_node**\ (\ joint_idx\: :ref:`int<class_int>`, physicalbone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_set_physical_bone_node>`

Устанавливает узел :ref:`PhysicalBone2D<class_PhysicalBone2D>` в ``joint_idx``.

\ **Примечание:** Это просто индекс, используемый для этой модификации, а не индекс кости, используемый в :ref:`Skeleton2D<class_Skeleton2D>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_start_simulation:

.. rst-class:: classref-method

|void| **start_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_start_simulation>`

Сообщите узлам :ref:`PhysicalBone2D<class_PhysicalBone2D>` начать симуляцию и взаимодействие с физическим миром.

При желании в эту функцию можно передать массив имен костей, и это приведет к тому, что только узлы :ref:`PhysicalBone2D<class_PhysicalBone2D>` с этими именами начнут симуляцию.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DPhysicalBones_method_stop_simulation:

.. rst-class:: classref-method

|void| **stop_simulation**\ (\ bones\: :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] = []\ ) :ref:`🔗<class_SkeletonModification2DPhysicalBones_method_stop_simulation>`

Сообщите узлам :ref:`PhysicalBone2D<class_PhysicalBone2D>` прекратить симуляцию и взаимодействие с физическим миром.

При желании в эту функцию можно передать массив имен костей, и это приведет к тому, что только узлы :ref:`PhysicalBone2D<class_PhysicalBone2D>` с этими именами прекратят симуляцию.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
