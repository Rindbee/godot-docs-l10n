:github_url: hide

.. _class_EditorSceneFormatImporter:

EditorSceneFormatImporter
=========================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`EditorSceneFormatImporterBlend<class_EditorSceneFormatImporterBlend>`, :ref:`EditorSceneFormatImporterFBX2GLTF<class_EditorSceneFormatImporterFBX2GLTF>`, :ref:`EditorSceneFormatImporterGLTF<class_EditorSceneFormatImporterGLTF>`, :ref:`EditorSceneFormatImporterUFBX<class_EditorSceneFormatImporterUFBX>`

Importa escenas de archivos 3D de terceros.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**EditorSceneFormatImporter** allows to define an importer script for a third-party 3D format.

To use **EditorSceneFormatImporter**, register it using the :ref:`EditorPlugin.add_scene_format_importer_plugin()<class_EditorPlugin_method_add_scene_format_importer_plugin>` method first.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_extensions<class_EditorSceneFormatImporter_private_method__get_extensions>`\ (\ ) |virtual| |const|                                                                                                                                                                                                                                                                                                     |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_get_import_options<class_EditorSceneFormatImporter_private_method__get_import_options>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_get_option_visibility<class_EditorSceneFormatImporter_private_method__get_option_visibility>`\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                       | :ref:`_import_scene<class_EditorSceneFormatImporter_private_method__import_scene>`\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual|                                                                                                                                                                                               |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_import_option<class_EditorSceneFormatImporter_method_add_import_option>`\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_import_option_advanced<class_EditorSceneFormatImporter_method_add_import_option_advanced>`\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_EditorSceneFormatImporter_constant_IMPORT_SCENE:

.. rst-class:: classref-constant

**IMPORT_SCENE** = ``1`` :ref:`🔗<class_EditorSceneFormatImporter_constant_IMPORT_SCENE>`

.. container:: contribute

	There is currently no description for this constant. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorSceneFormatImporter_constant_IMPORT_ANIMATION:

.. rst-class:: classref-constant

**IMPORT_ANIMATION** = ``2`` :ref:`🔗<class_EditorSceneFormatImporter_constant_IMPORT_ANIMATION>`

.. container:: contribute

	There is currently no description for this constant. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorSceneFormatImporter_constant_IMPORT_FAIL_ON_MISSING_DEPENDENCIES:

.. rst-class:: classref-constant

**IMPORT_FAIL_ON_MISSING_DEPENDENCIES** = ``4`` :ref:`🔗<class_EditorSceneFormatImporter_constant_IMPORT_FAIL_ON_MISSING_DEPENDENCIES>`

.. container:: contribute

	There is currently no description for this constant. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorSceneFormatImporter_constant_IMPORT_GENERATE_TANGENT_ARRAYS:

.. rst-class:: classref-constant

**IMPORT_GENERATE_TANGENT_ARRAYS** = ``8`` :ref:`🔗<class_EditorSceneFormatImporter_constant_IMPORT_GENERATE_TANGENT_ARRAYS>`

.. container:: contribute

	There is currently no description for this constant. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorSceneFormatImporter_constant_IMPORT_USE_NAMED_SKIN_BINDS:

.. rst-class:: classref-constant

**IMPORT_USE_NAMED_SKIN_BINDS** = ``16`` :ref:`🔗<class_EditorSceneFormatImporter_constant_IMPORT_USE_NAMED_SKIN_BINDS>`

.. container:: contribute

	There is currently no description for this constant. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorSceneFormatImporter_constant_IMPORT_DISCARD_MESHES_AND_MATERIALS:

.. rst-class:: classref-constant

**IMPORT_DISCARD_MESHES_AND_MATERIALS** = ``32`` :ref:`🔗<class_EditorSceneFormatImporter_constant_IMPORT_DISCARD_MESHES_AND_MATERIALS>`

.. container:: contribute

	There is currently no description for this constant. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_EditorSceneFormatImporter_constant_IMPORT_FORCE_DISABLE_MESH_COMPRESSION:

.. rst-class:: classref-constant

**IMPORT_FORCE_DISABLE_MESH_COMPRESSION** = ``64`` :ref:`🔗<class_EditorSceneFormatImporter_constant_IMPORT_FORCE_DISABLE_MESH_COMPRESSION>`

.. container:: contribute

	There is currently no description for this constant. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_EditorSceneFormatImporter_private_method__get_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_extensions>`

Devuelve las extensiones de archivo admitidas para este importador de escena.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_import_options>`

Override to add general import options. These will appear in the main import dock on the editor. Add options via :ref:`add_import_option()<class_EditorSceneFormatImporter_method_add_import_option>` and :ref:`add_import_option_advanced()<class_EditorSceneFormatImporter_method_add_import_option_advanced>`.

\ **Note:** All **EditorSceneFormatImporter** and :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>` instances will add options for all files. It is good practice to check the file extension when ``path`` is non-empty.

When the user is editing project settings, ``path`` will be empty. It is recommended to add all options when ``path`` is empty to allow the user to customize Import Defaults.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_option_visibility>`

Should return ``true`` to show the given option, ``false`` to hide the given option, or ``null`` to ignore.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__import_scene:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_import_scene**\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| :ref:`🔗<class_EditorSceneFormatImporter_private_method__import_scene>`

Perform the bulk of the scene import logic here, for example using :ref:`GLTFDocument<class_GLTFDocument>` or :ref:`FBXDocument<class_FBXDocument>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option>`

Add a specific import option (name and default value only). This function can only be called from :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option_advanced>`

Add a specific import option. This function can only be called from :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
