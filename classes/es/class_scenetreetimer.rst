:github_url: hide

.. _class_SceneTreeTimer:

SceneTreeTimer
==============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un temporizador de un solo uso.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un temporizador de un solo uso gestionado por el árbol de escenas, que emite :ref:`timeout<class_SceneTreeTimer_signal_timeout>` al finalizar. Véase también :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`.

A diferencia de :ref:`Timer<class_Timer>`, no requiere la instanciación de un nodo. Se utiliza comúnmente para crear un temporizador de retardo de un solo uso como en el siguiente ejemplo:


.. tabs::

 .. code-tab:: gdscript

    func some_function():
        print("Temporizador iniciado.")
        await get_tree().create_timer(1.0).timeout
        print("Temporizador finalizado.")

 .. code-tab:: csharp

    public async Task SomeFunction()
    {
        GD.Print("Temporizador iniciado.");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("Temporizador finalizado.");
    }



El temporizador se desreferenciará cuando su tiempo se agote. Para conservar el temporizador, puedes mantener una referencia a él. Véase :ref:`RefCounted<class_RefCounted>`.

\ **Nota:** El temporizador se procesa después de todos los nodos del fotograma actual, es decir, el método :ref:`Node._process()<class_Node_private_method__process>` de un nodo se llamaría antes que el temporizador (o :ref:`Node._physics_process()<class_Node_private_method__physics_process>` si ``process_in_physics`` en :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>` se ha establecido en ``true``).

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`time_left<class_SceneTreeTimer_property_time_left>` |
   +---------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_SceneTreeTimer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_SceneTreeTimer_signal_timeout>`

Emitida cuando el temporizador llega a 0.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SceneTreeTimer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_SceneTreeTimer_property_time_left>`

.. rst-class:: classref-property-setget

- |void| **set_time_left**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_left**\ (\ )

El tiempo restante (en segundos).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
