:github_url: hide

.. _class_ProgressBar:

ProgressBar
===========

**Наследует:** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Элемент управления, используемый для визуального представления процента.

.. rst-class:: classref-introduction-group

Описание
----------------

Элемент управления, используемый для визуального представления процента. Показывает процент заполнения в центре. Может также использоваться для отображения неопределенного прогресса. Для большего количества режимов заполнения используйте :ref:`TextureProgressBar<class_TextureProgressBar>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`editor_preview_indeterminate<class_ProgressBar_property_editor_preview_indeterminate>` |           |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`fill_mode<class_ProgressBar_property_fill_mode>`                                       | ``0``     |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`indeterminate<class_ProgressBar_property_indeterminate>`                               | ``false`` |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`show_percentage<class_ProgressBar_property_show_percentage>`                           | ``true``  |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Свойства темы
--------------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_ProgressBar_theme_color_font_color>`                 | ``Color(0.95, 0.95, 0.95, 1)`` |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_ProgressBar_theme_color_font_outline_color>` | ``Color(0, 0, 0, 1)``          |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_ProgressBar_theme_constant_outline_size>`          | ``0``                          |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_ProgressBar_theme_font_font>`                              |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_ProgressBar_theme_font_size_font_size>`               |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`background<class_ProgressBar_theme_style_background>`                 |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`fill<class_ProgressBar_theme_style_fill>`                             |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_ProgressBar_FillMode:

.. rst-class:: classref-enumeration

enum **FillMode**: :ref:`🔗<enum_ProgressBar_FillMode>`

.. _class_ProgressBar_constant_FILL_BEGIN_TO_END:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_BEGIN_TO_END** = ``0``

Полоса прогресса заполняется от начала до конца горизонтально, в соответствии с направлением языка. Если :ref:`Control.is_layout_rtl()<class_Control_method_is_layout_rtl>` возвращает ``false``, она заполняется слева направо, а если возвращает ``true``, она заполняется справа налево.

.. _class_ProgressBar_constant_FILL_END_TO_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_END_TO_BEGIN** = ``1``

Полоса прогресса заполняется от конца к началу горизонтально, в соответствии с направлением языка. Если :ref:`Control.is_layout_rtl()<class_Control_method_is_layout_rtl>` возвращает ``false``, она заполняется справа налево, а если возвращает ``true``, она заполняется слева направо.

.. _class_ProgressBar_constant_FILL_TOP_TO_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_TOP_TO_BOTTOM** = ``2``

Прогресс заполняется сверху вниз.

.. _class_ProgressBar_constant_FILL_BOTTOM_TO_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_BOTTOM_TO_TOP** = ``3``

Прогресс заполняется снизу вверх.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ProgressBar_property_editor_preview_indeterminate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_preview_indeterminate** :ref:`🔗<class_ProgressBar_property_editor_preview_indeterminate>`

.. rst-class:: classref-property-setget

- |void| **set_editor_preview_indeterminate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_preview_indeterminate_enabled**\ (\ )

Если ``false``, анимация :ref:`indeterminate<class_ProgressBar_property_indeterminate>` будет приостановлена в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_property_fill_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **fill_mode** = ``0`` :ref:`🔗<class_ProgressBar_property_fill_mode>`

.. rst-class:: classref-property-setget

- |void| **set_fill_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fill_mode**\ (\ )

Направление заполнения. См. :ref:`FillMode<enum_ProgressBar_FillMode>` для возможных значений.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_property_indeterminate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **indeterminate** = ``false`` :ref:`🔗<class_ProgressBar_property_indeterminate>`

.. rst-class:: classref-property-setget

- |void| **set_indeterminate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_indeterminate**\ (\ )

Если установлено значение ``true``, индикатор выполнения показывает, что с анимацией что-то происходит, но не показывает процент или значение заполнения.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_property_show_percentage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_percentage** = ``true`` :ref:`🔗<class_ProgressBar_property_show_percentage>`

.. rst-class:: classref-property-setget

- |void| **set_show_percentage**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_percentage_shown**\ (\ )

Если ``true``, процент заполнения отображается на панели.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств темы
------------------------------------------

.. _class_ProgressBar_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_ProgressBar_theme_color_font_color>`

Цвет текста.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ProgressBar_theme_color_font_outline_color>`

Оттенок контура текста **ProgressBar**.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_ProgressBar_theme_constant_outline_size>`

Размер контура текста.

\ **Примечание:** При использовании шрифта с включенным :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` его :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` должен быть установлен как минимум в *дважды* значения :ref:`outline_size<class_ProgressBar_theme_constant_outline_size>`, чтобы контур выглядел правильно. В противном случае контур может оказаться обрезанным раньше, чем предполагалось.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_ProgressBar_theme_font_font>`

Шрифт, используемый для отображения процента заполнения, если :ref:`show_percentage<class_ProgressBar_property_show_percentage>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_ProgressBar_theme_font_size_font_size>`

Размер шрифта, используемый для отображения процента заполнения, если :ref:`show_percentage<class_ProgressBar_property_show_percentage>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_style_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **background** :ref:`🔗<class_ProgressBar_theme_style_background>`

Стиль фона.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_style_fill:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **fill** :ref:`🔗<class_ProgressBar_theme_style_fill>`

Стиль прогресса (То есть та часть, которая заполняет полосу).

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
