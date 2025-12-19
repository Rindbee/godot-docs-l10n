:github_url: hide

.. _class_EditorSceneFormatImporter:

EditorSceneFormatImporter
=========================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`EditorSceneFormatImporterBlend<class_EditorSceneFormatImporterBlend>`, :ref:`EditorSceneFormatImporterFBX2GLTF<class_EditorSceneFormatImporterFBX2GLTF>`, :ref:`EditorSceneFormatImporterGLTF<class_EditorSceneFormatImporterGLTF>`, :ref:`EditorSceneFormatImporterUFBX<class_EditorSceneFormatImporterUFBX>`

Імпортні сцени з 3D файлів.

.. rst-class:: classref-introduction-group

Опис
--------

**EditorSceneFormatImporter** дозволяє визначити скрипт імпортера для третього формату 3D.

Для використання **EditorSceneFormatImporter**, зареєструйте його за допомогою :ref:`EditorPlugin.add_scene_format_importer_plugin()<class_EditorPlugin_method_add_scene_format_importer_plugin>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_extensions<class_EditorSceneFormatImporter_private_method__get_extensions>`\ (\ ) |virtual| |required| |const|                                                                                                                                                                                                                                                                                          |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_get_import_options<class_EditorSceneFormatImporter_private_method__get_import_options>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`_get_option_visibility<class_EditorSceneFormatImporter_private_method__get_option_visibility>`\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>`                       | :ref:`_import_scene<class_EditorSceneFormatImporter_private_method__import_scene>`\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required|                                                                                                                                                                                    |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_import_option<class_EditorSceneFormatImporter_method_add_import_option>`\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                                                                                                                                |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_import_option_advanced<class_EditorSceneFormatImporter_method_add_import_option_advanced>`\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) |
   +---------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

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

Описи методів
--------------------------

.. _class_EditorSceneFormatImporter_private_method__get_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_extensions**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_extensions>`

Повернути підтримувані розширення файлів для цього імпортера сцен.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_import_options:

.. rst-class:: classref-method

|void| **_get_import_options**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_import_options>`

Перевизначте, щоб додати загальні параметри імпорту. Вони з’являться в головній панелі імпорту в редакторі. Додайте параметри за допомогою :ref:`add_import_option()<class_EditorSceneFormatImporter_method_add_import_option>` і :ref:`add_import_option_advanced()<class_EditorSceneFormatImporter_method_add_import_option_advanced>`.

\ **Примітка.** Усі екземпляри **EditorSceneFormatImporter** і :ref:`EditorScenePostImportPlugin<class_EditorScenePostImportPlugin>` додадуть параметри для всіх файлів. Рекомендується перевіряти розширення файлу, якщо ``path`` не порожній.

Коли користувач редагує параметри проекту, ``path`` буде порожнім. Рекомендується додавати всі параметри, коли ``path`` порожній, щоб дозволити користувачеві налаштувати імпорт за замовчуванням.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__get_option_visibility:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **_get_option_visibility**\ (\ path\: :ref:`String<class_String>`, for_animation\: :ref:`bool<class_bool>`, option\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorSceneFormatImporter_private_method__get_option_visibility>`

Має повернути ``true``, щоб показати заданий параметр, ``false``, щоб приховати вказаний параметр, або ``null``, щоб проігнорувати.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_private_method__import_scene:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_import_scene**\ (\ path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`, options\: :ref:`Dictionary<class_Dictionary>`\ ) |virtual| |required| :ref:`🔗<class_EditorSceneFormatImporter_private_method__import_scene>`

Виконайте основну частину логіки імпорту сцени тут, наприклад, використовуючи :ref:`GLTFDocument<class_GLTFDocument>` або :ref:`FBXDocument<class_FBXDocument>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option:

.. rst-class:: classref-method

|void| **add_import_option**\ (\ name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option>`

Додайте певний параметр імпорту (лише ім’я та значення за замовчуванням). Цю функцію можна викликати лише з :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorSceneFormatImporter_method_add_import_option_advanced:

.. rst-class:: classref-method

|void| **add_import_option_advanced**\ (\ type\: :ref:`Variant.Type<enum_@GlobalScope_Variant.Type>`, name\: :ref:`String<class_String>`, default_value\: :ref:`Variant<class_Variant>`, hint\: :ref:`PropertyHint<enum_@GlobalScope_PropertyHint>` = 0, hint_string\: :ref:`String<class_String>` = "", usage_flags\: :ref:`int<class_int>` = 6\ ) :ref:`🔗<class_EditorSceneFormatImporter_method_add_import_option_advanced>`

Додайте окремий параметр імпорту. Цю функцію можна викликати лише з :ref:`_get_import_options()<class_EditorSceneFormatImporter_private_method__get_import_options>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
