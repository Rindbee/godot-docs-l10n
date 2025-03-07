:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/Transform3D.xml.

.. _class_Transform3D:

Transform3D
===========

代表 3D 变换的 3×4 矩阵。

.. rst-class:: classref-introduction-group

描述
----

**Transform3D** 即 3D 变换，是一种内置的 :ref:`Variant<class_Variant>` 类型，这种 3×4 矩阵代表的是 3D 空间中的变换。变换中包含了一个 :ref:`Basis<class_Basis>`\ ，表示的是旋转、缩放、倾斜。另外变换自身还提供了 :ref:`origin<class_Transform3D_property_origin>`\ ，这样就能够表示平移。

通用的介绍见教程\ :doc:`《矩阵和变换》 <../tutorials/math/matrices_and_transforms>`\ 。

\ **注意：**\ Godot 使用\ `右手坐标系 <https://zh.wikipedia.org/zh-cn/%E5%8F%B3%E6%89%8B%E5%AE%9A%E5%89%87>`__\ ，这是一种普遍标准。方向方面，\ :ref:`Camera3D<class_Camera3D>` 等内置类型的约定是 -Z 指向前方（+X 为右、+Y 为上、+Z 为后）。其他对象可能使用不同的方向约定。更多信息见教程\ `《3D 资产方向约定》 <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__\ 。

.. note::

	通过 C# 使用该 API 时会有显著不同，详见 :ref:`doc_c_sharp_differences`\ 。

.. rst-class:: classref-introduction-group

教程
----

- :doc:`数学文档索引 <../tutorials/math/index>`

- :doc:`矩阵与变换 <../tutorials/math/matrices_and_transforms>`

- :doc:`使用 3D 变换 <../tutorials/3d/using_transforms>`

- `矩阵变换演示 <https://godotengine.org/asset-library/asset/2787>`__

- `3D 平台跳跃演示 <https://godotengine.org/asset-library/asset/2748>`__

- `2.5D 游戏演示 <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`basis<class_Transform3D_property_basis>`   | ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` |
   +-------------------------------+--------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`origin<class_Transform3D_property_origin>` | ``Vector3(0, 0, 0)``                 |
   +-------------------------------+--------------------------------------------------+--------------------------------------+

.. rst-class:: classref-reftable-group

构造函数
--------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ )                                                                                                                                                                 |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )                                                                                      |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ from\: :ref:`Projection<class_Projection>`\ )                                                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`Transform3D<class_Transform3D_constructor_Transform3D>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`affine_inverse<class_Transform3D_method_affine_inverse>`\ (\ ) |const|                                                                                                                                           |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`interpolate_with<class_Transform3D_method_interpolate_with>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const|                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`inverse<class_Transform3D_method_inverse>`\ (\ ) |const|                                                                                                                                                         |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform3D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const|                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform3D_method_is_finite>`\ (\ ) |const|                                                                                                                                                     |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`looking_at<class_Transform3D_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`orthonormalized<class_Transform3D_method_orthonormalized>`\ (\ ) |const|                                                                                                                                         |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`rotated<class_Transform3D_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`rotated_local<class_Transform3D_method_rotated_local>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`scaled<class_Transform3D_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                    |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`scaled_local<class_Transform3D_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                        |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`translated<class_Transform3D_method_translated>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                           |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`translated_local<class_Transform3D_method_translated_local>`\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                               |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

运算符
------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform3D_operator_neq_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                             | :ref:`operator *<class_Transform3D_operator_mul_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`operator *<class_Transform3D_operator_mul_PackedVector3Array>`\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`                           | :ref:`operator *<class_Transform3D_operator_mul_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`operator *<class_Transform3D_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator *<class_Transform3D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator /<class_Transform3D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`operator /<class_Transform3D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform3D_operator_eq_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

常量
----

.. _class_Transform3D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_IDENTITY>`

The identity **Transform3D**. This is a transform with no translation, no rotation, and a scale of :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. Its :ref:`basis<class_Transform3D_property_basis>` is equal to :ref:`Basis.IDENTITY<class_Basis_constant_IDENTITY>`. This also means that:

- Its :ref:`Basis.x<class_Basis_property_x>` points right (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`);

- Its :ref:`Basis.y<class_Basis_property_y>` points up (:ref:`Vector3.UP<class_Vector3_constant_UP>`);

- Its :ref:`Basis.z<class_Basis_property_z>` points back (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

::

    var transform = Transform3D.IDENTITY
    var basis = transform.basis
    print("| X | Y | Z | Origin")
    print("| %.f | %.f | %.f | %.f" % [basis.x.x, basis.y.x, basis.z.x, transform.origin.x])
    print("| %.f | %.f | %.f | %.f" % [basis.x.y, basis.y.y, basis.z.y, transform.origin.y])
    print("| %.f | %.f | %.f | %.f" % [basis.x.z, basis.y.z, basis.z.z, transform.origin.z])
    # Prints:
    # | X | Y | Z | Origin
    # | 1 | 0 | 0 | 0
    # | 0 | 1 | 0 | 0
    # | 0 | 0 | 1 | 0

If a :ref:`Vector3<class_Vector3>`, an :ref:`AABB<class_AABB>`, a :ref:`Plane<class_Plane>`, a :ref:`PackedVector3Array<class_PackedVector3Array>`, or another **Transform3D** is transformed (multiplied) by this constant, no transformation occurs.

\ **Note:** In GDScript, this constant is equivalent to creating a :ref:`Transform3D<class_Transform3D_constructor_Transform3D>` without any arguments. It can be used to make your code clearer, and for consistency with C#.

.. _class_Transform3D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform3D(-1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_X>`

应用了垂直于 YZ 平面镜像操作的 **Transform3D**\ 。其 :ref:`basis<class_Transform3D_property_basis>` 相当于 :ref:`Basis.FLIP_X<class_Basis_constant_FLIP_X>`\ 。

.. _class_Transform3D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform3D(1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Y>`

应用了垂直于 XZ 平面镜像操作的 **Transform3D**\ 。其 :ref:`basis<class_Transform3D_property_basis>` 相当于 :ref:`Basis.FLIP_Y<class_Basis_constant_FLIP_Y>`\ 。

.. _class_Transform3D_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Transform3D(1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0)`` :ref:`🔗<class_Transform3D_constant_FLIP_Z>`

应用了垂直于 XY 平面镜像操作的 **Transform3D**\ 。其 :ref:`basis<class_Transform3D_property_basis>` 相当于 :ref:`Basis.FLIP_Z<class_Basis_constant_FLIP_Z>`\ 。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_Transform3D_property_basis:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **basis** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Transform3D_property_basis>`

该变换的 :ref:`Basis<class_Basis>`\ 。它由 3 个轴（\ :ref:`Basis.x<class_Basis_property_x>`\ 、\ :ref:`Basis.y<class_Basis_property_y>` 和 :ref:`Basis.z<class_Basis_property_z>`\ ）组成。它们共同代表变换的旋转、缩放和倾斜。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_property_origin:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Transform3D_property_origin>`

该变换的平移偏移量。在 3D 空间中，这可以被看作是位置。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

构造函数说明
------------

.. _class_Transform3D_constructor_Transform3D:

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ ) :ref:`🔗<class_Transform3D_constructor_Transform3D>`

Constructs a **Transform3D** identical to :ref:`IDENTITY<class_Transform3D_constant_IDENTITY>`.

\ **Note:** In C#, this constructs a **Transform3D** with its :ref:`origin<class_Transform3D_property_origin>` and the components of its :ref:`basis<class_Transform3D_property_basis>` set to :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

构造给定 **Transform3D** 的副本 **Transform3D**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ basis\: :ref:`Basis<class_Basis>`, origin\: :ref:`Vector3<class_Vector3>`\ )

根据 :ref:`Basis<class_Basis>` 和 :ref:`Vector3<class_Vector3>` 构造 **Transform3D**\ 。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ from\: :ref:`Projection<class_Projection>`\ )

根据 :ref:`Projection<class_Projection>` 构造 **Transform3D**\ 。因为 **Transform3D** 是 3×4 的矩阵，而 :ref:`Projection<class_Projection>` 是 4×4 的矩阵，所以这个操作会削去投影矩阵的最后一行（新的变换中不包含 ``from.x.w``\ 、\ ``from.y.w``\ 、\ ``from.z.w``\ 、\ ``from.w.w``\ ）。

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform3D<class_Transform3D>` **Transform3D**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`, origin\: :ref:`Vector3<class_Vector3>`\ )

根据四个 :ref:`Vector3<class_Vector3>` 值（也叫矩阵列）构造 **Transform3D**\ 。

前三个参数是 :ref:`basis<class_Transform3D_property_basis>` 的三个轴（\ :ref:`Basis.x<class_Basis_property_x>`\ 、\ :ref:`Basis.y<class_Basis_property_y>`\ 、\ :ref:`Basis.z<class_Basis_property_z>`\ ）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_Transform3D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_affine_inverse>`

Returns the inverted version of this transform. Unlike :ref:`inverse<class_Transform3D_method_inverse>`, this method works with almost any :ref:`basis<class_Transform3D_property_basis>`, including non-uniform ones, but is slower. See also :ref:`Basis.inverse<class_Basis_method_inverse>`.

\ **Note:** For this method to return correctly, the transform's :ref:`basis<class_Transform3D_property_basis>` needs to have a determinant that is not exactly ``0.0`` (see :ref:`Basis.determinant<class_Basis_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **interpolate_with**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_interpolate_with>`

返回将该变换和 ``xform`` 按照给定的权重 ``weight`` 进行线性插值结果。

\ ``weight`` 应该在 ``0.0`` 到 ``1.0``\ （闭区间）的范围内。允许使用超出这个范围的值，表示进行\ *外插*\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_inverse>`

Returns the `inverted version of this transform <https://en.wikipedia.org/wiki/Invertible_matrix>`__. See also :ref:`Basis.inverse<class_Basis_method_inverse>`.

\ **Note:** For this method to return correctly, the transform's :ref:`basis<class_Transform3D_property_basis>` needs to be *orthonormal* (see :ref:`orthonormalized<class_Transform3D_method_orthonormalized>`). That means the basis should only represent a rotation. If it does not, use :ref:`affine_inverse<class_Transform3D_method_affine_inverse>` instead.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`\ ) |const| :ref:`🔗<class_Transform3D_method_is_equal_approx>`

如果通过在每个分量上运行 :ref:`@GlobalScope.is_equal_approx<class_@GlobalScope_method_is_equal_approx>`\ ，该变换和 ``xform`` 近似相等，则返回 ``true``\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_is_finite>`

如果该变换是有限的，则返回 ``true``\ ，判断方法是在每个分量上调用 :ref:`@GlobalScope.is_finite<class_@GlobalScope_method_is_finite>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Transform3D_method_looking_at>`

返回该变换的旋转副本，以便向前轴（-Z）指向 ``target`` 的位置。

向上的轴（+Y）在保持与向前的轴垂直的前提下，尽可能接近 ``up`` 向量。最终的变换是标准正交变换。变换中原有的旋转、缩放、偏斜信息会被丢弃。\ ``target`` 和 ``up`` 向量不能为零，不能互相平行，使用全局/父级空间。

如果 ``use_model_front`` 为 ``true``\ ，则会将 +Z 轴（资产正面）作为向前的轴（此时 +X 为左），指向 ``target`` 的位置。默认情况下会将 -Z 轴（相机前方）作为向前的轴（此时 +X 为右）。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform3D_method_orthonormalized>`

Returns a copy of this transform with its :ref:`basis<class_Transform3D_property_basis>` orthonormalized. An orthonormal basis is both *orthogonal* (the axes are perpendicular to each other) and *normalized* (the axes have a length of ``1.0``), which also means it can only represent a rotation. See also :ref:`Basis.orthonormalized<class_Basis_method_orthonormalized>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated>`

Returns a copy of this transform rotated around the given ``axis`` by the given ``angle`` (in radians).

The ``axis`` must be a normalized vector (see :ref:`Vector3.normalized<class_Vector3_method_normalized>`). If ``angle`` is positive, the basis is rotated counter-clockwise around the axis.

This method is an optimized version of multiplying the given transform ``X`` with a corresponding rotation transform ``R`` from the left, i.e., ``R * X``.

This can be seen as transforming with respect to the global/parent frame.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **rotated_local**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform3D_method_rotated_local>`

Returns a copy of this transform rotated around the given ``axis`` by the given ``angle`` (in radians).

The ``axis`` must be a normalized vector in the transform's local coordinate system. For example, to rotate around the local X-axis, use :ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`.

This method is an optimized version of multiplying the given transform ``X`` with a corresponding rotation transform ``R`` from the right, i.e., ``X * R``.

This can be seen as transforming with respect to the local frame.

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled>`

返回该变换按给定的 ``scale`` 系数缩放的副本。

这个方法的结果和让 ``X`` 变换与相应的缩放变换 ``S`` 从左侧相乘一致，即 ``S * X``\ ，但进行了优化。

可以视作在全局/父级坐标系中的变换。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_scaled_local>`

返回该变换按给定的 ``scale`` 系数缩放的副本。

这个方法的结果和让 ``X`` 变换与相应的缩放变换 ``S`` 从右侧相乘一致，即 ``X * S``\ ，但进行了优化。

可以视作在局部坐标系中的变换。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated>`

返回该变换平移了给定 ``offset`` 的副本。

这个方法的结果和让 ``X`` 变换与相应的平移变换 ``T`` 从左侧相乘一致，即 ``T * X``\ ，但进行了优化。

可以视作在全局/父级坐标系中的变换。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **translated_local**\ (\ offset\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Transform3D_method_translated_local>`

返回该变化平移了给定 ``offset`` 的副本。

这个方法的结果和让 ``X`` 变换与相应的平移变换 ``T`` 从右侧相乘一致，即 ``X * T``\ ，但进行了优化。

可以视作在局部坐标系中的变换。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

运算符说明
----------

.. _class_Transform3D_operator_neq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_neq_Transform3D>`

如果两个变换的分量不相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点精度误差，请考虑改用 :ref:`is_equal_approx<class_Transform3D_method_is_equal_approx>`\ ，这样更可靠。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_AABB:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_Transform3D_operator_mul_AABB>`

使用该变换矩阵对 :ref:`AABB<class_AABB>` 进行变换（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_PackedVector3Array:

.. rst-class:: classref-operator

:ref:`PackedVector3Array<class_PackedVector3Array>` **operator ***\ (\ right\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Transform3D_operator_mul_PackedVector3Array>`

由该变换矩阵变换（乘以）给定 :ref:`PackedVector3Array<class_PackedVector3Array>` 的每个 :ref:`Vector3<class_Vector3>` 元素。

在较大的数组上，该操作比单独变换每个 :ref:`Vector3<class_Vector3>` 要快得多。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Plane:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Plane>`

使用该变换矩阵对 :ref:`Plane<class_Plane>` 进行变换（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Transform3D>`

由 ``right`` 变换来变换（乘以）该变换。

这是父级和子级 :ref:`Node3D<class_Node3D>` 之间执行的操作。

\ **注意：**\ 如果你只需要修改该变换的一个属性，请考虑改用以下方法之一：

- 对于平移，请参阅 :ref:`translated<class_Transform3D_method_translated>` 或 :ref:`translated_local<class_Transform3D_method_translated_local>`\ 。

- 对于旋转，请参阅 :ref:`rotated<class_Transform3D_method_rotated>` 或 :ref:`rotated_local<class_Transform3D_method_rotated_local>`\ 。

- 对于缩放，请参阅 :ref:`scaled<class_Transform3D_method_scaled>` 或 :ref:`scaled_local<class_Transform3D_method_scaled_local>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Transform3D_operator_mul_Vector3>`

使用该变换矩阵对 :ref:`Vector3<class_Vector3>` 进行变换（相乘）。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_mul_float>`

将 **Transform3D** 包括 :ref:`origin<class_Transform3D_property_origin>` 在内的所有分量乘以给定的 :ref:`float<class_float>`\ 。会均匀地影响该变换的缩放，对 :ref:`basis<class_Transform3D_property_basis>` 进行缩放。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_mul_int>`

将 **Transform3D** 包括 :ref:`origin<class_Transform3D_property_origin>` 在内的所有分量乘以给定的 :ref:`int<class_int>`\ 。会均匀地影响该变换的缩放，对 :ref:`basis<class_Transform3D_property_basis>` 进行缩放。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform3D_operator_div_float>`

将 **Transform3D** 包括 :ref:`origin<class_Transform3D_property_origin>` 在内的所有分量除以给定的 :ref:`float<class_float>`\ 。会均匀地影响该变换的缩放，对 :ref:`basis<class_Transform3D_property_basis>` 进行缩放。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform3D<class_Transform3D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform3D_operator_div_int>`

将 **Transform3D** 包括 :ref:`origin<class_Transform3D_property_origin>` 在内的所有分量除以给定的 :ref:`int<class_int>`\ 。会均匀地影响该变换的缩放，对 :ref:`basis<class_Transform3D_property_basis>` 进行缩放。

.. rst-class:: classref-item-separator

----

.. _class_Transform3D_operator_eq_Transform3D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Transform3D_operator_eq_Transform3D>`

如果两个变换的分量完全相等，则返回 ``true``\ 。

\ **注意：**\ 由于浮点精度误差，请考虑改用 :ref:`is_equal_approx<class_Transform3D_method_is_equal_approx>`\ ，这样更可靠。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
