:github_url: hide

.. _class_GLTFState:

GLTFState
=========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`FBXState<class_FBXState>`

Представляє всі дані файлу glTF.

.. rst-class:: classref-introduction-group

Опис
--------

Містить усі вузли та ресурси файлу glTF. Це використовується :ref:`GLTFDocument<class_GLTFDocument>` як сховище даних, що дозволяє :ref:`GLTFDocument<class_GLTFDocument>` і всім класам :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` залишатися без стану. 

GLTFState можна заповнити :ref:`GLTFDocument<class_GLTFDocument>`, який читає файл, або перетворюючи сцену Godot. Потім дані можна використати для створення сцени Godot або зберегти у файл glTF. Класи :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` можуть перехоплювати код, який перетворює сцену Godot в/зі сцени Godot, у довільних точках. Це дозволяє зберігати спеціальні дані у файлі glTF або конвертувати спеціальні дані до/з вузлів Godot.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Завантаження та збереження файлів під час виконання <../tutorials/io/runtime_file_loading_and_saving>`

- `схема заголовка ресурсу glTF <https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/schema/asset.schema.json>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`                                                  | :ref:`bake_fps<class_GLTFState_property_bake_fps>`                                 | ``30.0``               |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`String<class_String>`                                                | :ref:`base_path<class_GLTFState_property_base_path>`                               | ``""``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\] | :ref:`buffers<class_GLTFState_property_buffers>`                                   | ``[]``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`String<class_String>`                                                | :ref:`copyright<class_GLTFState_property_copyright>`                               | ``""``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`create_animations<class_GLTFState_property_create_animations>`               | ``true``               |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`String<class_String>`                                                | :ref:`filename<class_GLTFState_property_filename>`                                 | ``""``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`                              | :ref:`glb_data<class_GLTFState_property_glb_data>`                                 | ``PackedByteArray()``  |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`import_as_skeleton_bones<class_GLTFState_property_import_as_skeleton_bones>` | ``false``              |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                        | :ref:`json<class_GLTFState_property_json>`                                         | ``{}``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`major_version<class_GLTFState_property_major_version>`                       | ``0``                  |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                                                      | :ref:`minor_version<class_GLTFState_property_minor_version>`                       | ``0``                  |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                            | :ref:`root_nodes<class_GLTFState_property_root_nodes>`                             | ``PackedInt32Array()`` |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`String<class_String>`                                                | :ref:`scene_name<class_GLTFState_property_scene_name>`                             | ``""``                 |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`bool<class_bool>`                                                    | :ref:`use_named_skin_binds<class_GLTFState_property_use_named_skin_binds>`         | ``false``              |
   +----------------------------------------------------------------------------+------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`add_used_extension<class_GLTFState_method_add_used_extension>`\ (\ extension_name\: :ref:`String<class_String>`, required\: :ref:`bool<class_bool>`\ )                                               |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`append_data_to_buffers<class_GLTFState_method_append_data_to_buffers>`\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`, deduplication\: :ref:`bool<class_bool>`\ )                          |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`append_gltf_node<class_GLTFState_method_append_gltf_node>`\ (\ gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, godot_scene_node\: :ref:`Node<class_Node>`, parent_node_index\: :ref:`int<class_int>`\ ) |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFAccessor<class_GLTFAccessor>`\]             | :ref:`get_accessors<class_GLTFState_method_get_accessors>`\ (\ )                                                                                                                                           |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                                    | :ref:`get_additional_data<class_GLTFState_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                                         |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AnimationPlayer<class_AnimationPlayer>`                                    | :ref:`get_animation_player<class_GLTFState_method_get_animation_player>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`get_animation_players_count<class_GLTFState_method_get_animation_players_count>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                  |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\]           | :ref:`get_animations<class_GLTFState_method_get_animations>`\ (\ )                                                                                                                                         |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFBufferView<class_GLTFBufferView>`\]         | :ref:`get_buffer_views<class_GLTFState_method_get_buffer_views>`\ (\ )                                                                                                                                     |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFCamera<class_GLTFCamera>`\]                 | :ref:`get_cameras<class_GLTFState_method_get_cameras>`\ (\ )                                                                                                                                               |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`get_handle_binary_image<class_GLTFState_method_get_handle_binary_image>`\ (\ )                                                                                                                       |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\]                   | :ref:`get_images<class_GLTFState_method_get_images>`\ (\ )                                                                                                                                                 |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\]                   | :ref:`get_lights<class_GLTFState_method_get_lights>`\ (\ )                                                                                                                                                 |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]                     | :ref:`get_materials<class_GLTFState_method_get_materials>`\ (\ )                                                                                                                                           |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFMesh<class_GLTFMesh>`\]                     | :ref:`get_meshes<class_GLTFState_method_get_meshes>`\ (\ )                                                                                                                                                 |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`get_node_index<class_GLTFState_method_get_node_index>`\ (\ scene_node\: :ref:`Node<class_Node>`\ )                                                                                                   |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\]                     | :ref:`get_nodes<class_GLTFState_method_get_nodes>`\ (\ )                                                                                                                                                   |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Node<class_Node>`                                                          | :ref:`get_scene_node<class_GLTFState_method_get_scene_node>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                                                            |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\]             | :ref:`get_skeletons<class_GLTFState_method_get_skeletons>`\ (\ )                                                                                                                                           |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\]                     | :ref:`get_skins<class_GLTFState_method_get_skins>`\ (\ )                                                                                                                                                   |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\] | :ref:`get_texture_samplers<class_GLTFState_method_get_texture_samplers>`\ (\ )                                                                                                                             |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`GLTFTexture<class_GLTFTexture>`\]               | :ref:`get_textures<class_GLTFState_method_get_textures>`\ (\ )                                                                                                                                             |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]                         | :ref:`get_unique_animation_names<class_GLTFState_method_get_unique_animation_names>`\ (\ )                                                                                                                 |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]                         | :ref:`get_unique_names<class_GLTFState_method_get_unique_names>`\ (\ )                                                                                                                                     |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_accessors<class_GLTFState_method_set_accessors>`\ (\ accessors\: :ref:`Array<class_Array>`\[:ref:`GLTFAccessor<class_GLTFAccessor>`\]\ )                                                         |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_additional_data<class_GLTFState_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ )                        |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_animations<class_GLTFState_method_set_animations>`\ (\ animations\: :ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\]\ )                                                    |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_buffer_views<class_GLTFState_method_set_buffer_views>`\ (\ buffer_views\: :ref:`Array<class_Array>`\[:ref:`GLTFBufferView<class_GLTFBufferView>`\]\ )                                            |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_cameras<class_GLTFState_method_set_cameras>`\ (\ cameras\: :ref:`Array<class_Array>`\[:ref:`GLTFCamera<class_GLTFCamera>`\]\ )                                                                   |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_handle_binary_image<class_GLTFState_method_set_handle_binary_image>`\ (\ method\: :ref:`int<class_int>`\ )                                                                                       |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_images<class_GLTFState_method_set_images>`\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\]\ )                                                                        |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_lights<class_GLTFState_method_set_lights>`\ (\ lights\: :ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\]\ )                                                                        |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_materials<class_GLTFState_method_set_materials>`\ (\ materials\: :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]\ )                                                                 |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_meshes<class_GLTFState_method_set_meshes>`\ (\ meshes\: :ref:`Array<class_Array>`\[:ref:`GLTFMesh<class_GLTFMesh>`\]\ )                                                                          |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_nodes<class_GLTFState_method_set_nodes>`\ (\ nodes\: :ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\]\ )                                                                             |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_skeletons<class_GLTFState_method_set_skeletons>`\ (\ skeletons\: :ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\]\ )                                                         |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_skins<class_GLTFState_method_set_skins>`\ (\ skins\: :ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\]\ )                                                                             |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_texture_samplers<class_GLTFState_method_set_texture_samplers>`\ (\ texture_samplers\: :ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\]\ )                        |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_textures<class_GLTFState_method_set_textures>`\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`GLTFTexture<class_GLTFTexture>`\]\ )                                                              |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_unique_animation_names<class_GLTFState_method_set_unique_animation_names>`\ (\ unique_animation_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ )                              |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_unique_names<class_GLTFState_method_set_unique_names>`\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ )                                                            |
   +----------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_GLTFState_constant_HANDLE_BINARY_DISCARD_TEXTURES:

.. rst-class:: classref-constant

**HANDLE_BINARY_DISCARD_TEXTURES** = ``0`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_DISCARD_TEXTURES>`

Відображає всі вбудовані текстури і використовує нетекстуровані матеріали.

.. _class_GLTFState_constant_HANDLE_BINARY_EXTRACT_TEXTURES:

.. rst-class:: classref-constant

**HANDLE_BINARY_EXTRACT_TEXTURES** = ``1`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EXTRACT_TEXTURES>`

Витягує вбудовані текстури, щоб бути переробленими і стисненими. Тільки редактора. Акти, як непривабливі в режимі runtime.

.. _class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_BASISU:

.. rst-class:: classref-constant

**HANDLE_BINARY_EMBED_AS_BASISU** = ``2`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_BASISU>`

Вбудовувані текстури VRAM стиснені з Basis Universal на створену сцену.

.. _class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_UNCOMPRESSED:

.. rst-class:: classref-constant

**HANDLE_BINARY_EMBED_AS_UNCOMPRESSED** = ``3`` :ref:`🔗<class_GLTFState_constant_HANDLE_BINARY_EMBED_AS_UNCOMPRESSED>`

Вбудовується текстури, що стискаються без втрат в створену сцену, що відповідає старій поведінці.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GLTFState_property_bake_fps:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_fps** = ``30.0`` :ref:`🔗<class_GLTFState_property_bake_fps>`

.. rst-class:: classref-property-setget

- |void| **set_bake_fps**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_fps**\ (\ )

Випікання псів анімації для імпорту або експорту.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_base_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_path** = ``""`` :ref:`🔗<class_GLTFState_property_base_path>`

.. rst-class:: classref-property-setget

- |void| **set_base_path**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_path**\ (\ )

Шлях папки, пов’язаної з даними glTF. Це використовується для пошуку інших файлів, на які посилається файл glTF, наприклад зображень або двійкових буферів. Це буде встановлено під час імпорту під час додавання з файлу та буде встановлено під час експорту під час запису у файл.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_buffers:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\] **buffers** = ``[]`` :ref:`🔗<class_GLTFState_property_buffers>`

.. rst-class:: classref-property-setget

- |void| **set_buffers**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`PackedByteArray<class_PackedByteArray>`\] **get_buffers**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_copyright:

.. rst-class:: classref-property

:ref:`String<class_String>` **copyright** = ``""`` :ref:`🔗<class_GLTFState_property_copyright>`

.. rst-class:: classref-property-setget

- |void| **set_copyright**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_copyright**\ (\ )

Рядок авторського права в заголовку ресурсу файлу glTF. Цей параметр встановлюється під час імпорту, якщо він присутній, і експорту, якщо він не порожній. Для отримання додаткової інформації див. документацію заголовка ресурсу glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_create_animations:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **create_animations** = ``true`` :ref:`🔗<class_GLTFState_property_create_animations>`

.. rst-class:: classref-property-setget

- |void| **set_create_animations**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_create_animations**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_filename:

.. rst-class:: classref-property

:ref:`String<class_String>` **filename** = ``""`` :ref:`🔗<class_GLTFState_property_filename>`

.. rst-class:: classref-property-setget

- |void| **set_filename**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_filename**\ (\ )

Ім’я файлу, пов’язане з даними glTF. Якщо він закінчується на ``.gltf``, це текстовий glTF, інакше це двійковий GLB. Це буде встановлено під час імпорту під час додавання з файлу та буде встановлено під час експорту під час запису у файл. У разі запису в буфер це буде порожній рядок.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_glb_data:

.. rst-class:: classref-property

:ref:`PackedByteArray<class_PackedByteArray>` **glb_data** = ``PackedByteArray()`` :ref:`🔗<class_GLTFState_property_glb_data>`

.. rst-class:: classref-property-setget

- |void| **set_glb_data**\ (\ value\: :ref:`PackedByteArray<class_PackedByteArray>`\ )
- :ref:`PackedByteArray<class_PackedByteArray>` **get_glb_data**\ (\ )

Бінарний буфер, прикріплений до файлу .glb.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedByteArray<class_PackedByteArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_import_as_skeleton_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **import_as_skeleton_bones** = ``false`` :ref:`🔗<class_GLTFState_property_import_as_skeleton_bones>`

.. rst-class:: classref-property-setget

- |void| **set_import_as_skeleton_bones**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_import_as_skeleton_bones**\ (\ )

Якщо ``true``, усі вузли GLTF у документі мають бути кістками одного вузла Godot :ref:`Skeleton3D<class_Skeleton3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_json:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **json** = ``{}`` :ref:`🔗<class_GLTFState_property_json>`

.. rst-class:: classref-property-setget

- |void| **set_json**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_json**\ (\ )

Оригінальний сирий JSON документ, що відповідає цьому GLTFState.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_major_version:

.. rst-class:: classref-property

:ref:`int<class_int>` **major_version** = ``0`` :ref:`🔗<class_GLTFState_property_major_version>`

.. rst-class:: classref-property-setget

- |void| **set_major_version**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_major_version**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_minor_version:

.. rst-class:: classref-property

:ref:`int<class_int>` **minor_version** = ``0`` :ref:`🔗<class_GLTFState_property_minor_version>`

.. rst-class:: classref-property-setget

- |void| **set_minor_version**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_minor_version**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_root_nodes:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **root_nodes** = ``PackedInt32Array()`` :ref:`🔗<class_GLTFState_property_root_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_root_nodes**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_root_nodes**\ (\ )

Кореневі вузли файлу glTF. Як правило, файл glTF матиме лише одну сцену, а отже, один кореневий вузол. Однак файл glTF може мати кілька сцен і, отже, кілька кореневих вузлів, які будуть згенеровані як рідні один одному та як дочірні елементи кореневого вузла згенерованої сцени Godot.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_scene_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **scene_name** = ``""`` :ref:`🔗<class_GLTFState_property_scene_name>`

.. rst-class:: classref-property-setget

- |void| **set_scene_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_scene_name**\ (\ )

Назва сцени. Під час імпорту, якщо не вказано, це буде ім’я файлу. Під час експорту, якщо вказано, назву сцени буде збережено у файлі glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_property_use_named_skin_binds:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_named_skin_binds** = ``false`` :ref:`🔗<class_GLTFState_property_use_named_skin_binds>`

.. rst-class:: classref-property-setget

- |void| **set_use_named_skin_binds**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_named_skin_binds**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GLTFState_method_add_used_extension:

.. rst-class:: classref-method

|void| **add_used_extension**\ (\ extension_name\: :ref:`String<class_String>`, required\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GLTFState_method_add_used_extension>`

Додає розширення до списку розширень, які використовує цей файл glTF під час серіалізації. Якщо ``required`` має значення ``true``, розширення також буде додано до списку необхідних розширень. Не запускайте це в :ref:`GLTFDocumentExtension._export_post()<class_GLTFDocumentExtension_private_method__export_post>`, оскільки цей етап надто пізній для додавання розширень. Остаточний список відсортовано за алфавітом.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_append_data_to_buffers:

.. rst-class:: classref-method

:ref:`int<class_int>` **append_data_to_buffers**\ (\ data\: :ref:`PackedByteArray<class_PackedByteArray>`, deduplication\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GLTFState_method_append_data_to_buffers>`

Додає заданий масив байтів ``data`` до буферів та створює для нього :ref:`GLTFBufferView<class_GLTFBufferView>`. Повертається індекс цільового об'єкта :ref:`GLTFBufferView<class_GLTFBufferView>`. Якщо ``deduplication`` має значення ``true``, спочатку буфери шукаються на наявність дублікатів даних, інакше завжди додаються нові байти.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_append_gltf_node:

.. rst-class:: classref-method

:ref:`int<class_int>` **append_gltf_node**\ (\ gltf_node\: :ref:`GLTFNode<class_GLTFNode>`, godot_scene_node\: :ref:`Node<class_Node>`, parent_node_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_append_gltf_node>`

Додає заданий :ref:`GLTFNode<class_GLTFNode>` до стану та повертає його новий індекс. Це можна використовувати для експорту одного вузла Godot як кількох вузлів glTF або для вставки нових вузлів glTF під час імпорту. Під час імпорту це потрібно викликати до завершення :ref:`GLTFDocumentExtension._generate_scene_node()<class_GLTFDocumentExtension_private_method__generate_scene_node>` для батьківського вузла. Під час експорту це потрібно викликати до виконання :ref:`GLTFDocumentExtension._export_node()<class_GLTFDocumentExtension_private_method__export_node>` для батьківського вузла.

Параметр ``godot_scene_node`` – це вузол сцени Godot, який відповідає цьому вузлу glTF. Наполегливо рекомендується встановити його на дійсний вузол, але може бути ``null``, якщо відповідного вузла сцени Godot немає. Один вузол сцени Godot може використовуватися для кількох вузлів glTF, тому, якщо експортуєте кілька вузлів glTF для одного вузла сцени Godot, використовуйте той самий вузол сцени Godot для кожного.

 Параметр ``parent_node_index`` – це індекс батьківського вузла :ref:`GLTFNode<class_GLTFNode>` у стані. Якщо ``-1``, вузол буде кореневим вузлом, інакше новий вузол буде додано до списку дочірніх вузлів батьківського вузла. Індекс також буде записаний до властивості :ref:`GLTFNode.parent<class_GLTFNode_property_parent>` нового вузла.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_accessors:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFAccessor<class_GLTFAccessor>`\] **get_accessors**\ (\ ) :ref:`🔗<class_GLTFState_method_get_accessors>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFState_method_get_additional_data>`

Отримує додаткові довільні дані в цьому екземплярі **GLTFState**. Це можна використовувати для збереження даних про стан кожного файлу в класах :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, що важливо, оскільки вони не мають стану. 

Аргументом має бути ім’я :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (не має збігатися з ім’ям розширення у файлі glTF), а значенням, що повертається, може бути будь-яке, яке ви встановите. Якщо нічого не встановлено, повертається значення ``null``.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animation_player:

.. rst-class:: classref-method

:ref:`AnimationPlayer<class_AnimationPlayer>` **get_animation_player**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_get_animation_player>`

Повертає вузол :ref:`AnimationPlayer<class_AnimationPlayer>` із заданим індексом. Ці вузли використовуються лише під час процесу експорту під час перетворення вузлів Godot :ref:`AnimationPlayer<class_AnimationPlayer>` на анімацію glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animation_players_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_animation_players_count**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_get_animation_players_count>`

Повертає кількість вузлів :ref:`AnimationPlayer<class_AnimationPlayer>` у цьому **GLTFState**. Ці вузли використовуються лише під час процесу експорту під час перетворення вузлів Godot :ref:`AnimationPlayer<class_AnimationPlayer>` на анімацію glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_animations:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\] **get_animations**\ (\ ) :ref:`🔗<class_GLTFState_method_get_animations>`

Повертає масив усіх :ref:`GLTFAnimation<class_GLTFAnimation>` у файлі glTF. Під час імпортування вони будуть створені як анімації у вузлі :ref:`AnimationPlayer<class_AnimationPlayer>`. Під час експорту вони будуть створені з вузлів Godot :ref:`AnimationPlayer<class_AnimationPlayer>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_buffer_views:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFBufferView<class_GLTFBufferView>`\] **get_buffer_views**\ (\ ) :ref:`🔗<class_GLTFState_method_get_buffer_views>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_cameras:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFCamera<class_GLTFCamera>`\] **get_cameras**\ (\ ) :ref:`🔗<class_GLTFState_method_get_cameras>`

Повертає масив усіх :ref:`GLTFCamera<class_GLTFCamera>` у файлі glTF. Це камери, на які посилається індекс :ref:`GLTFNode.camera<class_GLTFNode_property_camera>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_handle_binary_image:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_handle_binary_image**\ (\ ) :ref:`🔗<class_GLTFState_method_get_handle_binary_image>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_images:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\] **get_images**\ (\ ) :ref:`🔗<class_GLTFState_method_get_images>`

Отримує зображення файлу glTF як масив :ref:`Texture2D<class_Texture2D>`. Це зображення, на які посилається індекс :ref:`GLTFTexture.src_image<class_GLTFTexture_property_src_image>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_lights:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\] **get_lights**\ (\ ) :ref:`🔗<class_GLTFState_method_get_lights>`

Повертає масив усіх :ref:`GLTFLight<class_GLTFLight>` у файлі glTF. Це джерела світла, на які посилається індекс :ref:`GLTFNode.light<class_GLTFNode_property_light>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_materials:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\] **get_materials**\ (\ ) :ref:`🔗<class_GLTFState_method_get_materials>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFMesh<class_GLTFMesh>`\] **get_meshes**\ (\ ) :ref:`🔗<class_GLTFState_method_get_meshes>`

Повертає масив усіх :ref:`GLTFMesh<class_GLTFMesh>` у файлі glTF. Це сітки, на які посилається індекс :ref:`GLTFNode.mesh<class_GLTFNode_property_mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_node_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_node_index**\ (\ scene_node\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GLTFState_method_get_node_index>`

Повертає індекс :ref:`GLTFNode<class_GLTFNode>`, що відповідає цій вершині сцени Godot. Це вірші :ref:`get_scene_node()<class_GLTFState_method_get_scene_node>`. Корисно в процесі експорту.

\ **Примітка:** Не кожен вузол сцени Godot буде мати відповідні :ref:`GLTFNode<class_GLTFNode>`, і не кожен :ref:`GLTFNode<class_GLTFNode>` буде мати сцену, створену. Якщо немає індексу :ref:`GLTFNode<class_GLTFNode>` для цього вузла сцени, ``-1`` повертається.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_nodes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\] **get_nodes**\ (\ ) :ref:`🔗<class_GLTFState_method_get_nodes>`

Повертає масив усіх :ref:`GLTFNode<class_GLTFNode>` у файлі glTF. Це вузли, на які посилаються :ref:`GLTFNode.children<class_GLTFNode_property_children>` і :ref:`root_nodes<class_GLTFState_property_root_nodes>`. Це включає вузли, які не можуть бути згенеровані в сцені Godot, або вузли, які можуть генерувати кілька вузлів сцени Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_scene_node:

.. rst-class:: classref-method

:ref:`Node<class_Node>` **get_scene_node**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_get_scene_node>`

Повертаємо вузол сцени Godot, який відповідає одному індексу, як :ref:`GLTFNode<class_GLTFNode>`. Це вірші :ref:`get_node_index()<class_GLTFState_method_get_node_index>`. Корисно під час процесу імпорту.

\ **Примітка:** Не кожен :ref:`GLTFNode<class_GLTFNode>` буде сформований вузол сцени, а не кожен створений вузол сцени буде мати відповідну :ref:`GLTFNode<class_GLTFNode>`. Якщо відсутня вершина сцени для цього :ref:`GLTFNode<class_GLTFNode>` індекс, ``null`` повертається.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_skeletons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\] **get_skeletons**\ (\ ) :ref:`🔗<class_GLTFState_method_get_skeletons>`

Повертає масив усіх :ref:`GLTFSkeleton<class_GLTFSkeleton>` у файлі glTF. Це скелети, на які посилається індекс :ref:`GLTFNode.skeleton<class_GLTFNode_property_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_skins:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\] **get_skins**\ (\ ) :ref:`🔗<class_GLTFState_method_get_skins>`

Повертає масив усіх :ref:`GLTFSkin<class_GLTFSkin>` у файлі glTF. Це скіни, на які посилається індекс :ref:`GLTFNode.skin<class_GLTFNode_property_skin>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_texture_samplers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\] **get_texture_samplers**\ (\ ) :ref:`🔗<class_GLTFState_method_get_texture_samplers>`

Отримує масив зразків текстур, які використовуються текстурами, що містяться в glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_textures:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`GLTFTexture<class_GLTFTexture>`\] **get_textures**\ (\ ) :ref:`🔗<class_GLTFState_method_get_textures>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_unique_animation_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **get_unique_animation_names**\ (\ ) :ref:`🔗<class_GLTFState_method_get_unique_animation_names>`

Повертає масив унікальних імен анімації. Використовується тільки при імпорті.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_get_unique_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`String<class_String>`\] **get_unique_names**\ (\ ) :ref:`🔗<class_GLTFState_method_get_unique_names>`

Повертає масив унікальних назв вузлів. Використовується як в процесі імпорту, так і в процесі експорту.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_accessors:

.. rst-class:: classref-method

|void| **set_accessors**\ (\ accessors\: :ref:`Array<class_Array>`\[:ref:`GLTFAccessor<class_GLTFAccessor>`\]\ ) :ref:`🔗<class_GLTFState_method_set_accessors>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFState_method_set_additional_data>`

Встановлює додаткові довільні дані в цьому екземплярі **GLTFState**. Це можна використовувати для збереження даних про стан кожного файлу в класах :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>`, що важливо, оскільки вони не мають стану. 

Першим аргументом має бути ім’я :ref:`GLTFDocumentExtension<class_GLTFDocumentExtension>` (не має збігатися з ім’ям розширення у файлі glTF), а другий аргумент може бути будь-яким.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_animations:

.. rst-class:: classref-method

|void| **set_animations**\ (\ animations\: :ref:`Array<class_Array>`\[:ref:`GLTFAnimation<class_GLTFAnimation>`\]\ ) :ref:`🔗<class_GLTFState_method_set_animations>`

Налаштовує :ref:`GLTFAnimation<class_GLTFAnimation>` в державі. При імпорті, ці будуть створюватися як анімації в вершині :ref:`AnimationPlayer<class_AnimationPlayer>`. При експорті ці будуть створюватися з Godot :ref:`AnimationPlayer<class_AnimationPlayer>` вузлів.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_buffer_views:

.. rst-class:: classref-method

|void| **set_buffer_views**\ (\ buffer_views\: :ref:`Array<class_Array>`\[:ref:`GLTFBufferView<class_GLTFBufferView>`\]\ ) :ref:`🔗<class_GLTFState_method_set_buffer_views>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_cameras:

.. rst-class:: classref-method

|void| **set_cameras**\ (\ cameras\: :ref:`Array<class_Array>`\[:ref:`GLTFCamera<class_GLTFCamera>`\]\ ) :ref:`🔗<class_GLTFState_method_set_cameras>`

Налаштовує :ref:`GLTFCamera<class_GLTFCamera>` в державі. Це камери, які індексом :ref:`GLTFNode.camera<class_GLTFNode_property_camera>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_handle_binary_image:

.. rst-class:: classref-method

|void| **set_handle_binary_image**\ (\ method\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GLTFState_method_set_handle_binary_image>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_images:

.. rst-class:: classref-method

|void| **set_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Texture2D<class_Texture2D>`\]\ ) :ref:`🔗<class_GLTFState_method_set_images>`

Встановлює зображення в державі, що зберігаються в масиві :ref:`Texture2D<class_Texture2D>`\ s. Це можна використовувати при експорті. Це зображення, що індекс :ref:`GLTFTexture.src_image<class_GLTFTexture_property_src_image>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_lights:

.. rst-class:: classref-method

|void| **set_lights**\ (\ lights\: :ref:`Array<class_Array>`\[:ref:`GLTFLight<class_GLTFLight>`\]\ ) :ref:`🔗<class_GLTFState_method_set_lights>`

Налаштовує :ref:`GLTFLight<class_GLTFLight>` в державі. Це світильники, які індекс :ref:`GLTFNode.light<class_GLTFNode_property_light>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_materials:

.. rst-class:: classref-method

|void| **set_materials**\ (\ materials\: :ref:`Array<class_Array>`\[:ref:`Material<class_Material>`\]\ ) :ref:`🔗<class_GLTFState_method_set_materials>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_meshes:

.. rst-class:: classref-method

|void| **set_meshes**\ (\ meshes\: :ref:`Array<class_Array>`\[:ref:`GLTFMesh<class_GLTFMesh>`\]\ ) :ref:`🔗<class_GLTFState_method_set_meshes>`

Встановлює :ref:`GLTFMesh<class_GLTFMesh>` в державі. Це сітки, які індекс :ref:`GLTFNode.mesh<class_GLTFNode_property_mesh>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_nodes:

.. rst-class:: classref-method

|void| **set_nodes**\ (\ nodes\: :ref:`Array<class_Array>`\[:ref:`GLTFNode<class_GLTFNode>`\]\ ) :ref:`🔗<class_GLTFState_method_set_nodes>`

Встановлює :ref:`GLTFNode<class_GLTFNode>` в державі. Це вершини, які :ref:`GLTFNode.children<class_GLTFNode_property_children>` і :ref:`root_nodes<class_GLTFState_property_root_nodes>` відносяться до. Декілька вершин, викладених тут, не може бути утворена в сцені Godot, або може генерувати декілька вузлів сцени Godot.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_skeletons:

.. rst-class:: classref-method

|void| **set_skeletons**\ (\ skeletons\: :ref:`Array<class_Array>`\[:ref:`GLTFSkeleton<class_GLTFSkeleton>`\]\ ) :ref:`🔗<class_GLTFState_method_set_skeletons>`

Встановлюємо :ref:`GLTFSkeleton<class_GLTFSkeleton>` в державі. Це скелети, які індексом :ref:`GLTFNode.skeleton<class_GLTFNode_property_skeleton>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_skins:

.. rst-class:: classref-method

|void| **set_skins**\ (\ skins\: :ref:`Array<class_Array>`\[:ref:`GLTFSkin<class_GLTFSkin>`\]\ ) :ref:`🔗<class_GLTFState_method_set_skins>`

Встановлюємо :ref:`GLTFSkin<class_GLTFSkin>` в державі. Це шкури, які індексом :ref:`GLTFNode.skin<class_GLTFNode_property_skin>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_texture_samplers:

.. rst-class:: classref-method

|void| **set_texture_samplers**\ (\ texture_samplers\: :ref:`Array<class_Array>`\[:ref:`GLTFTextureSampler<class_GLTFTextureSampler>`\]\ ) :ref:`🔗<class_GLTFState_method_set_texture_samplers>`

Встановлює масив зразків текстур, які використовуються текстурами, що містяться в glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_textures:

.. rst-class:: classref-method

|void| **set_textures**\ (\ textures\: :ref:`Array<class_Array>`\[:ref:`GLTFTexture<class_GLTFTexture>`\]\ ) :ref:`🔗<class_GLTFState_method_set_textures>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_unique_animation_names:

.. rst-class:: classref-method

|void| **set_unique_animation_names**\ (\ unique_animation_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFState_method_set_unique_animation_names>`

Встановлює унікальні імена анімації в державі. Використовується тільки при імпорті.

.. rst-class:: classref-item-separator

----

.. _class_GLTFState_method_set_unique_names:

.. rst-class:: classref-method

|void| **set_unique_names**\ (\ unique_names\: :ref:`Array<class_Array>`\[:ref:`String<class_String>`\]\ ) :ref:`🔗<class_GLTFState_method_set_unique_names>`

Встановлює унікальні імена вузлів в державі. Використовується як в процесі імпорту, так і в процесі експорту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
