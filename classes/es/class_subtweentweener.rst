:github_url: hide

.. _class_SubtweenTweener:

SubtweenTweener
===============

**Hereda:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Runs a :ref:`Tween<class_Tween>` nested within another :ref:`Tween<class_Tween>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**SubtweenTweener** is used to execute a :ref:`Tween<class_Tween>` as one step in a sequence defined by another :ref:`Tween<class_Tween>`. See :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>` for more usage information.

\ **Note:** :ref:`Tween.tween_subtween()<class_Tween_method_tween_subtween>` is the only correct way to create **SubtweenTweener**. Any **SubtweenTweener** created manually will not function correctly.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+
   | :ref:`SubtweenTweener<class_SubtweenTweener>` | :ref:`set_delay<class_SubtweenTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ ) |
   +-----------------------------------------------+---------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_SubtweenTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`SubtweenTweener<class_SubtweenTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_SubtweenTweener_method_set_delay>`

Sets the time in seconds after which the **SubtweenTweener** will start running the subtween. By default there's no delay.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
