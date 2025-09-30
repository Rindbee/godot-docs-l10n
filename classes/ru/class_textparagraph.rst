:github_url: hide

.. _class_TextParagraph:

TextParagraph
=============

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Содержит абзац текста.

.. rst-class:: classref-introduction-group

Описание
----------------

Абстракция над :ref:`TextServer<class_TextServer>` для обработки одного абзаца текста.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`alignment<class_TextParagraph_property_alignment>`                         | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]         | :ref:`break_flags<class_TextParagraph_property_break_flags>`                     | ``3``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`custom_punctuation<class_TextParagraph_property_custom_punctuation>`       | ``""``    |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`direction<class_TextParagraph_property_direction>`                         | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`ellipsis_char<class_TextParagraph_property_ellipsis_char>`                 | ``"…"``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_TextParagraph_property_justification_flags>`     | ``163``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_TextParagraph_property_line_spacing>`                   | ``0.0``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                     | :ref:`max_lines_visible<class_TextParagraph_property_max_lines_visible>`         | ``-1``    |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`Orientation<enum_TextServer_Orientation>`                           | :ref:`orientation<class_TextParagraph_property_orientation>`                     | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_control<class_TextParagraph_property_preserve_control>`           | ``false`` |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_invalid<class_TextParagraph_property_preserve_invalid>`           | ``true``  |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                   | :ref:`text_overrun_behavior<class_TextParagraph_property_text_overrun_behavior>` | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextParagraph_property_width>`                                 | ``-1.0``  |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_object<class_TextParagraph_method_add_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ )                                                    |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_string<class_TextParagraph_method_add_string>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ )                                                                                            |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear<class_TextParagraph_method_clear>`\ (\ )                                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear_dropcap<class_TextParagraph_method_clear_dropcap>`\ (\ )                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw<class_TextParagraph_method_draw>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_dropcap<class_TextParagraph_method_draw_dropcap>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_dropcap_outline<class_TextParagraph_method_draw_dropcap_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_line<class_TextParagraph_method_draw_line>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_line_outline<class_TextParagraph_method_draw_line_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_outline<class_TextParagraph_method_draw_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`get_dropcap_lines<class_TextParagraph_method_get_dropcap_lines>`\ (\ ) |const|                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_dropcap_rid<class_TextParagraph_method_get_dropcap_rid>`\ (\ ) |const|                                                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_dropcap_size<class_TextParagraph_method_get_dropcap_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>` | :ref:`get_inferred_direction<class_TextParagraph_method_get_inferred_direction>`\ (\ ) |const|                                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_ascent<class_TextParagraph_method_get_line_ascent>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`get_line_count<class_TextParagraph_method_get_line_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_descent<class_TextParagraph_method_get_line_descent>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                   | :ref:`get_line_object_rect<class_TextParagraph_method_get_line_object_rect>`\ (\ line\: :ref:`int<class_int>`, key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`get_line_objects<class_TextParagraph_method_get_line_objects>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`             | :ref:`get_line_range<class_TextParagraph_method_get_line_range>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_line_rid<class_TextParagraph_method_get_line_rid>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_line_size<class_TextParagraph_method_get_line_size>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_position<class_TextParagraph_method_get_line_underline_position>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_thickness<class_TextParagraph_method_get_line_underline_thickness>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_width<class_TextParagraph_method_get_line_width>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_non_wrapped_size<class_TextParagraph_method_get_non_wrapped_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`             | :ref:`get_range<class_TextParagraph_method_get_range>`\ (\ ) |const|                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_rid<class_TextParagraph_method_get_rid>`\ (\ ) |const|                                                                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_size<class_TextParagraph_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`hit_test<class_TextParagraph_method_hit_test>`\ (\ coords\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`resize_object<class_TextParagraph_method_resize_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ )                                                                                  |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bidi_override<class_TextParagraph_method_set_bidi_override>`\ (\ override\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`set_dropcap<class_TextParagraph_method_set_dropcap>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, dropcap_margins\: :ref:`Rect2<class_Rect2>` = Rect2(0, 0, 0, 0), language\: :ref:`String<class_String>` = ""\ )                                                                      |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`tab_align<class_TextParagraph_method_tab_align>`\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                                                                                                                                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TextParagraph_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_TextParagraph_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_alignment**\ (\ )

Горизонтальное выравнивание абзаца.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_break_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **break_flags** = ``3`` :ref:`🔗<class_TextParagraph_property_break_flags>`

.. rst-class:: classref-property-setget

- |void| **set_break_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_break_flags**\ (\ )

Правила переноса строк. Для получения дополнительной информации см. :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_custom_punctuation:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_punctuation** = ``""`` :ref:`🔗<class_TextParagraph_property_custom_punctuation>`

.. rst-class:: classref-property-setget

- |void| **set_custom_punctuation**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_custom_punctuation**\ (\ )

Пользовательский список знаков препинания, используемый для разбиения слов. Если задана пустая строка, используются значения сервера по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **direction** = ``0`` :ref:`🔗<class_TextParagraph_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_direction**\ (\ )

Направление написания текста.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_TextParagraph_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Символ многоточия, используемый для обрезки текста.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_TextParagraph_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Правила выравнивания заливки линий.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_TextParagraph_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Дополнительный вертикальный интервал между строками (в пикселях), интервал добавляется к спуску строки. Это значение может быть отрицательным.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_max_lines_visible:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_lines_visible** = ``-1`` :ref:`🔗<class_TextParagraph_property_max_lines_visible>`

.. rst-class:: classref-property-setget

- |void| **set_max_lines_visible**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_lines_visible**\ (\ )

Ограничивает количество отображаемых строк текста.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_TextServer_Orientation>` **orientation** = ``0`` :ref:`🔗<class_TextParagraph_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_TextServer_Orientation>`\ )
- :ref:`Orientation<enum_TextServer_Orientation>` **get_orientation**\ (\ )

Ориентация текста.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_preserve_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_control** = ``false`` :ref:`🔗<class_TextParagraph_property_preserve_control>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_control**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_control**\ (\ )

Если установлено значение ``true``, текст будет отображать управляющие символы.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_preserve_invalid:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_invalid** = ``true`` :ref:`🔗<class_TextParagraph_property_preserve_invalid>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_invalid**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_invalid**\ (\ )

Если установлено значение ``true``, в тексте будут отображаться недопустимые символы.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_TextParagraph_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

Поведение обрезки, когда текст превышает заданную ширину абзаца.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``-1.0`` :ref:`🔗<class_TextParagraph_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Ширина абзаца.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TextParagraph_method_add_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextParagraph_method_add_object>`

Добавляет встроенный объект в текстовый буфер, ``key`` должен быть уникальным. В тексте объект представлен как ``length`` символов замены объекта.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_add_string:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_string**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_TextParagraph_method_add_string>`

Добавляет текстовый диапазон и шрифт для его отрисовки.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TextParagraph_method_clear>`

Очищает текстовый абзац (удаляет текст и встроенные объекты).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_clear_dropcap:

.. rst-class:: classref-method

|void| **clear_dropcap**\ (\ ) :ref:`🔗<class_TextParagraph_method_clear_dropcap>`

Удаляет начальную букву капитель (dropcap).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw>`

Нарисуйте все строки текста и буквицы в элементе холста в заданной позиции с ``color``. ``pos`` указывает верхний левый угол ограничивающего прямоугольника. Если ``oversampling`` больше нуля, он используется как фактор передискретизации шрифта, в противном случае используются настройки передискретизации области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_dropcap:

.. rst-class:: classref-method

|void| **draw_dropcap**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_dropcap>`

Нарисуйте буквицу в элементе холста в заданной позиции с ``color``. ``pos`` указывает верхний левый угол ограничивающего прямоугольника. Если ``oversampling`` больше нуля, он используется как фактор передискретизации шрифта, в противном случае используются настройки передискретизации области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_dropcap_outline:

.. rst-class:: classref-method

|void| **draw_dropcap_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_dropcap_outline>`

Нарисуйте контур буквицы в элементе холста в заданной позиции с ``color``. ``pos`` указывает верхний левый угол ограничивающего прямоугольника. Если ``oversampling`` больше нуля, он используется как фактор передискретизации шрифта, в противном случае используются настройки передискретизации области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_line:

.. rst-class:: classref-method

|void| **draw_line**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_line>`

Нарисуйте одну строку текста в элементе холста в заданной позиции с ``color``. ``pos`` указывает верхний левый угол ограничивающего прямоугольника. Если ``oversampling`` больше нуля, он используется как фактор передискретизации шрифта, в противном случае используются настройки передискретизации области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_line_outline:

.. rst-class:: classref-method

|void| **draw_line_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_line_outline>`

Нарисовать контур одной строки текста в элементе холста в заданной позиции с ``color``. ``pos`` указывает верхний левый угол ограничивающего прямоугольника. Если ``oversampling`` больше нуля, он используется как фактор передискретизации шрифта, в противном случае используются настройки передискретизации области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_outline:

.. rst-class:: classref-method

|void| **draw_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_outline>`

Нарисовать контуры всех строк текста и буквицы в элементе холста в заданной позиции с ``color``. ``pos`` указывает верхний левый угол ограничивающего прямоугольника. Если ``oversampling`` больше нуля, он используется как фактор передискретизации шрифта, в противном случае используются настройки передискретизации области просмотра.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_lines:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_dropcap_lines**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_lines>`

Возвращает количество строк, используемых в dropcap (буквицей).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_dropcap_rid**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_rid>`

Возвращает RID текстового буфера буквицы.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_dropcap_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_size>`

Возвращает размер ограничивающего прямоугольника буквицы.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_inferred_direction:

.. rst-class:: classref-method

:ref:`Direction<enum_TextServer_Direction>` **get_inferred_direction**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_inferred_direction>`

Возвращает направление написания текста, выведенное алгоритмом BiDi.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_ascent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_ascent**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_ascent>`

Возвращает высоту текстовой строки (количество пикселей над базовой линией для горизонтальной компоновки или слева от базовой линии для вертикальной).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_count>`

Возвращает количество строк в абзаце.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_descent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_descent**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_descent>`

Возвращает смещение текстовой строки (количество пикселей ниже базовой линии для горизонтальной компоновки или справа от базовой линии для вертикальной).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_object_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_line_object_rect**\ (\ line\: :ref:`int<class_int>`, key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_object_rect>`

Возвращает ограничивающий прямоугольник встроенного объекта.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_objects:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_line_objects**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_objects>`

Возвращает массив встроенных объектов в строке.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_range:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_line_range**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_range>`

Возвращает диапазон символов строки.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_line_rid**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_rid>`

Возвращает RID буфера строки TextServer.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_line_size**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_size>`

Возвращает размер ограничивающего прямоугольника строки текста. Возвращаемый размер округляется в большую сторону.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_underline_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_position**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_underline_position>`

Возвращает смещение подчеркивания в пикселях относительно базовой линии.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_underline_thickness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_thickness**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_underline_thickness>`

Возвращает толщину подчеркивания.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_width:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_width**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_width>`

Возвращает ширину (для горизонтального расположения) или высоту (для вертикального расположения) строки текста.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_non_wrapped_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_non_wrapped_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_non_wrapped_size>`

Возвращает размер ограничивающей рамки абзаца без переносов строк.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_range:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_range**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_range>`

Возвращает диапазон символов абзаца/параграфа.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_rid>`

Возвращает полный строковый буфер RID TextServer.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_size>`

Возвращает размер ограничивающей рамки абзаца.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_hit_test:

.. rst-class:: classref-method

:ref:`int<class_int>` **hit_test**\ (\ coords\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TextParagraph_method_hit_test>`

Возвращает смещение символа каретки в указанных координатах. Эта функция всегда возвращает допустимую позицию.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_resize_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **resize_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextParagraph_method_resize_object>`

Устанавливает новый размер и выравнивание внедренного объекта.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_set_bidi_override:

.. rst-class:: classref-method

|void| **set_bidi_override**\ (\ override\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_TextParagraph_method_set_bidi_override>`

Переопределяет BiDi для структурированного текста.

Диапазоны переопределения должны охватывать весь исходный текст без перекрытий. Алгоритм BiDi будет использоваться для каждого диапазона отдельно.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_set_dropcap:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_dropcap**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, dropcap_margins\: :ref:`Rect2<class_Rect2>` = Rect2(0, 0, 0, 0), language\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_TextParagraph_method_set_dropcap>`

Устанавливает буквицу, переопределяет ранее установленную буквицу. Буквица — декоративный элемент в начале абзаца, который больше остального текста.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_tab_align:

.. rst-class:: classref-method

|void| **tab_align**\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_TextParagraph_method_tab_align>`

Выравнивает абзац по указанным позициям табуляции.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
