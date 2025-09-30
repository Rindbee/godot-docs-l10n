:github_url: hide

.. _class_OpenXRHand:

OpenXRHand
==========

**Устарело:** Use :ref:`XRHandModifier3D<class_XRHandModifier3D>` instead.

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, поддерживающий отслеживание рук и пальцев в OpenXR.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот узел включает функцию отслеживания рук OpenXR. Узел должен быть дочерним узлом узла :ref:`XROrigin3D<class_XROrigin3D>`, отслеживание обновит его положение в соответствии с отслеживаемым положением сустава ладони руки игрока (центр пястной кости среднего пальца). Этот узел также обновляет скелет правильно скинированной руки или модели аватара.

Если скелет — это рука (одна из костей руки — корневой узел скелета), то скелет будет размещен относительно положения ладони руки, а сетка руки и скелет должны быть дочерними узлами OpenXRHand.

Если кости руки являются частью полного скелета, то корень руки сохранит свое местоположение с предположением, что для позиционирования руки и руки используется IK.

По умолчанию кости скелета руки изменяются в соответствии с размером отслеживаемой руки. Чтобы сохранить смоделированные размеры костей, измените :ref:`bone_update<class_OpenXRHand_property_bone_update>` на применение только вращения.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+---------------------------------------------------------------+------------------+
   | :ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>`   | :ref:`bone_update<class_OpenXRHand_property_bone_update>`     | ``0``            |
   +-------------------------------------------------+---------------------------------------------------------------+------------------+
   | :ref:`Hands<enum_OpenXRHand_Hands>`             | :ref:`hand<class_OpenXRHand_property_hand>`                   | ``0``            |
   +-------------------------------------------------+---------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`                 | :ref:`hand_skeleton<class_OpenXRHand_property_hand_skeleton>` | ``NodePath("")`` |
   +-------------------------------------------------+---------------------------------------------------------------+------------------+
   | :ref:`MotionRange<enum_OpenXRHand_MotionRange>` | :ref:`motion_range<class_OpenXRHand_property_motion_range>`   | ``0``            |
   +-------------------------------------------------+---------------------------------------------------------------+------------------+
   | :ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` | :ref:`skeleton_rig<class_OpenXRHand_property_skeleton_rig>`   | ``0``            |
   +-------------------------------------------------+---------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_OpenXRHand_Hands:

.. rst-class:: classref-enumeration

enum **Hands**: :ref:`🔗<enum_OpenXRHand_Hands>`

.. _class_OpenXRHand_constant_HAND_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Hands<enum_OpenXRHand_Hands>` **HAND_LEFT** = ``0``

Отслеживание левой руки игрока.

.. _class_OpenXRHand_constant_HAND_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Hands<enum_OpenXRHand_Hands>` **HAND_RIGHT** = ``1``

Отслеживание правой руки игрока.

.. _class_OpenXRHand_constant_HAND_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hands<enum_OpenXRHand_Hands>` **HAND_MAX** = ``2``

Максимально поддерживаемые руки.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRHand_MotionRange:

.. rst-class:: classref-enumeration

enum **MotionRange**: :ref:`🔗<enum_OpenXRHand_MotionRange>`

.. _class_OpenXRHand_constant_MOTION_RANGE_UNOBSTRUCTED:

.. rst-class:: classref-enumeration-constant

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **MOTION_RANGE_UNOBSTRUCTED** = ``0``

При захвате скелет руки игрока сформирует полный кулак.

.. _class_OpenXRHand_constant_MOTION_RANGE_CONFORM_TO_CONTROLLER:

.. rst-class:: classref-enumeration-constant

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **MOTION_RANGE_CONFORM_TO_CONTROLLER** = ``1``

Когда игрок держит контроллер, скелет руки принимает форму контроллера, который он держит.

.. _class_OpenXRHand_constant_MOTION_RANGE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **MOTION_RANGE_MAX** = ``2``

Максимально поддерживаемые диапазоны движения.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRHand_SkeletonRig:

.. rst-class:: classref-enumeration

enum **SkeletonRig**: :ref:`🔗<enum_OpenXRHand_SkeletonRig>`

.. _class_OpenXRHand_constant_SKELETON_RIG_OPENXR:

.. rst-class:: classref-enumeration-constant

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **SKELETON_RIG_OPENXR** = ``0``

Скелет, совместимый с OpenXR.

.. _class_OpenXRHand_constant_SKELETON_RIG_HUMANOID:

.. rst-class:: classref-enumeration-constant

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **SKELETON_RIG_HUMANOID** = ``1``

Скелет, соответствующий :ref:`SkeletonProfileHumanoid<class_SkeletonProfileHumanoid>`.

.. _class_OpenXRHand_constant_SKELETON_RIG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **SKELETON_RIG_MAX** = ``2``

Максимально поддерживаемые руки.

.. rst-class:: classref-item-separator

----

.. _enum_OpenXRHand_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_OpenXRHand_BoneUpdate>`

.. _class_OpenXRHand_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

Кости скелета полностью обновлены (как положение, так и поворот) для соответствия отслеживаемым костям.

.. _class_OpenXRHand_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

Кости скелета поворачиваются только для того, чтобы выровняться с отслеживаемыми костями, сохраняя длину костей.

.. _class_OpenXRHand_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

Максимально поддерживаемый режим обновления костей.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OpenXRHand_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_OpenXRHand_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_OpenXRHand_BoneUpdate>` **get_bone_update**\ (\ )

Укажите тип обновлений, которые необходимо выполнить для кости.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_hand:

.. rst-class:: classref-property

:ref:`Hands<enum_OpenXRHand_Hands>` **hand** = ``0`` :ref:`🔗<class_OpenXRHand_property_hand>`

.. rst-class:: classref-property-setget

- |void| **set_hand**\ (\ value\: :ref:`Hands<enum_OpenXRHand_Hands>`\ )
- :ref:`Hands<enum_OpenXRHand_Hands>` **get_hand**\ (\ )

Указывает, отслеживает ли этот узел левую или правую руку игрока.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_hand_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **hand_skeleton** = ``NodePath("")`` :ref:`🔗<class_OpenXRHand_property_hand_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_hand_skeleton**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_hand_skeleton**\ (\ )

Установите узел :ref:`Skeleton3D<class_Skeleton3D>`, для которого будут обновлены положения поз.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_motion_range:

.. rst-class:: classref-property

:ref:`MotionRange<enum_OpenXRHand_MotionRange>` **motion_range** = ``0`` :ref:`🔗<class_OpenXRHand_property_motion_range>`

.. rst-class:: classref-property-setget

- |void| **set_motion_range**\ (\ value\: :ref:`MotionRange<enum_OpenXRHand_MotionRange>`\ )
- :ref:`MotionRange<enum_OpenXRHand_MotionRange>` **get_motion_range**\ (\ )

Установите диапазон движения (если поддерживается), ограничивающий движение руки.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHand_property_skeleton_rig:

.. rst-class:: classref-property

:ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **skeleton_rig** = ``0`` :ref:`🔗<class_OpenXRHand_property_skeleton_rig>`

.. rst-class:: classref-property-setget

- |void| **set_skeleton_rig**\ (\ value\: :ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>`\ )
- :ref:`SkeletonRig<enum_OpenXRHand_SkeletonRig>` **get_skeleton_rig**\ (\ )

Установите тип скелетной оснастки, с которой совместим :ref:`hand_skeleton<class_OpenXRHand_property_hand_skeleton>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
