:github_url: hide

.. _class_CallbackTweener:

CallbackTweener
===============

**Hereda:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Llama al método especificado después de un retraso opcional.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**CallbackTweener** is used to call a method in a tweening sequence. See :ref:`Tween.tween_callback()<class_Tween_method_tween_callback>` for more usage information.

The tweener will finish automatically if the callback's target object is freed.

\ **Note:** :ref:`Tween.tween_callback()<class_Tween_method_tween_callback>` is the only correct way to create **CallbackTweener**. Any **CallbackTweener** created manually will not function correctly.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`CallbackTweener<class_CallbackTweener>` | :ref:`set_delay<class_CallbackTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CallbackTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`CallbackTweener<class_CallbackTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_CallbackTweener_method_set_delay>`

Makes the callback call delayed by given time in seconds.

\ **Example:** Call :ref:`Node.queue_free()<class_Node_method_queue_free>` after 2 seconds:

::

    var tween = get_tree().create_tween()
    tween.tween_callback(queue_free).set_delay(2)

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
