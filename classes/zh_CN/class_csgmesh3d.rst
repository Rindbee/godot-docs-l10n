:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/modules/csg/doc_classes/CSGMesh3D.xml.

.. _class_CSGMesh3D:

CSGMesh3D
=========

**继承：** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

使用网格资源的 CSG 网格形状。

.. rst-class:: classref-introduction-group

描述
----

This CSG node allows you to use any mesh resource as a CSG shape, provided it is *manifold*. A manifold shape is closed, does not self-intersect, does not contain internal faces and has no edges that connect to more than two faces. See also :ref:`CSGPolygon3D<class_CSGPolygon3D>` for drawing 2D extruded polygons to be used as CSG nodes.

\ **Note:** CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a :ref:`MeshInstance3D<class_MeshInstance3D>` with a :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.

.. rst-class:: classref-introduction-group

教程
----

- :doc:`使用 CSG 设计关卡原型 <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------+
   | :ref:`Material<class_Material>` | :ref:`material<class_CSGMesh3D_property_material>` |
   +---------------------------------+----------------------------------------------------+
   | :ref:`Mesh<class_Mesh>`         | :ref:`mesh<class_CSGMesh3D_property_mesh>`         |
   +---------------------------------+----------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_CSGMesh3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGMesh3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

用于绘制 CSG 形状的 :ref:`Material<class_Material>`\ 。

.. rst-class:: classref-item-separator

----

.. _class_CSGMesh3D_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_CSGMesh3D_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

The :ref:`Mesh<class_Mesh>` resource to use as a CSG shape.

\ **Note:** Some :ref:`Mesh<class_Mesh>` types such as :ref:`PlaneMesh<class_PlaneMesh>`, :ref:`PointMesh<class_PointMesh>`, :ref:`QuadMesh<class_QuadMesh>`, and :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` are excluded from the type hint for this property, as these primitives are non-*manifold* and thus not compatible with the CSG algorithm.

\ **Note:** When using an :ref:`ArrayMesh<class_ArrayMesh>`, all vertex attributes except :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>`, :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` and :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` are left unused. Only :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>` and :ref:`Mesh.ARRAY_TEX_UV<class_Mesh_constant_ARRAY_TEX_UV>` will be passed to the GPU.

\ :ref:`Mesh.ARRAY_NORMAL<class_Mesh_constant_ARRAY_NORMAL>` is only used to determine which faces require the use of flat shading. By default, CSGMesh will ignore the mesh's vertex normals, recalculate them for each vertex and use a smooth shader. If a flat shader is required for a face, ensure that all vertex normals of the face are approximately equal.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
