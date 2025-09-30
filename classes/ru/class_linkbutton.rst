:github_url: hide

.. _class_LinkButton:

LinkButton
==========

**Наследует:** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Кнопка, представляющая ссылку.

.. rst-class:: classref-introduction-group

Описание
----------------

Кнопка, представляющая ссылку. Этот тип кнопки в основном используется для взаимодействий, вызывающих изменение контекста (например, ссылка на веб-страницу).

См. также :ref:`BaseButton<class_BaseButton>`, который содержит общие свойства и методы, связанные с этим узлом.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`FocusMode<enum_Control_FocusMode>`                          | focus_mode                                                                                                    | ``3`` (overrides :ref:`Control<class_Control_property_focus_mode>`)                 |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`language<class_LinkButton_property_language>`                                                           | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`CursorShape<enum_Control_CursorShape>`                      | mouse_default_cursor_shape                                                                                    | ``2`` (overrides :ref:`Control<class_Control_property_mouse_default_cursor_shape>`) |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` | :ref:`structured_text_bidi_override<class_LinkButton_property_structured_text_bidi_override>`                 | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                         | :ref:`structured_text_bidi_override_options<class_LinkButton_property_structured_text_bidi_override_options>` | ``[]``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`text<class_LinkButton_property_text>`                                                                   | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`TextDirection<enum_Control_TextDirection>`                  | :ref:`text_direction<class_LinkButton_property_text_direction>`                                               | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>`               | :ref:`underline<class_LinkButton_property_underline>`                                                         | ``0``                                                                               |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`uri<class_LinkButton_property_uri>`                                                                     | ``""``                                                                              |
   +-------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_LinkButton_theme_color_font_color>`                             | ``Color(0.875, 0.875, 0.875, 1)`` |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_disabled_color<class_LinkButton_theme_color_font_disabled_color>`           | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_focus_color<class_LinkButton_theme_color_font_focus_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``    |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_color<class_LinkButton_theme_color_font_hover_color>`                 | ``Color(0.95, 0.95, 0.95, 1)``    |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_hover_pressed_color<class_LinkButton_theme_color_font_hover_pressed_color>` | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_LinkButton_theme_color_font_outline_color>`             | ``Color(0, 0, 0, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_pressed_color<class_LinkButton_theme_color_font_pressed_color>`             | ``Color(1, 1, 1, 1)``             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_LinkButton_theme_constant_outline_size>`                      | ``0``                             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`underline_spacing<class_LinkButton_theme_constant_underline_spacing>`            | ``2``                             |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_LinkButton_theme_font_font>`                                          |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_LinkButton_theme_font_size_font_size>`                           |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`focus<class_LinkButton_theme_style_focus>`                                       |                                   |
   +---------------------------------+----------------------------------------------------------------------------------------+-----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_LinkButton_UnderlineMode:

.. rst-class:: classref-enumeration

enum **UnderlineMode**: :ref:`🔗<enum_LinkButton_UnderlineMode>`

.. _class_LinkButton_constant_UNDERLINE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_ALWAYS** = ``0``

В нижней части текста LinkButton всегда будет отображаться подчеркивание.

.. _class_LinkButton_constant_UNDERLINE_MODE_ON_HOVER:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_ON_HOVER** = ``1``

При наведении курсора мыши на кнопку LinkButton в нижней части текста отображается подчеркивание.

.. _class_LinkButton_constant_UNDERLINE_MODE_NEVER:

.. rst-class:: classref-enumeration-constant

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **UNDERLINE_MODE_NEVER** = ``2``

LinkButton никогда не будет отображать подчеркивание в нижней части текста.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_LinkButton_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_LinkButton_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Код языка, используемый для алгоритмов переноса строк и формирования текста. Если оставить его пустым, вместо него будет использоваться текущая локаль (место действия).

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_LinkButton_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Установите переопределение алгоритма BiDi для структурированного текста.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_LinkButton_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Установите дополнительные параметры для переопределения BiDi.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_LinkButton_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Текст кнопки, который будет отображаться внутри области кнопки.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_text_direction:

.. rst-class:: classref-property

:ref:`TextDirection<enum_Control_TextDirection>` **text_direction** = ``0`` :ref:`🔗<class_LinkButton_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`TextDirection<enum_Control_TextDirection>`\ )
- :ref:`TextDirection<enum_Control_TextDirection>` **get_text_direction**\ (\ )

Направление написания базового текста.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_underline:

.. rst-class:: classref-property

:ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **underline** = ``0`` :ref:`🔗<class_LinkButton_property_underline>`

.. rst-class:: classref-property-setget

- |void| **set_underline_mode**\ (\ value\: :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>`\ )
- :ref:`UnderlineMode<enum_LinkButton_UnderlineMode>` **get_underline_mode**\ (\ )

Режим подчеркивания текста.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_property_uri:

.. rst-class:: classref-property

:ref:`String<class_String>` **uri** = ``""`` :ref:`🔗<class_LinkButton_property_uri>`

.. rst-class:: classref-property-setget

- |void| **set_uri**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_uri**\ (\ )

`URI <https://en.wikipedia.org/wiki/Uniform_Resource_Identifier>`__ для этой **LinkButton**. Если задан допустимый URI, нажатие кнопки открывает URI с использованием программы операционной системы по умолчанию для протокола (через :ref:`OS.shell_open()<class_OS_method_shell_open>`). URL-адреса HTTP и HTTPS открывают веб-браузер по умолчанию.


.. tabs::

 .. code-tab:: gdscript

    uri = "https://godotengine.org"  # Открывает URL-адрес в веб-браузере по умолчанию.
    uri = "C:\SomeFolder"  # Открывает проводник по указанному пути.
    uri = "C:\SomeImage.png"  # Открывает указанное изображение в приложении для просмотра по умолчанию.

 .. code-tab:: csharp

    Uri = "https://godotengine.org"; // Открывает URL-адрес в веб-браузере по умолчанию.
    Uri = "C:\SomeFolder"; // Открывает проводник по указанному пути.
    Uri = "C:\SomeImage.png"; // Открывает указанное изображение в приложении для просмотра по умолчанию.



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_LinkButton_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.875, 0.875, 0.875, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_color>`

:ref:`Color<class_Color>` Текст по умолчанию для **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_disabled_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_disabled_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_disabled_color>`

``Color ``\ Текст , используемый, когда **LinkButton** отключен.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_focus_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_focus_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_focus_color>`

:ref:`Color<class_Color>` текста , используемый, когда **LinkButton** находится в фокусе. Заменяет только обычный цвет текста кнопки. Отключенные, наведенные и нажатые состояния имеют приоритет над этим цветом.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_hover_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_hover_color>`

:ref:`Color<class_Color>` текста , используемый при наведении курсора на **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_hover_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_hover_pressed_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_hover_pressed_color>`

:ref:`Color<class_Color>` текста, используемый при наведении и нажатии на **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_outline_color>`

Оттенок контура текста **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_color_font_pressed_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_pressed_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LinkButton_theme_color_font_pressed_color>`

:ref:`Color<class_Color>` текста, используемый при нажатии **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_LinkButton_theme_constant_outline_size>`

Размер контура текста.

\ **Примечание:** При использовании шрифта с включенным :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` его :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` должен быть установлен как минимум в *дважды* значения :ref:`outline_size<class_LinkButton_theme_constant_outline_size>`, чтобы контур выглядел правильно. В противном случае контур может оказаться обрезанным раньше, чем предполагалось.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_constant_underline_spacing:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **underline_spacing** = ``2`` :ref:`🔗<class_LinkButton_theme_constant_underline_spacing>`

Вертикальное пространство между базовой линией текста и подчеркиванием.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_LinkButton_theme_font_font>`

:ref:`Font<class_Font>` текста **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_LinkButton_theme_font_size_font_size>`

Размер шрифта текста **LinkButton**.

.. rst-class:: classref-item-separator

----

.. _class_LinkButton_theme_style_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **focus** :ref:`🔗<class_LinkButton_theme_style_focus>`

:ref:`StyleBox<class_StyleBox>` используется, когда **LinkButton** находится в фокусе. ``Theme_item focus`` :ref:`StyleBox<class_StyleBox>` отображается *над* базовым :ref:`StyleBox<class_StyleBox>`, поэтому следует использовать частично прозрачный :ref:`StyleBox<class_StyleBox>`, чтобы базовый :ref:`StyleBox<class_StyleBox>` оставался видимым. :ref:`StyleBox<class_StyleBox>`, представляющий контур или подчеркивание, хорошо подходит для этой цели. Чтобы отключить визуальный эффект фокуса, назначьте ресурс :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Обратите внимание, что отключение визуального эффекта фокуса навредит удобству использования навигации с помощью клавиатуры/контроллера, поэтому это не рекомендуется по соображениям доступности.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
