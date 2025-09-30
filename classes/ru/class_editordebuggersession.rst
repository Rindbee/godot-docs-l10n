:github_url: hide

.. _class_EditorDebuggerSession:

EditorDebuggerSession
=====================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс для взаимодействия с отладчиком редактора.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс нельзя создать напрямую, и его необходимо получить через :ref:`EditorDebuggerPlugin<class_EditorDebuggerPlugin>`.

Вы можете добавлять вкладки в пользовательский интерфейс сеанса с помощью :ref:`add_session_tab()<class_EditorDebuggerSession_method_add_session_tab>`, отправлять сообщения с помощью :ref:`send_message()<class_EditorDebuggerSession_method_send_message>` и переключать :ref:`EngineProfiler<class_EngineProfiler>` с помощью :ref:`toggle_profiler()<class_EditorDebuggerSession_method_toggle_profiler>`.

.. rst-class:: classref-reftable-group

Методы
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

Сигналы
--------------

.. _class_EditorDebuggerSession_signal_breaked:

.. rst-class:: classref-signal

**breaked**\ (\ can_debug\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorDebuggerSession_signal_breaked>`

Вызывается, когда присоединенный удаленный экземпляр входит в состояние останова. Если ``can_debug`` равен ``true``, удаленный экземпляр войдет в цикл отладки.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_continued:

.. rst-class:: classref-signal

**continued**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_continued>`

Вызывается, когда подключенный удаленный экземпляр выходит из состояния останова.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_started:

.. rst-class:: classref-signal

**started**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_started>`

Генерируется, когда к данному сеансу присоединяется удаленный экземпляр (т.е. сеанс становится активным).

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_signal_stopped:

.. rst-class:: classref-signal

**stopped**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_signal_stopped>`

Генерируется, когда удаленный экземпляр отключается от данного сеанса (т. е. сеанс становится неактивным).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorDebuggerSession_method_add_session_tab:

.. rst-class:: classref-method

|void| **add_session_tab**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_add_session_tab>`

Добавляет заданный ``control`` в пользовательский интерфейс сеанса отладки на нижней панели отладчика. Имя узла ``control`` будет использоваться в качестве заголовка вкладки.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_active>`

Возвращает ``true``, если сеанс отладки в данный момент подключен к удаленному экземпляру.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_breaked:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_breaked**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_breaked>`

Возвращает ``true``, если присоединенный удаленный экземпляр в данный момент находится в цикле отладки.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_is_debuggable:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_debuggable**\ (\ ) :ref:`🔗<class_EditorDebuggerSession_method_is_debuggable>`

Возвращает ``true``, если присоединенный удаленный экземпляр может быть отлажен.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_remove_session_tab:

.. rst-class:: classref-method

|void| **remove_session_tab**\ (\ control\: :ref:`Control<class_Control>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_remove_session_tab>`

Удаляет указанный ``control`` из пользовательского интерфейса сеанса отладки на нижней панели отладчика.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_send_message:

.. rst-class:: classref-method

|void| **send_message**\ (\ message\: :ref:`String<class_String>`, data\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EditorDebuggerSession_method_send_message>`

Отправляет указанное ``message`` на подключенный удаленный экземпляр, опционально передавая дополнительно ``data``. См. :ref:`EngineDebugger<class_EngineDebugger>` для получения этих сообщений.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_set_breakpoint:

.. rst-class:: classref-method

|void| **set_breakpoint**\ (\ path\: :ref:`String<class_String>`, line\: :ref:`int<class_int>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_EditorDebuggerSession_method_set_breakpoint>`

Включает или отключает определенную точку останова на основе ``enabled``, обновляя панель точек останова редактора соответствующим образом.

.. rst-class:: classref-item-separator

----

.. _class_EditorDebuggerSession_method_toggle_profiler:

.. rst-class:: classref-method

|void| **toggle_profiler**\ (\ profiler\: :ref:`String<class_String>`, enable\: :ref:`bool<class_bool>`, data\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_EditorDebuggerSession_method_toggle_profiler>`

Переключить заданный ``profiler`` на подключенном удаленном экземпляре, опционально передавая дополнительно ``data``. Подробнее см. :ref:`EngineProfiler<class_EngineProfiler>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
