:github_url: hide

.. _class_XRHandModifier3D:

XRHandModifier3D
================

**Наследует:** :ref:`SkeletonModifier3D<class_SkeletonModifier3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел для управления ручными сетками на основе данных :ref:`XRHandTracker<class_XRHandTracker>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот узел использует данные отслеживания руки из :ref:`XRHandTracker<class_XRHandTracker>` для позиционирования скелета сетки руки.

Позиционирование рук выполняется путем создания предка :ref:`XRNode3D<class_XRNode3D>` сетки руки, управляемого тем же :ref:`XRHandTracker<class_XRHandTracker>`.

Данные о положении отслеживания руки масштабируются :ref:`Skeleton3D.motion_scale<class_Skeleton3D_property_motion_scale>` при применении к скелету, что может использоваться для настройки отслеживаемой руки в соответствии с масштабом модели руки.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс документации XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+
   | :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` | :ref:`bone_update<class_XRHandModifier3D_property_bone_update>`   | ``0``                          |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+
   | :ref:`StringName<class_StringName>`                 | :ref:`hand_tracker<class_XRHandModifier3D_property_hand_tracker>` | ``&"/user/hand_tracker/left"`` |
   +-----------------------------------------------------+-------------------------------------------------------------------+--------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_XRHandModifier3D_BoneUpdate:

.. rst-class:: classref-enumeration

enum **BoneUpdate**: :ref:`🔗<enum_XRHandModifier3D_BoneUpdate>`

.. _class_XRHandModifier3D_constant_BONE_UPDATE_FULL:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_FULL** = ``0``

Кости скелета полностью обновлены (как положение, так и поворот) для соответствия отслеживаемым костям.

.. _class_XRHandModifier3D_constant_BONE_UPDATE_ROTATION_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_ROTATION_ONLY** = ``1``

Кости скелета поворачиваются только для того, чтобы выровняться с отслеживаемыми костями, сохраняя длину костей.

.. _class_XRHandModifier3D_constant_BONE_UPDATE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **BONE_UPDATE_MAX** = ``2``

Представляет размер перечисления :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_XRHandModifier3D_property_bone_update:

.. rst-class:: classref-property

:ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **bone_update** = ``0`` :ref:`🔗<class_XRHandModifier3D_property_bone_update>`

.. rst-class:: classref-property-setget

- |void| **set_bone_update**\ (\ value\: :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>`\ )
- :ref:`BoneUpdate<enum_XRHandModifier3D_BoneUpdate>` **get_bone_update**\ (\ )

Указывает тип обновлений, которые следует выполнять для костей.

.. rst-class:: classref-item-separator

----

.. _class_XRHandModifier3D_property_hand_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **hand_tracker** = ``&"/user/hand_tracker/left"`` :ref:`🔗<class_XRHandModifier3D_property_hand_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_hand_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_hand_tracker**\ (\ )

Имя :ref:`XRHandTracker<class_XRHandTracker>`, зарегистрированное на :ref:`XRServer<class_XRServer>`, для получения данных отслеживания рук.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
