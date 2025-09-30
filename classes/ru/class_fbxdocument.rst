:github_url: hide

.. _class_FBXDocument:

FBXDocument
===========

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`GLTFDocument<class_GLTFDocument>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Обрабатывает документы FBX.

.. rst-class:: classref-introduction-group

Описание
----------------

FBXDocument обрабатывает документы FBX. Он предоставляет методы для добавления данных из буферов или файлов, создания сцен и регистрации/отмены регистрации расширений документов.

При экспорте FBX из Blender используйте параметр «Шкала единиц FBX». Параметр «Шкала единиц FBX» устанавливает правильный коэффициент масштабирования и позволяет избежать ручной настройки при повторном импорте в Blender, например, через экспорт glTF.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
