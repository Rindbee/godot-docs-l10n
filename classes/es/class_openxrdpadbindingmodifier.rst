:github_url: hide

.. _class_OpenXRDpadBindingModifier:

OpenXRDpadBindingModifier
=========================

**Hereda:** :ref:`OpenXRIPBindingModifier<class_OpenXRIPBindingModifier>` **<** :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

El modificador de enlace DPad convierte una entrada de eje en una salida de dpad.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El modificador de enlace DPad convierte una entrada de eje en una salida de dpad, emulando un DPad. Se añadirán nuevas rutas de entrada para cada dirección del dpad al perfil de interacción. Cuando se vincula a acciones, la emulación del DPad se activará. **No** debe combinar entradas de dpad con entradas normales en el mismo conjunto de acciones para el mismo control, esto resultará en un error que se devolverá cuando se envíen los enlaces sugeridos a OpenXR.

Consulte `XR_EXT_dpad_binding <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_EXT_dpad_binding>`__ para obtener detalles en profundidad.

\ **Nota:** Si la extensión del modificador de enlace DPad está habilitada, todas las rutas de enlace de dpad estarán disponibles en el mapa de acciones. Añadir el modificador a un perfil de interacción le permite personalizar aún más el comportamiento.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`OpenXRActionSet<class_OpenXRActionSet>`   | :ref:`action_set<class_OpenXRDpadBindingModifier_property_action_set>`                 |               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`center_region<class_OpenXRDpadBindingModifier_property_center_region>`           | ``0.1``       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`String<class_String>`                     | :ref:`input_path<class_OpenXRDpadBindingModifier_property_input_path>`                 | ``""``        |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_sticky<class_OpenXRDpadBindingModifier_property_is_sticky>`                   | ``false``     |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`off_haptic<class_OpenXRDpadBindingModifier_property_off_haptic>`                 |               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` | :ref:`on_haptic<class_OpenXRDpadBindingModifier_property_on_haptic>`                   |               |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`threshold<class_OpenXRDpadBindingModifier_property_threshold>`                   | ``0.6``       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`threshold_released<class_OpenXRDpadBindingModifier_property_threshold_released>` | ``0.4``       |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>`                       | :ref:`wedge_angle<class_OpenXRDpadBindingModifier_property_wedge_angle>`               | ``1.5707964`` |
   +-------------------------------------------------+----------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_OpenXRDpadBindingModifier_property_action_set:

.. rst-class:: classref-property

:ref:`OpenXRActionSet<class_OpenXRActionSet>` **action_set** :ref:`🔗<class_OpenXRDpadBindingModifier_property_action_set>`

.. rst-class:: classref-property-setget

- |void| **set_action_set**\ (\ value\: :ref:`OpenXRActionSet<class_OpenXRActionSet>`\ )
- :ref:`OpenXRActionSet<class_OpenXRActionSet>` **get_action_set**\ (\ )

Conjunto de acciones para el que este modificador de enlace de dpad está activo.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_center_region:

.. rst-class:: classref-property

:ref:`float<class_float>` **center_region** = ``0.1`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_center_region>`

.. rst-class:: classref-property-setget

- |void| **set_center_region**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_center_region**\ (\ )

Región central en la que nuestra posición central de nuestro dpad devuelve ``true``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_input_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **input_path** = ``""`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_input_path>`

.. rst-class:: classref-property-setget

- |void| **set_input_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_input_path**\ (\ )

Ruta de entrada para este modificador de enlace de dpad.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_is_sticky:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_sticky** = ``false`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_is_sticky>`

.. rst-class:: classref-property-setget

- |void| **set_is_sticky**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_sticky**\ (\ )

Si es ``false``, cuando el joystick entra en una nueva zona de dpad, esto se convierte en ``true``.

Si es ``true``, cuando el joystick permanece en la zona dpad activa, esto permanece ``true`` incluso si nos superponemos con otra zona.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_off_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **off_haptic** :ref:`🔗<class_OpenXRDpadBindingModifier_property_off_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_off_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_off_haptic**\ (\ )

Haptic pulse to emit when the user releases the input.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_on_haptic:

.. rst-class:: classref-property

:ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **on_haptic** :ref:`🔗<class_OpenXRDpadBindingModifier_property_on_haptic>`

.. rst-class:: classref-property-setget

- |void| **set_on_haptic**\ (\ value\: :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`\ )
- :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **get_on_haptic**\ (\ )

Haptic pulse to emit when the user presses the input.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.6`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold**\ (\ )

Cuando nuestro valor de entrada es igual o mayor que este valor, nuestro dpad en esa dirección se convierte en ``true``. Permanece ``true`` hasta que cae por debajo del valor :ref:`threshold_released<class_OpenXRDpadBindingModifier_property_threshold_released>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_threshold_released:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold_released** = ``0.4`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_threshold_released>`

.. rst-class:: classref-property-setget

- |void| **set_threshold_released**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold_released**\ (\ )

When our input value falls below this, our output becomes ``false``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRDpadBindingModifier_property_wedge_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **wedge_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRDpadBindingModifier_property_wedge_angle>`

.. rst-class:: classref-property-setget

- |void| **set_wedge_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_wedge_angle**\ (\ )

El ángulo de cada cuña que identifica las 4 direcciones del dpad emulado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
