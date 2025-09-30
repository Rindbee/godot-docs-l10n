:github_url: hide

.. _class_EditorContextMenuPlugin:

EditorContextMenuPlugin
=======================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Плагин для добавления пользовательских контекстных меню в редакторе.

.. rst-class:: classref-introduction-group

Описание
----------------

**EditorContextMenuPlugin** позволяет добавлять пользовательские параметры в контекстное меню редактора.

В настоящее время контекстные меню поддерживаются для трех часто используемых областей: файловая система, дерево сцен и панель списка скриптов редактора.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_popup_menu<class_EditorContextMenuPlugin_private_method__popup_menu>`\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual|                                                                                                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_context_menu_item<class_EditorContextMenuPlugin_method_add_context_menu_item>`\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ )                             |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_context_menu_item_from_shortcut<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`\ (\ name\: :ref:`String<class_String>`, shortcut\: :ref:`Shortcut<class_Shortcut>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_context_submenu_item<class_EditorContextMenuPlugin_method_add_context_submenu_item>`\ (\ name\: :ref:`String<class_String>`, menu\: :ref:`PopupMenu<class_PopupMenu>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ )                         |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_menu_shortcut<class_EditorContextMenuPlugin_method_add_menu_shortcut>`\ (\ shortcut\: :ref:`Shortcut<class_Shortcut>`, callback\: :ref:`Callable<class_Callable>`\ )                                                                              |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_EditorContextMenuPlugin_ContextMenuSlot:

.. rst-class:: classref-enumeration

enum **ContextMenuSlot**: :ref:`🔗<enum_EditorContextMenuPlugin_ContextMenuSlot>`

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TREE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TREE** = ``0``

Контекстное меню панели сцен. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` будет вызван со списком путей к текущим выбранным узлам, в то время как опция обратного вызова получит список текущих выбранных узлов.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM** = ``1``

Контекстное меню дока FileSystem. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` и опция обратного вызова будут вызваны со списком путей к текущим выбранным файлам.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR** = ``2``

Контекстное меню вкладок скриптов редактора скриптов. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` будет вызван с указанием пути к текущему редактируемому скрипту, в то время как опция обратного вызова получит ссылку на этот скрипт.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM_CREATE** = ``3``

Подменю "Создать..." контекстного меню дока файловой системы или раздел "Новый" главного контекстного меню при щелчке по пустому месту. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` и функция обратного вызова option будут вызваны с указанием пути к текущей выбранной папке. При щелчке по пустому месту список путей для метода popup будет пустым.

::

    func _popup_menu(paths):
        if paths.is_empty():
            add_context_menu_item("New Image File...", create_image)
        else:
            add_context_menu_item("Image File...", create_image)

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR_CODE** = ``4``

Контекстное меню редактора кода Script editor. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` будет вызван с путем к узлу :ref:`CodeEdit<class_CodeEdit>`. Вы можете получить его с помощью этого кода:

::

    func _popup_menu(paths):
        var code_edit = Engine.get_main_loop().root.get_node(paths[0]);

Обратный вызов опции получит ссылку на этот узел. Вы можете использовать методы :ref:`CodeEdit<class_CodeEdit>` для выполнения поиска символов и т. д.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TABS:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TABS** = ``5``

Контекстное меню вкладок сцен. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` будет вызван с путем к выбранной сцене или пустым :ref:`PackedStringArray<class_PackedStringArray>`, если меню было открыто на пустом месте. Обратный вызов опции получит путь к выбранной сцене или пустую :ref:`String<class_String>`, если ни одна из сцен не была выбрана.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_2D_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_2D_EDITOR** = ``6``

Контекстное меню основного меню правой кнопки мыши 2D-редактора. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` будет вызван с путями ко всем узлам :ref:`CanvasItem<class_CanvasItem>` под курсором. Вы можете получить их с помощью этого кода:

::

    func _popup_menu(paths):
        var canvas_item = Engine.get_main_loop().root.get_node(paths[0]); # Replace 0 with the desired index.

Массив paths пуст, если под курсором нет узлов. Обратный вызов опции получит типизированный массив узлов :ref:`CanvasItem<class_CanvasItem>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_EditorContextMenuPlugin_private_method__popup_menu:

.. rst-class:: classref-method

|void| **_popup_menu**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_EditorContextMenuPlugin_private_method__popup_menu>`

Вызывается при создании контекстного меню, пользовательские параметры можно добавлять с помощью функций :ref:`add_context_menu_item()<class_EditorContextMenuPlugin_method_add_context_menu_item>` или :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`. ``paths`` содержит текущие выбранные пути (в зависимости от меню), которые можно использовать для условного добавления параметров.

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item:

.. rst-class:: classref-method

|void| **add_context_menu_item**\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item>`

Добавить пользовательскую опцию в контекстное меню указанного слота плагина. Когда опция активирована, будет вызван ``callback``. Обратный вызов должен принимать один аргумент :ref:`Array<class_Array>`; содержимое массива зависит от слота контекстного меню.

::

    func _popup_menu(paths):
        add_context_menu_item("File Custom options", handle, ICON)

Если вы хотите назначить ярлык для пункта меню, используйте вместо этого :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut:

.. rst-class:: classref-method

|void| **add_context_menu_item_from_shortcut**\ (\ name\: :ref:`String<class_String>`, shortcut\: :ref:`Shortcut<class_Shortcut>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`

Добавить пользовательскую опцию в контекстное меню указанного слота плагина. Опции будет назначен ``shortcut`` и повторно использовать ее обратный вызов. Сочетание клавиш должно быть предварительно зарегистрировано с помощью :ref:`add_menu_shortcut()<class_EditorContextMenuPlugin_method_add_menu_shortcut>`.

::

    func _init():
        add_menu_shortcut(SHORTCUT, handle)

    func _popup_menu(paths):
        add_context_menu_item_from_shortcut("File Custom options", SHORTCUT, ICON)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_submenu_item:

.. rst-class:: classref-method

|void| **add_context_submenu_item**\ (\ name\: :ref:`String<class_String>`, menu\: :ref:`PopupMenu<class_PopupMenu>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_submenu_item>`

Добавить подменю в контекстное меню указанного слота плагина. Подменю не обрабатывается автоматически, вам нужно подключиться к его сигналам самостоятельно. Также подменю освобождается при каждом всплывающем окне, поэтому каждый раз предоставляйте новый :ref:`PopupMenu<class_PopupMenu>`.

::

    func _popup_menu(paths):
        var popup_menu = PopupMenu.new()
        popup_menu.add_item("Blue")
        popup_menu.add_item("White")
        popup_menu.id_pressed.connect(_on_color_submenu_option)

        add_context_submenu_item("Set Node Color", popup_menu)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_menu_shortcut:

.. rst-class:: classref-method

|void| **add_menu_shortcut**\ (\ shortcut\: :ref:`Shortcut<class_Shortcut>`, callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_menu_shortcut>`

Регистрирует ярлык, связанный с контекстным меню плагина. Этот метод должен быть вызван один раз (например, в :ref:`Object._init()<class_Object_private_method__init>` плагина). ``callback`` будет вызван, когда пользователь нажмет указанный ``shortcut``, пока контекст меню активен (например, док FileSystem находится в фокусе). Обратный вызов должен принимать один аргумент :ref:`Array<class_Array>`; содержимое массива зависит от слота контекстного меню.

::

    func _init():
        add_menu_shortcut(SHORTCUT, handle)

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
