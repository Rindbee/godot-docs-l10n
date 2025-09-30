:github_url: hide

.. _class_Signal:

Signal
======

Встроенный тип, представляющий сигнал :ref:`Object<class_Object>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**Signal** — это встроенный тип :ref:`Variant<class_Variant>`, который представляет сигнал экземпляра :ref:`Object<class_Object>`. Как и все типы :ref:`Variant<class_Variant>`, он может храниться в переменных и передаваться в функции. Сигналы позволяют всем подключенным :ref:`Callable<class_Callable>` (и соответственно, их соответствующим объектам) прослушивать и реагировать на события, не ссылаясь напрямую друг на друга. Это сохраняет код гибким и простым в управлении. Вы можете проверить, имеет ли :ref:`Object<class_Object>` заданное имя сигнала, используя :ref:`Object.has_signal()<class_Object_method_has_signal>`.

В GDScript сигналы можно объявлять с помощью ключевого слова ``signal``. В C# вы можете использовать атрибут ``[Signal]`` для делегата.


.. tabs::

 .. code-tab:: gdscript

    signal attacked

    # Могут быть объявлены дополнительные аргументы.
    # Эти аргументы должны быть переданы при отправке сигнала.
    signal item_dropped(item_name, amount)

 .. code-tab:: csharp

    [Signal]
    delegate void AttackedEventHandler();

    // Могут быть объявлены дополнительные аргументы.
    // Эти аргументы должны быть переданы при отправке сигнала.
    [Signal]
    delegate void ItemDroppedEventHandler(string itemName, int amount);



Подключение сигналов — одна из самых распространенных операций в Godot, и API предоставляет множество вариантов для этого, которые описаны ниже. Блок кода ниже показывает рекомендуемый подход.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # `button_down` здесь — тип Signal Variant. Поэтому мы вызываем метод Signal.connect(), а не Object.connect().
        # Более подробный обзор API см. в обсуждении ниже.
        button.button_down.connect(_on_button_down)

        # Это предполагает, что существует класс `Player`, который определяет сигнал `hit`.
        var player = Player.new()
        # Мы снова используем Signal.connect(), а также метод Callable.bind(),
        # который возвращает новый Callable с параметром binds.
        player.hit.connect(_on_player_hit.bind("sword", 100))

    func _on_button_down():
        print("Кнопка нажата!")

    func _on_player_hit(weapon_type, damage):
        print("Hit with weapon %s for %d damage." % [weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // C# поддерживает передачу сигналов как событий, поэтому мы можем использовать следующую идиоматическую конструкцию:
        button.ButtonDown += OnButtonDown;

        // Это предполагает, что существует класс `Player`, который определяет сигнал `Hit`.
        var player = new Player();
        // Мы можем использовать лямбда-выражения, когда нам нужно привязать дополнительные параметры.
        player.Hit += () => OnPlayerHit("sword", 100);
    }

    private void OnButtonDown()
    {
        GD.Print("Кнопка нажата!");
    }

    private void OnPlayerHit(string weaponType, int damage)
    {
        GD.Print($"Hit with weapon {weaponType} for {damage} damage.");
    }



\ **\ ``Object.connect()`` или ``Signal.connect()``?**\ 

Как видно выше, рекомендуемый метод для подключения сигналов — не :ref:`Object.connect()<class_Object_method_connect>`. В блоке кода ниже показаны четыре варианта подключения сигналов с использованием либо этого устаревшего метода, либо рекомендуемого :ref:`connect()<class_Signal_method_connect>`, а также с использованием либо неявного :ref:`Callable<class_Callable>`, либо определенного вручную.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # Вариант 1: Object.connect() с неявным вызовом для определенной функции.
        button.connect("button_down", _on_button_down)
        # Вариант 2: Object.connect() с созданным Callable, использующим целевое имя объекта и метода.
        button.connect("button_down", Callable(self, "_on_button_down"))
        # Вариант 3: Signal.connect() с неявным вызовом для определенной функции.
        button.button_down.connect(_on_button_down)
        # Вариант 4: Signal.connect() с созданным Callable, использующим целевое имя объекта и метода.
        button.button_down.connect(Callable(self, "_on_button_down"))

    func _on_button_down():
        print("Кнопка нажата!")

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // Вариант 1: В C# мы можем использовать сигналы как события и подключаться с помощью следующего идиоматического синтаксиса:
        button.ButtonDown += OnButtonDown;
        // Вариант 2: GodotObject.Connect() с созданным Callable из группы методов.
        button.Connect(Button.SignalName.ButtonDown, Callable.From(OnButtonDown));
        // Вариант 3: GodotObject.Connect() с созданным Callable, использующим целевое имя объекта и метода.
        button.Connect(Button.SignalName.ButtonDown, new Callable(this, MethodName.OnButtonDown));
    }

    private void OnButtonDown()
    {
        GD.Print("Кнопка нажата!");
    }



Хотя все варианты имеют одинаковый результат (:ref:`BaseButton.button_down<class_BaseButton_signal_button_down>` ``button`` будет подключен к ``_on_button_down``), **вариант 3** предлагает лучшую проверку: он выведет ошибку времени компиляции, если ``button_down`` **Signal** или ``_on_button_down`` :ref:`Callable<class_Callable>` не определены. С другой стороны, **вариант 2** полагается только на имена строк и сможет проверить только одно из имен во время выполнения: он выдаст ошибку во время выполнения, если ``"button_down"`` не является сигналом или если ``"_on_button_down"`` не является методом в объекте ``self``. Основная причина использования опций 1, 2 или 4 — если вам действительно нужно использовать строки (например, для программного подключения сигналов на основе строк, считанных из файла конфигурации). В противном случае, опция 3 является рекомендуемым (и самым быстрым) методом.

\ **Связывание и передача параметров:**\ 

Синтаксис для связывания параметров осуществляется через :ref:`Callable.bind()<class_Callable_method_bind>`, который возвращает копию :ref:`Callable<class_Callable>` с привязанными параметрами.

При вызове :ref:`emit()<class_Signal_method_emit>` или :ref:`Object.emit_signal()<class_Object_method_emit_signal>` также могут быть переданы параметры сигнала. В примерах ниже показана связь между этими параметрами сигнала и привязанными параметрами.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        # Это предполагает, что существует класс `Player`, который определяет сигнал `hit`.
        var player = Player.new()
        # Использование Callable.bind().
        player.hit.connect(_on_player_hit.bind("sword", 100))

        # Параметры, добавленные при передаче сигнала, передаются в первую очередь.
        player.hit.emit("Dark lord", 5)

    # При отправке мы передаем два аргумента (`hit_by`, `level`),
    # и при подключении привязать еще два аргумента (`weapon_type`, `damage`).
    func _on_player_hit(hit_by, level, weapon_type, damage):
        print("Hit by %s (level %d) with weapon %s for %d damage." % [hit_by, level, weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        // Это предполагает, что существует класс `Player`, который определяет сигнал `Hit`.
        var player = new Player();
        // Использование лямбда-выражений, создающих замыкание, которое захватывает дополнительные параметры.
        // Лямбда получает только параметры, определенные делегатом сигнала.
        player.Hit += (hitBy, level) => OnPlayerHit(hitBy, level, "sword", 100);

        // Параметры, добавленные при передаче сигнала, передаются в первую очередь.
        player.EmitSignal(SignalName.Hit, "Dark lord", 5);
    }

    // При отправке мы передаем два аргумента (`hit_by`, `level`),
    // и при подключении привязать еще два аргумента (`weapon_type`, `damage`).
    private void OnPlayerHit(string hitBy, int level, string weaponType, int damage)
    {
        GD.Print($"Hit by {hitBy} (level {level}) with weapon {weaponType} for {damage} damage.");
    }



.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование сигналов <../getting_started/step_by_step/signals>`

- `Основы GDScript <../tutorials/scripting/gdscript/gdscript_basics.html#signals>`__

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ )                                                                                     |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ from\: :ref:`Signal<class_Signal>`\ )                                                 |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Signal<class_Signal>` | :ref:`Signal<class_Signal_constructor_Signal>`\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ ) |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`connect<class_Signal_method_connect>`\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`disconnect<class_Signal_method_disconnect>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`emit<class_Signal_method_emit>`\ (\ ...\ ) |vararg| |const|                                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_connections<class_Signal_method_get_connections>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_name<class_Signal_method_get_name>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_object<class_Signal_method_get_object>`\ (\ ) |const|                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_object_id<class_Signal_method_get_object_id>`\ (\ ) |const|                                                            |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`has_connections<class_Signal_method_has_connections>`\ (\ ) |const|                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_connected<class_Signal_method_is_connected>`\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const|                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_null<class_Signal_method_is_null>`\ (\ ) |const|                                                                        |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Signal_operator_neq_Signal>`\ (\ right\: :ref:`Signal<class_Signal>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Signal_operator_eq_Signal>`\ (\ right\: :ref:`Signal<class_Signal>`\ )  |
   +-------------------------+-------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Signal_constructor_Signal:

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ ) :ref:`🔗<class_Signal_constructor_Signal>`

Создает пустой **Signal** без привязанного имени объекта или сигнала.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ from\: :ref:`Signal<class_Signal>`\ )

Создает **Signal** как копию заданного **Signal**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ )

Создает объект **Signal**, ссылающийся на сигнал с именем ``signal`` в указанном ``object``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Signal_method_connect:

.. rst-class:: classref-method

:ref:`int<class_int>` **connect**\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Signal_method_connect>`

Соединяет этот сигнал с указанным ``callable``. Дополнительно можно указать ``flags`` для настройки поведения соединения (см. константы :ref:`ConnectFlags<enum_Object_ConnectFlags>`). Вы можете передать дополнительные аргументы в связанный ``callable``, используя :ref:`Callable.bind()<class_Callable_method_bind>`. 

Сигнал может быть соединён с одним и тем же :ref:`Callable<class_Callable>` только один раз. Если сигнал уже соединён, метод вернёт :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` и сгенерирует ошибку, за исключением случая, когда сигнал соединён с флагом :ref:`Object.CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>`. Чтобы избежать этого, сначала используйте :ref:`is_connected()<class_Signal_method_is_connected>` для проверки существующих соединений. 

::
 
    for button in $Buttons.get_children(): 
        button.pressed.connect(_on_pressed.bind(button)) 

    func _on_pressed(button): 
        print(button.name, " was pressed")  

\ **Примечание:** Если объект ``callable`` освобождён, соединение будет потеряно.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Signal_method_disconnect>`

Отключает этот сигнал от указанного :ref:`Callable<class_Callable>`. Если соединение не существует, генерирует ошибку. Используйте :ref:`is_connected()<class_Signal_method_is_connected>`, чтобы убедиться, что соединение существует.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_emit:

.. rst-class:: classref-method

|void| **emit**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Signal_method_emit>`

Выдает этот сигнал. Все :ref:`Callable<class_Callable>`, подключенные к этому сигналу, будут активированы. Этот метод поддерживает переменное количество аргументов, поэтому параметры можно передавать в виде списка, разделенного запятыми.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_connections>`

Возвращает :ref:`Array<class_Array>` соединений для этого сигнала. Каждое соединение представлено как :ref:`Dictionary<class_Dictionary>`, который содержит три записи:

- ``signal`` — ссылка на этот сигнал;

- ``callable`` — ссылка на подключенный :ref:`Callable<class_Callable>`;

- ``flags`` — комбинация :ref:`ConnectFlags<enum_Object_ConnectFlags>`.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_name>`

Возвращает имя этого сигнала.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object>`

Возвращает объект, испускающий этот сигнал.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object_id>`

Возвращает идентификатор объекта, испускающего этот сигнал (см. :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`).

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_has_connections>`

Возвращает ``true``, если к этому сигналу подключен какой-либо :ref:`Callable<class_Callable>`.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Signal_method_is_connected>`

Возвращает ``true``, если указанный :ref:`Callable<class_Callable>` подключен к этому сигналу.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Signal_method_is_null>`

Возвращает ``true``, если этот **Signal** не имеет объекта и имя сигнала пустое. Эквивалентно ``signal == Signal()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Signal_operator_neq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_neq_Signal>`

Возвращает ``true``, если сигналы не имеют одного и того же объекта и имени.

.. rst-class:: classref-item-separator

----

.. _class_Signal_operator_eq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_eq_Signal>`

Возвращает ``true``, если оба сигнала имеют один и тот же объект и имя.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
