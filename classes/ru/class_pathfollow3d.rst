:github_url: hide

.. _class_PathFollow3D:

PathFollow3D
============

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Точечный сэмплер для :ref:`Path3D<class_Path3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот узел берет свой родительский :ref:`Path3D<class_Path3D>` и возвращает координаты точки внутри него, учитывая расстояние от первой вершины.

Это полезно для того, чтобы заставить другие узлы следовать по пути, без кодирования шаблона движения. Для этого узлы должны быть дочерними по отношению к этому узлу. Узлы-потомки затем будут двигаться соответственно при установке :ref:`progress<class_PathFollow3D_property_progress>` в этом узле.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`cubic_interp<class_PathFollow3D_property_cubic_interp>`       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`h_offset<class_PathFollow3D_property_h_offset>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`loop<class_PathFollow3D_property_loop>`                       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`progress<class_PathFollow3D_property_progress>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`progress_ratio<class_PathFollow3D_property_progress_ratio>`   | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`RotationMode<enum_PathFollow3D_RotationMode>` | :ref:`rotation_mode<class_PathFollow3D_property_rotation_mode>`     | ``3``     |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`tilt_enabled<class_PathFollow3D_property_tilt_enabled>`       | ``true``  |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                             | :ref:`use_model_front<class_PathFollow3D_property_use_model_front>` | ``false`` |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                           | :ref:`v_offset<class_PathFollow3D_property_v_offset>`               | ``0.0``   |
   +-----------------------------------------------------+---------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`correct_posture<class_PathFollow3D_method_correct_posture>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, rotation_mode\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ ) |static| |
   +---------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_PathFollow3D_RotationMode:

.. rst-class:: classref-enumeration

enum **RotationMode**: :ref:`🔗<enum_PathFollow3D_RotationMode>`

.. _class_PathFollow3D_constant_ROTATION_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_NONE** = ``0``

Запрещает PathFollow3D вращаться.

.. _class_PathFollow3D_constant_ROTATION_Y:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_Y** = ``1``

Позволяет PathFollow3D вращаться только по оси Y.

.. _class_PathFollow3D_constant_ROTATION_XY:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_XY** = ``2``

Позволяет PathFollow3D вращаться по осям X и Y.

.. _class_PathFollow3D_constant_ROTATION_XYZ:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_XYZ** = ``3``

Позволяет PathFollow3D вращаться вокруг любой оси.

.. _class_PathFollow3D_constant_ROTATION_ORIENTED:

.. rst-class:: classref-enumeration-constant

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **ROTATION_ORIENTED** = ``4``

Использует информацию о векторе вверх в :ref:`Curve3D<class_Curve3D>` для обеспечения ориентации. Этот режим вращения требует, чтобы свойство :ref:`Curve3D.up_vector_enabled<class_Curve3D_property_up_vector_enabled>` :ref:`Path3D<class_Path3D>` было установлено в ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_PathFollow3D_property_cubic_interp:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cubic_interp** = ``true`` :ref:`🔗<class_PathFollow3D_property_cubic_interp>`

.. rst-class:: classref-property-setget

- |void| **set_cubic_interpolation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_cubic_interpolation**\ (\ )

Если ``true``, положение между двумя кэшированными точками интерполируется кубически, а в противном случае — линейно.

Точки вдоль :ref:`Curve3D<class_Curve3D>` :ref:`Path3D<class_Path3D>` предварительно вычисляются перед использованием для более быстрых вычислений. Затем точка с запрошенным смещением вычисляется путем интерполяции между двумя соседними кэшированными точками. Это может представлять проблему, если кривая делает резкие повороты, так как кэшированные точки могут недостаточно точно следовать кривой.

Есть два решения этой проблемы: либо увеличить количество кэшированных точек и увеличить потребление памяти, либо выполнить кубическую интерполяцию между двумя точками за счет (немного) более медленных вычислений.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_h_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **h_offset** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_h_offset>`

.. rst-class:: classref-property-setget

- |void| **set_h_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_h_offset**\ (\ )

Смещение узла вдоль кривой.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_loop:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **loop** = ``true`` :ref:`🔗<class_PathFollow3D_property_loop>`

.. rst-class:: classref-property-setget

- |void| **set_loop**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_loop**\ (\ )

Если ``true``, любое смещение за пределами длины пути будет зацикливаться, а не останавливаться на концах. Используйте его для циклических путей.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_progress:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_progress>`

.. rst-class:: classref-property-setget

- |void| **set_progress**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress**\ (\ )

Расстояние от первой вершины, измеренное в 3D-единицах вдоль пути. Изменение этого значения устанавливает положение этого узла в точке внутри пути.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_progress_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **progress_ratio** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_progress_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_progress_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_progress_ratio**\ (\ )

Расстояние от первой вершины, считая 0.0 первой вершиной, а 1.0 последней. Это просто другой способ выражения прогресса в пределах пути, поскольку предоставленный прогресс умножается внутренне на длину пути.

Его можно установить или получить, только если **PathFollow3D** является дочерним элементом :ref:`Path3D<class_Path3D>`, который является частью дерева сцены, и что этот :ref:`Path3D<class_Path3D>` имеет :ref:`Curve3D<class_Curve3D>` с ненулевой длиной. В противном случае попытка установить это поле выведет ошибку, а получение этого поля вернет ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_rotation_mode:

.. rst-class:: classref-property

:ref:`RotationMode<enum_PathFollow3D_RotationMode>` **rotation_mode** = ``3`` :ref:`🔗<class_PathFollow3D_property_rotation_mode>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_mode**\ (\ value\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ )
- :ref:`RotationMode<enum_PathFollow3D_RotationMode>` **get_rotation_mode**\ (\ )

Разрешает или запрещает вращение по одной или нескольким осям в зависимости от используемых констант :ref:`RotationMode<enum_PathFollow3D_RotationMode>`.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_tilt_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **tilt_enabled** = ``true`` :ref:`🔗<class_PathFollow3D_property_tilt_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_tilt_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_tilt_enabled**\ (\ )

Если ``true``, свойство наклона :ref:`Curve3D<class_Curve3D>` вступает в силу.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_use_model_front:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_model_front** = ``false`` :ref:`🔗<class_PathFollow3D_property_use_model_front>`

.. rst-class:: classref-property-setget

- |void| **set_use_model_front**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_model_front**\ (\ )

Если ``true``, узел перемещается по траектории перемещения с ориентацией оси +Z вперед. См. также :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` и :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`.

.. rst-class:: classref-item-separator

----

.. _class_PathFollow3D_property_v_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **v_offset** = ``0.0`` :ref:`🔗<class_PathFollow3D_property_v_offset>`

.. rst-class:: classref-property-setget

- |void| **set_v_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_v_offset**\ (\ )

Смещение узла перпендикулярно кривой.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PathFollow3D_method_correct_posture:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **correct_posture**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, rotation_mode\: :ref:`RotationMode<enum_PathFollow3D_RotationMode>`\ ) |static| :ref:`🔗<class_PathFollow3D_method_correct_posture>`

Исправьте ``transform``. ``rotation_mode`` неявно указывает, как рассчитывается поза (вперед, вверх и вбок).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
