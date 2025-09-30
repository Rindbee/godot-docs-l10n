:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/PhysicalBone2D.xml.

.. _class_PhysicalBone2D:

PhysicalBone2D
==============

**Наследует:** :ref:`RigidBody2D<class_RigidBody2D>` **<** :ref:`PhysicsBody2D<class_PhysicsBody2D>` **<** :ref:`CollisionObject2D<class_CollisionObject2D>` **<** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, производный от :ref:`RigidBody2D<class_RigidBody2D>`, используемый для того, чтобы заставить :ref:`Bone2D<class_Bone2D>` в :ref:`Skeleton2D<class_Skeleton2D>` реагировать на физику.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел **PhysicalBone2D** — это узел на основе :ref:`RigidBody2D<class_RigidBody2D>`, который можно использовать для того, чтобы :ref:`Bone2D<class_Bone2D>` в :ref:`Skeleton2D<class_Skeleton2D>` реагировали на физику.

\ **Примечание:** Чтобы :ref:`Bone2D<class_Bone2D>` визуально следовали за узлом **PhysicalBone2D**, используйте модификацию :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` в родительском :ref:`Skeleton2D<class_Skeleton2D>`.

\ **Примечание:** Узел **PhysicalBone2D** не создает автоматически узел :ref:`Joint2D<class_Joint2D>` для сохранения узлов **PhysicalBone2D** вместе. Их необходимо создавать вручную. В большинстве случаев следует использовать узел :ref:`PinJoint2D<class_PinJoint2D>`. Узел **PhysicalBone2D** автоматически настроит узел :ref:`Joint2D<class_Joint2D>` после его добавления в качестве дочернего узла.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`auto_configure_joint<class_PhysicalBone2D_property_auto_configure_joint>`               | ``true``         |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`bone2d_index<class_PhysicalBone2D_property_bone2d_index>`                               | ``-1``           |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`bone2d_nodepath<class_PhysicalBone2D_property_bone2d_nodepath>`                         | ``NodePath("")`` |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`follow_bone_when_simulating<class_PhysicalBone2D_property_follow_bone_when_simulating>` | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`simulate_physics<class_PhysicalBone2D_property_simulate_physics>`                       | ``false``        |
   +---------------------------------+-----------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`Joint2D<class_Joint2D>` | :ref:`get_joint<class_PhysicalBone2D_method_get_joint>`\ (\ ) |const|                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_simulating_physics<class_PhysicalBone2D_method_is_simulating_physics>`\ (\ ) |const| |
   +-------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PhysicalBone2D_property_auto_configure_joint:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_configure_joint** = ``true`` :ref:`🔗<class_PhysicalBone2D_property_auto_configure_joint>`

.. rst-class:: classref-property-setget

- |void| **set_auto_configure_joint**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_auto_configure_joint**\ (\ )

Если ``true``, **PhysicalBone2D** автоматически настроит первый дочерний узел :ref:`Joint2D<class_Joint2D>`. Автоматическая настройка ограничивается настройкой свойств узла и позиционированием :ref:`Joint2D<class_Joint2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone2d_index** = ``-1`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_index>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone2d_index**\ (\ )

Индекс :ref:`Bone2D<class_Bone2D>`, который должен моделировать **PhysicalBone2D**.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_bone2d_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **bone2d_nodepath** = ``NodePath("")`` :ref:`🔗<class_PhysicalBone2D_property_bone2d_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_bone2d_nodepath**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_bone2d_nodepath**\ (\ )

:ref:`NodePath<class_NodePath>` к :ref:`Bone2D<class_Bone2D>`, который должен имитировать **PhysicalBone2D**.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_follow_bone_when_simulating:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_bone_when_simulating** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_follow_bone_when_simulating>`

.. rst-class:: classref-property-setget

- |void| **set_follow_bone_when_simulating**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_follow_bone_when_simulating**\ (\ )

Если ``true``, **PhysicalBone2D** сохранит преобразование кости, к которой он привязан, при моделировании физики.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_property_simulate_physics:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **simulate_physics** = ``false`` :ref:`🔗<class_PhysicalBone2D_property_simulate_physics>`

.. rst-class:: classref-property-setget

- |void| **set_simulate_physics**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_simulate_physics**\ (\ )

Если ``true``, **PhysicalBone2D** начнет симуляцию с использованием физики. Если ``false``, **PhysicalBone2D** будет следовать преобразованию узла :ref:`Bone2D<class_Bone2D>`.

\ **Примечание:** Чтобы :ref:`Bone2D<class_Bone2D>` визуально следовали за **PhysicalBone2D**, используйте модификацию :ref:`SkeletonModification2DPhysicalBones<class_SkeletonModification2DPhysicalBones>` на узле :ref:`Skeleton2D<class_Skeleton2D>` с узлами :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PhysicalBone2D_method_get_joint:

.. rst-class:: classref-method

:ref:`Joint2D<class_Joint2D>` **get_joint**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_get_joint>`

Возвращает первый дочерний узел :ref:`Joint2D<class_Joint2D>`, если он существует. Это в основном вспомогательная функция, упрощающая получение :ref:`Joint2D<class_Joint2D>`, который **PhysicalBone2D** автоматически настраивает.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalBone2D_method_is_simulating_physics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_simulating_physics**\ (\ ) |const| :ref:`🔗<class_PhysicalBone2D_method_is_simulating_physics>`

Возвращает логическое значение, указывающее, запущен ли **PhysicalBone2D** и выполняет ли он симуляцию с использованием физического движка Godot 2D. Когда ``true``, узел PhysicalBone2D использует физику.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
