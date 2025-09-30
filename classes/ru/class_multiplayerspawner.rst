:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/modules/multiplayer/doc_classes/MultiplayerSpawner.xml.

.. _class_MultiplayerSpawner:

MultiplayerSpawner
==================

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Автоматически копирует создаваемые узлы из центра в другие многопользовательские игры.

.. rst-class:: classref-introduction-group

Описание
----------------

Сцены, которые можно создавать, можно настроить в редакторе или через код (см. :ref:`add_spawnable_scene()<class_MultiplayerSpawner_method_add_spawnable_scene>`).

Также поддерживает создание пользовательских узлов через :ref:`spawn()<class_MultiplayerSpawner_method_spawn>`, вызывая :ref:`spawn_function<class_MultiplayerSpawner_property_spawn_function>` на всех одноранговых узлах.

Внутри себя **MultiplayerSpawner** использует :ref:`MultiplayerAPI.object_configuration_add()<class_MultiplayerAPI_method_object_configuration_add>` для уведомления о создании, передавая созданный узел как ``object`` и себя как ``configuration``, и :ref:`MultiplayerAPI.object_configuration_remove()<class_MultiplayerAPI_method_object_configuration_remove>` для уведомления об удалении аналогичным образом.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------+------------------+
   | :ref:`Callable<class_Callable>` | :ref:`spawn_function<class_MultiplayerSpawner_property_spawn_function>` |                  |
   +---------------------------------+-------------------------------------------------------------------------+------------------+
   | :ref:`int<class_int>`           | :ref:`spawn_limit<class_MultiplayerSpawner_property_spawn_limit>`       | ``0``            |
   +---------------------------------+-------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`spawn_path<class_MultiplayerSpawner_property_spawn_path>`         | ``NodePath("")`` |
   +---------------------------------+-------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`add_spawnable_scene<class_MultiplayerSpawner_method_add_spawnable_scene>`\ (\ path\: :ref:`String<class_String>`\ )    |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`clear_spawnable_scenes<class_MultiplayerSpawner_method_clear_spawnable_scenes>`\ (\ )                                  |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_spawnable_scene<class_MultiplayerSpawner_method_get_spawnable_scene>`\ (\ index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`       | :ref:`get_spawnable_scene_count<class_MultiplayerSpawner_method_get_spawnable_scene_count>`\ (\ ) |const|                    |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`     | :ref:`spawn<class_MultiplayerSpawner_method_spawn>`\ (\ data\: :ref:`Variant<class_Variant>` = null\ )                       |
   +-----------------------------+------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_MultiplayerSpawner_signal_despawned:

.. rst-class:: classref-signal

**despawned**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_MultiplayerSpawner_signal_despawned>`

Вызывается, когда спавнящаяся сцена или пользовательский спавн были удалены многопользовательским управлением. Вызывается только на удаленных пирах.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_signal_spawned:

.. rst-class:: classref-signal

**spawned**\ (\ node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_MultiplayerSpawner_signal_spawned>`

Вызывается, когда спавнящаяся сцена или пользовательский спавн были созданы многопользовательским органом. Вызывается только на удаленных пирах.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_MultiplayerSpawner_property_spawn_function:

.. rst-class:: classref-property

:ref:`Callable<class_Callable>` **spawn_function** :ref:`🔗<class_MultiplayerSpawner_property_spawn_function>`

.. rst-class:: classref-property-setget

- |void| **set_spawn_function**\ (\ value\: :ref:`Callable<class_Callable>`\ )
- :ref:`Callable<class_Callable>` **get_spawn_function**\ (\ )

Метод вызывается для всех пиров, когда уполномоченный запросил пользовательский :ref:`spawn()<class_MultiplayerSpawner_method_spawn>`. Получит параметр ``data`` и должен вернуть :ref:`Node<class_Node>`, которого нет в дереве сцены.

\ **Примечание:** Возвращаемый узел **не**\ должен быть добавлен в сцену с помощью :ref:`Node.add_child()<class_Node_method_add_child>`. Это делается автоматически.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_property_spawn_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **spawn_limit** = ``0`` :ref:`🔗<class_MultiplayerSpawner_property_spawn_limit>`

.. rst-class:: classref-property-setget

- |void| **set_spawn_limit**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spawn_limit**\ (\ )

Максимальное количество узлов, которые может создать этот спавнер. Включает как сцены, которые можно создать, так и пользовательские спавны.

Если установлено значение ``0`` (по умолчанию), ограничений нет.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_property_spawn_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **spawn_path** = ``NodePath("")`` :ref:`🔗<class_MultiplayerSpawner_property_spawn_path>`

.. rst-class:: classref-property-setget

- |void| **set_spawn_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_spawn_path**\ (\ )

Путь к корневому элементу spawn. Сцены spawnable, которые добавляются как прямые потомки, реплицируются на другие одноранговые элементы.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MultiplayerSpawner_method_add_spawnable_scene:

.. rst-class:: classref-method

|void| **add_spawnable_scene**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_MultiplayerSpawner_method_add_spawnable_scene>`

Добавляет путь к сцене к сценам, которые можно создавать, автоматически реплицируя его из многопользовательского режима на другие узлы при добавлении в качестве дочерних элементов узла, на который указывает :ref:`spawn_path<class_MultiplayerSpawner_property_spawn_path>`.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_clear_spawnable_scenes:

.. rst-class:: classref-method

|void| **clear_spawnable_scenes**\ (\ ) :ref:`🔗<class_MultiplayerSpawner_method_clear_spawnable_scenes>`

Очищает все создаваемые сцены. Не удаляет существующие экземпляры на удаленных пирах.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_get_spawnable_scene:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_spawnable_scene**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_MultiplayerSpawner_method_get_spawnable_scene>`

Возвращает путь к создаваемой сцене по индексу.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_get_spawnable_scene_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_spawnable_scene_count**\ (\ ) |const| :ref:`🔗<class_MultiplayerSpawner_method_get_spawnable_scene_count>`

Возвращает количество путей создания сцен.

.. rst-class:: classref-item-separator

----

.. _class_MultiplayerSpawner_method_spawn:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **spawn**\ (\ data\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_MultiplayerSpawner_method_spawn>`

Запрашивает пользовательский спавн, с ``data``, переданным в :ref:`spawn_function<class_MultiplayerSpawner_property_spawn_function>` на всех пирах. Возвращает локально созданный экземпляр узла, уже находящийся внутри дерева сцены и добавленный как дочерний узел узла, на который указывает :ref:`spawn_path<class_MultiplayerSpawner_property_spawn_path>`.

\ **Примечание:** Создаваемые сцены создаются автоматически. :ref:`spawn()<class_MultiplayerSpawner_method_spawn>` необходим только для пользовательских спавнов.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
