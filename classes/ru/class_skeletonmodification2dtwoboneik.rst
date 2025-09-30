:github_url: hide

.. _class_SkeletonModification2DTwoBoneIK:

SkeletonModification2DTwoBoneIK
===============================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Модификация, которая вращает две кости, используя закон косинусов, чтобы достичь цели.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот :ref:`SkeletonModification2D<class_SkeletonModification2D>` использует алгоритм, обычно называемый TwoBoneIK. Этот алгоритм работает, используя закон косинусов и длины костей, чтобы выяснить, какое вращение имеют кости в данный момент, и какое вращение им нужно, чтобы составить полный треугольник, где первая кость, вторая кость и цель образуют три вершины треугольника. Поскольку алгоритм работает, создавая треугольник, он может работать только с двумя костями.

TwoBoneIK отлично подходит для рук, ног и любых суставов, которые можно представить всего двумя костями, которые сгибаются, чтобы достичь цели. Этот решатель более легкий, чем :ref:`SkeletonModification2DFABRIK<class_SkeletonModification2DFABRIK>`, но дает похожие, естественно выглядящие результаты.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_bend_direction<class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction>`         | ``false``        |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`target_maximum_distance<class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance>` | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`target_minimum_distance<class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance>` | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`target_nodepath<class_SkeletonModification2DTwoBoneIK_property_target_nodepath>`                 | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_joint_one_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node>`\ (\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_joint_one_bone_idx<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx>`\ (\ ) |const|                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_joint_two_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node>`\ (\ ) |const|                                        |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_joint_two_bone_idx<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx>`\ (\ ) |const|                                              |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_one_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node>`\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_one_bone_idx<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_two_bone2d_node<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node>`\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_joint_two_bone_idx<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx>`\ (\ bone_idx\: :ref:`int<class_int>`\ )                    |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_bend_direction** = ``false`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_flip_bend_direction>`

.. rst-class:: classref-property-setget

- |void| **set_flip_bend_direction**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_bend_direction**\ (\ )

Если ``true``, кости в модификации будут изгибаться наружу, а не внутрь при сокращении. Если ``false``, кости будут изгибаться внутрь при сокращении.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_maximum_distance** = ``0.0`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_maximum_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_maximum_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_maximum_distance**\ (\ )

Максимальное расстояние, на котором может находиться цель. Если цель находится дальше этого расстояния, модификация будет решаться так, как будто она находится на этом максимальном расстоянии. Если установлено значение ``0``, модификация будет решаться без ограничений по расстоянию.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **target_minimum_distance** = ``0.0`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_minimum_distance>`

.. rst-class:: classref-property-setget

- |void| **set_target_minimum_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_target_minimum_distance**\ (\ )

Минимальное расстояние, на котором может находиться цель. Если цель находится ближе этого расстояния, модификация будет решаться так, как будто она находится на этом минимальном расстоянии. Если установлено значение ``0``, модификация будет решаться без ограничений по расстоянию.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_property_target_nodepath:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **target_nodepath** = ``NodePath("")`` :ref:`🔗<class_SkeletonModification2DTwoBoneIK_property_target_nodepath>`

.. rst-class:: classref-property-setget

- |void| **set_target_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_target_node**\ (\ )

NodePath к узлу, который является целью модификации TwoBoneIK. Этот узел будет использоваться модификацией при изгибе узлов :ref:`Bone2D<class_Bone2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_joint_one_bone2d_node**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone2d_node>`

Возвращает узел :ref:`Bone2D<class_Bone2D>`, который используется в качестве первой кости в модификации TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_one_bone_idx**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_one_bone_idx>`

Возвращает индекс узла :ref:`Bone2D<class_Bone2D>`, который используется в качестве первой кости в модификации TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_joint_two_bone2d_node**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone2d_node>`

Возвращает узел :ref:`Bone2D<class_Bone2D>`, который используется как вторая кость в модификации TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_joint_two_bone_idx**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_get_joint_two_bone_idx>`

Возвращает индекс узла :ref:`Bone2D<class_Bone2D>`, который используется в качестве второй кости в модификации TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node:

.. rst-class:: classref-method

|void| **set_joint_one_bone2d_node**\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone2d_node>`

Устанавливает узел :ref:`Bone2D<class_Bone2D>`, который используется в качестве первой кости в модификации TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx:

.. rst-class:: classref-method

|void| **set_joint_one_bone_idx**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_one_bone_idx>`

Устанавливает индекс узла :ref:`Bone2D<class_Bone2D>`, который используется в качестве первой кости в модификации TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node:

.. rst-class:: classref-method

|void| **set_joint_two_bone2d_node**\ (\ bone2d_node\: :ref:`NodePath<class_NodePath>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone2d_node>`

Устанавливает узел :ref:`Bone2D<class_Bone2D>`, который используется в качестве второй кости в модификации TwoBoneIK.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx:

.. rst-class:: classref-method

|void| **set_joint_two_bone_idx**\ (\ bone_idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_SkeletonModification2DTwoBoneIK_method_set_joint_two_bone_idx>`

Устанавливает индекс узла :ref:`Bone2D<class_Bone2D>`, который используется в качестве второй кости в модификации TwoBoneIK.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
