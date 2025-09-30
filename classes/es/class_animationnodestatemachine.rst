:github_url: hide

.. _class_AnimationNodeStateMachine:

AnimationNodeStateMachine
=========================

**Hereda:** :ref:`AnimationRootNode<class_AnimationRootNode>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una máquina de estados con múltiples :ref:`AnimationRootNode<class_AnimationRootNode>`, utilizada por :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Contains multiple :ref:`AnimationRootNode<class_AnimationRootNode>`\ s representing animation states, connected in a graph. State transitions can be configured to happen automatically or via code, using a shortest-path algorithm. Retrieve the :ref:`AnimationNodeStateMachinePlayback<class_AnimationNodeStateMachinePlayback>` object from the :ref:`AnimationTree<class_AnimationTree>` node to control it programmatically.


.. tabs::

 .. code-tab:: gdscript

    var state_machine = $AnimationTree.get("parameters/playback")
    state_machine.travel("some_state")

 .. code-tab:: csharp

    var stateMachine = GetNode<AnimationTree>("AnimationTree").Get("parameters/playback") as AnimationNodeStateMachinePlayback;
    stateMachine.Travel("some_state");



.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`allow_transition_to_self<class_AnimationNodeStateMachine_property_allow_transition_to_self>` | ``false`` |
   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`reset_ends<class_AnimationNodeStateMachine_property_reset_ends>`                             | ``false`` |
   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` | :ref:`state_machine_type<class_AnimationNodeStateMachine_property_state_machine_type>`             | ``0``     |
   +--------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`add_node<class_AnimationNodeStateMachine_method_add_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ )                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`add_transition<class_AnimationNodeStateMachine_method_add_transition>`\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`, transition\: :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`\ ) |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                         | :ref:`get_graph_offset<class_AnimationNodeStateMachine_method_get_graph_offset>`\ (\ ) |const|                                                                                                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNode<class_AnimationNode>`                                             | :ref:`get_node<class_AnimationNodeStateMachine_method_get_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                   |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\]                      | :ref:`get_node_list<class_AnimationNodeStateMachine_method_get_node_list>`\ (\ ) |const|                                                                                                                                                                                     |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                                   | :ref:`get_node_name<class_AnimationNodeStateMachine_method_get_node_name>`\ (\ node\: :ref:`AnimationNode<class_AnimationNode>`\ ) |const|                                                                                                                                   |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                         | :ref:`get_node_position<class_AnimationNodeStateMachine_method_get_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                 |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>` | :ref:`get_transition<class_AnimationNodeStateMachine_method_get_transition>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                      |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                                 | :ref:`get_transition_count<class_AnimationNodeStateMachine_method_get_transition_count>`\ (\ ) |const|                                                                                                                                                                       |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                                   | :ref:`get_transition_from<class_AnimationNodeStateMachine_method_get_transition_from>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                            |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                                   | :ref:`get_transition_to<class_AnimationNodeStateMachine_method_get_transition_to>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                               | :ref:`has_node<class_AnimationNodeStateMachine_method_has_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                                                                   |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                               | :ref:`has_transition<class_AnimationNodeStateMachine_method_has_transition>`\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                             |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`remove_node<class_AnimationNodeStateMachine_method_remove_node>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                                                     |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`remove_transition<class_AnimationNodeStateMachine_method_remove_transition>`\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ )                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`remove_transition_by_index<class_AnimationNodeStateMachine_method_remove_transition_by_index>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                                                      |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`rename_node<class_AnimationNodeStateMachine_method_rename_node>`\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ )                                                                                                     |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`replace_node<class_AnimationNodeStateMachine_method_replace_node>`\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`\ )                                                                                                 |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`set_graph_offset<class_AnimationNodeStateMachine_method_set_graph_offset>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                                | :ref:`set_node_position<class_AnimationNodeStateMachine_method_set_node_position>`\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                                               |
   +---------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AnimationNodeStateMachine_StateMachineType:

.. rst-class:: classref-enumeration

enum **StateMachineType**: :ref:`🔗<enum_AnimationNodeStateMachine_StateMachineType>`

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_ROOT** = ``0``

Buscar el principio se trata como reproducir desde el estado inicial. La transición al estado final se trata como salir de la máquina de estados.

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_NESTED:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_NESTED** = ``1``

Buscar el principio se trata como buscar el principio de la animación en el estado actual. La transición al estado final, o la ausencia de transiciones en cada estado, se trata como salir de la máquina de estados.

.. _class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_GROUPED:

.. rst-class:: classref-enumeration-constant

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **STATE_MACHINE_TYPE_GROUPED** = ``2``

Esta es una máquina de estados agrupada que puede ser controlada desde una máquina de estados padre. No funciona de forma independiente. Debe haber una máquina de estados con :ref:`state_machine_type<class_AnimationNodeStateMachine_property_state_machine_type>` de :ref:`STATE_MACHINE_TYPE_ROOT<class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_ROOT>` o :ref:`STATE_MACHINE_TYPE_NESTED<class_AnimationNodeStateMachine_constant_STATE_MACHINE_TYPE_NESTED>` en el padre o ancestro.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AnimationNodeStateMachine_property_allow_transition_to_self:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_transition_to_self** = ``false`` :ref:`🔗<class_AnimationNodeStateMachine_property_allow_transition_to_self>`

.. rst-class:: classref-property-setget

- |void| **set_allow_transition_to_self**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_transition_to_self**\ (\ )

Si es ``true``, permite teletransportarse al estado propio con :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`. Cuando la opción de reinicio está activada en :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`, la animación se reinicia. Si es ``false``, no ocurre nada en la teletransportación al estado propio.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_property_reset_ends:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset_ends** = ``false`` :ref:`🔗<class_AnimationNodeStateMachine_property_reset_ends>`

.. rst-class:: classref-property-setget

- |void| **set_reset_ends**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_ends_reset**\ (\ )

Si es ``true``, trata el fundido cruzado a los nodos de inicio y fin como una mezcla con la animación RESET.

En la mayoría de los casos, cuando se realizan fundidos cruzados adicionales en el :ref:`AnimationNode<class_AnimationNode>` padre de la máquina de estados, establecer esta propiedad a ``false`` y hacer coincidir el tiempo de fundido cruzado del :ref:`AnimationNode<class_AnimationNode>` padre con el de los nodos de inicio y fin de la máquina de estados da buenos resultados.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_property_state_machine_type:

.. rst-class:: classref-property

:ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **state_machine_type** = ``0`` :ref:`🔗<class_AnimationNodeStateMachine_property_state_machine_type>`

.. rst-class:: classref-property-setget

- |void| **set_state_machine_type**\ (\ value\: :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>`\ )
- :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>` **get_state_machine_type**\ (\ )

Esta propiedad puede definir el proceso de transiciones para diferentes casos de uso. Véase también :ref:`StateMachineType<enum_AnimationNodeStateMachine_StateMachineType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_AnimationNodeStateMachine_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`, position\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_add_node>`

Añade un nuevo nodo de animación al gráfico. La ``position`` se utiliza para la visualización en el editor.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_add_transition:

.. rst-class:: classref-method

|void| **add_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`, transition\: :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_add_transition>`

Agrega una transición entre los nodos de animación dados.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_graph_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_graph_offset>`

Devuelve el dezplazamiento del dibujo de un grafico. Utilizado para visualizaciones en el editor.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node:

.. rst-class:: classref-method

:ref:`AnimationNode<class_AnimationNode>` **get_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node>`

Devuelve el nodo animacion con el nombre dado.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_node_list**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_list>`

Devuelve una lista que contiene los nombres de todos los nodos de animación en esta máquina de estados.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_node_name**\ (\ node\: :ref:`AnimationNode<class_AnimationNode>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_name>`

Devuelve el node del nombre de la animacion dada.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_node_position>`

Devuelve las coordenadas del nodo de animación especificado. Se utiliza para visualizar en el editor.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition:

.. rst-class:: classref-method

:ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>` **get_transition**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition>`

Devuelve la transicion dada.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_transition_count**\ (\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_count>`

Devuelve el numero de conexiones en el grafico.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_from:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_transition_from**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_from>`

Devuelve el nodo de comienzo de la transicion dada.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_get_transition_to:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_transition_to**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_get_transition_to>`

Devuelve el nodo final de la transicion dada.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_has_node:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_has_node>`

Devuelve ``true`` si el gráfico contiene el nodo de animación dado.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_has_transition:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_AnimationNodeStateMachine_method_has_transition>`

Devuelve ``true`` si hay una transición entre los nodos de animación dados.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_node>`

Elimina el nodo de animación dado del gráfico.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_transition:

.. rst-class:: classref-method

|void| **remove_transition**\ (\ from\: :ref:`StringName<class_StringName>`, to\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_transition>`

Elimina la transición entre los dos nodos de animación especificados.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_remove_transition_by_index:

.. rst-class:: classref-method

|void| **remove_transition_by_index**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_remove_transition_by_index>`

Elimina la transicion dado un indice.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_rename_node:

.. rst-class:: classref-method

|void| **rename_node**\ (\ name\: :ref:`StringName<class_StringName>`, new_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_rename_node>`

Cambia el nombre del nodo de animación dado.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_replace_node:

.. rst-class:: classref-method

|void| **replace_node**\ (\ name\: :ref:`StringName<class_StringName>`, node\: :ref:`AnimationNode<class_AnimationNode>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_replace_node>`

Reemplaza el nodo de animación dado con un nuevo nodo de animación.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_set_graph_offset:

.. rst-class:: classref-method

|void| **set_graph_offset**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_set_graph_offset>`

Coloca el desplazamiento de dibujo del grafico. Utilizado para visualizaciones en el editor.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachine_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ name\: :ref:`StringName<class_StringName>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AnimationNodeStateMachine_method_set_node_position>`

Establece las coordenadas del nodo de animación. Se utiliza para visualizarlo en el editor.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
