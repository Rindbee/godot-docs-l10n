:github_url: hide

.. _class_Tweener:

Tweener
=======

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`CallbackTweener<class_CallbackTweener>`, :ref:`IntervalTweener<class_IntervalTweener>`, :ref:`MethodTweener<class_MethodTweener>`, :ref:`PropertyTweener<class_PropertyTweener>`, :ref:`SubtweenTweener<class_SubtweenTweener>`

Clase abstracta para todos los Tweeners utilizados por :ref:`Tween<class_Tween>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los Tweeners son objetos que realizan una tarea de animación específica, por ejemplo, interpolar una propiedad o llamar a un método en un momento dado. Un **Tweener** no puede ser creado manualmente, necesitas usar un método dedicado de :ref:`Tween<class_Tween>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_Tweener_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_Tweener_signal_finished>`

Emitida cuando el **Tweener** acaba de terminar su trabajo o se volvió inválido (por ejemplo, debido a un objeto liberado).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
