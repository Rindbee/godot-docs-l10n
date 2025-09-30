:github_url: hide

.. _class_InputEventShortcut:

InputEventShortcut
==================

**Hereda:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Represents a triggered keyboard :ref:`Shortcut<class_Shortcut>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

InputEventShortcut is a special event that can be received in :ref:`Node._input()<class_Node_private_method__input>`, :ref:`Node._shortcut_input()<class_Node_private_method__shortcut_input>`, and :ref:`Node._unhandled_input()<class_Node_private_method__unhandled_input>`. It is typically sent by the editor's Command Palette to trigger actions, but can also be sent manually using :ref:`Viewport.push_input()<class_Viewport_method_push_input>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------+
   | :ref:`Shortcut<class_Shortcut>` | :ref:`shortcut<class_InputEventShortcut_property_shortcut>` |
   +---------------------------------+-------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_InputEventShortcut_property_shortcut:

.. rst-class:: classref-property

:ref:`Shortcut<class_Shortcut>` **shortcut** :ref:`🔗<class_InputEventShortcut_property_shortcut>`

.. rst-class:: classref-property-setget

- |void| **set_shortcut**\ (\ value\: :ref:`Shortcut<class_Shortcut>`\ )
- :ref:`Shortcut<class_Shortcut>` **get_shortcut**\ (\ )

The :ref:`Shortcut<class_Shortcut>` represented by this event. Its :ref:`Shortcut.matches_event()<class_Shortcut_method_matches_event>` method will always return ``true`` for this event.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
