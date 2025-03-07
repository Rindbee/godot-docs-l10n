:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/PolygonPathFinder.xml.

.. _class_PolygonPathFinder:

PolygonPathFinder
=================

**继承：** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. container:: contribute

	该类目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`find_path<class_PolygonPathFinder_method_find_path>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ )                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`get_bounds<class_PolygonPathFinder_method_get_bounds>`\ (\ ) |const|                                                                                                            |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_closest_point<class_PolygonPathFinder_method_get_closest_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                       |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_intersections<class_PolygonPathFinder_method_get_intersections>`\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) |const|                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_point_penalty<class_PolygonPathFinder_method_get_point_penalty>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                 |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_point_inside<class_PolygonPathFinder_method_is_point_inside>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                           |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_penalty<class_PolygonPathFinder_method_set_point_penalty>`\ (\ idx\: :ref:`int<class_int>`, penalty\: :ref:`float<class_float>`\ )                                    |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`setup<class_PolygonPathFinder_method_setup>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`, connections\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) |
   +-----------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PolygonPathFinder_method_find_path:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **find_path**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_PolygonPathFinder_method_find_path>`

.. container:: contribute

	该方法目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_bounds:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_bounds**\ (\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_bounds>`

.. container:: contribute

	该方法目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_closest_point:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_closest_point>`

.. container:: contribute

	该方法目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_intersections:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_intersections**\ (\ from\: :ref:`Vector2<class_Vector2>`, to\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_intersections>`

.. container:: contribute

	该方法目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_get_point_penalty:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_penalty**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_get_point_penalty>`

.. container:: contribute

	该方法目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_is_point_inside:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_inside**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_PolygonPathFinder_method_is_point_inside>`

Returns ``true`` if ``point`` falls inside the polygon area.


.. tabs::

 .. code-tab:: gdscript

    var polygon_path_finder = PolygonPathFinder.new()
    var points = [Vector2(0.0, 0.0), Vector2(1.0, 0.0), Vector2(0.0, 1.0)]
    var connections = [0, 1, 1, 2, 2, 0]
    polygon_path_finder.setup(points, connections)
    print(polygon_path_finder.is_point_inside(Vector2(0.2, 0.2))) # Prints true
    print(polygon_path_finder.is_point_inside(Vector2(1.0, 1.0))) # Prints false

 .. code-tab:: csharp

    var polygonPathFinder = new PolygonPathFinder();
    Vector2[] points =
    [
        new Vector2(0.0f, 0.0f),
        new Vector2(1.0f, 0.0f),
        new Vector2(0.0f, 1.0f)
    ];
    int[] connections = [0, 1, 1, 2, 2, 0];
    polygonPathFinder.Setup(points, connections);
    GD.Print(polygonPathFinder.IsPointInside(new Vector2(0.2f, 0.2f))); // Prints True
    GD.Print(polygonPathFinder.IsPointInside(new Vector2(1.0f, 1.0f))); // Prints False



.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_set_point_penalty:

.. rst-class:: classref-method

|void| **set_point_penalty**\ (\ idx\: :ref:`int<class_int>`, penalty\: :ref:`float<class_float>`\ ) :ref:`🔗<class_PolygonPathFinder_method_set_point_penalty>`

.. container:: contribute

	该方法目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！

.. rst-class:: classref-item-separator

----

.. _class_PolygonPathFinder_method_setup:

.. rst-class:: classref-method

|void| **setup**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`, connections\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_PolygonPathFinder_method_setup>`

Sets up **PolygonPathFinder** with an array of points that define the vertices of the polygon, and an array of indices that determine the edges of the polygon.

The length of ``connections`` must be even, returns an error if odd.


.. tabs::

 .. code-tab:: gdscript

    var polygon_path_finder = PolygonPathFinder.new()
    var points = [Vector2(0.0, 0.0), Vector2(1.0, 0.0), Vector2(0.0, 1.0)]
    var connections = [0, 1, 1, 2, 2, 0]
    polygon_path_finder.setup(points, connections)

 .. code-tab:: csharp

    var polygonPathFinder = new PolygonPathFinder();
    Vector2[] points =
    [
        new Vector2(0.0f, 0.0f),
        new Vector2(1.0f, 0.0f),
        new Vector2(0.0f, 1.0f)
    ];
    int[] connections = [0, 1, 1, 2, 2, 0];
    polygonPathFinder.Setup(points, connections);



.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
