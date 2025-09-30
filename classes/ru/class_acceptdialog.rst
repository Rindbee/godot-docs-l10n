:github_url: hide

.. _class_AcceptDialog:

AcceptDialog
============

**Наследует:** :ref:`Window<class_Window>` **<** :ref:`Viewport<class_Viewport>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`ConfirmationDialog<class_ConfirmationDialog>`

Базовый диалог, используемый для уведомления пользователя.

.. rst-class:: classref-introduction-group

Описание
----------------

Использование **AcceptDialog** по умолчанию — разрешить только принять или закрыть его, с тем же результатом. Однако сигналы :ref:`confirmed<class_AcceptDialog_signal_confirmed>` и :ref:`canceled<class_AcceptDialog_signal_canceled>` позволяют сделать эти два действия разными, а метод :ref:`add_button()<class_AcceptDialog_method_add_button>` позволяет добавлять пользовательские кнопки и действия.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_autowrap<class_AcceptDialog_property_dialog_autowrap>`               | ``false``                                                                    |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_close_on_escape<class_AcceptDialog_property_dialog_close_on_escape>` | ``true``                                                                     |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`dialog_hide_on_ok<class_AcceptDialog_property_dialog_hide_on_ok>`           | ``true``                                                                     |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`dialog_text<class_AcceptDialog_property_dialog_text>`                       | ``""``                                                                       |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | exclusive                                                                         | ``true`` (overrides :ref:`Window<class_Window_property_exclusive>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | keep_title_visible                                                                | ``true`` (overrides :ref:`Window<class_Window_property_keep_title_visible>`) |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | maximize_disabled                                                                 | ``true`` (overrides :ref:`Window<class_Window_property_maximize_disabled>`)  |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | minimize_disabled                                                                 | ``true`` (overrides :ref:`Window<class_Window_property_minimize_disabled>`)  |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`ok_button_text<class_AcceptDialog_property_ok_button_text>`                 | ``""``                                                                       |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | title                                                                             | ``"Alert!"`` (overrides :ref:`Window<class_Window_property_title>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | transient                                                                         | ``true`` (overrides :ref:`Window<class_Window_property_transient>`)          |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | visible                                                                           | ``false`` (overrides :ref:`Window<class_Window_property_visible>`)           |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | wrap_controls                                                                     | ``true`` (overrides :ref:`Window<class_Window_property_wrap_controls>`)      |
   +-----------------------------+-----------------------------------------------------------------------------------+------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`add_button<class_AcceptDialog_method_add_button>`\ (\ text\: :ref:`String<class_String>`, right\: :ref:`bool<class_bool>` = false, action\: :ref:`String<class_String>` = ""\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`add_cancel_button<class_AcceptDialog_method_add_cancel_button>`\ (\ name\: :ref:`String<class_String>`\ )                                                                       |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Label<class_Label>`   | :ref:`get_label<class_AcceptDialog_method_get_label>`\ (\ )                                                                                                                           |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Button<class_Button>` | :ref:`get_ok_button<class_AcceptDialog_method_get_ok_button>`\ (\ )                                                                                                                   |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`register_text_enter<class_AcceptDialog_method_register_text_enter>`\ (\ line_edit\: :ref:`LineEdit<class_LineEdit>`\ )                                                          |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`remove_button<class_AcceptDialog_method_remove_button>`\ (\ button\: :ref:`Button<class_Button>`\ )                                                                             |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_min_height<class_AcceptDialog_theme_constant_buttons_min_height>` | ``0``  |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_min_width<class_AcceptDialog_theme_constant_buttons_min_width>`   | ``0``  |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`           | :ref:`buttons_separation<class_AcceptDialog_theme_constant_buttons_separation>` | ``10`` |
   +---------------------------------+---------------------------------------------------------------------------------+--------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`panel<class_AcceptDialog_theme_style_panel>`                              |        |
   +---------------------------------+---------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_AcceptDialog_signal_canceled:

.. rst-class:: classref-signal

**canceled**\ (\ ) :ref:`🔗<class_AcceptDialog_signal_canceled>`

Вызывается при закрытии диалогового окна или нажатии кнопки, созданной с помощью :ref:`add_cancel_button()<class_AcceptDialog_method_add_cancel_button>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_signal_confirmed:

.. rst-class:: classref-signal

**confirmed**\ (\ ) :ref:`🔗<class_AcceptDialog_signal_confirmed>`

Излучается при принятии диалога, т.е. когда нажата кнопка OK.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_signal_custom_action:

.. rst-class:: classref-signal

**custom_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_AcceptDialog_signal_custom_action>`

Генерируется при нажатии пользовательской кнопки с действием. См. :ref:`add_button()<class_AcceptDialog_method_add_button>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AcceptDialog_property_dialog_autowrap:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_autowrap** = ``false`` :ref:`🔗<class_AcceptDialog_property_dialog_autowrap>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_autowrap**\ (\ )

Устанавливает автоматический перенос текста в диалоге.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_close_on_escape:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_close_on_escape** = ``true`` :ref:`🔗<class_AcceptDialog_property_dialog_close_on_escape>`

.. rst-class:: classref-property-setget

- |void| **set_close_on_escape**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_close_on_escape**\ (\ )

Если ``true``, диалоговое окно будет скрыто при нажатии действия ``ui_cancel`` (по умолчанию это действие привязано к :ref:`@GlobalScope.KEY_ESCAPE<class_@GlobalScope_constant_KEY_ESCAPE>`).

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_hide_on_ok:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **dialog_hide_on_ok** = ``true`` :ref:`🔗<class_AcceptDialog_property_dialog_hide_on_ok>`

.. rst-class:: classref-property-setget

- |void| **set_hide_on_ok**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_hide_on_ok**\ (\ )

Если ``true``, диалоговое окно будет скрыто при нажатии кнопки OK. Вы можете установить значение в ``false`` если хотите, например, сделать проверку ввода при получении сигнала :ref:`confirmed<class_AcceptDialog_signal_confirmed>`, и обработать сокрытие диалога в своей собственной логике.

\ **Примечание:** Некоторые узлы, производные от этого класса, могут иметь другое значение по умолчанию, и потенциально их собственная встроенная логика переопределяет этот параметр. Например, :ref:`FileDialog<class_FileDialog>` имеет значение по умолчанию ``false`` и собственный код проверки ввода, который вызывается при нажатии кнопки OK, который в конечном итоге скрывает диалог, если ввод является допустимым. Как таковое, это свойство не может быть использовано в :ref:`FileDialog<class_FileDialog>` для отключения скрытия диалога при нажатии OK.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_dialog_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **dialog_text** = ``""`` :ref:`🔗<class_AcceptDialog_property_dialog_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Текст, отображаемый в диалоговом окне.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_property_ok_button_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **ok_button_text** = ``""`` :ref:`🔗<class_AcceptDialog_property_ok_button_text>`

.. rst-class:: classref-property-setget

- |void| **set_ok_button_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ok_button_text**\ (\ )

Текст, отображаемый кнопкой OK (см. :ref:`get_ok_button()<class_AcceptDialog_method_get_ok_button>`). Если пусто, будет использован текст по умолчанию.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AcceptDialog_method_add_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **add_button**\ (\ text\: :ref:`String<class_String>`, right\: :ref:`bool<class_bool>` = false, action\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_AcceptDialog_method_add_button>`

Добавляет кнопку с меткой ``text`` и настраиваемым параметром ``action`` в диалоговое окно и возвращает созданную кнопку.

Если ``action`` не пуст, нажатие кнопки сгенерирует сигнал :ref:`custom_action<class_AcceptDialog_signal_custom_action>` с указанной строкой действия.

Если ``true``, ``right`` разместит кнопку справа от всех родственных кнопок.

Вы можете использовать метод :ref:`remove_button()<class_AcceptDialog_method_remove_button>` для удаления кнопки, созданной с помощью этого метода, из диалогового окна.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_add_cancel_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **add_cancel_button**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_AcceptDialog_method_add_cancel_button>`

Добавляет кнопку с меткой ``name`` и действие отмены в диалоговое окно и возвращает созданную кнопку.

Вы можете использовать метод :ref:`remove_button()<class_AcceptDialog_method_remove_button>`, чтобы удалить кнопку, созданную с помощью этого метода, из диалогового окна.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_get_label:

.. rst-class:: classref-method

:ref:`Label<class_Label>` **get_label**\ (\ ) :ref:`🔗<class_AcceptDialog_method_get_label>`

Возвращает метку, используемую для встроенного текста.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите скрыть его или любой из его дочерних элементов, используйте их свойство :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_get_ok_button:

.. rst-class:: classref-method

:ref:`Button<class_Button>` **get_ok_button**\ (\ ) :ref:`🔗<class_AcceptDialog_method_get_ok_button>`

Возвращает экземпляр кнопки OK :ref:`Button<class_Button>`.

\ **Предупреждение:** Это обязательный внутренний узел, его удаление и освобождение может привести к сбою. Если вы хотите скрыть его или любой из его дочерних элементов, используйте их свойство :ref:`CanvasItem.visible<class_CanvasItem_property_visible>`.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_register_text_enter:

.. rst-class:: classref-method

|void| **register_text_enter**\ (\ line_edit\: :ref:`LineEdit<class_LineEdit>`\ ) :ref:`🔗<class_AcceptDialog_method_register_text_enter>`

Регистрирует :ref:`LineEdit<class_LineEdit>` в диалоге. При нажатии клавиши ввода диалог будет принят.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_method_remove_button:

.. rst-class:: classref-method

|void| **remove_button**\ (\ button\: :ref:`Button<class_Button>`\ ) :ref:`🔗<class_AcceptDialog_method_remove_button>`

Удаляет кнопку ``button`` из диалогового окна. НЕ освобождает ``button``. ``button`` должна быть :ref:`Button<class_Button>`, добавленной с помощью метода :ref:`add_button()<class_AcceptDialog_method_add_button>` или :ref:`add_cancel_button()<class_AcceptDialog_method_add_cancel_button>`. После удаления нажатие ``button`` больше не будет выдавать сигналы :ref:`custom_action<class_AcceptDialog_signal_custom_action>` или :ref:`canceled<class_AcceptDialog_signal_canceled>` этого диалогового окна.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_AcceptDialog_theme_constant_buttons_min_height:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_min_height** = ``0`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_min_height>`

Минимальная высота каждой кнопки в нижнем ряду (например, OK/Отмена) в пикселях. Ее можно увеличить, чтобы кнопки с коротким текстом было легче нажимать/касать.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_constant_buttons_min_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_min_width** = ``0`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_min_width>`

Минимальная ширина каждой кнопки в нижнем ряду (например, OK/Отмена) в пикселях. Ее можно увеличить, чтобы кнопки с коротким текстом было легче нажимать/касать.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_constant_buttons_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **buttons_separation** = ``10`` :ref:`🔗<class_AcceptDialog_theme_constant_buttons_separation>`

Размер вертикального пространства между содержимым диалогового окна и рядом кнопок.

.. rst-class:: classref-item-separator

----

.. _class_AcceptDialog_theme_style_panel:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **panel** :ref:`🔗<class_AcceptDialog_theme_style_panel>`

Панель которая заполняет задний план окна.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
