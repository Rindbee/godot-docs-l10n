:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/ButtonGroup.xml.

.. _class_ButtonGroup:

ButtonGroup
===========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A group of buttons that doesn't allow more than one button to be pressed at a time.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A group of :ref:`BaseButton<class_BaseButton>`-derived buttons. The buttons in a **ButtonGroup** are treated like radio buttons: No more than one button can be pressed at a time. Some types of buttons (such as :ref:`CheckBox<class_CheckBox>`) may have a special appearance in this state.

Every member of a **ButtonGroup** should have :ref:`BaseButton.toggle_mode<class_BaseButton_property_toggle_mode>` set to ``true``.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`allow_unpress<class_ButtonGroup_property_allow_unpress>` | ``false``                                                                             |
   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene                                        | ``true`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+----------------------------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`BaseButton<class_BaseButton>`\] | :ref:`get_buttons<class_ButtonGroup_method_get_buttons>`\ (\ )               |
   +------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`BaseButton<class_BaseButton>`                              | :ref:`get_pressed_button<class_ButtonGroup_method_get_pressed_button>`\ (\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_ButtonGroup_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ button\: :ref:`BaseButton<class_BaseButton>`\ ) :ref:`🔗<class_ButtonGroup_signal_pressed>`

Emitida cuando se presiona uno de los botones del grupo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ButtonGroup_property_allow_unpress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_unpress** = ``false`` :ref:`🔗<class_ButtonGroup_property_allow_unpress>`

.. rst-class:: classref-property-setget

- |void| **set_allow_unpress**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_unpress**\ (\ )

If ``true``, it is possible to unpress all buttons in this **ButtonGroup**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_ButtonGroup_method_get_buttons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`BaseButton<class_BaseButton>`\] **get_buttons**\ (\ ) :ref:`🔗<class_ButtonGroup_method_get_buttons>`

Returns an :ref:`Array<class_Array>` of :ref:`Button<class_Button>`\ s who have this as their **ButtonGroup** (see :ref:`BaseButton.button_group<class_BaseButton_property_button_group>`).

.. rst-class:: classref-item-separator

----

.. _class_ButtonGroup_method_get_pressed_button:

.. rst-class:: classref-method

:ref:`BaseButton<class_BaseButton>` **get_pressed_button**\ (\ ) :ref:`🔗<class_ButtonGroup_method_get_pressed_button>`

Devuelve el botón pulsado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
