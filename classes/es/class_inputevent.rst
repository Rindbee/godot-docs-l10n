:github_url: hide

.. _class_InputEvent:

InputEvent
==========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`InputEventAction<class_InputEventAction>`, :ref:`InputEventFromWindow<class_InputEventFromWindow>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventMIDI<class_InputEventMIDI>`, :ref:`InputEventShortcut<class_InputEventShortcut>`

Abstract base class for input events.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Abstract base class of all types of input events. See :ref:`Node._input()<class_Node_private_method__input>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usando InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Viewport and canvas transforms <../tutorials/2d/2d_transforms>`

- `Demo de Dodge The Creeps en 2D <https://godotengine.org/asset-library/asset/2712>`__

- `Demo de Vóxeles en 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`device<class_InputEvent_property_device>` | ``0`` |
   +-----------------------+-------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`accumulate<class_InputEvent_method_accumulate>`\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ )                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`as_text<class_InputEvent_method_as_text>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_action_strength<class_InputEvent_method_get_action_strength>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action<class_InputEvent_method_is_action>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_pressed<class_InputEvent_method_is_action_pressed>`\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_released<class_InputEvent_method_is_action_released>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                             |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_type<class_InputEvent_method_is_action_type>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_canceled<class_InputEvent_method_is_canceled>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_echo<class_InputEvent_method_is_echo>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_match<class_InputEvent_method_is_match>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const|                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_pressed<class_InputEvent_method_is_pressed>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_released<class_InputEvent_method_is_released>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`InputEvent<class_InputEvent>` | :ref:`xformed_by<class_InputEvent_method_xformed_by>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_InputEvent_constant_DEVICE_ID_EMULATION:

.. rst-class:: classref-constant

**DEVICE_ID_EMULATION** = ``-1`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_EMULATION>`

ID de dispositivo utilizado para la entrada de ratón emulada desde una pantalla táctil, o para la entrada táctil emulada desde un ratón. Esto se puede utilizar para distinguir la entrada de ratón emulada de la entrada de ratón física, o la entrada táctil emulada de la entrada táctil física.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_InputEvent_property_device:

.. rst-class:: classref-property

:ref:`int<class_int>` **device** = ``0`` :ref:`🔗<class_InputEvent_property_device>`

.. rst-class:: classref-property-setget

- |void| **set_device**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_device**\ (\ )

El ID del dispositivo del evento.

\ **Nota:** :ref:`device<class_InputEvent_property_device>` puede ser negativo para casos de uso especiales que no se refieren a dispositivos presentes físicamente en el sistema. Véase :ref:`DEVICE_ID_EMULATION<class_InputEvent_constant_DEVICE_ID_EMULATION>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_InputEvent_method_accumulate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **accumulate**\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputEvent_method_accumulate>`

Devuelve ``true`` si el evento de entrada dado y este evento de entrada se pueden sumar (sólo para eventos del tipo :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`).

Se copiarán la posición, la posición global y la velocidad del evento de entrada dado. El ``relativo`` resultante es una suma de ambos eventos. Los modificadores de ambos eventos tienen que ser idénticos.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_as_text>`

Devuelve una representación :ref:`String<class_String>` del evento.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_get_action_strength:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_action_strength**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_get_action_strength>`

Returns a value between 0.0 and 1.0 depending on the given actions' state. Useful for getting the value of events of type :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

If ``exact_match`` is ``false``, it ignores additional input modifiers for :ref:`InputEventKey<class_InputEventKey>` and :ref:`InputEventMouseButton<class_InputEventMouseButton>` events, and the direction for :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` events.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action>`

Returns ``true`` if this input event matches a pre-defined action of any type.

If ``exact_match`` is ``false``, it ignores additional input modifiers for :ref:`InputEventKey<class_InputEventKey>` and :ref:`InputEventMouseButton<class_InputEventMouseButton>` events, and the direction for :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` events.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_pressed**\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_pressed>`

Devuelve ``true`` si la acción dada coincide con este evento y está siendo presionada (y no es un evento de eco para los eventos :ref:`InputEventKey<class_InputEventKey>`, a menos que ``allow_echo`` sea ``true``). No es relevante para los eventos de tipo :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` o :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

Si ``exact_match`` es ``false``, ignora los modificadores de entrada adicionales para los eventos :ref:`InputEventKey<class_InputEventKey>` e :ref:`InputEventMouseButton<class_InputEventMouseButton>`, y la dirección para los eventos :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

\ **Nota:** Debido al efecto fantasma del teclado, :ref:`is_action_pressed()<class_InputEvent_method_is_action_pressed>` puede devolver ``false`` incluso si una de las teclas de la acción está presionada. Consulta los `ejemplos de entrada <../tutorials/inputs/input_examples.html#keyboard-events>`__ en la documentación para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_released**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_released>`

Devuelve ``true`` si la acción dada coincide con este evento y ha sido liberada (es decir, no presionada). No es relevante para los eventos de tipo :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` o :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

Si ``exact_match`` es ``false``, ignora los modificadores de entrada adicionales para los eventos :ref:`InputEventKey<class_InputEventKey>` e :ref:`InputEventMouseButton<class_InputEventMouseButton>`, y la dirección para los eventos :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_type**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_type>`

Returns ``true`` if this input event's type is one that can be assigned to an input action: :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventAction<class_InputEventAction>`. Returns ``false`` for all other input event types.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_canceled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_canceled**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_canceled>`

Devuelve ``true`` si este evento de entrada ha sido cancelado.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_echo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_echo**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_echo>`

Devuelve ``true`` si este evento de entrada es un evento de eco (solo para eventos de tipo :ref:`InputEventKey<class_InputEventKey>`). Un evento de eco es un evento de tecla repetido que se envía cuando el usuario mantiene pulsada la tecla. Cualquier otro tipo de evento devuelve ``false``.

\ **Nota:** La velocidad a la que se envían los eventos de eco suele ser de unos 20 eventos por segundo (después de mantener pulsada la tecla durante aproximadamente medio segundo). Sin embargo, el retardo/velocidad de repetición de las teclas puede ser modificado por el usuario o desactivado por completo en la configuración del sistema operativo. Para asegurar que su proyecto funciona correctamente en todas las configuraciones, no asuma que el usuario tiene una configuración específica de repetición de teclas en el comportamiento de su proyecto.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_match:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_match**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_InputEvent_method_is_match>`

Devuelve ``true`` si el ``event`` especificado coincide con este evento. Solo es válido para eventos de acción, que incluyen tecla (:ref:`InputEventKey<class_InputEventKey>`), botón (:ref:`InputEventMouseButton<class_InputEventMouseButton>` o :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`), eje :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` y eventos de acción (:ref:`InputEventAction<class_InputEventAction>`).

Si ``exact_match`` es ``false``, la comprobación ignora los modificadores de entrada adicionales para los eventos :ref:`InputEventKey<class_InputEventKey>` y :ref:`InputEventMouseButton<class_InputEventMouseButton>`, y la dirección para los eventos :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

\ **Nota:** Este método solo considera la configuración del evento (como la tecla del teclado o el eje del joypad), no la información de estado como :ref:`is_pressed()<class_InputEvent_method_is_pressed>`, :ref:`is_released()<class_InputEvent_method_is_released>`, :ref:`is_echo()<class_InputEvent_method_is_echo>` o :ref:`is_canceled()<class_InputEvent_method_is_canceled>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_pressed>`

Devuelve ``true`` si este evento de entrada está presionado. No es relevante para eventos de tipo :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` o :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

\ **Nota:** Debido al efecto fantasma del teclado, :ref:`is_pressed()<class_InputEvent_method_is_pressed>` puede devolver ``false`` incluso si una de las teclas de la acción está presionada. Consulta `Ejemplos de entrada <../tutorials/inputs/input_examples.html#keyboard-events>`__ en la documentación para obtener más información.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_released**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_released>`

Devuelve ``true`` si este evento de entrada ha sido liberado. No es relevante para eventos de tipo :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` o :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_xformed_by:

.. rst-class:: classref-method

:ref:`InputEvent<class_InputEvent>` **xformed_by**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_InputEvent_method_xformed_by>`

Devuelve una copia del evento de entrada dado que ha sido desplazado por ``local_ofs`` y transformado por ``xform``. Relevante para eventos de tipo :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`, :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`, :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`, :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>` y :ref:`InputEventPanGesture<class_InputEventPanGesture>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
