:github_url: hide

.. _class_AnimationNodeStateMachineTransition:

AnimationNodeStateMachineTransition
===================================

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una transición dentro de un :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` que conecta dos :ref:`AnimationRootNode<class_AnimationRootNode>`\ s.

.. rst-class:: classref-introduction-group

Descripción
----------------------

La ruta generada al usar :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` está limitada a los nodos conectados por **AnimationNodeStateMachineTransition**.

Puedes establecer el tiempo y las condiciones de la transición en detalle.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>`                                      | :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>`   | ``&""``   |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                              | :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` | ``""``    |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` | :ref:`advance_mode<class_AnimationNodeStateMachineTransition_property_advance_mode>`             | ``1``     |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`break_loop_at_end<class_AnimationNodeStateMachineTransition_property_break_loop_at_end>`   | ``false`` |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                    | :ref:`priority<class_AnimationNodeStateMachineTransition_property_priority>`                     | ``1``     |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                  | :ref:`reset<class_AnimationNodeStateMachineTransition_property_reset>`                           | ``true``  |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>`   | :ref:`switch_mode<class_AnimationNodeStateMachineTransition_property_switch_mode>`               | ``0``     |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Curve<class_Curve>`                                                | :ref:`xfade_curve<class_AnimationNodeStateMachineTransition_property_xfade_curve>`               |           |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                | :ref:`xfade_time<class_AnimationNodeStateMachineTransition_property_xfade_time>`                 | ``0.0``   |
   +--------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_AnimationNodeStateMachineTransition_signal_advance_condition_changed:

.. rst-class:: classref-signal

**advance_condition_changed**\ (\ ) :ref:`🔗<class_AnimationNodeStateMachineTransition_signal_advance_condition_changed>`

Emitida cuando :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` cambia.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AnimationNodeStateMachineTransition_SwitchMode:

.. rst-class:: classref-enumeration

enum **SwitchMode**: :ref:`🔗<enum_AnimationNodeStateMachineTransition_SwitchMode>`

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_IMMEDIATE:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_IMMEDIATE** = ``0``

Intercambia a el proximo estado inmediatamente. El actual estado terminara y se mezclara en el comienzo del nuevo.

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_SYNC:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_SYNC** = ``1``

Intercambia a el proximo estado inmediatamente, pero buscara el nuevo estado a la reproduccion de la posicion del antiguo estado.

.. _class_AnimationNodeStateMachineTransition_constant_SWITCH_MODE_AT_END:

.. rst-class:: classref-enumeration-constant

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **SWITCH_MODE_AT_END** = ``2``

Espera a que termine el actual estado en reproduccion, entonces intercambia con el principio de la proxima animacion.

.. rst-class:: classref-item-separator

----

.. _enum_AnimationNodeStateMachineTransition_AdvanceMode:

.. rst-class:: classref-enumeration

enum **AdvanceMode**: :ref:`🔗<enum_AnimationNodeStateMachineTransition_AdvanceMode>`

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_DISABLED** = ``0``

No usar esta transición.

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_ENABLED** = ``1``

Utiliza esta transición únicamente durante :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`.

.. _class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_AUTO:

.. rst-class:: classref-enumeration-constant

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **ADVANCE_MODE_AUTO** = ``2``

Utiliza automáticamente esta transición si las comprobaciones de :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` y :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` son ``true`` (si están asignadas).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AnimationNodeStateMachineTransition_property_advance_condition:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **advance_condition** = ``&""`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_condition>`

.. rst-class:: classref-property-setget

- |void| **set_advance_condition**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_advance_condition**\ (\ )

Turn on auto advance when this condition is set. The provided name will become a boolean parameter on the :ref:`AnimationTree<class_AnimationTree>` that can be controlled from code (see `Using AnimationTree <../tutorials/animation/animation_tree.html#controlling-from-code>`__). For example, if :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` is an :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` and :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` is set to ``"idle"``:


.. tabs::

 .. code-tab:: gdscript

    $animation_tree.set("parameters/conditions/idle", is_on_floor and (linear_velocity.x == 0))

 .. code-tab:: csharp

    GetNode<AnimationTree>("animation_tree").Set("parameters/conditions/idle", IsOnFloor && (LinearVelocity.X == 0));



.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_advance_expression:

.. rst-class:: classref-property

:ref:`String<class_String>` **advance_expression** = ``""`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_expression>`

.. rst-class:: classref-property-setget

- |void| **set_advance_expression**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_advance_expression**\ (\ )

Usa una expresión como condición para las transiciones de la máquina de estados. Es posible crear condiciones complejas de avance de animación para cambiar entre estados y da una flexibilidad mucho mayor para crear máquinas de estados complejas al interactuar directamente con el código del script.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_advance_mode:

.. rst-class:: classref-property

:ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **advance_mode** = ``1`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_advance_mode>`

.. rst-class:: classref-property-setget

- |void| **set_advance_mode**\ (\ value\: :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>`\ )
- :ref:`AdvanceMode<enum_AnimationNodeStateMachineTransition_AdvanceMode>` **get_advance_mode**\ (\ )

Determina si la transición debe ser deshabilitada, habilitada cuando se usa :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>`, o recorrida automáticamente si las comprobaciones de :ref:`advance_condition<class_AnimationNodeStateMachineTransition_property_advance_condition>` y :ref:`advance_expression<class_AnimationNodeStateMachineTransition_property_advance_expression>` son ``true`` (si están asignadas).

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_break_loop_at_end:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **break_loop_at_end** = ``false`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_break_loop_at_end>`

.. rst-class:: classref-property-setget

- |void| **set_break_loop_at_end**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_loop_broken_at_end**\ (\ )

Si es ``true``, interrumpe el bucle al final del ciclo de bucle para la transición, incluso si la animación está en bucle.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``1`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

Se prefieren las transiciones de menor prioridad cuando se viaja a través del árbol a través de :ref:`AnimationNodeStateMachinePlayback.travel()<class_AnimationNodeStateMachinePlayback_method_travel>` o si :ref:`advance_mode<class_AnimationNodeStateMachineTransition_property_advance_mode>` está configurado como :ref:`ADVANCE_MODE_AUTO<class_AnimationNodeStateMachineTransition_constant_ADVANCE_MODE_AUTO>`.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_reset:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reset** = ``true`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_reset>`

.. rst-class:: classref-property-setget

- |void| **set_reset**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reset**\ (\ )

Si es ``true``, la animación de destino se reproduce desde el principio cuando se cambia.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_switch_mode:

.. rst-class:: classref-property

:ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **switch_mode** = ``0`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_switch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_switch_mode**\ (\ value\: :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>`\ )
- :ref:`SwitchMode<enum_AnimationNodeStateMachineTransition_SwitchMode>` **get_switch_mode**\ (\ )

El tipo de transicion.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_xfade_curve:

.. rst-class:: classref-property

:ref:`Curve<class_Curve>` **xfade_curve** :ref:`🔗<class_AnimationNodeStateMachineTransition_property_xfade_curve>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_curve**\ (\ value\: :ref:`Curve<class_Curve>`\ )
- :ref:`Curve<class_Curve>` **get_xfade_curve**\ (\ )

Curva de suavizado para un mejor control del fundido cruzado entre este estado y el siguiente. Debe ser una :ref:`Curve<class_Curve>` de unidad.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeStateMachineTransition_property_xfade_time:

.. rst-class:: classref-property

:ref:`float<class_float>` **xfade_time** = ``0.0`` :ref:`🔗<class_AnimationNodeStateMachineTransition_property_xfade_time>`

.. rst-class:: classref-property-setget

- |void| **set_xfade_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_xfade_time**\ (\ )

El tiempo para el fundido cruzado entre este estado y el siguiente.

\ **Nota:** :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` transiciona el estado actual inmediatamente después del inicio del fundido. El tiempo restante preciso sólo puede inferirse de la animación principal. Cuando :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` se considera como el más ascendente, el :ref:`xfade_time<class_AnimationNodeStateMachineTransition_property_xfade_time>` no se escala dependiendo del delta descendente. Véase también :ref:`AnimationNodeOneShot.fadeout_time<class_AnimationNodeOneShot_property_fadeout_time>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
