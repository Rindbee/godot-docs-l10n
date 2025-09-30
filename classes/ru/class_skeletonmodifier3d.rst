:github_url: hide

.. _class_SkeletonModifier3D:

SkeletonModifier3D
==================

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`BoneConstraint3D<class_BoneConstraint3D>`, :ref:`LookAtModifier3D<class_LookAtModifier3D>`, :ref:`ModifierBoneTarget3D<class_ModifierBoneTarget3D>`, :ref:`PhysicalBoneSimulator3D<class_PhysicalBoneSimulator3D>`, :ref:`RetargetModifier3D<class_RetargetModifier3D>`, :ref:`SkeletonIK3D<class_SkeletonIK3D>`, :ref:`SpringBoneSimulator3D<class_SpringBoneSimulator3D>`, :ref:`XRBodyModifier3D<class_XRBodyModifier3D>`, :ref:`XRHandModifier3D<class_XRHandModifier3D>`

Узел, который может модифицировать кости Skeleton3D.

.. rst-class:: classref-introduction-group

Описание
----------------

**SkeletonModifier3D** извлекает целевой :ref:`Skeleton3D<class_Skeleton3D>`, имея родителя :ref:`Skeleton3D<class_Skeleton3D>`.

Если есть :ref:`AnimationMixer<class_AnimationMixer>`, модификация всегда выполняется после процесса воспроизведения :ref:`AnimationMixer<class_AnimationMixer>`.

Этот узел следует использовать для реализации пользовательских решателей IK, ограничений или физики скелета.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Проектирование скелетного модификатора 3D <https://godotengine.org/article/design-of-the-skeleton-modifier-3d/>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`active<class_SkeletonModifier3D_property_active>`       | ``true`` |
   +---------------------------+---------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`influence<class_SkeletonModifier3D_property_influence>` | ``1.0``  |
   +---------------------------+---------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification<class_SkeletonModifier3D_private_method__process_modification>`\ (\ ) |virtual|                                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_process_modification_with_delta<class_SkeletonModifier3D_private_method__process_modification_with_delta>`\ (\ delta\: :ref:`float<class_float>`\ ) |virtual|                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_skeleton_changed<class_SkeletonModifier3D_private_method__skeleton_changed>`\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_validate_bone_names<class_SkeletonModifier3D_private_method__validate_bone_names>`\ (\ ) |virtual|                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_SkeletonModifier3D_method_get_skeleton>`\ (\ ) |const|                                                                                                                             |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_SkeletonModifier3D_signal_modification_processed:

.. rst-class:: classref-signal

**modification_processed**\ (\ ) :ref:`🔗<class_SkeletonModifier3D_signal_modification_processed>`

Уведомляет о завершении модификации.

\ **Примечание:** Если вы хотите получить измененную позу кости модификатором, вы должны использовать :ref:`Skeleton3D.get_bone_pose()<class_Skeleton3D_method_get_bone_pose>` или :ref:`Skeleton3D.get_bone_global_pose()<class_Skeleton3D_method_get_bone_global_pose>` в момент срабатывания этого сигнала.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_SkeletonModifier3D_BoneAxis:

.. rst-class:: classref-enumeration

enum **BoneAxis**: :ref:`🔗<enum_SkeletonModifier3D_BoneAxis>`

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_X** = ``0``

Перечисленное значение для оси +X.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_X:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_X** = ``1``

Перечисленное значение для оси -X.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Y** = ``2``

Перечисленное значение для оси +Y.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Y** = ``3``

Перечисленное значение для оси -Y.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_PLUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_PLUS_Z** = ``4``

Перечисленное значение для оси +Z.

.. _class_SkeletonModifier3D_constant_BONE_AXIS_MINUS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`BoneAxis<enum_SkeletonModifier3D_BoneAxis>` **BONE_AXIS_MINUS_Z** = ``5``

Перечисленное значение для оси -Z.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SkeletonModifier3D_property_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **active** = ``true`` :ref:`🔗<class_SkeletonModifier3D_property_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Если ``true``, то **SkeletonModifier3D** будет обработан.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_property_influence:

.. rst-class:: classref-property

:ref:`float<class_float>` **influence** = ``1.0`` :ref:`🔗<class_SkeletonModifier3D_property_influence>`

.. rst-class:: classref-property-setget

- |void| **set_influence**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_influence**\ (\ )

Устанавливает влияние модификации.

\ **Примечание:** Это значение используется :ref:`Skeleton3D<class_Skeleton3D>` для смешивания, поэтому **SkeletonModifier3D** всегда должен применять только 100% результата без интерполяции.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SkeletonModifier3D_private_method__process_modification:

.. rst-class:: classref-method

|void| **_process_modification**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification>`

**Устарело:** Use :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` instead.

Переопределите этот виртуальный метод, чтобы реализовать пользовательский модификатор скелета. Вам следует сделать что-то вроде получения текущей позы :ref:`Skeleton3D<class_Skeleton3D>` и применить позу здесь.

\ :ref:`_process_modification()<class_SkeletonModifier3D_private_method__process_modification>` не должен применять :ref:`influence<class_SkeletonModifier3D_property_influence>` к позам костей, поскольку :ref:`Skeleton3D<class_Skeleton3D>` автоматически применяет влияние ко всем позам костей, заданным модификатором.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__process_modification_with_delta:

.. rst-class:: classref-method

|void| **_process_modification_with_delta**\ (\ delta\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__process_modification_with_delta>`

Переопределите этот виртуальный метод для реализации пользовательского модификатора скелета. Вам следует сделать что-то вроде получения текущей позы :ref:`Skeleton3D<class_Skeleton3D>` и применить позу здесь.

\ :ref:`_process_modification_with_delta()<class_SkeletonModifier3D_private_method__process_modification_with_delta>` не должен применять :ref:`influence<class_SkeletonModifier3D_property_influence>` к позам костей, поскольку :ref:`Skeleton3D<class_Skeleton3D>` автоматически применяет влияние ко всем позам костей, заданным модификатором.

\ ``delta`` передается из родительского :ref:`Skeleton3D<class_Skeleton3D>`. См. также :ref:`Skeleton3D.advance()<class_Skeleton3D_method_advance>`.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__skeleton_changed:

.. rst-class:: classref-method

|void| **_skeleton_changed**\ (\ old_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`, new_skeleton\: :ref:`Skeleton3D<class_Skeleton3D>`\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__skeleton_changed>`

Вызывается при изменении скелета.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_private_method__validate_bone_names:

.. rst-class:: classref-method

|void| **_validate_bone_names**\ (\ ) |virtual| :ref:`🔗<class_SkeletonModifier3D_private_method__validate_bone_names>`

Вызывается, когда необходимо проверить имя и индекс кости, например, время входа в дерево или изменение скелета.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModifier3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkeletonModifier3D_method_get_skeleton>`

Получить родительский узел :ref:`Skeleton3D<class_Skeleton3D>`, если он найден.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
