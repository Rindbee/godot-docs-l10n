:github_url: hide

.. meta::
	:keywords: tray

.. _class_StatusIndicator:

StatusIndicator
===============

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Indicador de estado de la aplicación (también conocido como icono del área de notificación).

\ **Nota:** El indicador de estado está implementado en macOS y Windows.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`icon<class_StatusIndicator_property_icon>`       |                  |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`   | :ref:`menu<class_StatusIndicator_property_menu>`       | ``NodePath("")`` |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`String<class_String>`       | :ref:`tooltip<class_StatusIndicator_property_tooltip>` | ``""``           |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`           | :ref:`visible<class_StatusIndicator_property_visible>` | ``true``         |
   +-----------------------------------+--------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_rect<class_StatusIndicator_method_get_rect>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_StatusIndicator_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ mouse_button\: :ref:`int<class_int>`, mouse_position\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_StatusIndicator_signal_pressed>`

Emitida cuando se presiona el indicador de estado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_StatusIndicator_property_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_StatusIndicator_property_icon>`

.. rst-class:: classref-property-setget

- |void| **set_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_icon**\ (\ )

Icono indicador de estado.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_menu:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **menu** = ``NodePath("")`` :ref:`🔗<class_StatusIndicator_property_menu>`

.. rst-class:: classref-property-setget

- |void| **set_menu**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_menu**\ (\ )

Popup nativo del indicador de estado. Si se establece, la señal :ref:`pressed<class_StatusIndicator_signal_pressed>` no se emite.

\ **Nota:** El popup nativo solo es compatible si :ref:`NativeMenu<class_NativeMenu>` soporta la característica :ref:`NativeMenu.FEATURE_POPUP_MENU<class_NativeMenu_constant_FEATURE_POPUP_MENU>`.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_tooltip:

.. rst-class:: classref-property

:ref:`String<class_String>` **tooltip** = ``""`` :ref:`🔗<class_StatusIndicator_property_tooltip>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tooltip**\ (\ )

Status indicator tooltip.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_StatusIndicator_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Si es ``true``, el indicador de estado es visible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_StatusIndicator_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_StatusIndicator_method_get_rect>`

Devuelve el rectángulo del indicador de estado en coordenadas de pantalla. Si este indicador de estado no está visible, devuelve un :ref:`Rect2<class_Rect2>` vacío.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
