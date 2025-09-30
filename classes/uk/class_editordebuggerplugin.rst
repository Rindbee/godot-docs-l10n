:github_url: hide

.. _class_EditorDebuggerPlugin:

EditorDebuggerPlugin
====================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Базовий клас для реалізації плагінів debugger.

.. rst-class:: classref-introduction-group

Опис
--------

**EditorDebuggerPlugin** надає функції, пов’язані з редактором налагоджувача. 

Щоб взаємодіяти з налагоджувачем, екземпляр цього класу потрібно додати до редактора за допомогою :ref:`EditorPlugin.add_debugger_plugin()<class_EditorPlugin_method_add_debugger_plugin>`. 

Після додавання зворотний виклик :ref:`_setup_session()<class_EditorDebuggerPlugin_private_method__setup_session>` буде викликатися для кожного :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`, доступного для плагіна, а також під час створення нових (сеанси можуть бути неактивними на цьому етапі). 

Ви можете отримати доступні :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` за допомогою :ref:`get_session()<class_EditorDebuggerPlugin_method_get_session>` або отримати певний за допомогою :ref:`get_session()<class_EditorDebuggerPlugin_method_get_session>`. 


.. tabs:: 

 .. code-tab:: gdscript
 
    @інструмент 
    extends EditorPlugin 

    class ExampleEditorDebugger extends EditorDebuggerPlugin: 

        func _has_capture(capture): 
            # Повертає true, якщо ви бажаєте обробляти повідомлення з префіксом "my_plugin:". 
            return capture == "my_plugin" 

        func _capture(message, data, session_id): 
            if message == "my_plugin:ping": 
                get_session(session_id).send_message("my_plugin:echo", data) 
                return true 
            return false 

        func _setup_session(session_id): 
            # Додайте нову вкладку в інтерфейс сеансу налагоджувача, що містить мітку. 
            var label = Label.new() 
            label.name = "Example plugin" # Буде використано як заголовок вкладки. 
            label.text = "Example plugin" 
            var session = get_session(session_id) 
            # Прослуховує сигнали про початок і зупинку сеансу. 
            session.started.connect(func (): print("Session started")) 
            session.stopped.connect(func (): print("Session stopped")) 
            session.add_session_tab(label) 

    var debugger = ExampleEditorDebugger.new() 

    func _enter_tree(): 
        add_debugger_plugin(debugger) 

    func _exit_tree(): 
        remove_debugger_plugin(debugger)  

 

Щоб підключитися на стороні запущеної гри, використовуйте синглет :ref:`EngineDebugger<class_EngineDebugger>`: 


.. tabs:: 

 .. code-tab:: gdscript
 
    extends Node 

    func _ready(): 
        EngineDebugger.register_message_capture("my_plugin", _capture) 
        EngineDebugger.send_message("my_plugin:ping", ["test"]) 

    func _capture(message, data): 
        # Зверніть увагу, що префікс "my_plugin:" тут не використовується. 
        if message == "echo": 
            prints("Ехо отримано:", дані) 
            return true 
        return false  

 

\ **Примітка:** Під час роботи гри :ref:`@GlobalScope.print()<class_@GlobalScope_method_print>` і подібні функції, *викликані в редакторі* нічого не друкують, вихідний журнал друкує лише повідомлення гри.

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

.. _class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree:

.. rst-class:: classref-method

|void| **_breakpoint_set_in_tree**\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__breakpoint_set_in_tree>`

Зазначте цей метод, який буде повідомлено при встановленні точки перерви в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree:

.. rst-class:: classref-method

|void| **_breakpoints_cleared_in_tree**\ (\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__breakpoints_cleared_in_tree>`

Зазначте цей метод, який буде повідомлено, коли всі точки прориву очищаються в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_capture**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>`, session_id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__capture>`

Перевизначте цей метод для обробки вхідних повідомлень. Параметр ``session_id`` є ідентифікатором сеансу :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`, який отримав повідомлення ``message``. Використовуйте :ref:`get_session()<class_EditorDebuggerPlugin_method_get_session>` для отримання сеансу. Цей метод має повернути ``true``, якщо повідомлення розпізнано.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__goto_script_line:

.. rst-class:: classref-method

|void| **_goto_script_line**\ (\ script\: :ref:`Script<class_Script>`, line\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__goto_script_line>`

Зазначте цей метод, який буде повідомлено при натисканні лінії розбиття на панелі розбиття.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__has_capture:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_capture**\ (\ capture\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorDebuggerPlugin_private_method__has_capture>`

Перевизначте цей метод, щоб увімкнути отримання повідомлень від налагоджувача. Якщо ``capture`` має значення "my_message", тоді повідомлення, що починаються з "my_message:", будуть передані в метод :ref:`_capture()<class_EditorDebuggerPlugin_private_method__capture>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_private_method__setup_session:

.. rst-class:: classref-method

|void| **_setup_session**\ (\ session_id\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_EditorDebuggerPlugin_private_method__setup_session>`

Перевизначте цей метод, щоб отримувати сповіщення щоразу, коли створюється новий :ref:`EditorDebuggerSession<class_EditorDebuggerSession>`. Зауважте, що на цьому етапі сеанс може бути неактивним.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_method_get_session:

.. rst-class:: classref-method

:ref:`EditorDebuggerSession<class_EditorDebuggerSession>` **get_session**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorDebuggerPlugin_method_get_session>`

Повертає :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` із заданим ``id``.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerPlugin_method_get_sessions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_sessions**\ (\ ) :ref:`🔗<class_EditorDebuggerPlugin_method_get_sessions>`

Повертає масив :ref:`EditorDebuggerSession<class_EditorDebuggerSession>` тепер доступний для цього плагіна.

\ **Note:** Сесія в масиві може бути неактивним, перевірити стан через :ref:`EditorDebuggerSession.is_active()<class_EditorDebuggerSession_method_is_active>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
