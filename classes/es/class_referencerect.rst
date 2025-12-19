:github_url: hide

.. _class_ReferenceRect:

ReferenceRect
=============

**Hereda:** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un cuadro rectangular para diseñar interfaces de usuario.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un cuadro rectangular que muestra solo un borde coloreado alrededor de su rectángulo (ver :ref:`Control.get_rect()<class_Control_method_get_rect>`). Puede ser utilizado para visualizar las extensiones de un nodo :ref:`Control<class_Control>`, para propósitos de prueba.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`border_color<class_ReferenceRect_property_border_color>` | ``Color(1, 0, 0, 1)`` |
   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`border_width<class_ReferenceRect_property_border_width>` | ``1.0``               |
   +---------------------------+----------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`editor_only<class_ReferenceRect_property_editor_only>`   | ``true``              |
   +---------------------------+----------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ReferenceRect_property_border_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **border_color** = ``Color(1, 0, 0, 1)`` :ref:`🔗<class_ReferenceRect_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_border_color**\ (\ )

Establece el color del borde del **ReferenceRect**.

.. rst-class:: classref-item-separator

----

.. _class_ReferenceRect_property_border_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_width** = ``1.0`` :ref:`🔗<class_ReferenceRect_property_border_width>`

.. rst-class:: classref-property-setget

- |void| **set_border_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_width**\ (\ )

Establece el ancho del borde del **ReferenceRect**. El borde crece tanto hacia adentro como hacia afuera con respecto al cuadro del rectángulo.

.. rst-class:: classref-item-separator

----

.. _class_ReferenceRect_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``true`` :ref:`🔗<class_ReferenceRect_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_editor_only**\ (\ )

Si es ``true``, el **ReferenceRect** solo será visible mientras esté en el editor. De lo contrario, el **ReferenceRect** será visible en el proyecto en ejecución.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
