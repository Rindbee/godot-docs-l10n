:github_url: hide

.. _class_EditorDebuggerPlugin:

EditorDebuggerPlugin
====================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Базовый класс для реализации плагинов отладчика.

.. rst-class:: classref-introduction-group

Описание
----------------

**EditorDebuggerPlugin** предоставляет функции, связанные с редакторской стороной отладчика.

Для взаимодействия с отладчиком экземпляр этого класса должен быть добавлен в редактор с помощью :ref:`EditorPlugin.add_debugger_plugin()<class_EditorPlugin_method_add_debugger_plugin>`.

После добавления обратный вызов :ref:`_setup_session()<class_EditorDebuggerPlugin_private_method__setup_session>` будет вызываться для каждого :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`, доступного плагину, и при создании новых (сеансы могут быть неактивны на этом этапе).

Вы можете получить доступные :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` с помощью :ref:`get_sessions()<class_EditorDebuggerPlugin_method_get_sessions>` или получить определенный с помощью :ref:`get_session()<class_EditorDebuggerPlugin_method_get_session>`.


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorPlugin

    class ExampleEditorDebugger extends EditorDebuggerPlugin:

        func _has_capture(capture):
            # Верните true, если вы хотите обрабатывать сообщения с префиксом «my_plugin:».
            return capture == "my_plugin"

        func _capture(message, data, session_id):
            if message == "my_plugin:ping":
                get_session(session_id).send_message("my_plugin:echo", data)
                return true
            return false

        func _setup_session(session_id):
            # Добавьте новую вкладку в пользовательский интерфейс сеанса отладчика, содержащую метку.
            var label = Label.new()
            label.name = "Example plugin" # Will be used as the tab title.
            label.text = "Example plugin"
            var session = get_session(session_id)
            # Прослушивает сигналы начала и окончания сеанса.
            session.started.connect(func (): print("Session started"))
            session.stopped.connect(func (): print("Session stopped"))
            session.add_session_tab(label)

    var debugger = ExampleEditorDebugger.new()

    func _enter_tree():
        add_debugger_plugin(debugger)

    func _exit_tree():
        remove_debugger_plugin(debugger)



Для подключения на стороне запущенной игры используйте синглтон :ref:`EngineDebugger<class_EngineDebugger>`:


.. tabs::

 .. code-tab:: gdscript

    extends Node

    func _ready():
        EngineDebugger.register_message_capture("my_plugin", _capture)
        EngineDebugger.send_message("my_plugin:ping", ["test"])

    func _capture(message, data):
        # Обратите внимание, что префикс «my_plugin:» здесь не используется.
        if message == "echo":
            prints("Echo received:", data)
            return true
        return false



\ **Примечание:** Во время работы игры :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>` и подобные функции, *вызываемые в редакторе*, ничего не печатают, в журнале вывода печатаются только игровые сообщения.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_breakpoint_set_in_tree<class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree>`\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |virtual| |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_breakpoints_cleared_in_tree<class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree>`\ (\ ) |virtual|                                                                                              |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`_capture<class_EditorDebuggerPlugin_private_method__capture>`\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`, session_id\: :ref:`int<class_int>`\ ) |virtual|                         |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_goto_script_line<class_EditorDebuggerPlugin_private_method__goto_script_line>`\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`\ ) |virtual|                                                |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`_has_capture<class_EditorDebuggerPlugin_private_method__has_capture>`\ (\ capture\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                               |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`_setup_session<class_EditorDebuggerPlugin_private_method__setup_session>`\ (\ session_id\: :ref:`int<class_int>`\ ) |virtual|                                                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` | :ref:`get_session<class_EditorDebuggerPlugin_method_get_session>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                      |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`get_sessions<class_EditorDebuggerPlugin_method_get_sessions>`\ (\ )                                                                                                                                                |
   +-----------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree:

.. rst-class:: classref-method

|void| **_breakpoint_set_in_tree**\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree>`

Переопределите этот метод, чтобы получать уведомления при установке точки останова в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree:

.. rst-class:: classref-method

|void| **_breakpoints_cleared_in_tree**\ (\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree>`

Переопределите этот метод, чтобы получать уведомления об очистке всех точек останова в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_capture**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`, session_id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__capture>`

Переопределите этот метод для обработки входящих сообщений. ``session_id`` — это идентификатор :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`, который получил ``message``. Используйте :ref:`get_session()<class_EditorDebuggerPlugin_method_get_session>` для извлечения сеанса. Этот метод должен возвращать ``true``, если сообщение распознано.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__goto_script_line:

.. rst-class:: classref-method

|void| **_goto_script_line**\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__goto_script_line>`

Переопределите этот метод, чтобы получать уведомления при щелчке по строке точки останова на панели точек останова отладчика.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__has_capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_capture**\ (\ capture\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorDebuggerPlugin_private_method__has_capture>`

Переопределите этот метод, чтобы включить получение сообщений от отладчика. Если ``capture`` — это "my_message", то сообщения, начинающиеся с "my_message:", будут переданы методу :ref:`_capture()<class_EditorDebuggerPlugin_private_method__capture>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__setup_session:

.. rst-class:: classref-method

|void| **_setup_session**\ (\ session_id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__setup_session>`

Переопределите этот метод, чтобы получать уведомления всякий раз, когда создается новый :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`. Обратите внимание, что сеанс может быть неактивен на этом этапе.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_method_get_session:

.. rst-class:: classref-method

:ref:`EditorDebuggerSession<class_EditorDebuggerSession>` **get_session**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorDebuggerPlugin_method_get_session>`

Возвращает :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` с указанным ``id``.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_method_get_sessions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_sessions**\ (\ ) :ref:`🔗<class_EditorDebuggerPlugin_method_get_sessions>`

Возвращает массив :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`, в настоящее время доступный этому плагину отладчика.

\ **Примечание:** Сеансы в массиве могут быть неактивны, проверьте их состояние с помощью :ref:`EditorDebuggerSession.is_active()<class_EditorDebuggerSession_method_is_active>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
