:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/MultiplayerAPIExtension.xml.

.. _class_MultiplayerAPIExtension:

MultiplayerAPIExtension
=======================

**Успадковує:** :ref:`MultiplayerAPI<class_MultiplayerAPI>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Базовий клас, який використовується для розширення :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-introduction-group

Опис
--------

Цей клас можна використовувати для розширення або заміни реалізації :ref:`MultiplayerAPI<class_MultiplayerAPI>` за замовчуванням за допомогою скрипта або розширень.

Наступний приклад розширює реалізацію за замовчуванням (:ref:`SceneMultiplayer<class_SceneMultiplayer>`) шляхом реєстрування кожного створеного RPC та кожного об'єкта, налаштованого для реплікації.


.. tabs::

 .. code-tab:: gdscript

    extends MultiplayerAPIExtension
    class_name LogMultiplayer

    # Ми хочемо розширити реалізацію SceneMultiplayer за замовчуванням.
    var base_multiplayer = SceneMultiplayer.new()

    func _init():
    # Просто пропускаємо базові сигнали (скопійовані в var, щоб уникнути циклічного посилання)
    var cts = connected_to_server
    var cf = connection_failed
    var sd = server_disconnected
    var pc = peer_connected
    var pd = peer_disconnected
    base_multiplayer.connected_to_server.connect(func(): cts.emit())
    base_multiplayer.connection_failed.connect(func(): cf.emit())
    base_multiplayer.server_disconnected.connect(func(): sd.emit())
    base_multiplayer.peer_connected.connect(func(id): pc.emit(id))
    base_multiplayer.peer_disconnected.connect(func(id): pd.emit(id))

    func _poll():
    return base_multiplayer.poll()

    # Записати створення RPC та переслати його до багатокористувацького режиму за замовчуванням.
    func _rpc(peer: int, object: Object, method: StringName, args: Array) -> Помилка:
    print("Отримано RPC для %d: %s::%s(%s)" % [peer, object, method, args])
    return base_multiplayer.rpc(peer, object, method, args)

    # Записати конфігурацію додавання. Наприклад, кореневий шлях (nullptr, NodePath), реплікація (Node, Spawner|Synchronizer), custom.
    func _object_configuration_add(object, config: Variant) -> Помилка:
    if config is MultiplayerSynchronizer:
    print("Додавання конфігурації синхронізації для %s. Синхронізатор: %s" % [object, config])
    elif config is MultiplayerSpawner:
    print("Додавання вузла %s до списку спавнів. Спавнер: %s" % [object, config])
    return base_multiplayer.object_configuration_add(object, config)

    # Записати видалення конфігурації. Наприклад, кореневий шлях (nullptr, NodePath), реплікація (Node, Spawner|Synchronizer), custom.
    func _object_configuration_remove(object, config: Variant) -> Помилка:
    if config is MultiplayerSynchronizer:
    print("Видалення конфігурації синхронізації для %s. Синхронізатор: %s" % [object, config])
    elif config is MultiplayerSpawner:
    print("Видалення вузла %s зі списку спавнів. Спавнер: %s" % [object, config])
    return base_multiplayer.object_configuration_remove(object, config)

    # Ці параметри можуть бути необов'язковими, але в нашому випадку ми хочемо розширити SceneMultiplayer, тому пересилаємо все.
    func _set_multiplayer_peer(p_peer: MultiplayerPeer):
    base_multiplayer.multiplayer_peer = p_peer

    func _get_multiplayer_peer() -> MultiplayerPeer:
    return base_multiplayer.multiplayer_peer

    func _get_unique_id() -> int:
    return base_multiplayer.get_unique_id()

    func _get_remote_sender_id() -> int:
    return base_multiplayer.get_remote_sender_id()

    func _get_peer_ids() -> PackedInt32Array:
    return base_multiplayer.get_peers()



Потім у вашій головній сцені або в автозавантаженні викличте :ref:`SceneTree.set_multiplayer()<class_SceneTree_method_set_multiplayer>`, щоб почати використовувати ваш власний :ref:`MultiplayerAPI<class_MultiplayerAPI>`:


.. tabs::

 .. code-tab:: gdscript

    # autoload.gd
    func _enter_tree():
    # Встановлює наш власний багатокористувацький режим як основний у SceneTree.
    get_tree().set_multiplayer(LogMultiplayer.new())



Нативні розширення можуть також використовувати метод :ref:`MultiplayerAPI.set_default_interface()<class_MultiplayerAPI_method_set_default_interface>` під час ініціалізації, щоб налаштувати себе як реалізацію за замовчуванням.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MultiplayerPeer<class_MultiplayerPeer>`   | :ref:`_get_multiplayer_peer<class_MultiplayerAPIExtension_private_method__get_multiplayer_peer>`\ (\ ) |virtual|                                                                                                                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`_get_peer_ids<class_MultiplayerAPIExtension_private_method__get_peer_ids>`\ (\ ) |virtual| |const|                                                                                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`_get_remote_sender_id<class_MultiplayerAPIExtension_private_method__get_remote_sender_id>`\ (\ ) |virtual| |const|                                                                                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`_get_unique_id<class_MultiplayerAPIExtension_private_method__get_unique_id>`\ (\ ) |virtual| |const|                                                                                                                         |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_object_configuration_add<class_MultiplayerAPIExtension_private_method__object_configuration_add>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual|                      |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_object_configuration_remove<class_MultiplayerAPIExtension_private_method__object_configuration_remove>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual|                |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_poll<class_MultiplayerAPIExtension_private_method__poll>`\ (\ ) |virtual|                                                                                                                                                   |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`_rpc<class_MultiplayerAPIExtension_private_method__rpc>`\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>`\ ) |virtual| |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`_set_multiplayer_peer<class_MultiplayerAPIExtension_private_method__set_multiplayer_peer>`\ (\ multiplayer_peer\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ ) |virtual|                                                 |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_MultiplayerAPIExtension_private_method__get_multiplayer_peer:

.. rst-class:: classref-method

:ref:`MultiplayerPeer<class_MultiplayerPeer>` **_get_multiplayer_peer**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_multiplayer_peer>`

Зателефоновано при отриманні :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_peer_ids:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_peer_ids**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_peer_ids>`

Зворотній зв'язок :ref:`MultiplayerAPI.get_peers()<class_MultiplayerAPI_method_get_peers>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_remote_sender_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_remote_sender_id**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_remote_sender_id>`

Зворотній зв'язок :ref:`MultiplayerAPI.get_remote_sender_id()<class_MultiplayerAPI_method_get_remote_sender_id>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_unique_id**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_unique_id>`

Зворотній зв'язок :ref:`MultiplayerAPI.get_unique_id()<class_MultiplayerAPI_method_get_unique_id>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__object_configuration_add:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_object_configuration_add**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__object_configuration_add>`

Зворотний дзвінок для :ref:`MultiplayerAPI.object_configuration_add()<class_MultiplayerAPI_method_object_configuration_add>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__object_configuration_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_object_configuration_remove**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__object_configuration_remove>`

Зворотний дзвінок для :ref:`MultiplayerAPI.object_configuration_remove()<class_MultiplayerAPI_method_object_configuration_remove>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_poll**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__poll>`

Зворотній зв'язок :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_rpc**\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__rpc>`

Зворотній зв'язок :ref:`MultiplayerAPI.rpc()<class_MultiplayerAPI_method_rpc>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__set_multiplayer_peer:

.. rst-class:: classref-method

|void| **_set_multiplayer_peer**\ (\ multiplayer_peer\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__set_multiplayer_peer>`

Зателефоновано при встановленні :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
