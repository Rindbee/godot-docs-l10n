:github_url: hide

.. _class_TouchScreenButton:

TouchScreenButton
=================

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Botón para dispositivos de pantalla táctil para uso en juegos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

TouchScreenButton te permite crear botones en pantalla para dispositivos táctiles. Está pensado para su uso en el juego, como una unidad que tienes que tocar para mover. A diferencia de :ref:`Button<class_Button>`, TouchScreenButton soporta multi-táctil de fábrica. Se pueden pulsar varios TouchScreenButtons al mismo tiempo con la entrada táctil.

Este nodo hereda de :ref:`Node2D<class_Node2D>`. A diferencia de los nodos :ref:`Control<class_Control>`, no puedes fijar anclajes en él. Si quieres crear menús o interfaces de usuario, puede que quieras usar nodos :ref:`Button<class_Button>` en su lugar. Para hacer que los nodos de botón reaccionen a los eventos táctiles, puedes activar :ref:`ProjectSettings.input_devices/pointing/emulate_mouse_from_touch<class_ProjectSettings_property_input_devices/pointing/emulate_mouse_from_touch>` en la Configuración del Proyecto.

Puedes configurar TouchScreenButton para que sea visible sólo en dispositivos táctiles, ayudándote a desarrollar tu juego tanto para ordenadores de escritorio como para dispositivos móviles.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                  | :ref:`action<class_TouchScreenButton_property_action>`                   | ``""``    |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`BitMap<class_BitMap>`                                  | :ref:`bitmask<class_TouchScreenButton_property_bitmask>`                 |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`passby_press<class_TouchScreenButton_property_passby_press>`       | ``false`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Shape2D<class_Shape2D>`                                | :ref:`shape<class_TouchScreenButton_property_shape>`                     |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`shape_centered<class_TouchScreenButton_property_shape_centered>`   | ``true``  |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                      | :ref:`shape_visible<class_TouchScreenButton_property_shape_visible>`     | ``true``  |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture_normal<class_TouchScreenButton_property_texture_normal>`   |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture_pressed<class_TouchScreenButton_property_texture_pressed>` |           |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+
   | :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` | :ref:`visibility_mode<class_TouchScreenButton_property_visibility_mode>` | ``0``     |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_pressed<class_TouchScreenButton_method_is_pressed>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_TouchScreenButton_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ ) :ref:`🔗<class_TouchScreenButton_signal_pressed>`

Emitida cuando se presiona el botón (abajo).

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_signal_released:

.. rst-class:: classref-signal

**released**\ (\ ) :ref:`🔗<class_TouchScreenButton_signal_released>`

Emitida cuando se suelta el botón (arriba).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_TouchScreenButton_VisibilityMode:

.. rst-class:: classref-enumeration

enum **VisibilityMode**: :ref:`🔗<enum_TouchScreenButton_VisibilityMode>`

.. _class_TouchScreenButton_constant_VISIBILITY_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **VISIBILITY_ALWAYS** = ``0``

Siempre visible.

.. _class_TouchScreenButton_constant_VISIBILITY_TOUCHSCREEN_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **VISIBILITY_TOUCHSCREEN_ONLY** = ``1``

Visible sólo en las pantallas táctiles.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TouchScreenButton_property_action:

.. rst-class:: classref-property

:ref:`String<class_String>` **action** = ``""`` :ref:`🔗<class_TouchScreenButton_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_action**\ (\ )

La acción del botón. Las acciones se pueden manejar con :ref:`InputEventAction<class_InputEventAction>`.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_bitmask:

.. rst-class:: classref-property

:ref:`BitMap<class_BitMap>` **bitmask** :ref:`🔗<class_TouchScreenButton_property_bitmask>`

.. rst-class:: classref-property-setget

- |void| **set_bitmask**\ (\ value\: :ref:`BitMap<class_BitMap>`\ )
- :ref:`BitMap<class_BitMap>` **get_bitmask**\ (\ )

La máscara del botón.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_passby_press:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **passby_press** = ``false`` :ref:`🔗<class_TouchScreenButton_property_passby_press>`

.. rst-class:: classref-property-setget

- |void| **set_passby_press**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_passby_press_enabled**\ (\ )

Si es ``true``, las señales :ref:`pressed<class_TouchScreenButton_signal_pressed>` y :ref:`released<class_TouchScreenButton_signal_released>` se emiten cada vez que un dedo presionado entra y sale del botón, incluso si la presión comenzó fuera del área activa del botón.

\ **Nota:** Este es un modo de presión de "pasar por" (no "pasar por alto").

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_TouchScreenButton_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

La forma del botón.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shape_centered** = ``true`` :ref:`🔗<class_TouchScreenButton_property_shape_centered>`

.. rst-class:: classref-property-setget

- |void| **set_shape_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shape_centered**\ (\ )

Si es ``true``, la forma del botón se centra en la textura proporcionada. Si no se utiliza ninguna textura, esta propiedad no tiene ningún efecto.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_shape_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shape_visible** = ``true`` :ref:`🔗<class_TouchScreenButton_property_shape_visible>`

.. rst-class:: classref-property-setget

- |void| **set_shape_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shape_visible**\ (\ )

Si es ``true``, la forma del botón es visible en el editor.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_TouchScreenButton_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture_normal**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_normal**\ (\ )

La textura del botón para el estado normal.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_texture_pressed:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_pressed** :ref:`🔗<class_TouchScreenButton_property_texture_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_texture_pressed**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture_pressed**\ (\ )

La textura del botón para el estado presionado.

.. rst-class:: classref-item-separator

----

.. _class_TouchScreenButton_property_visibility_mode:

.. rst-class:: classref-property

:ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **visibility_mode** = ``0`` :ref:`🔗<class_TouchScreenButton_property_visibility_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_mode**\ (\ value\: :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>`\ )
- :ref:`VisibilityMode<enum_TouchScreenButton_VisibilityMode>` **get_visibility_mode**\ (\ )

Modo de visibilidad del botón.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TouchScreenButton_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_TouchScreenButton_method_is_pressed>`

Devuelve ``true`` si este botón está actualmente pulsado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
