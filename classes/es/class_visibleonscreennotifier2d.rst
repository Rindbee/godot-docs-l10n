:github_url: hide

.. _class_VisibleOnScreenNotifier2D:

VisibleOnScreenNotifier2D
=========================

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`

Una región rectangular del espacio 2D que detecta si es visible en la pantalla.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**VisibleOnScreenNotifier2D** representa una región rectangular del espacio 2D. Cuando cualquier parte de esta región se hace visible en la pantalla o en un viewport, emitirá una señal de :ref:`screen_entered<class_VisibleOnScreenNotifier2D_signal_screen_entered>`, e igualmente emitirá una señal de :ref:`screen_exited<class_VisibleOnScreenNotifier2D_signal_screen_exited>` cuando ninguna parte de ella permanezca visible.

Si quieres que un nodo se active automáticamente cuando esta región sea visible en la pantalla, usa :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`.

\ **Nota:** **VisibleOnScreenNotifier2D** utiliza el código de culling de renderizado para determinar si es visible en la pantalla, por lo que no funcionará a menos que :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` esté establecido en ``true``.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Demo de Dodge The Creeps en 2D <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>`           | ``Rect2(-10, -10, 20, 20)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`   | :ref:`show_rect<class_VisibleOnScreenNotifier2D_property_show_rect>` | ``true``                    |
   +---------------------------+----------------------------------------------------------------------+-----------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier2D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_VisibleOnScreenNotifier2D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier2D_signal_screen_entered>`

Emitida cuando el VisibleOnScreenNotifier2D entra en la pantalla.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier2D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier2D_signal_screen_exited>`

Emitida cuando el VisibleOnScreenNotifier2D sale de la pantalla.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisibleOnScreenNotifier2D_property_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **rect** = ``Rect2(-10, -10, 20, 20)`` :ref:`🔗<class_VisibleOnScreenNotifier2D_property_rect>`

.. rst-class:: classref-property-setget

- |void| **set_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_rect**\ (\ )

El rectángulo delimitador del VisibleOnScreenNotifier2D.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier2D_property_show_rect:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_rect** = ``true`` :ref:`🔗<class_VisibleOnScreenNotifier2D_property_show_rect>`

.. rst-class:: classref-property-setget

- |void| **set_show_rect**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_rect**\ (\ )

Si es ``true``, muestra el área del rectángulo de :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>` en el editor con un relleno magenta translúcido. A diferencia de cambiar la visibilidad del VisibleOnScreenNotifier2D, esto no afecta la detección de culling de la pantalla.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VisibleOnScreenNotifier2D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier2D_method_is_on_screen>`

Si es ``true``, el rectángulo delimitador está en la pantalla.

\ **Nota:** Se necesita un fotograma para evaluar la visibilidad del nodo **VisibleOnScreenNotifier2D** una vez añadido al árbol de escenas, por lo que este método devolverá ``false`` justo después de ser instanciado, antes del pase de dibujado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
