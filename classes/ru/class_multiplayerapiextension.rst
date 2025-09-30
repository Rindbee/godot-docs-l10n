:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/MultiplayerAPIExtension.xml.

.. _class_MultiplayerAPIExtension:

MultiplayerAPIExtension
=======================

**Наследует:** :ref:`MultiplayerAPI<class_MultiplayerAPI>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Базовый класс, используемый для расширения :ref:`MultiplayerAPI<class_MultiplayerAPI>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс можно использовать для расширения или замены реализации по умолчанию :ref:`MultiplayerAPI<class_MultiplayerAPI>` с помощью скрипта или расширений.

Следующий пример расширяет реализацию по умолчанию (:ref:`SceneMultiplayer<class_SceneMultiplayer>`), регистрируя каждый выполненный RPC и каждый объект, настроенный для репликации.


.. tabs::

 .. code-tab:: gdscript

    extends MultiplayerAPIExtension
    class_name LogMultiplayer

    # Мы хотим расширить стандартный SceneMultiplayer.
    var base_multiplayer = SceneMultiplayer.new()

    func _init():
        # Просто пропускаются базовые сигналы (скопированные в var, чтобы избежать циклических ссылок)
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

    # Регистрируйте выполняемые RPC-запросы и пересылайте их в многопользовательскую игру по умолчанию.
    func _rpc(peer: int, object: Object, method: StringName, args: Array) -> Error:
        print("Получил RPC для %d: %s::%s(%s)" % [peer, object, method, args])
        return base_multiplayer.rpc(peer, object, method, args)

    # Добавление конфигурации журнала. Например, корневой путь (nullptr, NodePath), репликация (Node, Spawner|Synchronizer), пользовательский.
    func _object_configuration_add(object, config: Variant) -> Error:
        if config is MultiplayerSynchronizer:
            print("Добавление конфигурации синхронизации для %s. Синхронизатор: %s" % [object, config])
        elif config is MultiplayerSpawner:
            print("Добавление узла %s в список появления. Spawner: %s" % [object, config])
        return base_multiplayer.object_configuration_add(object, config)

    # Удаление конфигурации журнала. Например, корневой путь (nullptr, NodePath), репликация (Node, Spawner|Synchronizer), настраиваемый.
    func _object_configuration_remove(object, config: Variant) -> Error:
        if config is MultiplayerSynchronizer:
            print("Удаление конфигурации синхронизации для %s. Синхронизатор: %s" % [object, config])
        elif config is MultiplayerSpawner:
            print("Удаление узла %s из списка появления. Spawner: %s" % [object, config])
        return base_multiplayer.object_configuration_remove(object, config)

    # Они могут быть необязательными, но в нашем случае мы хотим расширить SceneMultiplayer, поэтому пересылаем все.
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



Затем в вашей основной сцене или в автозагрузке вызовите :ref:`SceneTree.set_multiplayer()<class_SceneTree_method_set_multiplayer>`, чтобы начать использовать ваш пользовательский :ref:`MultiplayerAPI<class_MultiplayerAPI>`:


.. tabs::

 .. code-tab:: gdscript

    # autoload.gd
    func _enter_tree():
        # Устанавливает наш пользовательский многопользовательский режим в качестве основного в SceneTree.
        get_tree().set_multiplayer(LogMultiplayer.new())



Собственные расширения могут также использовать метод :ref:`MultiplayerAPI.set_default_interface()<class_MultiplayerAPI_method_set_default_interface>` во время инициализации, чтобы настроить себя в качестве реализации по умолчанию.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

.. _class_MultiplayerAPIExtension_private_method__get_multiplayer_peer:

.. rst-class:: classref-method

:ref:`MultiplayerPeer<class_MultiplayerPeer>` **_get_multiplayer_peer**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_multiplayer_peer>`

Вызывается при извлечении :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_peer_ids:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **_get_peer_ids**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_peer_ids>`

Обратный вызов для :ref:`MultiplayerAPI.get_peers()<class_MultiplayerAPI_method_get_peers>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_remote_sender_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_remote_sender_id**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_remote_sender_id>`

Обратный вызов для :ref:`MultiplayerAPI.get_remote_sender_id()<class_MultiplayerAPI_method_get_remote_sender_id>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_unique_id**\ (\ ) |virtual| |const| :ref:`🔗<class_MultiplayerAPIExtension_private_method__get_unique_id>`

Обратный вызов для :ref:`MultiplayerAPI.get_unique_id()<class_MultiplayerAPI_method_get_unique_id>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__object_configuration_add:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_object_configuration_add**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__object_configuration_add>`

Обратный вызов для :ref:`MultiplayerAPI.object_configuration_add()<class_MultiplayerAPI_method_object_configuration_add>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__object_configuration_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_object_configuration_remove**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__object_configuration_remove>`

Обратный вызов для :ref:`MultiplayerAPI.object_configuration_remove()<class_MultiplayerAPI_method_object_configuration_remove>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_poll**\ (\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__poll>`

Обратный вызов для :ref:`MultiplayerAPI.poll()<class_MultiplayerAPI_method_poll>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_rpc**\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, args\: :ref:`Array<class_Array>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__rpc>`

Обратный вызов для :ref:`MultiplayerAPI.rpc()<class_MultiplayerAPI_method_rpc>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPIExtension_private_method__set_multiplayer_peer:

.. rst-class:: classref-method

|void| **_set_multiplayer_peer**\ (\ multiplayer_peer\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ ) |virtual| :ref:`🔗<class_MultiplayerAPIExtension_private_method__set_multiplayer_peer>`

Вызывается, когда установлен :ref:`MultiplayerAPI.multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
