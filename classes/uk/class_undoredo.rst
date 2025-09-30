:github_url: hide

.. _class_UndoRedo:

UndoRedo
========

**Успадковує:** :ref:`Object<class_Object>`

Забезпечує інтерфейс високого рівня для реалізації безперебійних та відновлювальних операцій.

.. rst-class:: classref-introduction-group

Опис
--------

Функція UndoRedo працює шляхом реєстрації методів та змін властивостей всередині "дій". Ви можете створити дію, потім надати способи виконання та скасування цієї дії за допомогою викликів функцій та змін властивостей, а потім зафіксувати дію.

Коли дія буде зафіксована, будуть виконані всі методи ``do_*``. Якщо використовується метод :ref:`undo()<class_UndoRedo_method_undo>`, будуть виконані методи ``undo_*``. Якщо використовується метод :ref:`redo()<class_UndoRedo_method_redo>`, знову ж таки, будуть виконані всі методи ``do_*``.

Ось приклад того, як додати дію:


.. tabs::

 .. code-tab:: gdscript

    var undo_redo = UndoRedo.new()

    func do_something():
        pass # Вставте свій код тут.

    func undo_something():
        pass # Вставте сюди код, який скасовує те, що було зроблено "do_something()".

    func _on_my_button_pressed():
        var node = get_node("MyNode2D")
        undo_redo.create_action("Move the node")
        undo_redo.add_do_method(do_something)
        undo_redo.add_undo_method(undo_something)
        undo_redo.add_do_property(node, "position", Vector2(100, 100))
        undo_redo.add_undo_property(node, "position", node.position)
        undo_redo.commit_action()

 .. code-tab:: csharp

    private UndoRedo _undoRedo;

    public override void _Ready()
    {
        _undoRedo = new UndoRedo();
    }

    public void DoSomething()
    {
        // Введіть свій код тут.
    }

    public void UndoSomething()
    {
        // Вставте сюди код, який скасовує те, що було зроблено "DoSomething()".
    }

    private void OnMyButtonPressed()
    {
        var node = GetNode<Node2D>("MyNode2D");
        _undoRedo.CreateAction("Move the node");
        _undoRedo.AddDoMethod(new Callable(this, MethodName.DoSomething));
        _undoRedo.AddUndoMethod(new Callable(this, MethodName.UndoSomething));
        _undoRedo.AddDoProperty(node, "position", new Vector2(100, 100));
        _undoRedo.AddUndoProperty(node, "position", node.Position);
        _undoRedo.CommitAction();
    }



Перш ніж викликати будь-який з методів ``add_(un)do_*``, потрібно спочатку викликати :ref:`create_action()<class_UndoRedo_method_create_action>`. Після цього потрібно викликати :ref:`commit_action()<class_UndoRedo_method_commit_action>`.

Якщо вам не потрібно реєструвати метод, ви можете не вказувати :ref:`add_do_method()<class_UndoRedo_method_add_do_method>` та :ref:`add_undo_method()<class_UndoRedo_method_add_undo_method>`; те саме стосується властивостей. Ви також можете зареєструвати більше одного методу/властивості.

Якщо ви створюєте :ref:`EditorPlugin<class_EditorPlugin>` і хочете інтегрувати його в історію скасування редактора, використовуйте замість цього :ref:`EditorUndoRedoManager<class_EditorUndoRedoManager>`.

Якщо ви реєструєте кілька властивостей/методів, які залежать один від одного, пам’ятайте, що за замовчуванням операції скасування викликаються в тому ж порядку, в якому вони були додані. Тому замість групування операції «виконати» з їхніми операціями скасування краще групувати «виконати» з одного боку, а «скасувати» з іншого, як показано нижче.


.. tabs::

 .. code-tab:: gdscript

    undo_redo.create_action("Add object")

    # DO
    undo_redo.add_do_method(_create_object)
    undo_redo.add_do_method(_add_object_to_singleton)

    # UNDO
    undo_redo.add_undo_method(_remove_object_from_singleton)
    undo_redo.add_undo_method(_destroy_that_object)

    undo_redo.commit_action()

 .. code-tab:: csharp

    _undo_redo.CreateAction("Add object");

    // DO
    _undo_redo.AddDoMethod(new Callable(this, MethodName.CreateObject));
    _undo_redo.AddDoMethod(new Callable(this, MethodName.AddObjectToSingleton));

    // UNDO
    _undo_redo.AddUndoMethod(new Callable(this, MethodName.RemoveObjectFromSingleton));
    _undo_redo.AddUndoMethod(new Callable(this, MethodName.DestroyThatObject));

    _undo_redo.CommitAction();



.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`max_steps<class_UndoRedo_property_max_steps>` | ``0`` |
   +-----------------------+-----------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_do_method<class_UndoRedo_method_add_do_method>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_do_property<class_UndoRedo_method_add_do_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                     |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_do_reference<class_UndoRedo_method_add_do_reference>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_undo_method<class_UndoRedo_method_add_undo_method>`\ (\ callable\: :ref:`Callable<class_Callable>`\ )                                                                                                      |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_undo_property<class_UndoRedo_method_add_undo_property>`\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ )                 |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_undo_reference<class_UndoRedo_method_add_undo_reference>`\ (\ object\: :ref:`Object<class_Object>`\ )                                                                                                      |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_history<class_UndoRedo_method_clear_history>`\ (\ increase_version\: :ref:`bool<class_bool>` = true\ )                                                                                                   |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`commit_action<class_UndoRedo_method_commit_action>`\ (\ execute\: :ref:`bool<class_bool>` = true\ )                                                                                                            |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`create_action<class_UndoRedo_method_create_action>`\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, backward_undo_ops\: :ref:`bool<class_bool>` = false\ ) |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`end_force_keep_in_merge_ends<class_UndoRedo_method_end_force_keep_in_merge_ends>`\ (\ )                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_action_name<class_UndoRedo_method_get_action_name>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                                      |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_current_action<class_UndoRedo_method_get_current_action>`\ (\ )                                                                                                                                            |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_current_action_name<class_UndoRedo_method_get_current_action_name>`\ (\ ) |const|                                                                                                                          |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_history_count<class_UndoRedo_method_get_history_count>`\ (\ )                                                                                                                                              |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_version<class_UndoRedo_method_get_version>`\ (\ ) |const|                                                                                                                                                  |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_redo<class_UndoRedo_method_has_redo>`\ (\ ) |const|                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`has_undo<class_UndoRedo_method_has_undo>`\ (\ ) |const|                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`is_committing_action<class_UndoRedo_method_is_committing_action>`\ (\ ) |const|                                                                                                                                |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`redo<class_UndoRedo_method_redo>`\ (\ )                                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`start_force_keep_in_merge_ends<class_UndoRedo_method_start_force_keep_in_merge_ends>`\ (\ )                                                                                                                    |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`undo<class_UndoRedo_method_undo>`\ (\ )                                                                                                                                                                        |
   +-----------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигнали
--------------

.. _class_UndoRedo_signal_version_changed:

.. rst-class:: classref-signal

**version_changed**\ (\ ) :ref:`🔗<class_UndoRedo_signal_version_changed>`

Викликається, коли викликано метод :ref:`undo()<class_UndoRedo_method_undo>` або метод :ref:`redo()<class_UndoRedo_method_redo>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_UndoRedo_MergeMode:

.. rst-class:: classref-enumeration

enum **MergeMode**: :ref:`🔗<enum_UndoRedo_MergeMode>`

.. _class_UndoRedo_constant_MERGE_DISABLE:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_DISABLE** = ``0``

Здійснює операції "до"/"undo" в окремих діях.

.. _class_UndoRedo_constant_MERGE_ENDS:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_ENDS** = ``1``

Займіть цю дію з попереднім, якщо вони мають однакову назву. Зберігає лише перші операції акції «ундо» та останні операції акції «до». Корисно для послідовних змін до одного значення.

.. _class_UndoRedo_constant_MERGE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`MergeMode<enum_UndoRedo_MergeMode>` **MERGE_ALL** = ``2``

Займіть цю дію з попереднім, якщо вони мають однакову назву.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_UndoRedo_property_max_steps:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_steps** = ``0`` :ref:`🔗<class_UndoRedo_property_max_steps>`

.. rst-class:: classref-property-setget

- |void| **set_max_steps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_steps**\ (\ )

Максимальне число кроків, які можуть зберігатися в анамнезі Якщо кількість збережених кроків перевищує цей ліміт, старші кроки знімаються з історії і більше не можуть бути досягнуті за допомогою виклику :ref:`undo()<class_UndoRedo_method_undo>`. Вартість ``0`` або нижчих засобів без обмеження.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_UndoRedo_method_add_do_method:

.. rst-class:: classref-method

|void| **add_do_method**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_method>`

Зареєструйте об'єкт :ref:`Callable<class_Callable>`, який буде викликано після завершення дії.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_do_property:

.. rst-class:: classref-method

|void| **add_do_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_property>`

Зареєструйте властивість ``property``, значення якої змінюватиметься на ``value`` після завершення дії.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_do_reference:

.. rst-class:: classref-method

|void| **add_do_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_UndoRedo_method_add_do_reference>`

Зареєструвати посилання на об'єкт, який буде стерто, якщо журнал "do" буде видалено. Це корисно для об’єктів, доданих дією «зробити» та видалених дією «скасувати». 

Коли журнал «do» буде видалено, якщо об’єкт є :ref:`RefCounted<class_RefCounted>`, на нього не буде посилань. В іншому випадку воно буде звільнено. Не використовуйте для ресурсів. 

::
 
    var node = Node2D.new() 
    undo_redo.create_action("Add node") 
    undo_redo.add_do_method(add_child.bind(node)) 
    undo_redo.add_do_reference(node) 
    undo_redo.add_undo_method(remove_child.bind(node)) 
    undo_redo.commit_action() 

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_method:

.. rst-class:: classref-method

|void| **add_undo_method**\ (\ callable\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_method>`

Зареєструйте об'єкт :ref:`Callable<class_Callable>`, який буде викликано після скасування дії.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_property:

.. rst-class:: classref-method

|void| **add_undo_property**\ (\ object\: :ref:`Object<class_Object>`, property\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_property>`

Зареєструйте властивість ``property``, значення якої змінюватиметься на ``value`` після скасування дії.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_add_undo_reference:

.. rst-class:: classref-method

|void| **add_undo_reference**\ (\ object\: :ref:`Object<class_Object>`\ ) :ref:`🔗<class_UndoRedo_method_add_undo_reference>`

Зареєструйте посилання на об’єкт, який буде стерто, якщо видалити історію «скасування». Це корисно для об’єктів, доданих за допомогою дії «скасувати» та видалених за допомогою дії «до». 

Коли журнал "скасування" видаляється, якщо об’єкт є :ref:`RefCounted<class_RefCounted>`, на нього не буде посилатися. В іншому випадку воно буде звільнено. Не використовуйте для ресурсів. 

::
 
    змінний вузол = $Node2D 
    undo_redo.create_action("Remove node") 
    undo_redo.add_do_method(remove_child.bind(node)) 
    undo_redo.add_undo_method(add_child.bind(node)) 
    undo_redo.add_undo_reference(node) 
    undo_redo.commit_action() 

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_clear_history:

.. rst-class:: classref-method

|void| **clear_history**\ (\ increase_version\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_UndoRedo_method_clear_history>`

Очистити історію та асоційовані посилання.

Передача ``false`` до ``increase_version`` дозволить запобігти збільшенню кількості версій при очищенні історії.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_commit_action:

.. rst-class:: classref-method

|void| **commit_action**\ (\ execute\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_UndoRedo_method_commit_action>`

Прийміть дію. Якщо ``execute`` є ``true`` (що це за замовчуванням), всі "до" методи / об'єкти називаються / зміщуються, коли ця функція називається.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_create_action:

.. rst-class:: classref-method

|void| **create_action**\ (\ name\: :ref:`String<class_String>`, merge_mode\: :ref:`MergeMode<enum_UndoRedo_MergeMode>` = 0, backward_undo_ops\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_UndoRedo_method_create_action>`

Створіть нову дію. Після її виклику виконайте всі виклики методів :ref:`add_do_method()<class_UndoRedo_method_add_do_method>`, :ref:`add_undo_method()<class_UndoRedo_method_add_undo_method>`, :ref:`add_do_property()<class_UndoRedo_method_add_do_property>` та :ref:`add_undo_property()<class_UndoRedo_method_add_undo_property>`, а потім зафіксуйте дію за допомогою методу :ref:`commit_action()<class_UndoRedo_method_commit_action>`.

Спосіб об'єднання дій визначається параметром ``merge_mode``.

Порядок розташування операцій скасування в діях визначається параметром ``backward_undo_ops``. Коли параметр ``backward_undo_ops`` має значення ``false``, параметри скасування впорядковуються в тому ж порядку, в якому вони були додані. Це означає, що перша додана операція буде першою скасованою.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_end_force_keep_in_merge_ends:

.. rst-class:: classref-method

|void| **end_force_keep_in_merge_ends**\ (\ ) :ref:`🔗<class_UndoRedo_method_end_force_keep_in_merge_ends>`

Стопи розмітки операцій, які повинні бути оброблені, навіть якщо дія зливається з іншим в режимі :ref:`MERGE_ENDS<class_UndoRedo_constant_MERGE_ENDS>`. Подивитися :ref:`start_force_keep_in_merge_ends()<class_UndoRedo_method_start_force_keep_in_merge_ends>`.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_action_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_action_name**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_UndoRedo_method_get_action_name>`

Отримує ім'я дії з індексу.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_current_action:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_current_action**\ (\ ) :ref:`🔗<class_UndoRedo_method_get_current_action>`

Отримує індекс поточного дії.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_current_action_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_current_action_name**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_get_current_action_name>`

Отримувати ім'я поточного дії, еквівалентного ``get_action_name(get_current_action()``.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_history_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_history_count**\ (\ ) :ref:`🔗<class_UndoRedo_method_get_history_count>`

Повертає лишок за двома векторами.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_get_version:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_version**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_get_version>`

Зроблено версію. Щоразу нова акція виконана, номер версії **UndoRedo** збільшений автоматично.

Це корисно в основному, щоб перевірити, якщо щось змінено з збереженої версії.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_has_redo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_redo**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_has_redo>`

Повертаємо ``true``, якщо доступна акція "redo".

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_has_undo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_undo**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_has_undo>`

Повертаємо ``true``, якщо доступна акція "undo".

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_is_committing_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_committing_action**\ (\ ) |const| :ref:`🔗<class_UndoRedo_method_is_committing_action>`

Повертає ``true``, якщо **UndoRedo** в даний час бере участь в акції, тобто працює метод "до" або зміни майна (див. :ref:`commit_action()<class_UndoRedo_method_commit_action>`).

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_redo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **redo**\ (\ ) :ref:`🔗<class_UndoRedo_method_redo>`

Червоно останні дії.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_start_force_keep_in_merge_ends:

.. rst-class:: classref-method

|void| **start_force_keep_in_merge_ends**\ (\ ) :ref:`🔗<class_UndoRedo_method_start_force_keep_in_merge_ends>`

Відзначає наступні операції "до" і "undo" для обробки, навіть якщо дія зливається з іншим в режимі :ref:`MERGE_ENDS<class_UndoRedo_constant_MERGE_ENDS>`. Повернення до нормальної роботи за допомогою :ref:`end_force_keep_in_merge_ends()<class_UndoRedo_method_end_force_keep_in_merge_ends>`.

.. rst-class:: classref-item-separator

----

.. _class_UndoRedo_method_undo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **undo**\ (\ ) :ref:`🔗<class_UndoRedo_method_undo>`

Недо останнього дії.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
