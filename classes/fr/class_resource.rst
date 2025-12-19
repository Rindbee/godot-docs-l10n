:github_url: hide

.. _class_Resource:

Resource
========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`Animation<class_Animation>`, :ref:`AnimationLibrary<class_AnimationLibrary>`, :ref:`AnimationNode<class_AnimationNode>`, :ref:`AnimationNodeStateMachinePlayback<class_AnimationNodeStateMachinePlayback>`, :ref:`AnimationNodeStateMachineTransition<class_AnimationNodeStateMachineTransition>`, :ref:`AudioBusLayout<class_AudioBusLayout>`, :ref:`AudioEffect<class_AudioEffect>`, :ref:`AudioStream<class_AudioStream>`, :ref:`BitMap<class_BitMap>`, :ref:`BoneMap<class_BoneMap>`, :ref:`ButtonGroup<class_ButtonGroup>`, :ref:`CameraAttributes<class_CameraAttributes>`, :ref:`ColorPalette<class_ColorPalette>`, :ref:`Compositor<class_Compositor>`, :ref:`CompositorEffect<class_CompositorEffect>`, :ref:`CryptoKey<class_CryptoKey>`, :ref:`Curve<class_Curve>`, :ref:`Curve2D<class_Curve2D>`, :ref:`Curve3D<class_Curve3D>`, :ref:`EditorNode3DGizmoPlugin<class_EditorNode3DGizmoPlugin>`, :ref:`EditorSettings<class_EditorSettings>`, :ref:`Environment<class_Environment>`, :ref:`FoldableGroup<class_FoldableGroup>`, :ref:`Font<class_Font>`, :ref:`GDExtension<class_GDExtension>`, :ref:`GLTFAccessor<class_GLTFAccessor>`, :ref:`GLTFAnimation<class_GLTFAnimation>`, :ref:`GLTFBufferView<class_GLTFBufferView>`, :ref:`GLTFCamera<class_GLTFCamera>`, :ref:`GLTFDocument<class_GLTFDocument>`, :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, :ref:`GLTFLight<class_GLTFLight>`, :ref:`GLTFMesh<class_GLTFMesh>`, :ref:`GLTFNode<class_GLTFNode>`, :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`, :ref:`GLTFPhysicsShape<class_GLTFPhysicsShape>`, :ref:`GLTFSkeleton<class_GLTFSkeleton>`, :ref:`GLTFSkin<class_GLTFSkin>`, :ref:`GLTFSpecGloss<class_GLTFSpecGloss>`, :ref:`GLTFState<class_GLTFState>`, :ref:`GLTFTexture<class_GLTFTexture>`, :ref:`GLTFTextureSampler<class_GLTFTextureSampler>`, :ref:`Gradient<class_Gradient>`, :ref:`Image<class_Image>`, :ref:`ImporterMesh<class_ImporterMesh>`, :ref:`InputEvent<class_InputEvent>`, :ref:`JointLimitation3D<class_JointLimitation3D>`, :ref:`JSON<class_JSON>`, :ref:`LabelSettings<class_LabelSettings>`, :ref:`LightmapGIData<class_LightmapGIData>`, :ref:`Material<class_Material>`, :ref:`Mesh<class_Mesh>`, :ref:`MeshLibrary<class_MeshLibrary>`, :ref:`MissingResource<class_MissingResource>`, :ref:`MultiMesh<class_MultiMesh>`, :ref:`NavigationMesh<class_NavigationMesh>`, :ref:`NavigationMeshSourceGeometryData2D<class_NavigationMeshSourceGeometryData2D>`, :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`, :ref:`NavigationPolygon<class_NavigationPolygon>`, :ref:`Noise<class_Noise>`, :ref:`Occluder3D<class_Occluder3D>`, :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`, :ref:`OggPacketSequence<class_OggPacketSequence>`, :ref:`OpenXRAction<class_OpenXRAction>`, :ref:`OpenXRActionMap<class_OpenXRActionMap>`, :ref:`OpenXRActionSet<class_OpenXRActionSet>`, :ref:`OpenXRBindingModifier<class_OpenXRBindingModifier>`, :ref:`OpenXRHapticBase<class_OpenXRHapticBase>`, :ref:`OpenXRInteractionProfile<class_OpenXRInteractionProfile>`, :ref:`OpenXRIPBinding<class_OpenXRIPBinding>`, :ref:`PackedDataContainer<class_PackedDataContainer>`, :ref:`PackedScene<class_PackedScene>`, :ref:`PhysicsMaterial<class_PhysicsMaterial>`, :ref:`PolygonPathFinder<class_PolygonPathFinder>`, :ref:`RDShaderFile<class_RDShaderFile>`, :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, :ref:`RichTextEffect<class_RichTextEffect>`, :ref:`SceneReplicationConfig<class_SceneReplicationConfig>`, :ref:`Script<class_Script>`, :ref:`Shader<class_Shader>`, :ref:`ShaderInclude<class_ShaderInclude>`, :ref:`Shape2D<class_Shape2D>`, :ref:`Shape3D<class_Shape3D>`, :ref:`Shortcut<class_Shortcut>`, :ref:`SkeletonModification2D<class_SkeletonModification2D>`, :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, :ref:`SkeletonProfile<class_SkeletonProfile>`, :ref:`Skin<class_Skin>`, :ref:`Sky<class_Sky>`, :ref:`SpriteFrames<class_SpriteFrames>`, :ref:`StyleBox<class_StyleBox>`, :ref:`SyntaxHighlighter<class_SyntaxHighlighter>`, :ref:`Texture<class_Texture>`, :ref:`Theme<class_Theme>`, :ref:`TileMapPattern<class_TileMapPattern>`, :ref:`TileSet<class_TileSet>`, :ref:`TileSetSource<class_TileSetSource>`, :ref:`Translation<class_Translation>`, :ref:`VideoStream<class_VideoStream>`, :ref:`VideoStreamPlayback<class_VideoStreamPlayback>`, :ref:`VisualShaderNode<class_VisualShaderNode>`, :ref:`VoxelGIData<class_VoxelGIData>`, :ref:`World2D<class_World2D>`, :ref:`World3D<class_World3D>`, :ref:`X509Certificate<class_X509Certificate>`

Classe de base pour les objets sérialisables.

.. rst-class:: classref-introduction-group

Description
-----------

Les ressources sont la classe de base pour tous les types de ressources propres à Godot, servant principalement comme conteneurs de données. Comme ils héritent de :ref:`RefCounted<class_RefCounted>`, les ressources ont un compteur de références et sont libérées lorsqu'elles ne sont plus utilisées. Elles peuvent également être imbriquées dans d'autres ressources, et sauvegardées sur le disque. :ref:`PackedScene<class_PackedScene>`, l'un des :ref:`Object<class_Object>` le plus courant dans un projet Godot, est également une ressource, uniquement capable de stocker et d'instancier les :ref:`Node<class_Node>`\ s qu'elle contient autant de fois que désiré.

En GDScript, les ressources peuvent être chargées à partir du disque par leur chemin :ref:`resource_path<class_Resource_property_resource_path>` en utilisant :ref:`@GDScript.load()<class_@GDScript_method_load>` ou :ref:`@GDScript.preload()<class_@GDScript_method_preload>`.

Le moteur conserve un cache globale de toutes les ressources chargées, référencées par des chemins (voir :ref:`ResourceLoader.has_cached()<class_ResourceLoader_method_has_cached>`). Une ressource sera mise en cache lorsqu'elle est chargée pour la première fois et retirée du cache une fois toutes les références libérées. Lorsqu'une ressource est mise en cache, les chargements subséquents utilisant son chemin renverront la référence en cache.

\ **Note :** En C#, les ressources ne seront pas libérées instantanément après qu'elles ne soient plus utilisées. Au lieu de cela, le ramasse-miette s'exécutera périodiquement et libérera les ressources qui ne sont plus utilisées. Cela signifie que les objets ressources utilisées resteront en mémoire pendant un certain temps avant d'être supprimées.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Ressources <../tutorials/scripting/resources>`

- :doc:`Quand et comment éviter d'utiliser des nœuds pour tout <../tutorials/best_practices/node_alternatives>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

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

Méthodes
----------------

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

Signaux
--------------

.. _class_Resource_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_Resource_signal_changed>`

Émis lorsque la ressource change, habituellement lorsque l'une de ses propriétés est modifiée. Voir aussi :ref:`emit_changed()<class_Resource_method_emit_changed>`.

\ **Note :** Ce signal n'est pas émis automatiquement pour les propriétés de ressources personnalisées. Si nécessaire, un setter doit être créé pour émettre le signal.

.. rst-class:: classref-item-separator

----

.. _class_Resource_signal_setup_local_to_scene_requested:

.. rst-class:: classref-signal

**setup_local_to_scene_requested**\ (\ ) :ref:`🔗<class_Resource_signal_setup_local_to_scene_requested>`

**Obsolète :** This signal is only emitted when the resource is created. Override :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>` instead.

Émis par une ressource nouvellement dupliquée avec :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` défini à ``true``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Resource_DeepDuplicateMode:

.. rst-class:: classref-enumeration

enum **DeepDuplicateMode**: :ref:`🔗<enum_Resource_DeepDuplicateMode>`

.. _class_Resource_constant_DEEP_DUPLICATE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_NONE** = ``0``

Aucun sous-ressource n'est dupliquée. Ceci est utile même dans une duplication profonde pour que tous les tableaux et les dictionnaires soient dupliqués, mais pointent toujours vers les ressources originales.

.. _class_Resource_constant_DEEP_DUPLICATE_INTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_INTERNAL** = ``1``

Seules les sous-ressources sans chemin ou avec un chemin local à la scène seront dupliquées.

.. _class_Resource_constant_DEEP_DUPLICATE_ALL:

.. rst-class:: classref-enumeration-constant

:ref:`DeepDuplicateMode<enum_Resource_DeepDuplicateMode>` **DEEP_DUPLICATE_ALL** = ``2``

Chaque sous-ressource trouvée sera dupliquée, même si elle a un chemin non local. En d'autres termes, même les potentiellement grandes ressources stockées séparément seront dupliquées.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Resource_property_resource_local_to_scene:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **resource_local_to_scene** = ``false`` :ref:`🔗<class_Resource_property_resource_local_to_scene>`

.. rst-class:: classref-property-setget

- |void| **set_local_to_scene**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_local_to_scene**\ (\ )

Si ``true``, la ressource est dupliquée pour chaque instance de toutes les scènes qui l'utilisent. Durant l'exécution, la ressource peut être modifiée dans une scène sans affecter d'autres instances (voir :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`).

\ **Note :** Modifier cette propriété durant l'exécution n'a aucun effet sur les ressources dupliquées déjà créées.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_name** = ``""`` :ref:`🔗<class_Resource_property_resource_name>`

.. rst-class:: classref-property-setget

- |void| **set_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_name**\ (\ )

Un nom optionnel pour cette ressource. Lorsque définie, sa valeur est affichée pour représenter la ressource dans le dock de l'Inspecteur. Pour les scripts intégrés, le nom est affiché dans le nom de l'onglet dans l'éditeur de script.

\ **Note :** Certains formats de ressources ne supportent pas de nom de ressource. Vous pouvez toujours définir le nom dans l'éditeur ou via le code, mais il sera perdu lorsque la ressource est rechargée. Par exemple, seuls les scripts intégrés peuvent avoir un nom de ressource, tandis que les scripts stockés dans des fichiers séparés ne le peuvent pas.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_path** = ``""`` :ref:`🔗<class_Resource_property_resource_path>`

.. rst-class:: classref-property-setget

- |void| **set_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_path**\ (\ )

Le chemin unique vers cette ressource. Si elle a été sauvegardée sur le disque, la valeur sera son chemin de fichier. Si la ressource est exclusivement contenue dans une scène, la valeur sera le chemin de fichier de la :ref:`PackedScene<class_PackedScene>`, suivi d'un identifiant unique.

\ **Note :** Définir manuellement cette propriété peut échouer si une ressource avec le même chemin a déjà été chargée précédemment. Si nécessaire, utilisez :ref:`take_over_path()<class_Resource_method_take_over_path>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_property_resource_scene_unique_id:

.. rst-class:: classref-property

:ref:`String<class_String>` **resource_scene_unique_id** :ref:`🔗<class_Resource_property_resource_scene_unique_id>`

.. rst-class:: classref-property-setget

- |void| **set_scene_unique_id**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_unique_id**\ (\ )

Un identifiant unique par rapport à la scène de cette ressource. Si laissé vide, l'ID est automatiquement généré lorsque cette ressource est sauvegardée dans une :ref:`PackedScene<class_PackedScene>`. Si la ressource n'est pas dans une scène, cette propriété est vide par défaut.

\ **Note :** Lorsque la :ref:`PackedScene<class_PackedScene>` est sauvegardée, si plusieurs ressources dans la même scène utilisent le même ID, seule la ressource la plus ancienne dans la hiérarchie de la scène conserve l'identifiant original. Les autres ressources sont affectées à de nouveaux ID avec :ref:`generate_scene_unique_id()<class_Resource_method_generate_scene_unique_id>`.

\ **Note :** Définir cette propriété n'émet pas le signal :ref:`changed<class_Resource_signal_changed>`.

\ **Attention :** Lors du réglage, l'identifiant ne doit comporter que des lettres, des chiffres et des tirets du bas. Sinon, il échouera et donnera par défaut un ID généré aléatoirement.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Resource_private_method__get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_rid**\ (\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__get_rid>`

Redéfinissez cette méthode pour renvoyer un :ref:`RID<class_RID>` personnalisé lorsque :ref:`get_rid()<class_Resource_method_get_rid>` est appelée.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__reset_state:

.. rst-class:: classref-method

|void| **_reset_state**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__reset_state>`

For resources that store state in non-exported properties, such as via :ref:`Object._validate_property()<class_Object_private_method__validate_property>` or :ref:`Object._get_property_list()<class_Object_private_method__get_property_list>`, this method must be implemented to clear them.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__set_path_cache:

.. rst-class:: classref-method

|void| **_set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_Resource_private_method__set_path_cache>`

Redéfinissez cette méthode pour exécuter de la logique supplémentaire après que :ref:`set_path_cache()<class_Resource_method_set_path_cache>` soit appelée sur cet objet.

.. rst-class:: classref-item-separator

----

.. _class_Resource_private_method__setup_local_to_scene:

.. rst-class:: classref-method

|void| **_setup_local_to_scene**\ (\ ) |virtual| :ref:`🔗<class_Resource_private_method__setup_local_to_scene>`

Redéfinissez cette méthode pour personnaliser la ressource nouvellement dupliquée créée à partir de :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>`, si le :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` de l'original est défini à ``true``.

\ **Exemple :** Définir une valeur aléatoire ``degats`` à chaque ressource locale depuis une scène instanciée :

::

    extends Resource

    var degats = 0

    func _setup_local_to_scene():
        degats = randi_range(10, 40)

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_duplicate:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **duplicate**\ (\ deep\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Resource_method_duplicate>`

Doublons cette ressource, renvoyant une nouvelle ressource avec ses propriétés ``export``\ ées ou :ref:`@GlobalScope.PROPERTY_USAGE_STORAGE<class_@GlobalScope_constant_PROPERTY_USAGE_STORAGE>` copiées de l'original.

Si ``deep`` vaut ``false``, une copie **superficielle** est renvoyée : les propriétés :ref:`Array<class_Array>`, :ref:`Dictionary<class_Dictionary>` et **Resource** imbriquées ne sont pas dupliquées et sont partagées avec la ressource originale.

Si ``deep`` vaut ``true``, une copie **profonde** est renvoyée : tous les tableaux, dictionnaires et tableaux imbriquées sont également dupliqués (récursivement). Toute **Resource** trouvée à l'intérieur ne sera dupliquée que si elle est locale, comme pour :ref:`DEEP_DUPLICATE_INTERNAL<class_Resource_constant_DEEP_DUPLICATE_INTERNAL>` utilisé avec :ref:`duplicate_deep()<class_Resource_method_duplicate_deep>`.

Les exceptions suivantes s'appliquent :

- Les propriétés de sous-ressources avec le drapeau :ref:`@GlobalScope.PROPERTY_USAGE_ALWAYS_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_ALWAYS_DUPLICATE>` sont toujours dupliquées (récursivement ou non, selon ``deep``).

- Les propriétés de sous-ressources avec le drapeau :ref:`@GlobalScope.PROPERTY_USAGE_NEVER_DUPLICATE<class_@GlobalScope_constant_PROPERTY_USAGE_NEVER_DUPLICATE>` ne sont jamais dupliquées.

\ **Note :** Pour les ressources personnalisées, cette méthode échouera si :ref:`Object._init()<class_Object_private_method__init>` a été défini avec les paramètres requis.

\ **Note :** Lors de la duplication avec ``deep`` défini à ``true``, chaque ressource trouvée, y compris celle sur laquelle cette méthode est appelée, ne sera dupliquée qu'une fois et référencée autant de fois que nécessaire dans le duplicata. Par exemple, si vous dupliquez la ressource A qui se trouve avoir la ressource B référencée deux fois, vous obtiendrez une nouvelle ressource A' référençant une nouvelle ressource B' deux fois.

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

Émet le signal :ref:`changed<class_Resource_signal_changed>`. Cette méthode est appelée automatiquement pour certaines ressources intégrées.

\ **Note :** Pour les ressources personnalisées, il est recommandé d'appeler cette méthode lorsqu'un changement significatif se produit, comme une propriété modifiée. Cela garantit que les :ref:`Object<class_Object>`\ s personnalisés dépendant de la ressource sont correctement mis à jour.

::

    var degats:
        set(nouvelle_valeur):
            if degats != nouvelle_valeur:
                degats = nouvelle_valeur
                emit_changed()

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_generate_scene_unique_id:

.. rst-class:: classref-method

:ref:`String<class_String>` **generate_scene_unique_id**\ (\ ) |static| :ref:`🔗<class_Resource_method_generate_scene_unique_id>`

Génère un identifiant unique pour une ressource qui doit être contenue dans une :ref:`PackedScene<class_PackedScene>`, en fonction de la date, de l'heure et d'une valeur aléatoire. La chaîne renvoyée n'est composée que de lettres (``a`` à ``y``) et de nombres (``0`` à ``8``). Voir aussi :ref:`resource_scene_unique_id<class_Resource_property_resource_scene_unique_id>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_id_for_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_id_for_path**\ (\ path\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_Resource_method_get_id_for_path>`

From the internal cache for scene-unique IDs, returns the ID of this resource for the scene at ``path``. If there is no entry, an empty string is returned. Useful to keep scene-unique IDs the same when implementing a VCS-friendly custom resource format by extending :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` and :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Note:** This method is only implemented when running in an editor context. At runtime, it returns an empty string.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_local_scene:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_local_scene**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_local_scene>`

Si :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` est défini à ``true`` et que la ressource a été chargée à partir d'un instanciation de :ref:`PackedScene<class_PackedScene>`, renvoie le :ref:`Node<class_Node>` racine de la scène où cette ressource est utilisée. Sinon, renvoie ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Resource_method_get_rid>`

Renvoie le :ref:`RID<class_RID>` de cette ressource (ou un RID vide). De nombreuses ressources (comme :ref:`Texture2D<class_Texture2D>`, :ref:`Mesh<class_Mesh>`, etc.) sont des abstractions de haut niveau de ressources stockées dans un serveur spécialisé (:ref:`DisplayServer<class_DisplayServer>`, :ref:`RenderingServer<class_RenderingServer>`, etc.), cette fonction renverra donc le :ref:`RID<class_RID>` original.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_is_built_in:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_built_in**\ (\ ) |const| :ref:`🔗<class_Resource_method_is_built_in>`

Renvoie ``true`` si la ressource est sauvegardée sur le disque dans le fichier d'une autre ressource.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_reset_state:

.. rst-class:: classref-method

|void| **reset_state**\ (\ ) :ref:`🔗<class_Resource_method_reset_state>`

Fait que la ressource vide ses propriétés non exportées. Voir aussi :ref:`_reset_state()<class_Resource_private_method__reset_state>`. Utile lors de l'implémentation d'un format de ressource personnalisé en étendant :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` et :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_id_for_path:

.. rst-class:: classref-method

|void| **set_id_for_path**\ (\ path\: :ref:`String<class_String>`, id\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_id_for_path>`

In the internal cache for scene-unique IDs, sets the ID of this resource to ``id`` for the scene at ``path``. If ``id`` is empty, the cache entry for ``path`` is cleared. Useful to keep scene-unique IDs the same when implementing a VCS-friendly custom resource format by extending :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` and :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

\ **Note:** This method is only implemented when running in an editor context.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_set_path_cache:

.. rst-class:: classref-method

|void| **set_path_cache**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_set_path_cache>`

Définit le chemin de la ressource à ``path`` sans impliquer le cache des ressources. Utile pour gérer les valeurs de :ref:`CacheMode<enum_ResourceFormatLoader_CacheMode>` lors de l'implémentation d'un format de ressource personnalisée en étendant :ref:`ResourceFormatLoader<class_ResourceFormatLoader>` et :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_setup_local_to_scene:

.. rst-class:: classref-method

|void| **setup_local_to_scene**\ (\ ) :ref:`🔗<class_Resource_method_setup_local_to_scene>`

**Obsolète :** This method should only be called internally.

Appelle :ref:`_setup_local_to_scene()<class_Resource_private_method__setup_local_to_scene>`. Si :ref:`resource_local_to_scene<class_Resource_property_resource_local_to_scene>` est défini à ``true``, cette méthode est automatiquement appelée depuis :ref:`PackedScene.instantiate()<class_PackedScene_method_instantiate>` par la ressource nouvellement dupliquée dans l'instance de la scène.

.. rst-class:: classref-item-separator

----

.. _class_Resource_method_take_over_path:

.. rst-class:: classref-method

|void| **take_over_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_Resource_method_take_over_path>`

Définit :ref:`resource_path<class_Resource_property_resource_path>` à ``path``, redéfinissant potentiellement une entrée existante du cache pour ce chemin. Les prochaines tentatives pour charger une ressource redéfinie par chemin renverront à la place cette ressource.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
