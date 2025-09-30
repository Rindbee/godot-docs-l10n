:github_url: hide

.. _class_EditorDebuggerSession:

EditorDebuggerSession
=====================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una clase para interactuar con el depurador del editor.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase no puede instanciarse directamente y debe obtenerse a través de un :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>`.

Puedes añadir pestañas a la IU de la sesión a través de :ref:`add_session_tab()<class_EditorDebuggerSession_method_add_session_tab>`, enviar mensajes a través de :ref:`send_message()<class_EditorDebuggerSession_method_send_message>`, y alternar :ref:`EngineProfiler<class_EngineProfiler>`\ s a través de :ref:`toggle_profiler()<class_EditorDebuggerSession_method_toggle_profiler>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`add_session_tab<class_EditorDebuggerSession_method_add_session_tab>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                         |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_active<class_EditorDebuggerSession_method_is_active>`\ (\ )                                                                                                                              |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_breaked<class_EditorDebuggerSession_method_is_breaked>`\ (\ )                                                                                                                            |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_debuggable<class_EditorDebuggerSession_method_is_debuggable>`\ (\ )                                                                                                                      |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`remove_session_tab<class_EditorDebuggerSession_method_remove_session_tab>`\ (\ control\: :ref:`Control<class_Control>`\ )                                                                   |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`send_message<class_EditorDebuggerSession_method_send_message>`\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>` = []\ )                                          |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_breakpoint<class_EditorDebuggerSession_method_set_breakpoint>`\ (\ path\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ )               |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`toggle_profiler<class_EditorDebuggerSession_method_toggle_profiler>`\ (\ profiler\: :ref:`String<class_String>`, enable\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>` = []\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_EditorDebuggerSession_signal_breaked:

.. rst-class:: classref-signal

**breaked**\ (\ can_debug\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorDebuggerSession_signal_breaked>`

Emitida cuando la instancia remota adjunta entra en un estado de interrupción. Si ``can_debug`` es ``true``, la instancia remota entrará en el bucle de depuración.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_continued:

.. rst-class:: classref-signal

**continued**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_continued>`

Emitida cuando la instancia remota adjunta sale de un estado de interrupción.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_started:

.. rst-class:: classref-signal

**started**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_started>`

Emitida cuando una instancia remota se adjunta a esta sesión (es decir, la sesión se vuelve activa).

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_stopped:

.. rst-class:: classref-signal

**stopped**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_stopped>`

Emitida cuando una instancia remota se separa de esta sesión (es decir, la sesión se vuelve inactiva).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorDebuggerSession_method_add_session_tab:

.. rst-class:: classref-method

|void| **add_session_tab**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_add_session_tab>`

Añade el ``control`` dado a la IU de la sesión de depuración en el panel inferior del depurador. El nombre del nodo de ``control`` se utilizará como título de la pestaña.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_active>`

Devuelve ``true`` si la sesión de depuración está actualmente conectada a una instancia remota.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_breaked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_breaked**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_breaked>`

Devuelve ``true`` si la instancia remota adjunta está actualmente en el bucle de depuración.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_debuggable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_debuggable**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_debuggable>`

Devuelve ``true`` si la instancia remota adjunta se puede depurar.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_remove_session_tab:

.. rst-class:: classref-method

|void| **remove_session_tab**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_remove_session_tab>`

Elimina el ``control`` dado de la IU de la sesión de depuración en el panel inferior del depurador.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_send_message:

.. rst-class:: classref-method

|void| **send_message**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EditorDebuggerSession_method_send_message>`

Envía el ``message`` dado a la instancia remota adjunta, opcionalmente pasando además ``data``. Véase :ref:`EngineDebugger<class_EngineDebugger>` para saber cómo recuperar esos mensajes.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_set_breakpoint:

.. rst-class:: classref-method

|void| **set_breakpoint**\ (\ path\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_set_breakpoint>`

Activa o desactiva un punto de interrupción específico basado en ``enabled``, actualizando el Panel de puntos de interrupción del editor según corresponda.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_toggle_profiler:

.. rst-class:: classref-method

|void| **toggle_profiler**\ (\ profiler\: :ref:`String<class_String>`, enable\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EditorDebuggerSession_method_toggle_profiler>`

Activa o desactiva el ``profiler`` dado en la instancia remota adjunta, opcionalmente pasando además ``data``. Véase :ref:`EngineProfiler<class_EngineProfiler>` para obtener más detalles.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
