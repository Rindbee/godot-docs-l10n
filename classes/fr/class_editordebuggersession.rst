:github_url: hide

.. _class_EditorDebuggerSession:

EditorDebuggerSession
=====================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une classe pour interagir avec le débogueur de l'éditeur.

.. rst-class:: classref-introduction-group

Description
-----------

This class cannot be directly instantiated and must be retrieved via an :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>`.

You can add tabs to the session UI via :ref:`add_session_tab()<class_EditorDebuggerSession_method_add_session_tab>`, send messages via :ref:`send_message()<class_EditorDebuggerSession_method_send_message>`, and toggle :ref:`EngineProfiler<class_EngineProfiler>`\ s via :ref:`toggle_profiler()<class_EditorDebuggerSession_method_toggle_profiler>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Signaux
--------------

.. _class_EditorDebuggerSession_signal_breaked:

.. rst-class:: classref-signal

**breaked**\ (\ can_debug\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorDebuggerSession_signal_breaked>`

Emitted when the attached remote instance enters a break state. If ``can_debug`` is ``true``, the remote instance will enter the debug loop.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_continued:

.. rst-class:: classref-signal

**continued**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_continued>`

Emitted when the attached remote instance exits a break state.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_started:

.. rst-class:: classref-signal

**started**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_started>`

Emitted when a remote instance is attached to this session (i.e. the session becomes active).

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_stopped:

.. rst-class:: classref-signal

**stopped**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_stopped>`

Emitted when a remote instance is detached from this session (i.e. the session becomes inactive).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorDebuggerSession_method_add_session_tab:

.. rst-class:: classref-method

|void| **add_session_tab**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_add_session_tab>`

Adds the given ``control`` to the debug session UI in the debugger bottom panel. The ``control``'s node name will be used as the tab title.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_active>`

Returns ``true`` if the debug session is currently attached to a remote instance.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_breaked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_breaked**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_breaked>`

Returns ``true`` if the attached remote instance is currently in the debug loop.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_debuggable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_debuggable**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_debuggable>`

Returns ``true`` if the attached remote instance can be debugged.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_remove_session_tab:

.. rst-class:: classref-method

|void| **remove_session_tab**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_remove_session_tab>`

Removes the given ``control`` from the debug session UI in the debugger bottom panel.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_send_message:

.. rst-class:: classref-method

|void| **send_message**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EditorDebuggerSession_method_send_message>`

Sends the given ``message`` to the attached remote instance, optionally passing additionally ``data``. See :ref:`EngineDebugger<class_EngineDebugger>` for how to retrieve those messages.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_set_breakpoint:

.. rst-class:: classref-method

|void| **set_breakpoint**\ (\ path\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_set_breakpoint>`

Enables or disables a specific breakpoint based on ``enabled``, updating the Editor Breakpoint Panel accordingly.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_toggle_profiler:

.. rst-class:: classref-method

|void| **toggle_profiler**\ (\ profiler\: :ref:`String<class_String>`, enable\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EditorDebuggerSession_method_toggle_profiler>`

Toggle the given ``profiler`` on the attached remote instance, optionally passing additionally ``data``. See :ref:`EngineProfiler<class_EngineProfiler>` for more details.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
