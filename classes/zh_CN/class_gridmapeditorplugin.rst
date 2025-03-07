:github_url: hide

.. meta::
	:keywords: tilemap

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/modules/gridmap/doc_classes/GridMapEditorPlugin.xml.

.. _class_GridMapEditorPlugin:

GridMapEditorPlugin
===================

**继承：** :ref:`EditorPlugin<class_EditorPlugin>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Editor for :ref:`GridMap<class_GridMap>` nodes.

.. rst-class:: classref-introduction-group

描述
----

GridMapEditorPlugin provides access to the :ref:`GridMap<class_GridMap>` editor functionality.

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`clear_selection<class_GridMapEditorPlugin_method_clear_selection>`\ (\ )                                                                             |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GridMap<class_GridMap>` | :ref:`get_current_grid_map<class_GridMapEditorPlugin_method_get_current_grid_map>`\ (\ ) |const|                                                           |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`     | :ref:`get_selected_cells<class_GridMapEditorPlugin_method_get_selected_cells>`\ (\ ) |const|                                                               |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_selected_palette_item<class_GridMapEditorPlugin_method_get_selected_palette_item>`\ (\ ) |const|                                                 |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`get_selection<class_GridMapEditorPlugin_method_get_selection>`\ (\ ) |const|                                                                         |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_selection<class_GridMapEditorPlugin_method_has_selection>`\ (\ ) |const|                                                                         |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_selected_palette_item<class_GridMapEditorPlugin_method_set_selected_palette_item>`\ (\ item\: :ref:`int<class_int>`\ ) |const|                   |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_selection<class_GridMapEditorPlugin_method_set_selection>`\ (\ begin\: :ref:`Vector3i<class_Vector3i>`, end\: :ref:`Vector3i<class_Vector3i>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_GridMapEditorPlugin_method_clear_selection:

.. rst-class:: classref-method

|void| **clear_selection**\ (\ ) :ref:`🔗<class_GridMapEditorPlugin_method_clear_selection>`

Deselects any currently selected cells.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_current_grid_map:

.. rst-class:: classref-method

:ref:`GridMap<class_GridMap>` **get_current_grid_map**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_current_grid_map>`

Returns the :ref:`GridMap<class_GridMap>` node currently edited by the grid map editor.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selected_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_selected_cells**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selected_cells>`

Returns an array of :ref:`Vector3i<class_Vector3i>`\ s with the selected cells' coordinates.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selected_palette_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_selected_palette_item**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selected_palette_item>`

Returns the index of the selected :ref:`MeshLibrary<class_MeshLibrary>` item in the grid map editor's palette or ``-1`` if no item is selected.

\ **Note:** The indices might not be in the same order as they appear in the editor's interface.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_get_selection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_selection**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_get_selection>`

Returns the cell coordinate bounds of the current selection. Use :ref:`has_selection<class_GridMapEditorPlugin_method_has_selection>` to check if there is an active selection.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_has_selection:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_selection**\ (\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_has_selection>`

Returns ``true`` if there are selected cells.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_set_selected_palette_item:

.. rst-class:: classref-method

|void| **set_selected_palette_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMapEditorPlugin_method_set_selected_palette_item>`

Selects the :ref:`MeshLibrary<class_MeshLibrary>` item with the given index in the grid map editor's palette. If a negative index is given, no item will be selected. If a value greater than the last index is given, the last item will be selected.

\ **Note:** The indices might not be in the same order as they appear in the editor's interface.

.. rst-class:: classref-item-separator

----

.. _class_GridMapEditorPlugin_method_set_selection:

.. rst-class:: classref-method

|void| **set_selection**\ (\ begin\: :ref:`Vector3i<class_Vector3i>`, end\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_GridMapEditorPlugin_method_set_selection>`

Selects the cells inside the given bounds from ``begin`` to ``end``.

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
