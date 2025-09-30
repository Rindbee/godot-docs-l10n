:github_url: hide

.. meta::
	:keywords: network

.. _class_MultiplayerAPI:

MultiplayerAPI
==============

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`, :ref:`SceneMultiplayer<class_SceneMultiplayer>`

Високорівневий багатокористувацький API інтерфейс.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий клас для реалізації багатокористувацького API високого рівня. Дивись також :ref:`MultiplayerPeer<class_MultiplayerPeer>`.

За замовчуванням :ref:`SceneTree<class_SceneTree>` має посилання на виконання цього класу і використовує його для забезпечення можливостей мультиплеєра (тобто RPCs) на всій сцені.

Можливо перевизнати екземпляр MultiplayerAPI, який використовується певними гілочками дерева, викликаючи\ :ref:`SceneTree.set_multiplayer()<class_SceneTree_method_set_multiplayer>`, ефективно дозволяючи працювати як клієнт, так і сервер в одній сцені.

Також можна розширити або замінити виконання за замовчуванням за допомогою скриптів або рідних розширень. Докладніше про розширення, :ref:`SceneMultiplayer<class_SceneMultiplayer>` для деталей щодо реалізації за замовчуванням.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-------------------------------------------------------------------------+
   | :ref:`MultiplayerPeer<class_MultiplayerPeer>` | :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` |
   +-----------------------------------------------+-------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
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

Сигнали
--------------

.. _class_MultiplayerAPI_signal_connected_to_server:

.. rst-class:: classref-signal

**connected_to_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connected_to_server>`

Видається, коли цей MultiplayerAPI :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` успішно підключився до сервера. Видається лише на клієнтах.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_connection_failed:

.. rst-class:: classref-signal

**connection_failed**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_connection_failed>`

Видається, коли цьому MultiplayerAPI :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` не вдається встановити з'єднання із сервером. Видається лише на клієнтах.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_connected:

.. rst-class:: classref-signal

**peer_connected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_connected>`

Випробувано, коли це MultiplayerAPI's :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` з'єднується з новим однолітком. Ідентифікатор є одностороннім ідентифікатором нового покоління. Клієнти отримують сповіщення при підключенні інших клієнтів до одного сервера. При підключенні до сервера клієнт також отримує цей сигнал для сервера (з ідентифікатором 1).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_peer_disconnected:

.. rst-class:: classref-signal

**peer_disconnected**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_MultiplayerAPI_signal_peer_disconnected>`

Випробувано, коли це багатокористувацька :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` відключається від однолітків. Клієнти отримують сповіщення, коли інші клієнти відключаються з одного сервера.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_signal_server_disconnected:

.. rst-class:: classref-signal

**server_disconnected**\ (\ ) :ref:`🔗<class_MultiplayerAPI_signal_server_disconnected>`

Увімкнено, коли це багатокористувацька :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` відключається з сервера. Клієнтам.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_MultiplayerAPI_RPCMode:

.. rst-class:: classref-enumeration

enum **RPCMode**: :ref:`🔗<enum_MultiplayerAPI_RPCMode>`

.. _class_MultiplayerAPI_constant_RPC_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_DISABLED** = ``0``

Використовується з :ref:`Node.rpc_config()<class_Node_method_rpc_config>` для відключення методу або майна для всіх дзвінків RPC, що робить його недоступним. За замовчуванням для всіх методів.

.. _class_MultiplayerAPI_constant_RPC_MODE_ANY_PEER:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_ANY_PEER** = ``1``

Використовується з :ref:`Node.rpc_config()<class_Node_method_rpc_config>`, щоб встановити метод, який можна викликати дистанційно. Анотація ``@rpc("any_peer")``. Дзвінки приймаються з усіх віддалених однолітків, незалежно від того, чи є вони повноваження вузла або ні.

.. _class_MultiplayerAPI_constant_RPC_MODE_AUTHORITY:

.. rst-class:: classref-enumeration-constant

:ref:`RPCMode<enum_MultiplayerAPI_RPCMode>` **RPC_MODE_AUTHORITY** = ``2``

Використовується з :ref:`Node.rpc_config()<class_Node_method_rpc_config>`, щоб встановити метод, який можна викликати віддалено тільки чинним органом мультиплеєра (який сервер за замовчуванням). Анотація ``@rpc("авторитет")``. Див. :ref:`Node.set_multiplayer_authority()<class_Node_method_set_multiplayer_authority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_MultiplayerAPI_property_multiplayer_peer:

.. rst-class:: classref-property

:ref:`MultiplayerPeer<class_MultiplayerPeer>` **multiplayer_peer** :ref:`🔗<class_MultiplayerAPI_property_multiplayer_peer>`

.. rst-class:: classref-property-setget

- |void| **set_multiplayer_peer**\ (\ value\: :ref:`MultiplayerPeer<class_MultiplayerPeer>`\ )
- :ref:`MultiplayerPeer<class_MultiplayerPeer>` **get_multiplayer_peer**\ (\ )

Об'єкт, що дозволяє працювати в системі RPC (ефективно дозволяє мережі при встановленні). В залежності від самого однолітків, MultiplayerAPI стане мережевим сервером (check with :ref:`is_server()<class_MultiplayerAPI_method_is_server>`) і встановить режим мережі кореневих вузлів до влади, або він стане постійним клієнтом. Всі дочірні вершини встановлюються для успадкування мережевого режиму за замовчуванням. Можливість підключення сигналів MultiplayerAPI.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_MultiplayerAPI_method_create_default_interface:

.. rst-class:: classref-method

:ref:`MultiplayerAPI<class_MultiplayerAPI>` **create_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_create_default_interface>`

Повертає новий екземпляр за замовчуванням MultiplayerAPI.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_default_interface:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_default_interface**\ (\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_get_default_interface>`

Повертає ім'я класу за замовчуванням MultiplayerAPI. Це, як правило, ``"SceneMultiplayer"``, коли :ref:`SceneMultiplayer<class_SceneMultiplayer>` доступний. Подивитися :ref:`set_default_interface()<class_MultiplayerAPI_method_set_default_interface>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_peers:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_peers**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_peers>`

Повертаємо одноліткові ідентифікатори всіх підключених однолітків цієї мультиплеерації :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_remote_sender_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_remote_sender_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_remote_sender_id>`

Повертає ідентифікатор відправника на RPC в даний час.

\ **Примітка:** Цей метод повертає ``0`` при підключенні зовні РПК. Таким чином, вихідний ідентифікатор може бути втрачений, коли затримка коду (наприклад, з GDScript ``await`` ключове слово).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_get_unique_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_unique_id**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_get_unique_id>`

Повертає унікальний ідентифікатор вузла цього MultiplayerAPI :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_has_multiplayer_peer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_multiplayer_peer**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_has_multiplayer_peer>`

Повертає ``true``, якщо встановлено :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_is_server:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_server**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_is_server>`

Повертає ``true``, якщо значення :ref:`multiplayer_peer<class_MultiplayerAPI_property_multiplayer_peer>` цього MultiplayerAPI є дійсним та перебуває в режимі сервера (очікує з'єднання).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_add:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_add**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_add>`

Визначає багатокористувацьку конфігурацію ``configuration`` для вказаного ``object``. Цей метод використовується внутрішньо :ref:`SceneTree<class_SceneTree>` для налаштування кореневого шляху для цього MultiplayerAPI (passing ``null`` і діє :ref:`NodePath<class_NodePath>` як ``конфігураціяparam``). Цей метод можна додатково використовувати за допомогою MultiplayerAPI, щоб забезпечити додаткові функції, відносяться до конкретної реалізації (наприклад, :ref:`SceneMultiplayer<class_SceneMultiplayer>`) для деталей про те, як вони використовують його.

\ **Примітка:** Цей метод є переважно актуальним при розширенні або перенаправленні поведінки MultiplayerAPI через :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_object_configuration_remove:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **object_configuration_remove**\ (\ object\: :ref:`Object<class_Object>`, configuration\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_MultiplayerAPI_method_object_configuration_remove>`

Визначає багатокористувацький інтерфейс для видалення ``configuration`` для вказаного ``object``. Цей метод використовується внутрішньо :ref:`SceneTree<class_SceneTree>` для налаштування кореневого шляху для цього MultiplayerAPI (passing ``null`` і порожній :ref:`NodePath<class_NodePath>` як ``configuration``). Цей метод можна додатково використовувати за допомогою MultiplayerAPI, щоб забезпечити додаткові функції, відносяться до конкретної реалізації (наприклад, :ref:`SceneMultiplayer<class_SceneMultiplayer>`) для деталей про те, як вони використовують його.

\ **Примітка:** Цей метод є переважно актуальним при розширенні або перенаправленні поведінки MultiplayerAPI через :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_poll:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **poll**\ (\ ) :ref:`🔗<class_MultiplayerAPI_method_poll>`

Метод, який використовується для опитування багатокористувацького середовища. Вам потрібно лише турбуватися про це, якщо ви встановите :ref:`SceneTree.multiplayer_poll<class_SceneTree_property_multiplayer_poll>` до ``false``. За замовчуванням, :ref:`SceneTree<class_SceneTree>` буде опитувати його MultiplayerAPI(s) для вас.

\ **Примітка:** Цей метод призводить до того, що RPCs називається, тому вони будуть виконані в одному контексті цієї функції (наприклад, ``_process``, ``physics``, :ref:`Thread<class_Thread>`).

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_rpc:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **rpc**\ (\ peer\: :ref:`int<class_int>`, object\: :ref:`Object<class_Object>`, method\: :ref:`StringName<class_StringName>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_MultiplayerAPI_method_rpc>`

Надсилає RPC цільовому ``peer``. Даний ``method`` буде викликано на віддаленому ``об’єкті param`` із наданими аргументами ``arguments``. RPC також може викликатися локально залежно від реалізації та конфігурації RPC. Див. :ref:`Node.rpc()<class_Node_method_rpc>` і :ref:`Node.rpc_config()<class_Node_method_rpc_config>`. 

\ **Примітка.** Надавайте перевагу використанню :ref:`Node.rpc()<class_Node_method_rpc>`, :ref:`Node.rpc_id()<class_Node_method_rpc_id>` або ``my_method.rpc(peer, arg1, arg2, ...)`` (у GDScript), оскільки вони швидші. Цей метод здебільшого корисний у поєднанні з :ref:`MultiplayerAPIExtension<class_MultiplayerAPIExtension>` під час розширення або заміни можливостей багатокористувацької гри.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerAPI_method_set_default_interface:

.. rst-class:: classref-method

|void| **set_default_interface**\ (\ interface_name\: :ref:`StringName<class_StringName>`\ ) |static| :ref:`🔗<class_MultiplayerAPI_method_set_default_interface>`

Налаштовує клас реалізації за замовчуванням. Цей метод може використовуватися модулями та розширеннями, які будуть використовуватися :ref:`SceneTree<class_SceneTree>` при запуску двигуна.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
