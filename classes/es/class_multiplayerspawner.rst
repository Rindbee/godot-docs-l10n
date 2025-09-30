:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/modules/multiplayer/doc_classes/MultiplayerSpawner.xml.

.. _class_MultiplayerSpawner:

MultiplayerSpawner
==================

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Automatically replicates spawnable nodes from the authority to other multiplayer peers.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Spawnable scenes can be configured in the editor or through code (see :ref:`add_spawnable_scene()<class_MultiplayerSpawner_method_add_spawnable_scene>`).

Also supports custom node spawns through :ref:`spawn()<class_MultiplayerSpawner_method_spawn>`, calling :ref:`spawn_function<class_MultiplayerSpawner_property_spawn_function>` on all peers.

Internally, **MultiplayerSpawner** uses :ref:`MultiplayerAPI.object_configuration_add()<class_MultiplayerAPI_method_object_configuration_add>` to notify spawns passing the spawned node as the ``object`` and itself as the ``configuration``, and :ref:`MultiplayerAPI.object_configuration_remove()<class_MultiplayerAPI_method_object_configuration_remove>` to notify despawns in a similar way.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Métodos
--------------

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

Señales
--------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_MultiplayerSpawner_property_spawn_function:

.. rst-class:: classref-property

:ref:`Callable<class_Callable>` **spawn_function** :ref:`🔗<class_MultiplayerSpawner_property_spawn_function>`

.. rst-class:: classref-property-setget

- |void| **set_spawn_function**\ (\ value\: :ref:`Callable<class_Callable>`\ )
- :ref:`Callable<class_Callable>` **get_spawn_function**\ (\ )

Method called on all peers when a custom :ref:`spawn()<class_MultiplayerSpawner_method_spawn>` is requested by the authority. Will receive the ``data`` parameter, and should return a :ref:`Node<class_Node>` that is not in the scene tree.

\ **Note:** The returned node should **not** be added to the scene with :ref:`Node.add_child()<class_Node_method_add_child>`. This is done automatically.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_property_spawn_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **spawn_limit** = ``0`` :ref:`🔗<class_MultiplayerSpawner_property_spawn_limit>`

.. rst-class:: classref-property-setget

- |void| **set_spawn_limit**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spawn_limit**\ (\ )

Maximum number of nodes allowed to be spawned by this spawner. Includes both spawnable scenes and custom spawns.

When set to ``0`` (the default), there is no limit.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_property_spawn_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **spawn_path** = ``NodePath("")`` :ref:`🔗<class_MultiplayerSpawner_property_spawn_path>`

.. rst-class:: classref-property-setget

- |void| **set_spawn_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_spawn_path**\ (\ )

Path to the spawn root. Spawnable scenes that are added as direct children are replicated to other peers.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_MultiplayerSpawner_method_add_spawnable_scene:

.. rst-class:: classref-method

|void| **add_spawnable_scene**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MultiplayerSpawner_method_add_spawnable_scene>`

Adds a scene path to spawnable scenes, making it automatically replicated from the multiplayer authority to other peers when added as children of the node pointed by :ref:`spawn_path<class_MultiplayerSpawner_property_spawn_path>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_clear_spawnable_scenes:

.. rst-class:: classref-method

|void| **clear_spawnable_scenes**\ (\ ) :ref:`🔗<class_MultiplayerSpawner_method_clear_spawnable_scenes>`

Clears all spawnable scenes. Does not despawn existing instances on remote peers.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_get_spawnable_scene:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_spawnable_scene**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiplayerSpawner_method_get_spawnable_scene>`

Devuelve la ruta de la escena generable por índice.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_get_spawnable_scene_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spawnable_scene_count**\ (\ ) |const| :ref:`🔗<class_MultiplayerSpawner_method_get_spawnable_scene_count>`

Devuelve el recuento de rutas de escena que se pueden generar.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_spawn:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **spawn**\ (\ data\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_MultiplayerSpawner_method_spawn>`

Requests a custom spawn, with ``data`` passed to :ref:`spawn_function<class_MultiplayerSpawner_property_spawn_function>` on all peers. Returns the locally spawned node instance already inside the scene tree, and added as a child of the node pointed by :ref:`spawn_path<class_MultiplayerSpawner_property_spawn_path>`.

\ **Note:** Spawnable scenes are spawned automatically. :ref:`spawn()<class_MultiplayerSpawner_method_spawn>` is only needed for custom spawns.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
