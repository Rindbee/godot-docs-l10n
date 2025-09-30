:github_url: hide

.. _class_EditorSceneFormatImporterBlend:

EditorSceneFormatImporterBlend
==============================

**Успадковує:** :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпортер для Blender ``.blend`` формат сцени.

.. rst-class:: classref-introduction-group

Опис
--------

Імпортує сцени Blender у форматі файлу ``.blend`` через конвеєр 3D-імпорту glTF 2.0. Цей імпортер вимагає, щоб користувач встановив Blender, щоб його можна було використовувати для експорту сцени як glTF 2.0.

Розташування бінарного файлу Blender встановлюється за допомогою налаштування :ref:`EditorSettings.filesystem/import/blender/blender_path<class_EditorSettings_property_filesystem/import/blender/blender_path>`.

Цей імпортер використовується лише якщо ввімкнено :ref:`ProjectSettings.filesystem/import/blender/enabled<class_ProjectSettings_property_filesystem/import/blender/enabled>`, інакше файли ``.blend``, присутні в папці проекту, не імпортуються.

Імпорт Blend вимагає Blender 3.0.

Внутрішньо EditorSceneFormatImporterBlend використовує режим Blender glTF "Використовувати оригінал" для посилання на зовнішні текстури.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
