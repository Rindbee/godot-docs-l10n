:github_url: hide

.. _class_Resource:

Resource
========

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`Animation<class_Animation>`, :ref:`AnimationLibrary<class_AnimationLibrary>`, :ref:`AnimationNode<class_AnimationNode>`, :ref:`AnimationNodeStateMachinePlayback<class_AnimationNodeStateMachinePlayback>`, :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`, :ref:`AudioBusLayout<class_AudioBusLayout>`, :ref:`AudioEffect<class_AudioEffect>`, :ref:`AudioStream<class_AudioStream>`, :ref:`BitMap<class_BitMap>`, :ref:`BoneMap<class_BoneMap>`, :ref:`ButtonGroup<class_ButtonGroup>`, :ref:`CameraAttributes<class_CameraAttributes>`, :ref:`ColorPalette<class_ColorPalette>`, :ref:`Compositor<class_Compositor>`, :ref:`CompositorEffect<class_CompositorEffect>`, :ref:`CryptoKey<class_CryptoKey>`, :ref:`Curve<class_Curve>`, :ref:`Curve2D<class_Curve2D>`, :ref:`Curve3D<class_Curve3D>`, :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>`, :ref:`EditorSettings<class_EditorSettings>`, :ref:`Environment<class_Environment>`, :ref:`FoldableGroup<class_FoldableGroup>`, :ref:`Font<class_Font>`, :ref:`GDExtension<class_GDExtension>`, :ref:`GLTFAccessor<class_GLTFAccessor>`, :ref:`GLTFAnimation<class_GLTFAnimation>`, :ref:`GLTFBufferView<class_GLTFBufferView>`, :ref:`GLTFCamera<class_GLTFCamera>`, :ref:`GLTFDocument<class_GLTFDocument>`, :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, :ref:`GLTFLight<class_GLTFLight>`, :ref:`GLTFMesh<class_GLTFMesh>`, :ref:`GLTFNode<class_GLTFNode>`, :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`, :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>`, :ref:`GLTFSkeleton<class_GLTFSkeleton>`, :ref:`GLTFSkin<class_GLTFSkin>`, :ref:`GLTFSpecGloss<class_GLTFSpecGloss>`, :ref:`GLTFState<class_GLTFState>`, :ref:`GLTFTexture<class_GLTFTexture>`, :ref:`GLTFTextureSampler<class_GLTFTextureSampler>`, :ref:`Gradient<class_Gradient>`, :ref:`Image<class_Image>`, :ref:`ImporterMesh<class_ImporterMesh>`, :ref:`InputEvent<class_InputEvent>`, :ref:`JSON<class_JSON>`, :ref:`LabelSettings<class_LabelSettings>`, :ref:`LightmapGIData<class_LightmapGIData>`, :ref:`Material<class_Material>`, :ref:`Mesh<class_Mesh>`, :ref:`MeshLibrary<class_MeshLibrary>`, :ref:`MissingResource<class_MissingResource>`, :ref:`MultiMesh<class_MultiMesh>`, :ref:`NavigationMesh<class_NavigationMesh>`, :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`, :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, :ref:`NavigationPolygon<class_NavigationPolygon>`, :ref:`Noise<class_Noise>`, :ref:`Occluder3D<class_Occluder3D>`, :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`, :ref:`OggPacketSequence<class_OggPacketSequence>`, :ref:`OpenXRAction<class_OpenXRAction>`, :ref:`OpenXRActionMap<class_OpenXRActionMap>`, :ref:`OpenXRActionSet<class_OpenXRActionSet>`, :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`, :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`, :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`, :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`, :ref:`PackedDataContainer<class_PackedDataContainer>`, :ref:`PackedScene<class_PackedScene>`, :ref:`PhysicsMaterial<class_PhysicsMaterial>`, :ref:`PolygonPathFinder<class_PolygonPathFinder>`, :ref:`RDShaderFile<class_RDShaderFile>`, :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, :ref:`RichTextEffect<class_RichTextEffect>`, :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`, :ref:`Script<class_Script>`, :ref:`Shader<class_Shader>`, :ref:`ShaderInclude<class_ShaderInclude>`, :ref:`Shape2D<class_Shape2D>`, :ref:`Shape3D<class_Shape3D>`, :ref:`Shortcut<class_Shortcut>`, :ref:`SkeletonModification2D<class_SkeletonModification2D>`, :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, :ref:`SkeletonProfile<class_SkeletonProfile>`, :ref:`Skin<class_Skin>`, :ref:`Sky<class_Sky>`, :ref:`SpriteFrames<class_SpriteFrames>`, :ref:`StyleBox<class_StyleBox>`, :ref:`SyntaxHighlighter<class_SyntaxHighlighter>`, :ref:`Texture<class_Texture>`, :ref:`Theme<class_Theme>`, :ref:`TileMapPattern<class_TileMapPattern>`, :ref:`TileSet<class_TileSet>`, :ref:`TileSetSource<class_TileSetSource>`, :ref:`Translation<class_Translation>`, :ref:`VideoStream<class_VideoStream>`, :ref:`VideoStreamPlayback<class_VideoStreamPlayback>`, :ref:`VisualShaderNode<class_VisualShaderNode>`, :ref:`VoxelGIData<class_VoxelGIData>`, :ref:`World2D<class_World2D>`, :ref:`World3D<class_World3D>`, :ref:`X509Certificate<class_X509Certificate>`

Базовий клас для серійних об'єктів.

.. rst-class:: classref-introduction-group

Опис
--------

Resource – це базовий клас для всіх типів ресурсів, специфічних для Godot, який служить переважно контейнерами даних. Оскільки вони успадковуються від :ref:`RefCounted<class_RefCounted>`, ресурси підраховуються за посиланнями та звільняються, коли більше не використовуються. Їх також можна вкладати в інші ресурси та зберігати на диску. :ref:`PackedScene<class_PackedScene>`, один з найпоширеніших :ref:`Object<class_Object>` у проекті Godot, також є ресурсом, унікально здатним зберігати та створювати екземпляри :ref:`Node<class_Node>`, які він містить, скільки завгодно разів.

У GDScript ресурси можуть завантажуватися з диска за їхнім :ref:`resource_path<class_Resource_property_resource_path>` за допомогою :ref:`@GDScript.load()<class_@GDScript_method_load>` або :ref:`@GDScript.preload()<class_@GDScript_method_preload>`.

Механізм зберігає глобальний кеш усіх завантажених ресурсів, на які посилаються шляхи (див. :ref:`ResourceLoader.has_cached()<class_ResourceLoader_method_has_cached>`). Ресурс буде кешований під час першого завантаження та видалений з кешу після звільнення всіх посилань. Коли ресурс кешується, наступні завантаження з використанням його шляху повертатимуть кешоване посилання.

\ **Примітка:** У C# ресурси не звільняються миттєво після того, як вони більше не використовуються. Натомість періодично запускатиметься збирання сміття, яке звільнятиме ресурси, що більше не використовуються. Це означає, що невикористані ресурси залишатимуться в пам'яті деякий час, перш ніж будуть видалені.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Ресурси <../tutorials/scripting/resources>`

- :doc:`Коли і як уникнути використання вузлів для всіх <../tutorials/best_practices/node_alternatives>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Сигнали
--------------

.. _class_Resource_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Resource_signal_changed>`

Випробувано при зміні ресурсу, зазвичай при одному з його властивостей. Дивись також :ref:`emit_changed()<class_Resource_method_emit_changed>`.

\ **Примітка:** Цей сигнал не вдається автоматично для властивостей користувацьких ресурсів. Якщо необхідно, щоб випромінити сигнал.

.. rst-class:: classref-item-separator

----

.. _class_Resource_signal_setup_local_to_scene_requested:

.. rst-class:: classref-signal

**setup_local_to_scene_requested**\ (\ ) :ref:`🔗<class_Resource_signal_setup_local_to_scene_requested>`

**Застаріло:** This signal is only emitted when the resource is created. Override :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>` instead.

Видається щойно продубльованим ресурсом зі значенням :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>`, встановленим на ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_Resource_DeepDuplicateMode:

.. rst-class:: classref-enumeration

enum **DeepDuplicateMode**: :ref:`🔗<enum_Resource_DeepDuplicateMode>`

.. _class_Resource_constant_DEEP_DUPLICATE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_NONE** = ``0``

Жодні підресурси не дублюються. Це корисно навіть при глибокому дублюванні, щоб усі масиви та словники були продубльовані, але все ще вказували на оригінальні ресурси.

.. _class_Resource_constant_DEEP_DUPLICATE_INTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_INTERNAL** = ``1``

Будуть дубльовані лише підресурси без шляху або з локальним для сцени шляхом.

.. _class_Resource_constant_DEEP_DUPLICATE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_ALL** = ``2``

Кожен знайдений підресурс буде продубльовано, навіть якщо він має нелокальний шлях. Іншими словами, навіть потенційно великі ресурси, що зберігаються окремо, будуть продубльовані.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Resource_property_resource_local_to_scene:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resource_local_to_scene** = ``false`` :ref:`🔗<class_Resource_property_resource_local_to_scene>`

.. rst-class:: classref-property-setget

- |void| **set_local_to_scene**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_local_to_scene**\ (\ )

Якщо ``true``, ресурс дублюється для кожного екземпляра всіх сцен, використовуючи його. На run-time ресурс може бути змінений в одному місці без впливу інших екземплярів (див. :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`).

\ **Примітка:** Зміна цього майна на run-time не впливає на вже створених дублікатів ресурсів.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_name** = ``""`` :ref:`🔗<class_Resource_property_resource_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_name**\ (\ )

Додаткове найменування цього ресурсу. При визначенні його значення відображаються для відображення ресурсу в Інспекції. Для вбудованих сценаріїв ім'я відображається як частина назви вкладки в редакторі скриптів.

\ **Примітка:** Деякі ресурсні формати не підтримують назви ресурсів. Ви можете встановити ім'я в редакторі або через код, але він буде втрачено, коли ресурс перезавантажений. Наприклад, лише вбудовані скрипти можуть мати назву ресурсу, при цьому скрипти зберігаються в окремих файлах не можуть.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_path** = ``""`` :ref:`🔗<class_Resource_property_resource_path>`

.. rst-class:: classref-property-setget

- |void| **set_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_path**\ (\ )

Унікальний шлях до цього ресурсу. Якщо він був збережений на диск, значення буде його файлопатією. Якщо ресурс знаходиться виключно в межах сцени, значення буде файлова система :ref:`PackedScene<class_PackedScene>`, а також унікальний ідентифікатор.

\ **Примітка:** Встановити цю властивість вручну може призвести до того, що ресурс з тим же шляхом вже був раніше завантажений. При необхідності використовується :ref:`take_over_path()<class_Resource_method_take_over_path>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_scene_unique_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_scene_unique_id** :ref:`🔗<class_Resource_property_resource_scene_unique_id>`

.. rst-class:: classref-property-setget

- |void| **set_scene_unique_id**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_unique_id**\ (\ )

Унікальний ідентифікатор відносно сцени цього ресурсу. Якщо залишити порожнім, ідентифікатор автоматично генерується, коли цей ресурс зберігається всередині :ref:`PackedScene<class_PackedScene>`. Якщо ресурс не знаходиться всередині сцени, ця властивість за замовчуванням порожня.

\ **Примітка:** Коли :ref:`PackedScene<class_PackedScene>` зберігається, якщо кілька ресурсів в одній сцені використовують однаковий ідентифікатор, лише найдавніший ресурс в ієрархії сцени зберігає оригінальний ідентифікатор. Іншим ресурсам призначаються нові ідентифікатори з :ref:`generate_scene_unique_id()<class_Resource_method_generate_scene_unique_id>`.

\ **Примітка:** Встановлення цієї властивості не генерує сигнал :ref:`changed<class_Resource_signal_changed>`.

\ **Попередження:** Під час встановлення ідентифікатор повинен складатися лише з літер, цифр та символів підкреслення. В іншому випадку це призведе до помилки та за замовчуванням буде використано випадково згенерований ідентифікатор.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Resource_private_method__get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_rid**\ (\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__get_rid>`

Перевизначте цей метод, щоб повернути власний :ref:`RID<class_RID>`, коли викликається :ref:`get_rid()<class_Resource_method_get_rid>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__reset_state:

.. rst-class:: classref-method

|void| **_reset_state**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__reset_state>`

Для ресурсів, стан яких зберігається в неекспортованих властивостях, таких як :ref:`Object._validate_property()<class_Object_private_method__validate_property>` або :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`, цей метод має бути реалізований для їх очищення.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__set_path_cache:

.. rst-class:: classref-method

|void| **_set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__set_path_cache>`

Перевизначте цей метод, щоб виконати додаткову логіку після виклику :ref:`set_path_cache()<class_Resource_method_set_path_cache>` для цього об'єкта.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__setup_local_to_scene:

.. rst-class:: classref-method

|void| **_setup_local_to_scene**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__setup_local_to_scene>`

Перевизначте цей метод, щоб налаштувати щойно дубльований ресурс, створений за допомогою :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, якщо для :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` оригіналу встановлено значення ``true``. 

\ **Приклад:** Встановіть випадкове значення ``шкоди`` для кожного локального ресурсу зі створеної сцени: 

::
 
    розширює ресурс 

    var damage = 0 

    func _setup_local_to_scene(): 
        damage = randi_range(10, 40) 

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_duplicate:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Resource_method_duplicate>`

Дублює цей ресурс, повертаючи новий ресурс з його властивостями ``export``\ ed або :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>`, скопійованими з оригіналу.

Якщо ``deep`` має значення ``false``, повертається **неглибока** копія: вкладені властивості :ref:`Array<class_Array>`, :ref:`Dictionary<class_Dictionary>` та **Resource** не дублюються та використовуються спільно з оригінальним ресурсом.

Якщо ``deep`` має значення ``true``, повертається **глибока** копія: усі вкладені масиви, словники та упаковані масиви також дублюються (рекурсивно). Будь-який **Resource**, знайдений всередині, буде продубльовано лише в тому випадку, якщо він локальний, як-от :ref:`DEEP_DUPLICATE_INTERNAL<class_Resource_constant_DEEP_DUPLICATE_INTERNAL>`, що використовується з :ref:`duplicate_deep()<class_Resource_method_duplicate_deep>`.

Застосовуються такі винятки:

- Властивості підресурсу з прапорцем :ref:`@GlobalScope.PROPERTY_USAGE_ALWAYS_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_ALWAYS_DUPLICATE>` завжди дублюються (рекурсивно чи ні, залежно від ``deep``).

- Властивості підресурсу з прапорцем :ref:`@GlobalScope.PROPERTY_USAGE_NEVER_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_NEVER_DUPLICATE>` ніколи не дублюються.

\ **Примітка:** Для користувацьких ресурсів цей метод завершиться невдачею, якщо :ref:`Object._init()<class_Object_private_method__init>` було визначено з обов'язковими параметрами.

\ **Примітка:** Під час дублювання з ``deep``, встановленим на ``true``, кожен знайдений ресурс, включаючи той, для якого викликається цей метод, буде дублюватися лише один раз і на нього буде посилатися стільки разів, скільки потрібно в дублікаті. Наприклад, якщо ви дублюєте ресурс A, на який посилатися ресурс B двічі, ви отримаєте новий ресурс A', який посилатиметься на новий ресурс B' двічі.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_duplicate_deep:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **duplicate_deep**\ (\ deep_subresources_mode\: :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` = 1\ ) |const| :ref:`🔗<class_Resource_method_duplicate_deep>`

Дублює цей ресурс, глибоко, подібно до :ref:`duplicate()<class_Resource_method_duplicate>`\ ``(true)``, з додатковим контролем над обробкою підресурсів.

\ ``deep_subresources_mode`` має бути одним із значень з :ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_emit_changed:

.. rst-class:: classref-method

|void| **emit_changed**\ (\ ) :ref:`🔗<class_Resource_method_emit_changed>`

Випромінює сигнал :ref:`changed<class_Resource_signal_changed>`. Цей метод викликається автоматично для деяких вбудованих ресурсів.

\ **Примітка:** Для користувацьких ресурсів рекомендується викликати цей метод щоразу, коли відбувається значуща зміна, така як зміна властивості. Це гарантує, що користувацькі :ref:`Object<class_Object>`, що залежать від ресурсу, будуть належним чином оновлені.

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

Сформує унікальний ідентифікатор ресурсу, який міститься всередині :ref:`PackedScene<class_PackedScene>`, заснований на поточній дати, часу та випадковому значенні. Повернутий рядок складається з літер (``a`` до ``y``) і чисел (``0`` до ``8``). Дивитися також :ref:`resource_scene_unique_id<class_Resource_property_resource_scene_unique_id>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_id_for_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id_for_path**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Resource_method_get_id_for_path>`

З внутрішнього кешу для унікальних ідентифікаторів сцени повертає ідентифікатор цього ресурсу для сцени за адресою ``path``. Якщо запис відсутній, повертається порожній рядок. Корисно для збереження унікальних ідентифікаторів сцени однаковими під час реалізації зручного для VCS формату користувацького ресурсу шляхом розширення :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` та :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Примітка:** Цей метод реалізовано лише під час роботи в контексті редактора. Під час виконання він повертає порожній рядок.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_local_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_local_scene**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_local_scene>`

Якщо :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` встановлюється на ``true`` і ресурс був завантажений з :ref:`PackedScene<class_PackedScene>` миттєве позначення, повертає корінь :ref:`Node<class_Node>` сцени, де використовується цей ресурс. В іншому випадку повертається ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_rid>`

Повернення :ref:`RID<class_RID>` цього ресурсу (або порожній RID). Багато ресурсів (наприклад, :ref:`Texture2D<class_Texture2D>`, :ref:`Mesh<class_Mesh>`, і так далі) є високорівневі абстракції ресурсів, що зберігаються в спеціалізованому сервері (:ref:`DisplayServer<class_DisplayServer>`, :ref:`RenderingServer<class_RenderingServer>` і т.д.), тому ця функція повернеться оригінальним :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_is_built_in:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_built_in**\ (\ ) |const| :ref:`🔗<class_Resource_method_is_built_in>`

Повертає ``true``, якщо ресурс збережено на диску як частина файлу іншого ресурсу.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_reset_state:

.. rst-class:: classref-method

|void| **reset_state**\ (\ ) :ref:`🔗<class_Resource_method_reset_state>`

Очищає неекспортовані властивості ресурсу. Див. також :ref:`_reset_state()<class_Resource_private_method__reset_state>`. Корисно під час реалізації власного формату ресурсу шляхом розширення :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` та :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_id_for_path:

.. rst-class:: classref-method

|void| **set_id_for_path**\ (\ path\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_id_for_path>`

У внутрішньому кеші для унікальних ідентифікаторів сцени встановлює ідентифікатор цього ресурсу на ``id`` для сцени за адресою ``path``. Якщо ``id`` порожній, запис кешу для ``path`` очищається. Корисно для збереження унікальних ідентифікаторів сцени однаковими під час реалізації зручного для VCS формату користувацького ресурсу шляхом розширення :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` та :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Примітка:** Цей метод реалізовано лише під час роботи в контексті редактора.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_path_cache:

.. rst-class:: classref-method

|void| **set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_path_cache>`

Встановлює шлях ресурсу на ``path`` без залучення кешу ресурсів. Корисно для обробки значень :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` під час реалізації власного формату ресурсу шляхом розширення :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` та :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_setup_local_to_scene:

.. rst-class:: classref-method

|void| **setup_local_to_scene**\ (\ ) :ref:`🔗<class_Resource_method_setup_local_to_scene>`

**Застаріло:** This method should only be called internally.

Дзвінки :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>`. Якщо :ref:`ресурс_local_to_scene<class_Resource_property_ресурс_local_to_scene>` встановлюється на ``true``, цей метод автоматично називається :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` новим дублікованим ресурсом в екземплярі сцени.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_take_over_path:

.. rst-class:: classref-method

|void| **take_over_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_take_over_path>`

Налаштовує наявний запис кешу для цього шляху. Подальші спроби навантажити перевантажений ресурс шляхом повернення цього ресурсу.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
