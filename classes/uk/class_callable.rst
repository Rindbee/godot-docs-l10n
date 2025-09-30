:github_url: hide

.. _class_Callable:

Callable
========

Вбудований тип, що представляє метод або окрему функцію.

.. rst-class:: classref-introduction-group

Опис
--------

**Callable** – це вбудований тип :ref:`Variant<class_Variant>`, який представляє функцію. Він може бути або методом в екземплярі :ref:`Object<class_Object>`, або користувацьким викликуваним методом, що використовується для різних цілей (див. :ref:`is_custom()<class_Callable_method_is_custom>`). Як і всі типи :ref:`Variant<class_Variant>`, він може зберігатися у змінних та передаватись іншим функціям. Найчастіше він використовується для зворотних викликів сигналів.


.. tabs::

 .. code-tab:: gdscript

    func print_args(arg1, arg2, arg3 = ""):
        prints(arg1, arg2, arg3)

    func test():
        var callable = Callable(self, "print_args")
        callable.call("hello", "world")  # Друкує "привіт, світ".
        callable.call(Vector2.UP, 42, callable)  # Prints "(0.0, -1.0) 42 Node(node.gd)::print_args"
        callable.call("invalid")  # Недійсний виклик, має бути щонайменше 2 аргументи.

 .. code-tab:: csharp

    // Значення параметрів за замовчуванням не підтримуються.
    public void PrintArgs(Variant arg1, Variant arg2, Variant arg3 = default)
    {
        GD.PrintS(arg1, arg2, arg3);
    }

    public void Test()
    {
        // Недійсні виклики завершуються безшумно.
        Callable callable = new Callable(this, MethodName.PrintArgs);
        callable.Call("hello", "world"); // Значення параметрів за замовчуванням не підтримуються, повинні мати 3 аргументи.
        callable.Call(Vector2.Up, 42, callable); // Prints "(0, -1) 42 Node(Node.cs)::PrintArgs"
        callable.Call("invalid"); // Недійсний виклик, має бути 3 аргументи.
    }



У GDScript можна створювати лямбда-функції всередині методу. Лямбда-функції – це користувацькі виклики, які не пов'язані з екземпляром :ref:`Object<class_Object>`. За бажанням, лямбда-функції також можна іменувати. Ім'я буде відображатися в налагоджувачі або під час виклику методу :ref:`get_method()<class_Callable_method_get_method>`.

::

    func _init():
        var my_lambda = func (message):
            print(message)

        # Prints "Hello everyone!"
        my_lambda.call("Hello everyone!")

        # Виводить "Attack!", коли випромінюється сигнал button_pressed.
        button_pressed.connect(func(): print("Attack!"))

У GDScript ви можете отримати доступ до методів та глобальних функцій як до **Callable**:

::

    tween.tween_callback(node.queue_free)  # Методи об'єктів.
    tween.tween_callback(array.clear)  # Методи вбудованих типів.
    tween.tween_callback(print.bind("Test"))  # Глобальні функції.

\ **Примітка:** :ref:`Dictionary<class_Dictionary>` не підтримує вищезазначене через неоднозначність ключів.

::

    var dictionary = { "hello": "world" }

    # Це не спрацює, `clear` розглядається як ключ.
    tween.tween_callback(dictionary.clear)

    # Це спрацює.
    tween.tween_callback(Callable.create(dictionary, "clear"))

.. note::

	Існують значні відмінності при використанні цього API із С#. Більше інформації: ref:`doc_c_sharp_differences`.

.. rst-class:: classref-reftable-group

Конструктори
------------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ )                                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ from\: :ref:`Callable<class_Callable>`\ )                                             |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>` | :ref:`Callable<class_Callable_constructor_Callable>`\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`bind<class_Callable_method_bind>`\ (\ ...\ ) |vararg| |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`bindv<class_Callable_method_bindv>`\ (\ arguments\: :ref:`Array<class_Array>`\ )                                                            |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`call<class_Callable_method_call>`\ (\ ...\ ) |vararg| |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`call_deferred<class_Callable_method_call_deferred>`\ (\ ...\ ) |vararg| |const|                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`callv<class_Callable_method_callv>`\ (\ arguments\: :ref:`Array<class_Array>`\ ) |const|                                                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`create<class_Callable_method_create>`\ (\ variant\: :ref:`Variant<class_Variant>`, method\: :ref:`StringName<class_StringName>`\ ) |static| |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_argument_count<class_Callable_method_get_argument_count>`\ (\ ) |const|                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`           | :ref:`get_bound_arguments<class_Callable_method_get_bound_arguments>`\ (\ ) |const|                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_bound_arguments_count<class_Callable_method_get_bound_arguments_count>`\ (\ ) |const|                                                   |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>` | :ref:`get_method<class_Callable_method_get_method>`\ (\ ) |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`         | :ref:`get_object<class_Callable_method_get_object>`\ (\ ) |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_object_id<class_Callable_method_get_object_id>`\ (\ ) |const|                                                                           |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_unbound_arguments_count<class_Callable_method_get_unbound_arguments_count>`\ (\ ) |const|                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`hash<class_Callable_method_hash>`\ (\ ) |const|                                                                                             |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_custom<class_Callable_method_is_custom>`\ (\ ) |const|                                                                                   |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_null<class_Callable_method_is_null>`\ (\ ) |const|                                                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_standard<class_Callable_method_is_standard>`\ (\ ) |const|                                                                               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_valid<class_Callable_method_is_valid>`\ (\ ) |const|                                                                                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`rpc<class_Callable_method_rpc>`\ (\ ...\ ) |vararg| |const|                                                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`rpc_id<class_Callable_method_rpc_id>`\ (\ peer_id\: :ref:`int<class_int>`, ...\ ) |vararg| |const|                                          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Callable<class_Callable>`     | :ref:`unbind<class_Callable_method_unbind>`\ (\ argcount\: :ref:`int<class_int>`\ ) |const|                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Оператори
------------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_Callable_operator_neq_Callable>`\ (\ right\: :ref:`Callable<class_Callable>`\ ) |
   +-------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_Callable_operator_eq_Callable>`\ (\ right\: :ref:`Callable<class_Callable>`\ )  |
   +-------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи конструкторів
--------------------------------------

.. _class_Callable_constructor_Callable:

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ ) :ref:`🔗<class_Callable_constructor_Callable>`

Створює порожній **Callable** без прив’язки до об’єкта чи методу.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ from\: :ref:`Callable<class_Callable>`\ )

Створює **Callable** як копію заданого **Callable**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Callable<class_Callable>` **Callable**\ (\ object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`\ )

Створює новий **Callable** для методу з назвою ``method`` у вказаному ``object``.

\ **Примітка:** Для методів вбудованих типів :ref:`Variant<class_Variant>` замість цього використовуйте :ref:`create()<class_Callable_method_create>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Callable_method_bind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bind**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_bind>`

Повертає копію цього **Callable** з одним або кількома зв’язаними аргументами. Під час виклику зв’язані аргументи передаються *після* аргументів, наданих :ref:`call()<class_Callable_method_call>`. Дивіться також :ref:`unbind()<class_Callable_method_unbind>`.

\ **Примітка:** Коли цей метод пов’язано з іншими подібними методами, порядок, у якому змінюється список аргументів, читається справа наліво.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_bindv:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **bindv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_Callable_method_bindv>`

Повертає копію цього **Callable** з одним або кількома зв’язаними аргументами, зчитуючи їх із масиву. Під час виклику зв’язані аргументи передаються *після* аргументів, наданих :ref:`call()<class_Callable_method_call>`. Дивіться також :ref:`unbind()<class_Callable_method_unbind>`.

\ **Примітка:** Коли цей метод пов’язано з іншими подібними методами, порядок, у якому змінюється список аргументів, читається справа наліво.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **call**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call>`

Викликає метод, представлений цим **Callable**. Аргументи можуть бути передані та повинні відповідати сигнатурі методу.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_call_deferred:

.. rst-class:: classref-method

|void| **call_deferred**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_call_deferred>`

Викликає метод, представлений цим **Callable** у відкладеному режимі, тобто в кінці поточного кадру. Аргументи можуть бути передані та повинні відповідати сигнатурі методу.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
         grab_focus.call_deferred()

 .. code-tab:: csharp

    public override void _Ready()
     {
         Callable.From(GrabFocus).CallDeferred();
     }



\ **Примітка: ** Відкладені дзвінки обробляються під час простою. Час простою відбувається в основному в кінці кадрів процесу та фізики. У ньому відкладені виклики виконуватимуться, доки їх не залишиться, що означає, що ви можете відкласти виклики з інших відкладених викликів, і вони все одно виконуватимуться в поточному циклі простою. Це означає, що ви не повинні викликати метод, відкладений від самого себе (або від викликаного ним методу), оскільки це спричиняє нескінченну рекурсію так само, як якщо б ви викликали метод безпосередньо.

 Дивіться також :ref:`Object.call_deferred()<class_Object_method_call_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_callv:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **callv**\ (\ arguments\: :ref:`Array<class_Array>`\ ) |const| :ref:`🔗<class_Callable_method_callv>`

Викликає метод, представлений цим **Callable**. На відміну від :ref:`call()<class_Callable_method_call>`, цей метод очікує, що всі аргументи будуть міститися всередині ``arguments`` :ref:`Array<class_Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_create:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **create**\ (\ variant\: :ref:`Variant<class_Variant>`, method\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_Callable_method_create>`

Створює новий **Callable** для методу з назвою ``method`` у вказаному ``variant``. Для представлення методу вбудованого типу :ref:`Variant<class_Variant>` використовується настроюваний виклик (див. :ref:`is_custom()<class_Callable_method_is_custom>`). Якщо ``variant`` дорівнює :ref:`Object<class_Object>`, замість цього буде створено стандартний виклик.

\ **Примітка: ** Цей метод завжди необхідний для типу :ref:`Dictionary<class_Dictionary>`, оскільки для доступу до його записів використовується синтаксис властивості. Ви також можете використовувати цей метод, коли тип ``variant`` невідомий заздалегідь (для поліморфізму).

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_argument_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_argument_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_argument_count>`

Повертає загальну кількість аргументів, які цей **Callable** має прийняти, включаючи необов’язкові аргументи. Це означає, що будь-які аргументи, пов’язані з :ref:`bind()<class_Callable_method_bind>`, *віднімаються* з результату, а будь-які аргументи, не пов’язані з :ref:`unbind()<class_Callable_method_unbind>`, *додаються* до результату.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bound_arguments**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments>`

Повертає масив аргументів, пов’язаних через послідовні виклики :ref:`bind()<class_Callable_method_bind>` або :ref:`unbind()<class_Callable_method_unbind>`. Ці аргументи буде додано *після* аргументів, переданих до виклику, з якого :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` аргументи праворуч були раніше виключені.

::

    func get_effective_arguments(callable, call_args):
         assert(call_args.size() - callable.get_unbound_arguments_count() >= 0)
         var result = call_args.slice(0, call_args.size() - callable.get_unbound_arguments_count())
         result.append_array(callable.get_bound_arguments())
         return result

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_bound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_bound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_bound_arguments_count>`

Повертає загальну кількість аргументів, зв’язаних послідовними викликами :ref:`bind()<class_Callable_method_bind>` або :ref:`unbind()<class_Callable_method_unbind>`. Це те саме, що розмір масиву, який повертає :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>`. Дивіться :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>` для деталей.

\ **Примітка.** Методи :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` і :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` можуть повертати позитивні значення.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_method:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_method**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_method>`

Повертає назву методу, представленого цим **Callable**. Якщо викликається лямбда-функція GDScript, повертає назву функції або ``"<анонімний лямбда>"``.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **get_object**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object>`

Повертає об’єкт, для якого викликається **Callable**.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_object_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_object_id**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_object_id>`

Повертає ідентифікатор цього об'єкта **Callable** (див. :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`).

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_get_unbound_arguments_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unbound_arguments_count**\ (\ ) |const| :ref:`🔗<class_Callable_method_get_unbound_arguments_count>`

Повертає загальну кількість аргументів, не зв’язаних через послідовні виклики :ref:`bind()<class_Callable_method_bind>` або :ref:`unbind()<class_Callable_method_unbind>`. Дивіться :ref:`get_bound_arguments()<class_Callable_method_get_bound_arguments>` для деталей.

\ **Примітка:** Методи :ref:`get_bound_arguments_count()<class_Callable_method_get_bound_arguments_count>` і :ref:`get_unbound_arguments_count()<class_Callable_method_get_unbound_arguments_count>` можуть повертати позитивні значення.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_hash:

.. rst-class:: classref-method

:ref:`int<class_int>` **hash**\ (\ ) |const| :ref:`🔗<class_Callable_method_hash>`

Повертає 32-бітне хеш-значення цього об’єкта **Callable**.

\ **Примітка:** **Callable** з однаковим вмістом завжди створюватимуть ідентичні хеш-значення. Однак зворотне не вірно. Повернення ідентичних хеш-значень *не* означає, що виклики є рівними, оскільки різні викликані можуть мати ідентичні хеш-значення через колізії ішов. Механізм використовує 32-розрядний алгоритм хешування для :ref:`hash()<class_Callable_method_hash>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_custom:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_custom**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_custom>`

Повертає ``true``, якщо цей **Callable** є спеціальним викликом. Використовуються спеціальні виклики:

 - для зв'язування/розв'язування аргументів (див. :ref:`bind()<class_Callable_method_bind>` і :ref:`unbind()<class_Callable_method_unbind>`);

 - для представлення методів вбудованих типів :ref:`Variant<class_Variant>` (див. :ref:`create()<class_Callable_method_create>`);

 - для представлення глобальних, лямбда-функцій і RPC-функцій у GDScript;

 - для інших цілей у ядрі, GDExtension і C#.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_null:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_null**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_null>`

Повертає ``true``, якщо цей **Callable** не має цілі для виклику методу. Еквівалент ``callable == Callable()``.

\ **Примітка:** Це *не* те саме, що ``not is_valid()``, і використання ``not is_null()`` *не* гарантує, що цей виклик можна буде викликати. Натомість використовуйте :ref:`is_valid()<class_Callable_method_is_valid>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_standard:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_standard**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_standard>`

Повертає ``true``, якщо цей **Callable** є стандартним викликом. Цей метод протилежний :ref:`is_custom()<class_Callable_method_is_custom>`. Повертає ``false``, якщо цей виклик є лямбда-функцією.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_Callable_method_is_valid>`

Повертає ``true``, якщо об’єкт, що викликається, існує та має дійсне ім’я методу, або є власним викликом.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc:

.. rst-class:: classref-method

|void| **rpc**\ (\ ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc>`

Виконайте RPC (віддалений виклик процедури) на всіх підключених вузлах. Це використовується для багатокористувацьких ігор і зазвичай недоступне, якщо функція, що викликається, не була позначена як *RPC* (за допомогою :ref:`@GDScript.@rpc()<class_@GDScript_method_@rpc>` або :ref:`Node.rpc_config()<class_Node_method_rpc_config>`). Виклик цього методу для непідтримуваних функцій призведе до помилки. Див. :ref:`Node.rpc()<class_Node_method_rpc>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_rpc_id:

.. rst-class:: classref-method

|void| **rpc_id**\ (\ peer_id\: :ref:`int<class_int>`, ...\ ) |vararg| |const| :ref:`🔗<class_Callable_method_rpc_id>`

Виконайте RPC (віддалений виклик процедури) для певного ідентифікатора однорангового пристрою (довідково дивіться документацію щодо багатокористувацької гри). Це використовується для багатокористувацької гри та зазвичай недоступне, якщо функція, що викликається, не була позначена як *RPC* (за допомогою :ref:`@GDScript.@rpc<class_@GDScript_annotation_@rpc>` або :ref:`Node.rpc_config()<class_Node_method_rpc_config>`). Виклик цього методу для непідтримуваних функцій призведе до помилки. Див. :ref:`Node.rpc_id()<class_Node_method_rpc_id>`.

.. rst-class:: classref-item-separator

----

.. _class_Callable_method_unbind:

.. rst-class:: classref-method

:ref:`Callable<class_Callable>` **unbind**\ (\ argcount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Callable_method_unbind>`

Повертає копію цього **Callable** з низкою аргументів без зв’язку. Іншими словами, коли викликається новий виклик, кілька останніх аргументів, наданих користувачем, ігноруються відповідно до ``argcount``. Решта аргументів передаються викликаному. Це дозволяє використовувати оригінальний виклик у контексті, який намагається передати більше аргументів, ніж цей виклик може обробити, наприклад. сигнал із фіксованою кількістю аргументів. Дивіться також :ref:`bind()<class_Callable_method_bind>`.

\ **Примітка:** Коли цей метод пов’язано з іншими подібними методами, порядок, у якому змінюється список аргументів, читається справа наліво.

::

    func _ready():
         foo.unbind(1).call(1, 2) # Виклики foo(1).
         foo.bind(3, 4).unbind(1).call(1, 2) # Викликає foo(1, 3, 4), зауважте, що це не змінює аргументи bind.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи операторів
--------------------------------

.. _class_Callable_operator_neq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_neq_Callable>`

Повертає ``true``, якщо обидві **Callable** занурюють різні цілі.

.. rst-class:: classref-item-separator

----

.. _class_Callable_operator_eq_Callable:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_Callable_operator_eq_Callable>`

Повертаємо ``true``, якщо обидві **Callable** занурюють ті ж індивідуальні цілі.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
