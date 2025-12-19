:github_url: hide

.. _class_Resource:

Resource
========

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`Animation<class_Animation>`, :ref:`AnimationLibrary<class_AnimationLibrary>`, :ref:`AnimationNode<class_AnimationNode>`, :ref:`AnimationNodeStateMachinePlayback<class_AnimationNodeStateMachinePlayback>`, :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`, :ref:`AudioBusLayout<class_AudioBusLayout>`, :ref:`AudioEffect<class_AudioEffect>`, :ref:`AudioStream<class_AudioStream>`, :ref:`BitMap<class_BitMap>`, :ref:`BoneMap<class_BoneMap>`, :ref:`ButtonGroup<class_ButtonGroup>`, :ref:`CameraAttributes<class_CameraAttributes>`, :ref:`ColorPalette<class_ColorPalette>`, :ref:`Compositor<class_Compositor>`, :ref:`CompositorEffect<class_CompositorEffect>`, :ref:`CryptoKey<class_CryptoKey>`, :ref:`Curve<class_Curve>`, :ref:`Curve2D<class_Curve2D>`, :ref:`Curve3D<class_Curve3D>`, :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>`, :ref:`EditorSettings<class_EditorSettings>`, :ref:`Environment<class_Environment>`, :ref:`FoldableGroup<class_FoldableGroup>`, :ref:`Font<class_Font>`, :ref:`GDExtension<class_GDExtension>`, :ref:`GLTFAccessor<class_GLTFAccessor>`, :ref:`GLTFAnimation<class_GLTFAnimation>`, :ref:`GLTFBufferView<class_GLTFBufferView>`, :ref:`GLTFCamera<class_GLTFCamera>`, :ref:`GLTFDocument<class_GLTFDocument>`, :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, :ref:`GLTFLight<class_GLTFLight>`, :ref:`GLTFMesh<class_GLTFMesh>`, :ref:`GLTFNode<class_GLTFNode>`, :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`, :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>`, :ref:`GLTFSkeleton<class_GLTFSkeleton>`, :ref:`GLTFSkin<class_GLTFSkin>`, :ref:`GLTFSpecGloss<class_GLTFSpecGloss>`, :ref:`GLTFState<class_GLTFState>`, :ref:`GLTFTexture<class_GLTFTexture>`, :ref:`GLTFTextureSampler<class_GLTFTextureSampler>`, :ref:`Gradient<class_Gradient>`, :ref:`Image<class_Image>`, :ref:`ImporterMesh<class_ImporterMesh>`, :ref:`InputEvent<class_InputEvent>`, :ref:`JointLimitation3D<class_JointLimitation3D>`, :ref:`JSON<class_JSON>`, :ref:`LabelSettings<class_LabelSettings>`, :ref:`LightmapGIData<class_LightmapGIData>`, :ref:`Material<class_Material>`, :ref:`Mesh<class_Mesh>`, :ref:`MeshLibrary<class_MeshLibrary>`, :ref:`MissingResource<class_MissingResource>`, :ref:`MultiMesh<class_MultiMesh>`, :ref:`NavigationMesh<class_NavigationMesh>`, :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`, :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, :ref:`NavigationPolygon<class_NavigationPolygon>`, :ref:`Noise<class_Noise>`, :ref:`Occluder3D<class_Occluder3D>`, :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`, :ref:`OggPacketSequence<class_OggPacketSequence>`, :ref:`OpenXRAction<class_OpenXRAction>`, :ref:`OpenXRActionMap<class_OpenXRActionMap>`, :ref:`OpenXRActionSet<class_OpenXRActionSet>`, :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`, :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`, :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`, :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`, :ref:`PackedDataContainer<class_PackedDataContainer>`, :ref:`PackedScene<class_PackedScene>`, :ref:`PhysicsMaterial<class_PhysicsMaterial>`, :ref:`PolygonPathFinder<class_PolygonPathFinder>`, :ref:`RDShaderFile<class_RDShaderFile>`, :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, :ref:`RichTextEffect<class_RichTextEffect>`, :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`, :ref:`Script<class_Script>`, :ref:`Shader<class_Shader>`, :ref:`ShaderInclude<class_ShaderInclude>`, :ref:`Shape2D<class_Shape2D>`, :ref:`Shape3D<class_Shape3D>`, :ref:`Shortcut<class_Shortcut>`, :ref:`SkeletonModification2D<class_SkeletonModification2D>`, :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, :ref:`SkeletonProfile<class_SkeletonProfile>`, :ref:`Skin<class_Skin>`, :ref:`Sky<class_Sky>`, :ref:`SpriteFrames<class_SpriteFrames>`, :ref:`StyleBox<class_StyleBox>`, :ref:`SyntaxHighlighter<class_SyntaxHighlighter>`, :ref:`Texture<class_Texture>`, :ref:`Theme<class_Theme>`, :ref:`TileMapPattern<class_TileMapPattern>`, :ref:`TileSet<class_TileSet>`, :ref:`TileSetSource<class_TileSetSource>`, :ref:`Translation<class_Translation>`, :ref:`VideoStream<class_VideoStream>`, :ref:`VideoStreamPlayback<class_VideoStreamPlayback>`, :ref:`VisualShaderNode<class_VisualShaderNode>`, :ref:`VoxelGIData<class_VoxelGIData>`, :ref:`World2D<class_World2D>`, :ref:`World3D<class_World3D>`, :ref:`X509Certificate<class_X509Certificate>`

Базовый класс для сериализуемых объектов.

.. rst-class:: classref-introduction-group

Описание
----------------

Resource — это базовый класс для всех типов ресурсов, специфичных для Godot, в первую очередь выступающий в качестве контейнеров данных. Поскольку они наследуются от :ref:`RefCounted<class_RefCounted>`, ресурсы подсчитываются по ссылкам и освобождаются, когда больше не используются. Их также можно вкладывать в другие ресурсы и сохранять на диске. :ref:`PackedScene<class_PackedScene>`, один из самых распространенных :ref:`Object<class_Object>`-ов в проекте Godot, также является ресурсом, уникальным образом способным хранить и создавать экземпляры :ref:`Node<class_Node>`, которые он содержит столько раз, сколько необходимо.

В GDScript ресурсы могут загружаться с диска с помощью их :ref:`resource_path<class_Resource_property_resource_path>` с помощью :ref:`@GDScript.load()<class_@GDScript_method_load>` или :ref:`@GDScript.preload()<class_@GDScript_method_preload>`.

Движок хранит глобальный кэш всех загруженных ресурсов, на которые ссылаются пути (см. :ref:`ResourceLoader.has_cached()<class_ResourceLoader_method_has_cached>`). Ресурс будет кэшироваться при первой загрузке и удаляться из кэша после освобождения всех ссылок. Когда ресурс кэшируется, последующие загрузки с использованием его пути будут возвращать кэшированную ссылку.

\ **Примечание:** В C# ресурсы не будут освобождаться мгновенно после того, как они больше не используются. Вместо этого сборка мусора будет выполняться периодически и освобождать ресурсы, которые больше не используются. Это означает, что неиспользуемые ресурсы будут оставаться в памяти некоторое время, прежде чем будут удалены.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Ресурсы <../tutorials/scripting/resources>`

- :doc:`Когда и как избегать использования узлов для всего <../tutorials/best_practices/node_alternatives>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>`   | ``false`` |
   +-----------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`resource_name<class_Resource_property_resource_name>`                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`resource_path<class_Resource_property_resource_path>`                       | ``""``    |
   +-----------------------------+-----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`resource_scene_unique_id<class_Resource_property_resource_scene_unique_id>` |           |
   +-----------------------------+-----------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`           | :ref:`_get_rid<class_Resource_private_method__get_rid>`\ (\ ) |virtual| |const|                                                                                   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_reset_state<class_Resource_private_method__reset_state>`\ (\ ) |virtual|                                                                                   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_set_path_cache<class_Resource_private_method__set_path_cache>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const|                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`_setup_local_to_scene<class_Resource_private_method__setup_local_to_scene>`\ (\ ) |virtual|                                                                 |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`duplicate<class_Resource_method_duplicate>`\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const|                                                           |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`duplicate_deep<class_Resource_method_duplicate_deep>`\ (\ deep_subresources_mode\: :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` = 1\ ) |const| |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`emit_changed<class_Resource_method_emit_changed>`\ (\ )                                                                                                     |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`generate_scene_unique_id<class_Resource_method_generate_scene_unique_id>`\ (\ ) |static|                                                                    |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`     | :ref:`get_id_for_path<class_Resource_method_get_id_for_path>`\ (\ path\: :ref:`String<class_String>`\ ) |const|                                                   |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`         | :ref:`get_local_scene<class_Resource_method_get_local_scene>`\ (\ ) |const|                                                                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`           | :ref:`get_rid<class_Resource_method_get_rid>`\ (\ ) |const|                                                                                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`is_built_in<class_Resource_method_is_built_in>`\ (\ ) |const|                                                                                               |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`reset_state<class_Resource_method_reset_state>`\ (\ )                                                                                                       |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_id_for_path<class_Resource_method_set_id_for_path>`\ (\ path\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`\ )                         |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_path_cache<class_Resource_method_set_path_cache>`\ (\ path\: :ref:`String<class_String>`\ )                                                             |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`setup_local_to_scene<class_Resource_method_setup_local_to_scene>`\ (\ )                                                                                     |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`take_over_path<class_Resource_method_take_over_path>`\ (\ path\: :ref:`String<class_String>`\ )                                                             |
   +---------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_Resource_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Resource_signal_changed>`

Выдается при изменении ресурса, обычно при изменении одного из его свойств. См. также :ref:`emit_changed()<class_Resource_method_emit_changed>`.

\ **Примечание:** Этот сигнал не выдается автоматически для свойств пользовательских ресурсов. При необходимости необходимо создать сеттер для выдачи сигнала.

.. rst-class:: classref-item-separator

----

.. _class_Resource_signal_setup_local_to_scene_requested:

.. rst-class:: classref-signal

**setup_local_to_scene_requested**\ (\ ) :ref:`🔗<class_Resource_signal_setup_local_to_scene_requested>`

**Устарело:** This signal is only emitted when the resource is created. Override :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>` instead.

Создано новым дублированным ресурсом, у которого :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` установлено значение ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Resource_DeepDuplicateMode:

.. rst-class:: classref-enumeration

enum **DeepDuplicateMode**: :ref:`🔗<enum_Resource_DeepDuplicateMode>`

.. _class_Resource_constant_DEEP_DUPLICATE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_NONE** = ``0``

Никакие подресурсы не дублируются. Это полезно даже при глубоком дублировании, чтобы все массивы и словари были дублированы, но при этом указывали на исходные ресурсы.

.. _class_Resource_constant_DEEP_DUPLICATE_INTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_INTERNAL** = ``1``

Будут дублироваться только подресурсы без пути или с локальным путем сцены.

.. _class_Resource_constant_DEEP_DUPLICATE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_ALL** = ``2``

Каждый найденный подресурс будет продублирован, даже если у него нелокальный путь. Другими словами, даже потенциально большие ресурсы, хранящиеся отдельно, будут продублированы.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Resource_property_resource_local_to_scene:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resource_local_to_scene** = ``false`` :ref:`🔗<class_Resource_property_resource_local_to_scene>`

.. rst-class:: classref-property-setget

- |void| **set_local_to_scene**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_local_to_scene**\ (\ )

Если ``true``, ресурс дублируется для каждого экземпляра всех сцен, использующих его. Во время выполнения ресурс может быть изменен в одной сцене, не влияя на другие экземпляры (см. :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`).

\ **Примечание:** Изменение этого свойства во время выполнения не влияет на уже созданные дублирующие ресурсы.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_name** = ``""`` :ref:`🔗<class_Resource_property_resource_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_name**\ (\ )

Необязательное имя для этого ресурса. Если определено, его значение отображается для представления ресурса в доке Inspector. Для встроенных скриптов имя отображается как часть имени вкладки в редакторе скриптов.

\ **Примечание:** Некоторые форматы ресурсов не поддерживают имена ресурсов. Вы по-прежнему можете задать имя в редакторе или через код, но оно будет потеряно при перезагрузке ресурса. Например, только встроенные скрипты могут иметь имя ресурса, в то время как скрипты, хранящиеся в отдельных файлах, не могут.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_path** = ``""`` :ref:`🔗<class_Resource_property_resource_path>`

.. rst-class:: classref-property-setget

- |void| **set_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_path**\ (\ )

Уникальный путь к этому ресурсу. Если он был сохранен на диске, значением будет его путь к файлу. Если ресурс содержится исключительно в сцене, значением будет путь к файлу :ref:`PackedScene<class_PackedScene>`, за которым следует уникальный идентификатор.

\ **Примечание:** Установка этого свойства вручную может завершиться неудачей, если ресурс с таким же путем уже был загружен ранее. При необходимости используйте :ref:`take_over_path()<class_Resource_method_take_over_path>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_scene_unique_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_scene_unique_id** :ref:`🔗<class_Resource_property_resource_scene_unique_id>`

.. rst-class:: classref-property-setget

- |void| **set_scene_unique_id**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_unique_id**\ (\ )

Уникальный идентификатор относительно сцены этого ресурса. Если оставить его пустым, идентификатор автоматически генерируется при сохранении ресурса в :ref:`PackedScene<class_PackedScene>`. Если ресурс не находится в сцене, это свойство по умолчанию пусто.

\ **Примечание:** При сохранении :ref:`PackedScene<class_PackedScene>`, если несколько ресурсов в одной сцене используют один и тот же идентификатор, исходный идентификатор сохраняется только у самого раннего ресурса в иерархии сцены. Остальным ресурсам назначаются новые идентификаторы с помощью :ref:`generate_scene_unique_id()<class_Resource_method_generate_scene_unique_id>`.

\ **Примечание:** Установка этого свойства не приводит к генерации сигнала :ref:`changed<class_Resource_signal_changed>`.

\ **Предупреждение:** При установке идентификатор должен состоять только из букв, цифр и символов подчёркивания. В противном случае произойдет сбой, и по умолчанию будет использован случайно сгенерированный идентификатор.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Resource_private_method__get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_rid**\ (\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__get_rid>`

Переопределите этот метод, чтобы возвращать пользовательский :ref:`RID<class_RID>` при вызове :ref:`get_rid()<class_Resource_method_get_rid>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__reset_state:

.. rst-class:: classref-method

|void| **_reset_state**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__reset_state>`

Для ресурсов, которые сохраняют состояние в неэкспортированных свойствах, например, через :ref:`Object._validate_property()<class_Object_private_method__validate_property>` или :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`, этот метод должен быть реализован для их очистки.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__set_path_cache:

.. rst-class:: classref-method

|void| **_set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__set_path_cache>`

Переопределите этот метод для выполнения дополнительной логики после вызова :ref:`set_path_cache()<class_Resource_method_set_path_cache>` для этого объекта.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__setup_local_to_scene:

.. rst-class:: classref-method

|void| **_setup_local_to_scene**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__setup_local_to_scene>`

Переопределите этот метод, чтобы настроить новый дублированный ресурс, созданный из :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, если :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` оригинала установлен в ``true``.

\ **Пример:** Установите случайное значение ``damage`` для каждого локального ресурса из инстанцированной сцены:

::

    extends Resource

    var damage = 0

    func _setup_local_to_scene():
        damage = randi_range(10, 40)

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_duplicate:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Resource_method_duplicate>`

Дублирует этот ресурс, возвращая новый ресурс со свойствами ``export`` или :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>`, скопированными из исходного.

Если ``deep`` равен ``false``, возвращается **поверхностная** копия: вложенные свойства :ref:`Array<class_Array>`, :ref:`Dictionary<class_Dictionary>` и **Resource** не дублируются и используются совместно с исходным ресурсом.

Если ``deep`` равен ``true``, возвращается **глубокая** копия: все вложенные массивы, словари и упакованные массивы также дублируются (рекурсивно). Любой найденный внутри **Resource** будет дублироваться только в том случае, если он локальный, например, :ref:`DEEP_DUPLICATE_INTERNAL<class_Resource_constant_DEEP_DUPLICATE_INTERNAL>`, используемый с :ref:`duplicate_deep()<class_Resource_method_duplicate_deep>`.

Действуют следующие исключения:

- Свойства подресурсов с флагом :ref:`@GlobalScope.PROPERTY_USAGE_ALWAYS_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_ALWAYS_DUPLICATE>` всегда дублируются (рекурсивно или нет, в зависимости от ``deep``).

- Свойства подресурсов с флагом :ref:`@GlobalScope.PROPERTY_USAGE_NEVER_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_NEVER_DUPLICATE>` никогда не дублируются.

\ **Примечание:** Для пользовательских ресурсов этот метод завершится ошибкой, если :ref:`Object._init()<class_Object_private_method__init>` был определён с обязательными параметрами.

\ **Примечание:** При дублировании с ``deep`` равным ``true`` каждый найденный ресурс, включая тот, для которого вызывается этот метод, будет дублироваться только один раз и упоминаться в дубликате столько раз, сколько необходимо. Например, если вы дублируете ресурс A, на который дважды ссылается ресурс B, вы получите новый ресурс A', дважды ссылающийся на новый ресурс B'.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` = 1\ ) |const| :ref:`🔗<class_Resource_method_duplicate_deep>`

Duplicates this resource, deeply, like :ref:`duplicate()<class_Resource_method_duplicate>` when passing ``true``, with extra control over how subresources are handled.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_emit_changed:

.. rst-class:: classref-method

|void| **emit_changed**\ (\ ) :ref:`🔗<class_Resource_method_emit_changed>`

Выдает сигнал :ref:`changed<class_Resource_signal_changed>`. Этот метод вызывается автоматически для некоторых встроенных ресурсов.

\ **Примечание:** Для пользовательских ресурсов рекомендуется вызывать этот метод всякий раз, когда происходит значимое изменение, например, измененное свойство. Это гарантирует, что пользовательские :ref:`Object<class_Object>`, зависящие от ресурса, будут правильно обновлены.

::

    var damage:
        set(new_value):
            if damage != new_value:
                damage = new_value
                emit_changed()

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_generate_scene_unique_id:

.. rst-class:: classref-method

:ref:`String<class_String>` **generate_scene_unique_id**\ (\ ) |static| :ref:`🔗<class_Resource_method_generate_scene_unique_id>`

Генерирует уникальный идентификатор для ресурса, который будет содержаться внутри :ref:`PackedScene<class_PackedScene>`, на основе текущей даты, времени и случайного значения. Возвращаемая строка состоит только из букв (``a`` to ``y``) и цифр (``0`` to ``8``). См. также :ref:`resource_scene_unique_id<class_Resource_property_resource_scene_unique_id>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_id_for_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id_for_path**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Resource_method_get_id_for_path>`

Из внутреннего кэша уникальных идентификаторов сцены возвращает идентификатор данного ресурса для сцены по адресу ``path``. Если запись отсутствует, возвращается пустая строка. Полезно для сохранения уникальных идентификаторов сцены при реализации пользовательского формата ресурсов, совместимого с VCS, путём расширения :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` и :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Примечание:** Этот метод реализуется только при запуске в контексте редактора. Во время выполнения он возвращает пустую строку.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_local_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_local_scene**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_local_scene>`

Если :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` установлен в ``true`` и ресурс был загружен из экземпляра :ref:`PackedScene<class_PackedScene>`, возвращает корень :ref:`Node<class_Node>` сцены, где этот ресурс используется. В противном случае возвращает ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_rid>`

Возвращает :ref:`RID<class_RID>` этого ресурса (или пустой RID). Многие ресурсы (такие как :ref:`Texture2D<class_Texture2D>`, :ref:`Mesh<class_Mesh>` и т. д.) являются высокоуровневыми абстракциями ресурсов, хранящихся на специализированном сервере (:ref:`DisplayServer<class_DisplayServer>`, :ref:`RenderingServer<class_RenderingServer>` и т. д.), поэтому эта функция вернет исходный :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_is_built_in:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_built_in**\ (\ ) |const| :ref:`🔗<class_Resource_method_is_built_in>`

Возвращает ``true``, если ресурс сохранен на диске как часть файла другого ресурса.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_reset_state:

.. rst-class:: classref-method

|void| **reset_state**\ (\ ) :ref:`🔗<class_Resource_method_reset_state>`

Позволяет очистить ресурс от своих неэкспортируемых свойств. См. также :ref:`_reset_state()<class_Resource_private_method__reset_state>`. Полезно при реализации пользовательского формата ресурсов путем расширения :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` и :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_id_for_path:

.. rst-class:: classref-method

|void| **set_id_for_path**\ (\ path\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_id_for_path>`

Во внутреннем кэше для уникальных идентификаторов сцены устанавливает идентификатор этого ресурса на ``id`` для сцены по адресу ``path``. Если ``id`` пуст, запись кэша для ``path`` очищается. Полезно для сохранения уникальных идентификаторов сцены при реализации удобного для VCS пользовательского формата ресурсов путем расширения :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` и :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Примечание:** Этот метод реализуется только при запуске в контексте редактора.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_path_cache:

.. rst-class:: classref-method

|void| **set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_path_cache>`

Устанавливает путь к ресурсу на ``path`` без использования кэша ресурсов. Полезно для обработки значений :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` при реализации пользовательского формата ресурсов путем расширения :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` и :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_setup_local_to_scene:

.. rst-class:: classref-method

|void| **setup_local_to_scene**\ (\ ) :ref:`🔗<class_Resource_method_setup_local_to_scene>`

**Устарело:** This method should only be called internally.

Вызывает :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>`. Если :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` установлен в ``true``, этот метод автоматически вызывается из :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` новым дублированным ресурсом в экземпляре сцены.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_take_over_path:

.. rst-class:: classref-method

|void| **take_over_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_take_over_path>`

Устанавливает :ref:`resource_path<class_Resource_property_resource_path>` в ``path``, потенциально переопределяя существующую запись кэша для этого пути. Дальнейшие попытки загрузить переопределенный ресурс по пути вместо этого вернут этот ресурс.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
