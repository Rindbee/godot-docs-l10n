:github_url: hide

.. meta::
	:keywords: network

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/modules/multiplayer/doc_classes/MultiplayerSpawner.xml.

.. _class_MultiplayerSpawner:

MultiplayerSpawner
==================

**继承：** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

自动将可出生节点从授权端复制到其他多人对等体。

.. rst-class:: classref-introduction-group

描述
----

可出生的场景可以在编辑器中或通过代码配置（参阅 :ref:`add_spawnable_scene<class_MultiplayerSpawner_method_add_spawnable_scene>`\ ）。

还支持通过在所有对等体上调用 :ref:`spawn_function<class_MultiplayerSpawner_property_spawn_function>`\ ，通过 :ref:`spawn<class_MultiplayerSpawner_method_spawn>` 自定义节点出生。

在内部，\ **MultiplayerSpawner** 使用 :ref:`MultiplayerAPI.object_configuration_add<class_MultiplayerAPI_method_object_configuration_add>` 来通知出生， 需将出生的节点作为 ``object``\ ，并将其自身作为 ``configuration`` 传入；并使用 :ref:`MultiplayerAPI.object_configuration_remove<class_MultiplayerAPI_method_object_configuration_remove>` 以类似的方式通知消失。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------+------------------+
   | :ref:`Callable<class_Callable>` | :ref:`spawn_function<class_MultiplayerSpawner_property_spawn_function>` |                  |
   +---------------------------------+-------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`spawn_limit<class_MultiplayerSpawner_property_spawn_limit>`       | ``0``            |
   +---------------------------------+-------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`spawn_path<class_MultiplayerSpawner_property_spawn_path>`         | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_spawnable_scene<class_MultiplayerSpawner_method_add_spawnable_scene>`\ (\ path\: :ref:`String<class_String>`\ )    |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_spawnable_scenes<class_MultiplayerSpawner_method_clear_spawnable_scenes>`\ (\ )                                  |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_spawnable_scene<class_MultiplayerSpawner_method_get_spawnable_scene>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_spawnable_scene_count<class_MultiplayerSpawner_method_get_spawnable_scene_count>`\ (\ ) |const|                    |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`     | :ref:`spawn<class_MultiplayerSpawner_method_spawn>`\ (\ data\: :ref:`Variant<class_Variant>` = null\ )                       |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

信号
----

.. _class_MultiplayerSpawner_signal_despawned:

.. rst-class:: classref-signal

**despawned**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_MultiplayerSpawner_signal_despawned>`

Emitted when a spawnable scene or custom spawn was despawned by the multiplayer authority. Only called on remote peers.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_signal_spawned:

.. rst-class:: classref-signal

**spawned**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_MultiplayerSpawner_signal_spawned>`

Emitted when a spawnable scene or custom spawn was spawned by the multiplayer authority. Only called on remote peers.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_MultiplayerSpawner_property_spawn_function:

.. rst-class:: classref-property

:ref:`Callable<class_Callable>` **spawn_function** :ref:`🔗<class_MultiplayerSpawner_property_spawn_function>`

.. rst-class:: classref-property-setget

- |void| **set_spawn_function**\ (\ value\: :ref:`Callable<class_Callable>`\ )
- :ref:`Callable<class_Callable>` **get_spawn_function**\ (\ )

当自定义 :ref:`spawn<class_MultiplayerSpawner_method_spawn>` 被授权端请求时，在所有对等体上调用的方法。将接收 ``data`` 参数，并且应该返回一个不在场景树中的 :ref:`Node<class_Node>`\ 。

\ **注意：**\ 返回的节点\ **不**\ 应该用 :ref:`Node.add_child<class_Node_method_add_child>` 添加到场景中。这是自动完成的。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_property_spawn_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **spawn_limit** = ``0`` :ref:`🔗<class_MultiplayerSpawner_property_spawn_limit>`

.. rst-class:: classref-property-setget

- |void| **set_spawn_limit**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spawn_limit**\ (\ )

该出生器允许出生的最大节点数。包括可出生场景和自定义出生。

当设置为 ``0``\ （默认值）时，没有限制。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_property_spawn_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **spawn_path** = ``NodePath("")`` :ref:`🔗<class_MultiplayerSpawner_property_spawn_path>`

.. rst-class:: classref-property-setget

- |void| **set_spawn_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_spawn_path**\ (\ )

到出生的根的路径。作为直接子节点被添加的可出生场景，会被复制到其他对等体。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_MultiplayerSpawner_method_add_spawnable_scene:

.. rst-class:: classref-method

|void| **add_spawnable_scene**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MultiplayerSpawner_method_add_spawnable_scene>`

将场景路径添加到可出生的场景中，使其在添加为 :ref:`spawn_path<class_MultiplayerSpawner_property_spawn_path>` 指向的节点的子节点时，自动从多人游戏授权端，复制到其他对等体。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_clear_spawnable_scenes:

.. rst-class:: classref-method

|void| **clear_spawnable_scenes**\ (\ ) :ref:`🔗<class_MultiplayerSpawner_method_clear_spawnable_scenes>`

清除所有可生成的场景。不会在远程对等体上消除现有实例。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_get_spawnable_scene:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_spawnable_scene**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiplayerSpawner_method_get_spawnable_scene>`

按索引返回可生成场景的路径。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_get_spawnable_scene_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spawnable_scene_count**\ (\ ) |const| :ref:`🔗<class_MultiplayerSpawner_method_get_spawnable_scene_count>`

返回可生成场景路径的数量。

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_spawn:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **spawn**\ (\ data\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_MultiplayerSpawner_method_spawn>`

请求进行一次自定义出生，\ ``data`` 将被传递给所有对等体的 :ref:`spawn_function<class_MultiplayerSpawner_property_spawn_function>`\ 。返回本地出生的节点实例，该节点实例已经在场景树中，并被添加为 :ref:`spawn_path<class_MultiplayerSpawner_property_spawn_path>` 指向的节点的子节点。

\ **注意：**\ 可出生的场景是自动出生的。\ :ref:`spawn<class_MultiplayerSpawner_method_spawn>` 仅在自定义出生时需要。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
