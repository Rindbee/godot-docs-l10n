:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerAPI:

MultiplayerAPI
==============

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`, :ref:`SceneMultiplayer<class_SceneMultiplayer>`

Высокоуровневый многопользовательский API-интерфейс.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый класс для высокоуровневых реализаций многопользовательского API. См. также :ref:`MultiplayerPeer<class_MultiplayerPeer>`.

По умолчанию :ref:`SceneTree<class_SceneTree>` имеет ссылку на реализацию этого класса и использует ее для предоставления многопользовательских возможностей (т. е. RPC) по всей сцене.

Можно переопределить экземпляр MultiplayerAPI, используемый определенными ветвями дерева, вызвав метод :ref:`SceneTree.set_multiplayer()<class_SceneTree_method_set_multiplayer>`, что фактически позволяет запускать как клиент, так и сервер в одной сцене.

Также можно расширить или заменить реализацию по умолчанию с помощью скриптов или собственных расширений. См. :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` для получения подробной информации о расширениях, :ref:`SceneMultiplayer<class_SceneMultiplayer>` для получения подробной информации о реализации по умолчанию.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`MultiplayerPeer<class_MultiplayerPeer>` | :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` |
   +-----------------------------------------------+-------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MultiplayerAPI<class_MultiplayerAPI>`     | :ref:`create_default_interface<class_MultiplayerAPI_method_create_default_interface>`\ (\ ) |static|                                                                                                            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`             | :ref:`get_default_interface<class_MultiplayerAPI_method_get_default_interface>`\ (\ ) |static|                                                                                                                  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`get_peers<class_MultiplayerAPI_method_get_peers>`\ (\ )                                                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_remote_sender_id<class_MultiplayerAPI_method_get_remote_sender_id>`\ (\ )                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`get_unique_id<class_MultiplayerAPI_method_get_unique_id>`\ (\ )                                                                                                                                           |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`has_multiplayer_peer<class_MultiplayerAPI_method_has_multiplayer_peer>`\ (\ )                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_server<class_MultiplayerAPI_method_is_server>`\ (\ )                                                                                                                                                   |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`object_configuration_add<class_MultiplayerAPI_method_object_configuration_add>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ )                                |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`object_configuration_remove<class_MultiplayerAPI_method_object_configuration_remove>`\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ )                          |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`poll<class_MultiplayerAPI_method_poll>`\ (\ )                                                                                                                                                             |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`           | :ref:`rpc<class_MultiplayerAPI_method_rpc>`\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, arguments\: :ref:`Array<class_Array>` = []\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set_default_interface<class_MultiplayerAPI_method_set_default_interface>`\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) |static|                                                            |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_MultiplayerAPI_signal_connected_to_server:

.. rst-class:: classref-signal

**connected_to_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connected_to_server>`

Выдается, когда :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` этого MultiplayerAPI успешно подключается к серверу. Выдается только на клиентах.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_connection_failed:

.. rst-class:: classref-signal

**connection_failed**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connection_failed>`

Выдается, когда :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` этого MultiplayerAPI не может установить соединение с сервером. Выдается только на клиентах.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_connected:

.. rst-class:: classref-signal

**peer_connected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_connected>`

Выдается, когда :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` этого MultiplayerAPI подключается к новому пиру. ID — это идентификатор пира нового пира. Клиенты получают уведомления, когда другие клиенты подключаются к тому же серверу. При подключении к серверу клиент также получает этот сигнал для сервера (с ID, равным 1).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_disconnected:

.. rst-class:: classref-signal

**peer_disconnected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_disconnected>`

Выдается, когда :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` этого MultiplayerAPI отключается от пира. Клиенты получают уведомления, когда другие клиенты отключаются от того же сервера.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_server_disconnected:

.. rst-class:: classref-signal

**server_disconnected**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_server_disconnected>`

Выдается, когда :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` этого MultiplayerAPI отключается от сервера. Выдается только на клиентах.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_MultiplayerAPI_RPCMode:

.. rst-class:: classref-enumeration

enum **RPCMode**: :ref:`🔗<enum_MultiplayerAPI_RPCMode>`

.. _class_MultiplayerAPI_constant_RPC_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_DISABLED** = ``0``

Используется с :ref:`Node.rpc_config()<class_Node_method_rpc_config>` для отключения метода или свойства для всех вызовов RPC, делая его недоступным. По умолчанию для всех методов.

.. _class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_ANY_PEER** = ``1``

Используется с :ref:`Node.rpc_config()<class_Node_method_rpc_config>` для установки метода, который может быть вызван удаленно любым пиром. Аналогично аннотации ``@rpc("any_peer")``. Вызовы принимаются от всех удаленных пиров, независимо от того, являются ли они авторитетом узла или нет.

.. _class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_AUTHORITY** = ``2``

Используется с :ref:`Node.rpc_config()<class_Node_method_rpc_config>` для установки метода, который будет вызываться удаленно только текущим многопользовательским полномочием (по умолчанию сервером). Аналогично аннотации ``@rpc("authority")``. См. :ref:`Node.set_multiplayer_authority()<class_Node_method_set_multiplayer_authority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_MultiplayerAPI_property_multiplayer_peer:

.. rst-class:: classref-property

:ref:`MultiplayerPeer<class_MultiplayerPeer>` **multiplayer_peer** :ref:`🔗<class_MultiplayerAPI_property_multiplayer_peer>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_peer**\ (\ value\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ )
- :ref:`MultiplayerPeer<class_MultiplayerPeer>` **get_multiplayer_peer**\ (\ )

Объект peer для обработки системы RPC (эффективно включающей сетевое взаимодействие при установке). В зависимости от самого peer, MultiplayerAPI станет сетевым сервером (проверьте с помощью :ref:`is_server()<class_MultiplayerAPI_method_is_server>`) и установит сетевой режим корневого узла на authority, или он станет обычным клиентским peer. Все дочерние узлы настроены на наследование сетевого режима по умолчанию. Обработка событий, связанных с сетью (подключение, отключение, новые клиенты), выполняется путем подключения к сигналам MultiplayerAPI.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MultiplayerAPI_method_create_default_interface:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **create_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_create_default_interface>`

Возвращает новый экземпляр MultiplayerAPI по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_default_interface:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_get_default_interface>`

Возвращает имя класса реализации MultiplayerAPI по умолчанию. Обычно это ``"SceneMultiplayer"``, когда доступен :ref:`SceneMultiplayer<class_SceneMultiplayer>`. См. :ref:`set_default_interface()<class_MultiplayerAPI_method_set_default_interface>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_peers**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_peers>`

Возвращает идентификаторы всех подключенных одноранговых узлов этого MultiplayerAPI :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_remote_sender_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_remote_sender_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_remote_sender_id>`

Возвращает идентификатор однорангового узла отправителя для RPC, который в данный момент выполняется.

\ **Примечание:** Этот метод возвращает ``0`` при вызове вне RPC. Таким образом, исходный идентификатор однорангового узла может быть утерян, если выполнение кода задерживается (например, с ключевым словом ``await`` GDScript).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unique_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_unique_id>`

Возвращает уникальный идентификатор однорангового узла :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` этого MultiplayerAPI.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_has_multiplayer_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_multiplayer_peer**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_has_multiplayer_peer>`

Возвращает ``true``, если установлен :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_is_server>`

Возвращает ``true``, если :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` этого MultiplayerAPI действителен и находится в режиме сервера (прослушивает соединения).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_add:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_add**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_add>`

Уведомляет MultiplayerAPI о новой ``configuration`` для данного ``object``. Этот метод используется внутренне :ref:`SceneTree<class_SceneTree>` для настройки корневого пути для этого MultiplayerAPI (передавая ``null`` и допустимый :ref:`NodePath<class_NodePath>` как ``configuration``). Этот метод может далее использоваться реализациями MultiplayerAPI для предоставления дополнительных функций, см. конкретную реализацию (например, :ref:`SceneMultiplayer<class_SceneMultiplayer>`) для получения подробной информации о том, как они его используют.

\ **Примечание:** Этот метод в основном актуален при расширении или переопределении поведения MultiplayerAPI через :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_remove**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_remove>`

Уведомляет MultiplayerAPI об удалении ``configuration`` для данного ``object``. Этот метод используется внутренне :ref:`SceneTree<class_SceneTree>` для настройки корневого пути для этого MultiplayerAPI (передавая ``null`` и пустой :ref:`NodePath<class_NodePath>` как ``configuration``). Этот метод может быть дополнительно использован реализациями MultiplayerAPI для предоставления дополнительных функций, см. конкретную реализацию (например, :ref:`SceneMultiplayer<class_SceneMultiplayer>`) для получения подробной информации о том, как они его используют.

\ **Примечание:** Этот метод в основном актуален при расширении или переопределении поведения MultiplayerAPI через :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_poll>`

Метод, используемый для опроса MultiplayerAPI. Вам нужно беспокоиться об этом, только если вы установите :ref:`SceneTree.multiplayer_poll<class_SceneTree_property_multiplayer_poll>` на ``false``. По умолчанию :ref:`SceneTree<class_SceneTree>` будет опрашивать свои MultiplayerAPI для вас.

\ **Примечание:** Этот метод приводит к вызову RPC, поэтому они будут выполняться в том же контексте этой функции (например, ``_process``, ``physics``, :ref:`Thread<class_Thread>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc**\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_MultiplayerAPI_method_rpc>`

Отправляет RPC в целевой ``peer``. Указанный ``method`` будет вызван на удаленном ``object`` с предоставленными ``arguments``. RPC также может быть вызван локально в зависимости от реализации и конфигурации RPC. См. :ref:`Node.rpc()<class_Node_method_rpc>` и :ref:`Node.rpc_config()<class_Node_method_rpc_config>`.

\ **Примечание:** Предпочитайте использовать :ref:`Node.rpc()<class_Node_method_rpc>`, :ref:`Node.rpc_id()<class_Node_method_rpc_id>` или ``my_method.rpc(peer, arg1, arg2, ...)`` (в GDScript), так как они быстрее. Этот метод в основном полезен в сочетании с :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` при расширении или замене многопользовательских возможностей.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_set_default_interface:

.. rst-class:: classref-method

|void| **set_default_interface**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_set_default_interface>`

Устанавливает класс реализации MultiplayerAPI по умолчанию. Этот метод может использоваться модулями и расширениями для настройки того, какая реализация будет использоваться :ref:`SceneTree<class_SceneTree>` при запуске движка.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
