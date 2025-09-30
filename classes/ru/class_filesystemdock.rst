:github_url: hide

.. _class_FileSystemDock:

FileSystemDock
==============

**Наследует:** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Панель редактора Godot для управления файлами в проекте.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс доступен только в :ref:`EditorPlugin<class_EditorPlugin>` и не может быть инстанцирован. Вы можете получить к нему доступ с помощью :ref:`EditorInterface.get_file_system_dock()<class_EditorInterface_method_get_file_system_dock>`.

Хотя **FileSystemDock** не предоставляет никаких методов для манипуляции файлами, он может прослушивать различные сигналы, связанные с файлами.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_resource_tooltip_plugin<class_FileSystemDock_method_add_resource_tooltip_plugin>`\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ )       |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`navigate_to_path<class_FileSystemDock_method_navigate_to_path>`\ (\ path\: :ref:`String<class_String>`\ )                                                                         |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_resource_tooltip_plugin<class_FileSystemDock_method_remove_resource_tooltip_plugin>`\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_FileSystemDock_signal_display_mode_changed:

.. rst-class:: classref-signal

**display_mode_changed**\ (\ ) :ref:`🔗<class_FileSystemDock_signal_display_mode_changed>`

Выдается, когда пользователь переключает режим отображения файла или режим разделения.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_file_removed:

.. rst-class:: classref-signal

**file_removed**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_file_removed>`

Выдается при удалении указанного ``file``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_files_moved:

.. rst-class:: classref-signal

**files_moved**\ (\ old_file\: :ref:`String<class_String>`, new_file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_files_moved>`

Выдается при перемещении файла из пути ``old_file`` в путь ``new_file``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_color_changed:

.. rst-class:: classref-signal

**folder_color_changed**\ (\ ) :ref:`🔗<class_FileSystemDock_signal_folder_color_changed>`

Издается при изменении цвета папок.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_moved:

.. rst-class:: classref-signal

**folder_moved**\ (\ old_folder\: :ref:`String<class_String>`, new_folder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_folder_moved>`

Выдается при перемещении папки из пути ``old_folder`` в путь ``new_folder``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_removed:

.. rst-class:: classref-signal

**folder_removed**\ (\ folder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_folder_removed>`

Выдается при удалении указанной ``folder``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_inherit:

.. rst-class:: classref-signal

**inherit**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_inherit>`

Выдается при создании новой сцены, которая наследует сцену по пути ``file``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_instantiate:

.. rst-class:: classref-signal

**instantiate**\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileSystemDock_signal_instantiate>`

Генерируется, когда указанные сцены создаются в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_resource_removed:

.. rst-class:: classref-signal

**resource_removed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_FileSystemDock_signal_resource_removed>`

Генерируется при удалении файла внешнего ``resource``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_FileSystemDock_method_add_resource_tooltip_plugin:

.. rst-class:: classref-method

|void| **add_resource_tooltip_plugin**\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) :ref:`🔗<class_FileSystemDock_method_add_resource_tooltip_plugin>`

Регистрирует новый :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_method_navigate_to_path:

.. rst-class:: classref-method

|void| **navigate_to_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_method_navigate_to_path>`

Устанавливает указанный ``path`` как текущий выбранный, гарантируя, что выбранный файл/каталог будет виден.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_method_remove_resource_tooltip_plugin:

.. rst-class:: classref-method

|void| **remove_resource_tooltip_plugin**\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) :ref:`🔗<class_FileSystemDock_method_remove_resource_tooltip_plugin>`

Удаляет :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`. Не выполняется, если плагин не был добавлен ранее.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
