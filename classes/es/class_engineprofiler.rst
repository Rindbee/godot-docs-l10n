:github_url: hide

.. _class_EngineProfiler:

EngineProfiler
==============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase base para crear perfiladores personalizados.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase se puede utilizar para implementar perfiladores personalizados que pueden interactuar con el motor y el depurador del editor.

Véase :ref:`EngineDebugger<class_EngineDebugger>` y :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>` para obtener más información.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_add_frame<class_EngineProfiler_private_method__add_frame>`\ (\ data\: :ref:`Array<class_Array>`\ ) |virtual|                                                                                                                                 |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_tick<class_EngineProfiler_private_method__tick>`\ (\ frame_time\: :ref:`float<class_float>`, process_time\: :ref:`float<class_float>`, physics_time\: :ref:`float<class_float>`, physics_frame_time\: :ref:`float<class_float>`\ ) |virtual| |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_toggle<class_EngineProfiler_private_method__toggle>`\ (\ enable\: :ref:`bool<class_bool>`, options\: :ref:`Array<class_Array>`\ ) |virtual|                                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EngineProfiler_private_method__add_frame:

.. rst-class:: classref-method

|void| **_add_frame**\ (\ data\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_EngineProfiler_private_method__add_frame>`

Se llama cuando se añaden datos al perfilador usando :ref:`EngineDebugger.profiler_add_frame_data()<class_EngineDebugger_method_profiler_add_frame_data>`.

.. rst-class:: classref-item-separator

----

.. _class_EngineProfiler_private_method__tick:

.. rst-class:: classref-method

|void| **_tick**\ (\ frame_time\: :ref:`float<class_float>`, process_time\: :ref:`float<class_float>`, physics_time\: :ref:`float<class_float>`, physics_frame_time\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_EngineProfiler_private_method__tick>`

Se llama una vez por cada iteración del motor cuando el perfilador está activo con información sobre el fotograma actual. Todos los valores de tiempo están en segundos. Los valores más bajos representan tiempos de procesamiento más rápidos y, por lo tanto, se consideran mejores.

.. rst-class:: classref-item-separator

----

.. _class_EngineProfiler_private_method__toggle:

.. rst-class:: classref-method

|void| **_toggle**\ (\ enable\: :ref:`bool<class_bool>`, options\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_EngineProfiler_private_method__toggle>`

Se llama cuando el perfilador se activa/desactiva, junto con un conjunto de ``options``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
