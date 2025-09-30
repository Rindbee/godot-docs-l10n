:github_url: hide

.. _class_EngineDebugger:

EngineDebugger
==============

**Hereda:** :ref:`Object<class_Object>`

Expone el depurador interno.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**EngineDebugger** handles the communication between the editor and the running game. It is active in the running game. Messages can be sent/received through it. It also manages the profilers.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_breakpoints<class_EngineDebugger_method_clear_breakpoints>`\ (\ )                                                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`debug<class_EngineDebugger_method_debug>`\ (\ can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ )                                                                       |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_depth<class_EngineDebugger_method_get_depth>`\ (\ ) |const|                                                                                                                                                             |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_lines_left<class_EngineDebugger_method_get_lines_left>`\ (\ ) |const|                                                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_capture<class_EngineDebugger_method_has_capture>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_profiler<class_EngineDebugger_method_has_profiler>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`insert_breakpoint<class_EngineDebugger_method_insert_breakpoint>`\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ )                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_active<class_EngineDebugger_method_is_active>`\ (\ )                                                                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_breakpoint<class_EngineDebugger_method_is_breakpoint>`\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) |const|                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_profiling<class_EngineDebugger_method_is_profiling>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                                   |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_skipping_breakpoints<class_EngineDebugger_method_is_skipping_breakpoints>`\ (\ ) |const|                                                                                                                                 |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`line_poll<class_EngineDebugger_method_line_poll>`\ (\ )                                                                                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`profiler_add_frame_data<class_EngineDebugger_method_profiler_add_frame_data>`\ (\ name\: :ref:`StringName<class_StringName>`, data\: :ref:`Array<class_Array>`\ )                                                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`profiler_enable<class_EngineDebugger_method_profiler_enable>`\ (\ name\: :ref:`StringName<class_StringName>`, enable\: :ref:`bool<class_bool>`, arguments\: :ref:`Array<class_Array>` = []\ )                               |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`register_message_capture<class_EngineDebugger_method_register_message_capture>`\ (\ name\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ )                                               |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`register_profiler<class_EngineDebugger_method_register_profiler>`\ (\ name\: :ref:`StringName<class_StringName>`, profiler\: :ref:`EngineProfiler<class_EngineProfiler>`\ )                                                 |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`remove_breakpoint<class_EngineDebugger_method_remove_breakpoint>`\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ )                                                                         |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`script_debug<class_EngineDebugger_method_script_debug>`\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`, can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`send_message<class_EngineDebugger_method_send_message>`\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`\ )                                                                                      |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_depth<class_EngineDebugger_method_set_depth>`\ (\ depth\: :ref:`int<class_int>`\ )                                                                                                                                      |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_lines_left<class_EngineDebugger_method_set_lines_left>`\ (\ lines\: :ref:`int<class_int>`\ )                                                                                                                            |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`unregister_message_capture<class_EngineDebugger_method_unregister_message_capture>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                       |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`unregister_profiler<class_EngineDebugger_method_unregister_profiler>`\ (\ name\: :ref:`StringName<class_StringName>`\ )                                                                                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EngineDebugger_method_clear_breakpoints:

.. rst-class:: classref-method

|void| **clear_breakpoints**\ (\ ) :ref:`🔗<class_EngineDebugger_method_clear_breakpoints>`

Limpia todos los puntos de interrupción.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_debug:

.. rst-class:: classref-method

|void| **debug**\ (\ can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EngineDebugger_method_debug>`

Starts a debug break in script execution, optionally specifying whether the program can continue based on ``can_continue`` and whether the break was due to a breakpoint.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_depth**\ (\ ) |const| :ref:`🔗<class_EngineDebugger_method_get_depth>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Devuelve la profundidad de depuración actual.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_get_lines_left:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_lines_left**\ (\ ) |const| :ref:`🔗<class_EngineDebugger_method_get_lines_left>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Devuelve el número de líneas que quedan.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_has_capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_capture**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_has_capture>`

Devuelve ``true`` si existe una captura con el nombre dado, de lo contrario, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_has_profiler:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_profiler**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_has_profiler>`

Devuelve ``true`` si existe un perfilador con el nombre dado, de lo contrario, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_insert_breakpoint:

.. rst-class:: classref-method

|void| **insert_breakpoint**\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_insert_breakpoint>`

Inserta un nuevo punto de interrupción con la ``source`` y ``line`` dadas.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) :ref:`🔗<class_EngineDebugger_method_is_active>`

Devuelve ``true`` si el depurador está activo, de lo contrario, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_breakpoint:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_breakpoint**\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_EngineDebugger_method_is_breakpoint>`

Devuelve ``true`` si la ``source`` y ``line`` dadas representan un punto de interrupción existente.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_profiling:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_profiling**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_is_profiling>`

Devuelve ``true`` si un perfilador con el nombre dado está presente y activo, de lo contrario, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_is_skipping_breakpoints:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_skipping_breakpoints**\ (\ ) |const| :ref:`🔗<class_EngineDebugger_method_is_skipping_breakpoints>`

Devuelve ``true`` si el depurador está omitiendo puntos de interrupción, de lo contrario, devuelve ``false``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_line_poll:

.. rst-class:: classref-method

|void| **line_poll**\ (\ ) :ref:`🔗<class_EngineDebugger_method_line_poll>`

Forces a processing loop of debugger events. The purpose of this method is just processing events every now and then when the script might get too busy, so that bugs like infinite loops can be caught.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_profiler_add_frame_data:

.. rst-class:: classref-method

|void| **profiler_add_frame_data**\ (\ name\: :ref:`StringName<class_StringName>`, data\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_EngineDebugger_method_profiler_add_frame_data>`

Calls the ``add`` callable of the profiler with given ``name`` and ``data``.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_profiler_enable:

.. rst-class:: classref-method

|void| **profiler_enable**\ (\ name\: :ref:`StringName<class_StringName>`, enable\: :ref:`bool<class_bool>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EngineDebugger_method_profiler_enable>`

Calls the ``toggle`` callable of the profiler with given ``name`` and ``arguments``. Enables/Disables the same profiler depending on ``enable`` argument.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_register_message_capture:

.. rst-class:: classref-method

|void| **register_message_capture**\ (\ name\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_EngineDebugger_method_register_message_capture>`

Registers a message capture with given ``name``. If ``name`` is "my_message" then messages starting with "my_message:" will be called with the given callable.

The callable must accept a message string and a data array as argument. The callable should return ``true`` if the message is recognized.

\ **Note:** The callable will receive the message with the prefix stripped, unlike :ref:`EditorDebuggerPlugin._capture()<class_EditorDebuggerPlugin_private_method__capture>`. See the :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>` description for an example.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_register_profiler:

.. rst-class:: classref-method

|void| **register_profiler**\ (\ name\: :ref:`StringName<class_StringName>`, profiler\: :ref:`EngineProfiler<class_EngineProfiler>`\ ) :ref:`🔗<class_EngineDebugger_method_register_profiler>`

Registers a profiler with the given ``name``. See :ref:`EngineProfiler<class_EngineProfiler>` for more information.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_remove_breakpoint:

.. rst-class:: classref-method

|void| **remove_breakpoint**\ (\ line\: :ref:`int<class_int>`, source\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_remove_breakpoint>`

Elimina un punto de interrupción con la ``source`` y ``line`` dadas.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_script_debug:

.. rst-class:: classref-method

|void| **script_debug**\ (\ language\: :ref:`ScriptLanguage<class_ScriptLanguage>`, can_continue\: :ref:`bool<class_bool>` = true, is_error_breakpoint\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_EngineDebugger_method_script_debug>`

Starts a debug break in script execution, optionally specifying whether the program can continue based on ``can_continue`` and whether the break was due to a breakpoint.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_send_message:

.. rst-class:: classref-method

|void| **send_message**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_EngineDebugger_method_send_message>`

Sends a message with given ``message`` and ``data`` array.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_set_depth:

.. rst-class:: classref-method

|void| **set_depth**\ (\ depth\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EngineDebugger_method_set_depth>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Establece la profundidad de depuración actual.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_set_lines_left:

.. rst-class:: classref-method

|void| **set_lines_left**\ (\ lines\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EngineDebugger_method_set_lines_left>`

**Experimental:** Este método podría ser modificado o eliminado en versiones futuras.

Establece las líneas de depuración actuales que quedan.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_unregister_message_capture:

.. rst-class:: classref-method

|void| **unregister_message_capture**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_unregister_message_capture>`

Anula el registro de la captura de mensajes con el ``name`` indicado.

.. rst-class:: classref-item-separator

----

.. _class_EngineDebugger_method_unregister_profiler:

.. rst-class:: classref-method

|void| **unregister_profiler**\ (\ name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_EngineDebugger_method_unregister_profiler>`

Anula el registro de un generador de perfiles con el ``name`` especificado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
