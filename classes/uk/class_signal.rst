:github_url: hide

.. _class_Signal:

Signal
======

Вбудований тип, що представляє сигнал :ref:`Object<class_Object>`.

.. rst-class:: classref-introduction-group

Опис
--------

**Signal** – це вбудований тип :ref:`Variant<class_Variant>`, який представляє сигнал екземпляра :ref:`Object<class_Object>`. Як і всі типи :ref:`Variant<class_Variant>`, його можна зберігати у змінних та передавати до функцій. Сигнали дозволяють усім підключеним :ref:`Callable<class_Callable>` (і, відповідно, їхнім відповідним об'єктам) прослуховувати події та реагувати на них, без безпосереднього посилання один на одного. Це робить код гнучким та простішим в управлінні. Ви можете перевірити, чи має :ref:`Object<class_Object>` задану назву сигналу, використовуючи :ref:`Object.has_signal()<class_Object_method_has_signal>`.

У GDScript сигнали можна оголошувати за допомогою ключового слова ``signal``. У C# можна використовувати атрибут ``[Signal]`` для делегата.


.. tabs::

 .. code-tab:: gdscript

    signal attacked

    # Можна оголосити додаткові аргументи.
    # Ці аргументи необхідно передати під час випромінювання сигналу.
    signal item_dropped(item_name, amount)

 .. code-tab:: csharp

    [Signal]
    delegate void AttackedEventHandler();

    // Можна оголосити додаткові аргументи.
    // Ці аргументи необхідно передати під час випромінювання сигналу.
    [Signal]
    delegate void ItemDroppedEventHandler(string itemName, int amount);



Підключення сигналів є однією з найпоширеніших операцій у Godot, і API надає багато опцій для цього, які описані далі. Блок коду нижче показує рекомендований підхід.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var button = Button.new()
        # `button_down` тут є типом Signal Variant. Тому ми викликаємо метод Signal.connect(), а не Object.connect().
    # Дивіться обговорення нижче для більш детального огляду API.
        button.button_down.connect(_on_button_down)

        # Це передбачає існування класу `Player`, який визначає сигнал `влучання`.
        var player = Player.new()
        # Ми знову використовуємо Signal.connect(), а також метод Callable.bind(),
    # який повертає новий об'єкт Callable з параметром binds.
        player.hit.connect(_on_player_hit.bind("sword", 100))

    func _on_button_down():
        print("Button down!")

    func _on_player_hit(weapon_type, damage):
        print("Hit with weapon %s for %d damage." % [weapon_type, damage])

 .. code-tab:: csharp

    public override void _Ready()
    {
        var button = new Button();
        // C# підтримує передачу сигналів як подій, тому ми можемо використовувати цю ідіоматичну конструкцію:
        button.ButtonDown += OnButtonDown;

        // Це передбачає існування класу `Player`, який визначає сигнал `Hit`.
        var player = new Player();
        // Ми можемо використовувати лямбда-вирази, коли нам потрібно прив'язати додаткові параметри.
        player.Hit += () => OnPlayerHit("sword", 100);
    }

    private void OnButtonDown()
    {
        GD.Print("Button down!");
    }

    private void OnPlayerHit(string weaponType, int damage)
    {
        GD.Print($"Hit with weapon {weaponType} for {damage} damage.");
    }



\ **\ ``Object.connect()`` або ``Signal.connect()``?**\ 

Як видно вище, рекомендованим методом підключення сигналів не є :ref:`Object.connect()<class_Object_method_connect>`. Блок коду нижче показує чотири варіанти підключення сигналів, використовуючи або цей застарілий метод, або рекомендований :ref:`connect()<class_Signal_method_connect>`, та використовуючи або неявний :ref:`Callable<class_Callable>`, або визначений вручну.

::

    [gdscript]
    func _ready():
        var button = Button.new()
        # Варіант 1: Object.connect() з неявним Callable для визначеної функції.
        button.connect("button_down", _on_button_down)
        # Варіант 2: Object.connect() зі сконструйованим об'єктом Callable, використовуючи цільовий об'єкт та назву методу.
        button.connect("button_down", Callable(self, "_on_button_down"))
        # Варіант 3: Signal.connect() з неявним Callable для визначеної функції.
        button.button_down.connect(_on_button_down)
        # Варіант 4: Signal.connect() зі сконструйованим об'єктом Callable, використовуючи цільовий об'єкт та назву методу.
        button.button_down.connect(Callable(self, "_on_button_down"))

    func _on_button_down():
        print("Button down!")
    [/gdscript]
    [csharp]
    public override void _Ready()
    {
        var button = new Button();
        // Варіант 1: У C# ми можемо використовувати сигнали як події та пов'язувати їх за допомогою цього ідіоматичного синтаксису:
        button.ButtonDown += OnButtonDown;
        // Варіант 2: GodotObject.Connect() зі сконструйованим об'єктом Callable з групи методів.
        button.Connect(Button.SignalName.ButtonDown, Callable.From(OnButtonDown));
        // Варіант 3: GodotObject.Connect() зі сконструйованим Callable з використанням цільового об'єкта та назви методу.
        button.Connect(Button.SignalName.ButtonDown, new Callable(this, MethodName.OnButtonDown));
    }

    private void OnButtonDown()
    {
        GD.Print("Button down!");
    }
    [/csharp][/codeblocks]

Хоча всі варіанти мають однаковий результат (сигнал [signal BaseButton.button_down] [code]кнопки [/code] буде підключено до [code]_on_button_down[/code]), [b]варіант 3[/b] пропонує найкращу перевірку: він виведе помилку під час компіляції, якщо або [code]button_down[/code] [Signal], або [code]_on_button_down[/code] [Callable] не визначені. З іншого боку, [b]варіант 2[/b] покладається лише на рядкові імена та зможе перевірити будь-яке з цих імен лише під час виконання: це призведе до помилки під час виконання, якщо [code]"button_down"[/code] не є сигналом, або якщо [code]"_on_button_down"[/code] не є методом в об'єкті [code]self[/code]. Основною причиною використання варіантів 1, 2 або 4 буде те, що ви насправді потрібно використовувати рядки (наприклад, для програмного підключення сигналів на основі рядків, зчитаних з файлу конфігурації). В іншому випадку, варіант 3 є рекомендованим (і найшвидшим) методом.

[b]Прив'язка та передача параметрів:[/b]

Синтаксис для зв'язування параметрів здійснюється через [method Callable.bind], який повертає копію [Callable] з його зв'язаними параметрами.

Під час виклику [method emit] або [method Object.emit_signal], Також можна передати параметри сигналу. Наведені нижче приклади показують зв'язок між цими параметрами сигналу та зв'язаними параметрами.

[codeblocks]
[gdscript]
    func _ready():
        # Це передбачає існування класу `Player`, який визначає сигнал `влучання`.
        var player = Player.new()
        # Використання Callable.bind().
        player.hit.connect(_on_player_hit.bind("sword", 100))

        # Параметри, що додаються під час випромінювання сигналу, передаються першими.
        player.hit.emit("Dark lord", 5)

    # Ми передаємо два аргументи під час генерації (`hit_by`, `level`),
    # та зв'язуємо ще два аргументи під час підключення (`weapon_type`, `damage`).
    func _on_player_hit(hit_by, level, weapon_type, damage):
        print("Hit by %s (level %d) with weapon %s for %d damage." % [hit_by, level, weapon_type, damage])[/gdscript]
[csharp]
    public override void _Ready()
    {
        // Це передбачає існування класу `Player`, який визначає сигнал `Hit`.
        var player = new Player();
        // Використання лямбда-виразів, що створюють замикання, що фіксує додаткові параметри.
        // Лямбда отримує лише параметри, визначені делегатом сигналу.
        player.Hit += (hitBy, level) => OnPlayerHit(hitBy, level, "sword", 100);

        // Параметри, що додаються під час випромінювання сигналу, передаються першими.
        player.EmitSignal(SignalName.Hit, "Dark lord", 5);
    }

    // Ми передаємо два аргументи під час генерації (`hit_by`, `level`),
    // Та зв'язуємо ще два аргументи під час підключення (`weapon_type`, `damage`).
    private void OnPlayerHit(string hitBy, int level, string weaponType, int damage)
    {
        GD.Print($"Hit by {hitBy} (level {level}) with weapon {weaponType} for {damage} damage.");
    }[/csharp]

[/codeblocks]

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання сигналів <../getting_started/step_by_step/signals>`

- `Основи GDScript <../tutorials/scripting/gdscript/gdscript_basics.html#signals>`__

.. rst-class:: classref-reftable-group

Конструктори
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

Методи
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

Оператори
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

Описи конструкторів
--------------------------------------

.. _class_Signal_constructor_Signal:

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ ) :ref:`🔗<class_Signal_constructor_Signal>`

Створює порожній **Signal** без прив'язаного до об'єкта чи імені сигналу.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ from\: :ref:`Signal<class_Signal>`\ )

Constructs a **Signal** як копія даної **Signal**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Signal<class_Signal>` **Signal**\ (\ object\: :ref:`Object<class_Object>`, signal\: :ref:`StringName<class_StringName>`\ )

Створює об’єкт **Signal**, який посилається на сигнал із назвою ``signal`` у вказаному ``object``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Signal_method_connect:

.. rst-class:: classref-method

:ref:`int<class_int>` **connect**\ (\ callable\: :ref:`Callable<class_Callable>`, flags\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_Signal_method_connect>`

З'єднує цей сигнал із зазначеним ``callable``. Також можна додати додаткові ``flags`` для налаштування поведінки з'єднання (див. константи :ref:`ConnectFlags<enum_Object_ConnectFlags>`). Ви можете надати додаткові аргументи підключеному ``callable`` за допомогою :ref:`Callable.bind()<class_Callable_method_bind>`.

Сигнал може бути підключений до того самого :ref:`Callable<class_Callable>` лише один раз. Якщо сигнал вже підключено, цей метод повертає :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` та генерує помилку, якщо сигнал не підключено з :ref:`Object.CONNECT_REFERENCE_COUNTED<class_Object_constant_CONNECT_REFERENCE_COUNTED>`. Щоб запобігти цьому, спочатку використовуйте :ref:`is_connected()<class_Signal_method_is_connected>` для перевірки наявності існуючих з'єднань.

::

    for button in $Buttons.get_children():
    button.pressed.connect(_on_pressed.bind(button))

    func _on_pressed(button):
    print(button.name, "було натиснуто")

\ **Примітка:** Якщо об'єкт ``callable`` звільниться, з'єднання буде втрачено.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_disconnect:

.. rst-class:: classref-method

|void| **disconnect**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Signal_method_disconnect>`

Відключення цього сигналу з вказаного :ref:`Callable<class_Callable>`. Якщо підключення не існує, генерує помилку. Використовуйте ``method_connected``, щоб переконатися, що підключення існує.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_emit:

.. rst-class:: classref-method

|void| **emit**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Signal_method_emit>`

Зніміть цей сигнал. Всі :ref:`Callable<class_Callable>`, підключені до цього сигналу, будуть запущені. Цей метод підтримує змінну кількість аргументів, тому параметри можуть бути передані як окремий список коми.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_connections>`

Повернутися до :ref:`Array<class_Array>` підключень до цього сигналу. Кожен з'єднання представлений як :ref:`Dictionary<class_Dictionary>`, який містить три записи:

- ``signal`` - посилання на цей сигнал;

- ``Callable`` - посилання на підключений :ref:`Callable<class_Callable>`;

- ``flags`` - це поєднання об'єкту [enum. Роз'єм.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_name:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_name**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_name>`

Повертає назву цього сигналу.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object>`

Повернення об'єкта, що видає цей сигнал.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Signal_method_get_object_id>`

Повертає ідентифікатор об'єкта, який випромінює цей сигнал (див. :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`).

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_has_connections:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_connections**\ (\ ) |const| :ref:`🔗<class_Signal_method_has_connections>`

Повертає ``true``, якщо будь-який :ref:`Callable<class_Callable>` підключено до цього сигналу.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_connected**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) |const| :ref:`🔗<class_Signal_method_is_connected>`

Повертає ``true``, якщо зазначений :ref:`Callable<class_Callable>` підключений до цього сигналу.

.. rst-class:: classref-item-separator

----

.. _class_Signal_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Signal_method_is_null>`

Повертає ``true``, якщо цей **Signal** не має об’єкта, а назва сигналу порожня. Еквівалент ``singal == Singal()``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Signal_operator_neq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_neq_Signal>`

Повертає ``true``, якщо сигнали не діляться тим самим об'єктом і назвою.

.. rst-class:: classref-item-separator

----

.. _class_Signal_operator_eq_Signal:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Signal<class_Signal>`\ ) :ref:`🔗<class_Signal_operator_eq_Signal>`

Повертає ``true``, якщо обидва сигнали діляться тим самим об'єктом і назвою.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
