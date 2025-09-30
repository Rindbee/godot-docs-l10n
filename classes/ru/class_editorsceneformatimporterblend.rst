:github_url: hide

.. _class_EditorSceneFormatImporterBlend:

EditorSceneFormatImporterBlend
==============================

**Наследует:** :ref:`EditorSceneFormatImporter<class_EditorSceneFormatImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортер для формата файла сцены Blender ``.blend``.

.. rst-class:: classref-introduction-group

Описание
----------------

Импортирует сцены Blender в формате файла ``.blend`` через конвейер импорта 3D glTF 2.0. Этот импортер требует, чтобы Blender был установлен пользователем, чтобы его можно было использовать для экспорта сцены как glTF 2.0.

Расположение двоичного файла Blender задается с помощью настройки :ref:`EditorSettings.filesystem/import/blender/blender_path<class_EditorSettings_property_filesystem/import/blender/blender_path>`.

Этот импортер используется только в том случае, если включен параметр :ref:`ProjectSettings.filesystem/import/blender/enabled<class_ProjectSettings_property_filesystem/import/blender/enabled>`, в противном случае файлы ``.blend``, присутствующие в папке проекта, не импортируются.

Импорт Blend требует Blender 3.0.

Внутри EditorSceneFormatImporterBlend использует режим Blender glTF «Использовать оригинал» для ссылки на внешние текстуры.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
