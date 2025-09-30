:github_url: hide

.. _class_EditorDebuggerSession:

EditorDebuggerSession
=====================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Клас взаємодії з дебугером редактора.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас не може бути створений безпосередньо, його потрібно отримати через :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>`.

Ви можете додавати вкладки до інтерфейсу сеансу за допомогою :ref:`add_session_tab()<class_EditorDebuggerSession_method_add_session_tab>`, надсилати повідомлення за допомогою :ref:`send_message()<class_EditorDebuggerSession_method_send_message>` та перемикати :ref:`EngineProfiler<class_EngineProfiler>` за допомогою :ref:`toggle_profiler()<class_EditorDebuggerSession_method_toggle_profiler>`.

.. rst-class:: classref-reftable-group

Методи
------------

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

Сигнали
--------------

.. _class_EditorDebuggerSession_signal_breaked:

.. rst-class:: classref-signal

**breaked**\ (\ can_debug\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorDebuggerSession_signal_breaked>`

Увімкнено, коли прикріплений віддалений екземпляр надходить в стан перерви. Якщо ``can_debug`` є ``true``, віддалений екземпляр надійде в петлі знежирення.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_continued:

.. rst-class:: classref-signal

**continued**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_continued>`

Випробувано, коли прикріплений віддалений екземпляр виходить на стан перерви.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_started:

.. rst-class:: classref-signal

**started**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_started>`

Увімкнено, коли віддалений екземпляр кріпиться до цієї сесії (тобто сеанс стає активним).

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_stopped:

.. rst-class:: classref-signal

**stopped**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_stopped>`

Увімкнено, коли віддалений екземпляр з цієї сесії (тобто сеанс стає неактивним).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorDebuggerSession_method_add_session_tab:

.. rst-class:: classref-method

|void| **add_session_tab**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_add_session_tab>`

Додає заданий ``control`` до інтерфейсу користувача сеансу налагодження на нижній панелі налагоджувача. Ім’я вузла ``control`` використовуватиметься як заголовок вкладки.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_active>`

Повертаємо ``true``, якщо сеанс дебюг наразі кріпиться до віддаленого екземпляра.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_breaked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_breaked**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_breaked>`

Повертаємо ``true``, якщо прикріплений віддалений екземпляр в даний час знаходиться в петлі знезаду.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_debuggable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_debuggable**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_debuggable>`

Повертаємо ``true``, якщо прикріплений віддалений екземпляр можна видалити.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_remove_session_tab:

.. rst-class:: classref-method

|void| **remove_session_tab**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_remove_session_tab>`

Видаліть задану ``параметровий контроль`` з дебug сеансу UI в нижній панелі дебугера.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_send_message:

.. rst-class:: classref-method

|void| **send_message**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EditorDebuggerSession_method_send_message>`

Надіслане повідомлення ``message`` до прикріпленого віддаленого екземпляра, додатково проходячи додаткові відомості ``data``. Див. :ref:`EngineDebugger<class_EngineDebugger>` для отримання цих повідомлень.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_set_breakpoint:

.. rst-class:: classref-method

|void| **set_breakpoint**\ (\ path\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_set_breakpoint>`

Увімкнути або вимкнути певну точку розриву на основі ``enabled``, оновлення панелі Редактора, відповідно.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_toggle_profiler:

.. rst-class:: classref-method

|void| **toggle_profiler**\ (\ profiler\: :ref:`String<class_String>`, enable\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EditorDebuggerSession_method_toggle_profiler>`

Увімкнути/вимкнути вказаний ``profiler`` на підключеному віддаленому екземплярі, за бажанням передавши додатково ``data``. Див. :ref:`EngineProfiler<class_EngineProfiler>` для отримання додаткової інформації.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
