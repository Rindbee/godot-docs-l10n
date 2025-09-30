:github_url: hide

.. _class_EditorContextMenuPlugin:

EditorContextMenuPlugin
=======================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Плагін для додавання власних контекстних меню в редакторі.

.. rst-class:: classref-introduction-group

Опис
--------

**EditorContextMenuPlugin** дозволяє додавати спеціальні параметри в контекстне меню редактора.

Наразі контекстні меню підтримуються для трьох часто використовуваних областей: файлової системи, дерева сцен і панелі списку сценаріїв редактора.

.. rst-class:: classref-reftable-group

Методи
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

Переліки
----------------

.. _enum_EditorContextMenuPlugin_ContextMenuSlot:

.. rst-class:: classref-enumeration

enum **ContextMenuSlot**: :ref:`🔗<enum_EditorContextMenuPlugin_ContextMenuSlot>`

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TREE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TREE** = ``0``

Контекстне меню док-станції Scene. Буде викликано :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` зі списком шляхів до поточних вибраних вузлів, тоді як зворотний виклик опції отримає список поточних вибраних вузлів.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM** = ``1``

Контекстне меню дока файлової системи. Буде викликано :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` та опцію зворотного виклику зі списком шляхів до вибраних файлів.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR** = ``2``

Контекстне меню вкладок сценаріїв редактора сценаріїв. Буде викликано :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` із шляхом до поточного редагованого сценарію, тоді як зворотний виклик опції отримає посилання на цей сценарій.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_FILESYSTEM_CREATE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_FILESYSTEM_CREATE** = ``3``

Підменю "Створити..." контекстного меню дока файлової системи або розділ "Нове" головного контекстного меню після натискання на порожнє місце. Буде викликано :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` та опцію зворотного виклику зі шляхом до поточної вибраної папки. Після натискання на порожнє місце список шляхів для методу popup буде порожнім.

::

    func _popup_menu(paths):
        if paths.is_empty():
            add_context_menu_item("New Image File...", create_image)
        else:
            add_context_menu_item("Image File...", create_image)

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCRIPT_EDITOR_CODE:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCRIPT_EDITOR_CODE** = ``4``

Контекстне меню редактора коду редактора скриптів Script Editor. Буде викликано :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` із шляхом до вузла :ref:`CodeEdit<class_CodeEdit>`. Ви можете отримати його за допомогою цього коду:

::

    func _popup_menu(paths):
        var code_edit = Engine.get_main_loop().root.get_node(paths[0]);

Зворотний виклик опції отримає посилання на цей вузол. Ви можете використовувати методи :ref:`CodeEdit<class_CodeEdit>` для пошуку символів тощо.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_SCENE_TABS:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_SCENE_TABS** = ``5``

Контекстне меню вкладок сцени. :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` буде викликано з шляхом до клацнутої сцени, або порожнім :ref:`PackedStringArray<class_PackedStringArray>`, якщо меню було відкрито на порожньому місці. Зворотний виклик опції отримає шлях до клацнутої сцени або порожній :ref:`String<class_String>`, якщо не було клацання.

.. _class_EditorContextMenuPlugin_constant_CONTEXT_SLOT_2D_EDITOR:

.. rst-class:: classref-enumeration-constant

:ref:`ContextMenuSlot<enum_EditorContextMenuPlugin_ContextMenuSlot>` **CONTEXT_SLOT_2D_EDITOR** = ``6``

Контекстне меню основного контекстного меню правої кнопки миші 2D-редактора. Буде викликано :ref:`_popup_menu()<class_EditorContextMenuPlugin_private_method__popup_menu>` зі шляхами до всіх вузлів :ref:`CanvasItem<class_CanvasItem>` під курсором. Ви можете отримати їх за допомогою цього коду:

::

    func _popup_menu(paths):
        var canvas_item = Engine.get_main_loop().root.get_node(paths[0]); # Замініть 0 на потрібний індекс.

Масив paths порожній, якщо під курсором не було жодної вершини. Зворотний виклик опції отримає типізований масив вузлів :ref:`CanvasItem<class_CanvasItem>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorContextMenuPlugin_private_method__popup_menu:

.. rst-class:: classref-method

|void| **_popup_menu**\ (\ paths\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) |virtual| :ref:`🔗<class_EditorContextMenuPlugin_private_method__popup_menu>`

Спеціальні параметри, що викликаються під час створення контекстного меню, можна додати за допомогою функцій :ref:`add_context_menu_item()<class_EditorContextMenuPlugin_method_add_context_menu_item>` або :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`. ``paths`` містить поточні вибрані шляхи (залежно від меню), які можна використовувати для умовного додавання параметрів.

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item:

.. rst-class:: classref-method

|void| **add_context_menu_item**\ (\ name\: :ref:`String<class_String>`, callback\: :ref:`Callable<class_Callable>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item>`

Додайте спеціальний параметр до контекстного меню зазначеного слота плагіна. Коли опцію активовано, буде викликано ``callback``. Зворотний виклик повинен приймати один аргумент :ref:`Array<class_Array>`; вміст масиву залежить від слота контекстного меню. 

::
 
    func _popup_menu(path): 
        add_context_menu_item("File Custom options", handle, ICON)  

Якщо ви хочете призначити ярлик для пункту меню, замість цього використовуйте :ref:`add_context_menu_item_from_shortcut()<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`.

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut:

.. rst-class:: classref-method

|void| **add_context_menu_item_from_shortcut**\ (\ name\: :ref:`String<class_String>`, shortcut\: :ref:`Shortcut<class_Shortcut>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_menu_item_from_shortcut>`

Додайте спеціальну опцію в контекстне меню зазначеного слота плагіна. Параметру буде призначено ``shortcut`` і повторно використовуватиметься зворотний виклик. Ярлик потрібно попередньо зареєструвати за допомогою :ref:`add_menu_shortcut()<class_EditorContextMenuPlugin_method_add_menu_shortcut>`.

::

    func _init():
    add_menu_shortcut(SHORTCUT, marker)

    func _popup_menu(paths):
    add_context_menu_item_from_shortcut("File Custom options", SHORTCUT, ICON)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_context_submenu_item:

.. rst-class:: classref-method

|void| **add_context_submenu_item**\ (\ name\: :ref:`String<class_String>`, menu\: :ref:`PopupMenu<class_PopupMenu>`, icon\: :ref:`Texture2D<class_Texture2D>` = null\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_context_submenu_item>`

Додайте підменю до контекстного меню зазначеного слота плагіна. Підменю не обробляється автоматично, вам потрібно самостійно підключитися до його сигналів. Крім того, підменю звільняється при кожному спливаючому вікні, тому створюйте нове :ref:`PopupMenu<class_PopupMenu>` щоразу.

::

    func _popup_menu(paths):
    var popup_menu = PopupMenu.new()
    popup_menu.add_item("Blue")
    popup_menu.add_item("While")
    popup_menu.id_pressed.connect(_on_color_submenu_option)

    add_context_submenu_item("Set Node Color node", popup_menu)

.. rst-class:: classref-item-separator

----

.. _class_EditorContextMenuPlugin_method_add_menu_shortcut:

.. rst-class:: classref-method

|void| **add_menu_shortcut**\ (\ shortcut\: :ref:`Shortcut<class_Shortcut>`, callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_EditorContextMenuPlugin_method_add_menu_shortcut>`

Реєструє ярлик, пов’язаний із контекстним меню плагіна. Цей метод слід викликати один раз (наприклад, у плагіні :ref:`Object._init()<class_Object_private_method__init>`). ``callback`` буде викликано, коли користувач натискає вказаний ``shortcut`` під час дії контексту меню (наприклад, у фокусі док-станція FileSystem). Зворотний виклик повинен приймати один аргумент :ref:`Array<class_Array>`; вміст масиву залежить від слота контекстного меню.

::

    func _init():
    add_menu_shortcut(SHORTCUT, marker)

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
