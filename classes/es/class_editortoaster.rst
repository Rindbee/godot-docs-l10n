:github_url: hide

.. _class_EditorToaster:

EditorToaster
=============

**Hereda:** :ref:`HBoxContainer<class_HBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Gestiona las notificaciones toast dentro del editor.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este objeto gestiona la funcionalidad y la visualización de las notificaciones toast dentro del editor, asegurando que se presenten alertas oportunas e informativas a los usuarios.

\ **Nota:** Esta clase no debe ser instanciada directamente. En su lugar, accede al singleton usando :ref:`EditorInterface.get_editor_toaster()<class_EditorInterface_method_get_editor_toaster>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`push_toast<class_EditorToaster_method_push_toast>`\ (\ message\: :ref:`String<class_String>`, severity\: :ref:`Severity<enum_EditorToaster_Severity>` = 0, tooltip\: :ref:`String<class_String>` = ""\ ) |
   +--------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_EditorToaster_Severity:

.. rst-class:: classref-enumeration

enum **Severity**: :ref:`🔗<enum_EditorToaster_Severity>`

.. _class_EditorToaster_constant_SEVERITY_INFO:

.. rst-class:: classref-enumeration-constant

:ref:`Severity<enum_EditorToaster_Severity>` **SEVERITY_INFO** = ``0``

La notificación toast se mostrará con una severidad INFO.

.. _class_EditorToaster_constant_SEVERITY_WARNING:

.. rst-class:: classref-enumeration-constant

:ref:`Severity<enum_EditorToaster_Severity>` **SEVERITY_WARNING** = ``1``

La notificación toast se mostrará con una severidad WARNING y tendrá un color correspondiente.

.. _class_EditorToaster_constant_SEVERITY_ERROR:

.. rst-class:: classref-enumeration-constant

:ref:`Severity<enum_EditorToaster_Severity>` **SEVERITY_ERROR** = ``2``

La notificación toast se mostrará con una severidad ERROR y tendrá un color correspondiente.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorToaster_method_push_toast:

.. rst-class:: classref-method

|void| **push_toast**\ (\ message\: :ref:`String<class_String>`, severity\: :ref:`Severity<enum_EditorToaster_Severity>` = 0, tooltip\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_EditorToaster_method_push_toast>`

Muestra una notificación toast en el editor.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
