:github_url: hide

.. _class_PackedScene:

PackedScene
===========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Абстракция сериализованной сцены.

.. rst-class:: classref-introduction-group

Описание
----------------

Упрощенный интерфейс к файлу сцены. Предоставляет доступ к операциям и проверкам, которые могут быть выполнены над самим ресурсом сцены.

Может использоваться для сохранения узла в файл. При сохранении узел, а также все узлы, которыми он владеет, сохраняются (см. свойство :ref:`Node.owner<class_Node_property_owner>`).

\ **Примечание:** Узел не обязательно должен владеть собой.

\ **Пример:** Загрузка сохраненной сцены:


.. tabs::

 .. code-tab:: gdscript

    # Используйте load() вместо preload(), если путь неизвестен во время компиляции.
    var scene = preload("res://scene.tscn").instantiate()
    # Добавьте узел как дочерний узел узла, к которому прикреплен скрипт.
    add_child(scene)

 .. code-tab:: csharp

    // В C# нет предварительной загрузки, поэтому вам всегда придется использовать ResourceLoader.Load<PackedScene>().
    var scene = ResourceLoader.Load<PackedScene>("res://scene.tscn").Instantiate();
    // Добавьте узел как дочерний узел узла, к которому прикреплен скрипт.
    AddChild(scene);



\ **Пример:** Сохраните узел с разными владельцами. Следующий пример создает 3 объекта: :ref:`Node2D<class_Node2D>` (``node``), :ref:`RigidBody2D<class_RigidBody2D>` (``body``) и :ref:`CollisionObject2D<class_CollisionObject2D>` (``collision``). ``collision`` является дочерним элементом ``body``, который является дочерним элементом ``node``. Только ``body`` принадлежит ``node``, и :ref:`pack()<class_PackedScene_method_pack>` сохранит только эти два узла, но не ``collision``.


.. tabs::

 .. code-tab:: gdscript

    # Создайте объекты.
    var node = Node2D.new()
    var body = RigidBody2D.new()
    var collision = CollisionShape2D.new()

    # Создайте иерархию объектов.
    body.add_child(collision)
    node.add_child(body)

    # Измените владельца `body`, но не `collision`.
    body.owner = node
    var scene = PackedScene.new()

    # Теперь упакованы только `node` и `body`.
    var result = scene.pack(node)
    if result == OK:
        var error = ResourceSaver.save(scene, "res://path/name.tscn")  # Или "user://..."
        if error != OK:
            push_error("Произошла ошибка при сохранении сцены на диск.")

 .. code-tab:: csharp

    // Создайте объекты.
    var node = new Node2D();
    var body = new RigidBody2D();
    var collision = new CollisionShape2D();

    // Создайте иерархию объектов.
    body.AddChild(collision);
    node.AddChild(body);

    // Измените владельца `body`, но не `collision`.
    body.Owner = node;
    var scene = new PackedScene();

    // Теперь упакованы только `node` и `body`.
    Error result = scene.Pack(node);
    if (result == Error.Ok)
    {
        Error error = ResourceSaver.Save(scene, "res://path/name.tscn"); // Или "user://..."
        if (error != Error.Ok)
        {
            GD.PushError("Произошла ошибка при сохранении сцены на диск.");
        }
    }



.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демо 2D ролевой игры (РПГ) <https://godotengine.org/asset-library/asset/2729>`__

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`can_instantiate<class_PackedScene_method_can_instantiate>`\ (\ ) |const|                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SceneState<class_SceneState>`   | :ref:`get_state<class_PackedScene_method_get_state>`\ (\ ) |const|                                                                          |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`               | :ref:`instantiate<class_PackedScene_method_instantiate>`\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pack<class_PackedScene_method_pack>`\ (\ path\: :ref:`Node<class_Node>`\ )                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_PackedScene_GenEditState:

.. rst-class:: classref-enumeration

enum **GenEditState**: :ref:`🔗<enum_PackedScene_GenEditState>`

.. _class_PackedScene_constant_GEN_EDIT_STATE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_DISABLED** = ``0``

При передаче в :ref:`instantiate()<class_PackedScene_method_instantiate>` блокирует редактирование состояния сцены.

.. _class_PackedScene_constant_GEN_EDIT_STATE_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_INSTANCE** = ``1``

Если передано в :ref:`instanceiate()<class_PackedScene_method_instanceiate>`, предоставляет локальные ресурсы сцены локальной сцене.

\ **Примечание:** Доступно только в сборках редактора.

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN** = ``2``

Если передано в :ref:`instanceiate()<class_PackedScene_method_instanceiate>`, предоставляет локальные ресурсы сцены локальной сцене. Только основная сцена должна получать основное состояние редактирования.

\ **Примечание:** Доступно только в сборках редактора.

.. _class_PackedScene_constant_GEN_EDIT_STATE_MAIN_INHERITED:

.. rst-class:: classref-enumeration-constant

:ref:`GenEditState<enum_PackedScene_GenEditState>` **GEN_EDIT_STATE_MAIN_INHERITED** = ``3``

Это похоже на :ref:`GEN_EDIT_STATE_MAIN<class_PackedScene_constant_GEN_EDIT_STATE_MAIN>`, но для случая, когда сцена создается как основа для другой.

\ **Примечание:** Доступно только в сборках редактора.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_PackedScene_method_can_instantiate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_instantiate**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_can_instantiate>`

Возвращает ``true``, если файл сцены содержит узлы.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_get_state:

.. rst-class:: classref-method

:ref:`SceneState<class_SceneState>` **get_state**\ (\ ) |const| :ref:`🔗<class_PackedScene_method_get_state>`

Возвращает :ref:`SceneState<class_SceneState>`, представляющий содержимое файла сцены.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_instantiate:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **instantiate**\ (\ edit_state\: :ref:`GenEditState<enum_PackedScene_GenEditState>` = 0\ ) |const| :ref:`🔗<class_PackedScene_method_instantiate>`

Создает экземпляр иерархии узлов сцены. Запускает создание дочерних экземпляров сцен. Запускает уведомление :ref:`Node.NOTIFICATION_SCENE_INSTANTIATED<class_Node_constant_NOTIFICATION_SCENE_INSTANTIATED>` на корневом узле.

.. rst-class:: classref-item-separator

----

.. _class_PackedScene_method_pack:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pack**\ (\ path\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_PackedScene_method_pack>`

Упаковывает узел ``path`` и все принадлежащие ему подузлы в этот **PackedScene**. Все существующие данные будут очищены. См. :ref:`Node.owner<class_Node_property_owner>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
