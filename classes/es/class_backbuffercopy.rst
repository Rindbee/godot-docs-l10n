:github_url: hide

.. _class_BackBufferCopy:

BackBufferCopy
==============

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

A node that copies a region of the screen to a buffer for access in shader code.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Node for back-buffering the currently-displayed screen. The region defined in the **BackBufferCopy** node is buffered with the content of the screen it covers, or the entire screen according to the :ref:`copy_mode<class_BackBufferCopy_property_copy_mode>`. It can be accessed in shader scripts using the screen texture (i.e. a uniform sampler with ``hint_screen_texture``).

\ **Note:** Since this node inherits from :ref:`Node2D<class_Node2D>` (and not :ref:`Control<class_Control>`), anchors and margins won't apply to child :ref:`Control<class_Control>`-derived nodes. This can be problematic when resizing the window. To avoid this, add :ref:`Control<class_Control>`-derived nodes as *siblings* to the **BackBufferCopy** node instead of adding them as children.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Shaders de lectura de pantalla <../tutorials/shaders/screen-reading_shaders>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------+---------------------------------+
   | :ref:`CopyMode<enum_BackBufferCopy_CopyMode>` | :ref:`copy_mode<class_BackBufferCopy_property_copy_mode>` | ``1``                           |
   +-----------------------------------------------+-----------------------------------------------------------+---------------------------------+
   | :ref:`Rect2<class_Rect2>`                     | :ref:`rect<class_BackBufferCopy_property_rect>`           | ``Rect2(-100, -100, 200, 200)`` |
   +-----------------------------------------------+-----------------------------------------------------------+---------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_BackBufferCopy_CopyMode:

.. rst-class:: classref-enumeration

enum **CopyMode**: :ref:`🔗<enum_BackBufferCopy_CopyMode>`

.. _class_BackBufferCopy_constant_COPY_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **COPY_MODE_DISABLED** = ``0``

Disables the buffering mode. This means the **BackBufferCopy** node will directly use the portion of screen it covers.

.. _class_BackBufferCopy_constant_COPY_MODE_RECT:

.. rst-class:: classref-enumeration-constant

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **COPY_MODE_RECT** = ``1``

**BackBufferCopy** almacena una región rectangular.

.. _class_BackBufferCopy_constant_COPY_MODE_VIEWPORT:

.. rst-class:: classref-enumeration-constant

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **COPY_MODE_VIEWPORT** = ``2``

**BackBufferCopy** almacena toda la pantalla.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_BackBufferCopy_property_copy_mode:

.. rst-class:: classref-property

:ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **copy_mode** = ``1`` :ref:`🔗<class_BackBufferCopy_property_copy_mode>`

.. rst-class:: classref-property-setget

- |void| **set_copy_mode**\ (\ value\: :ref:`CopyMode<enum_BackBufferCopy_CopyMode>`\ )
- :ref:`CopyMode<enum_BackBufferCopy_CopyMode>` **get_copy_mode**\ (\ )

Modo de búfer.

.. rst-class:: classref-item-separator

----

.. _class_BackBufferCopy_property_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **rect** = ``Rect2(-100, -100, 200, 200)`` :ref:`🔗<class_BackBufferCopy_property_rect>`

.. rst-class:: classref-property-setget

- |void| **set_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_rect**\ (\ )

The area covered by the **BackBufferCopy**. Only used if :ref:`copy_mode<class_BackBufferCopy_property_copy_mode>` is :ref:`COPY_MODE_RECT<class_BackBufferCopy_constant_COPY_MODE_RECT>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
