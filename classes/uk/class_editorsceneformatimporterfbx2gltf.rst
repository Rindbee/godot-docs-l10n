:github_url: hide

.. _class_EditorSceneFormatImporterFBX2GLTF:

EditorSceneFormatImporterFBX2GLTF
=================================

**Успадковує:** :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпортер для ``.fbx`` формат сценарію.

.. rst-class:: classref-introduction-group

Опис
--------

Імпорти Autodesk FBX 3D сцени шляхом перетворення їх на glTF 2.0 за допомогою інструмента командного рядка FBX2glTF.

Місце розташування FBX2glTF бінарний встановлюється через :ref:`ProjectSettings.filesystem/import/fbx/fbx2gltf_path<class_ProjectSettings_property_filesystem/import/fbx/fbx2gltf_path>` редактор налаштування.

Цей імпортер використовується лише в тому випадку, якщо :ref:`ProjectSettings.filesystem/import/fbx2gltf/enabled<class_ProjectSettings_property_filesystem/import/fbx2gltf/enabled>` встановлюється на ``true``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
