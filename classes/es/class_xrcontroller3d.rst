:github_url: hide

.. _class_XRController3D:

XRController3D
==============

**Hereda:** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo 3D que representa un controlador rastreado espacialmente.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este es un nodo 3D auxiliar vinculado al seguimiento de los mandos. También ofrece varias conexiones útiles al estado de los botones y demás en los mandos.

Los mandos se vinculan por su ID. Puedes crear nodos de mando antes de que estén disponibles. Si tu juego siempre usa dos mandos (uno para cada mano), puedes predefinirlos con los ID 1 y 2; se activarán en cuanto se identifiquen. Si prevés el uso de mandos adicionales, debes reaccionar a las señales y añadir nodos XRController3D a tu escena.

La posición del nodo de mando se actualiza automáticamente mediante :ref:`XRServer<class_XRServer>`. Esto hace que este nodo sea ideal para añadir nodos hijos y visualizar el mando.

La :ref:`XRInterface<class_XRInterface>` actual define los nombres de las entradas. En el caso de OpenXR, estos son los nombres de las acciones del conjunto de acciones actual del mapa de acciones de OpenXR.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Índice de documentación XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                | :ref:`get_float<class_XRController3D_method_get_float>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                            | :ref:`get_input<class_XRController3D_method_get_input>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                 |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` | :ref:`get_tracker_hand<class_XRController3D_method_get_tracker_hand>`\ (\ ) |const|                                               |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                            | :ref:`get_vector2<class_XRController3D_method_get_vector2>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|             |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`is_button_pressed<class_XRController3D_method_is_button_pressed>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| |
   +----------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_XRController3D_signal_button_pressed:

.. rst-class:: classref-signal

**button_pressed**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_pressed>`

Emitida cuando se presiona un botón de este controlador.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_button_released:

.. rst-class:: classref-signal

**button_released**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_button_released>`

Emitida cuando se libera un botón de este controlador.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_float_changed:

.. rst-class:: classref-signal

**input_float_changed**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRController3D_signal_input_float_changed>`

Emitida cuando un disparador o entrada similar en este controlador cambia de valor.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_input_vector2_changed:

.. rst-class:: classref-signal

**input_vector2_changed**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_XRController3D_signal_input_vector2_changed>`

Emitida cuando se mueve un joystick o un pad en este controlador.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_signal_profile_changed:

.. rst-class:: classref-signal

**profile_changed**\ (\ role\: :ref:`String<class_String>`\ ) :ref:`🔗<class_XRController3D_signal_profile_changed>`

Emitida cuando se cambia el perfil de interacción en este controlador.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_XRController3D_method_get_float:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_float**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_float>`

Devuelve un valor numérico para la entrada con el ``name`` dado. Esto se utiliza para los gatillos y los sensores de agarre.

\ **Nota:** La :ref:`XRInterface<class_XRInterface>` actual define el ``name`` para cada entrada. En el caso de OpenXR, estos son los nombres de las acciones en el conjunto de acciones actual.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_input:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_input**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_input>`

Devuelve una :ref:`Variant<class_Variant>` para la entrada con el ``name`` dado. Esto funciona para cualquier tipo de entrada, la variante se tecleará de acuerdo con la configuración de las acciones.

\ **Nota:** La :ref:`XRInterface<class_XRInterface>` actual define el ``name`` para cada entrada. En el caso de OpenXR, estos son los nombres de las acciones en el conjunto de acciones actual.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_tracker_hand:

.. rst-class:: classref-method

:ref:`TrackerHand<enum_XRPositionalTracker_TrackerHand>` **get_tracker_hand**\ (\ ) |const| :ref:`🔗<class_XRController3D_method_get_tracker_hand>`

Devuelve la mano que sostiene este controlador, si se conoce.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_get_vector2:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_vector2**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_get_vector2>`

Devuelve un :ref:`Vector2<class_Vector2>` para la entrada con el ``name`` dado. Esto se utiliza para los joysticks y los paneles táctiles que se encuentran en muchos mandos.

\ **Nota:** La :ref:`XRInterface<class_XRInterface>` actual define el ``name`` para cada entrada. En el caso de OpenXR, estos son los nombres de las acciones en el conjunto de acciones actual.

.. rst-class:: classref-item-separator

----

.. _class_XRController3D_method_is_button_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_button_pressed**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_XRController3D_method_is_button_pressed>`

Devuelve ``true`` si el botón con el ``name`` dado está presionado.

\ **Nota:** La :ref:`XRInterface<class_XRInterface>` actual define el ``name`` para cada entrada. En el caso de OpenXR, estos son los nombres de las acciones en el conjunto de acciones actual.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
