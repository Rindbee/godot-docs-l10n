:github_url: hide

.. _class_ResourceImporterImageFont:

ResourceImporterImageFont
=========================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Импортирует растровый шрифт, в котором все глифы имеют одинаковую ширину и высоту.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот рабочий процесс на основе изображений может быть проще в использовании, чем :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>`, но он требует, чтобы все глифы имели одинаковую ширину и высоту, можно настраивать продвижение глифов и смещения рисования. Это делает **ResourceImporterImageFont** наиболее подходящим для шрифтов с фиксированной шириной.

См. также :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Растровые шрифты - Использование шрифтов <../tutorials/ui/gui_using_fonts.html#bitmap-fonts>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`ascent<class_ResourceImporterImageFont_property_ascent>`                     | ``0``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Rect2i<class_Rect2i>`                       | :ref:`character_margin<class_ResourceImporterImageFont_property_character_margin>` | ``Rect2i(0, 0, 0, 0)``  |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`character_ranges<class_ResourceImporterImageFont_property_character_ranges>` | ``PackedStringArray()`` |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`columns<class_ResourceImporterImageFont_property_columns>`                   | ``1``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`compress<class_ResourceImporterImageFont_property_compress>`                 | ``true``                |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`descent<class_ResourceImporterImageFont_property_descent>`                   | ``0``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Array<class_Array>`                         | :ref:`fallbacks<class_ResourceImporterImageFont_property_fallbacks>`               | ``[]``                  |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Rect2i<class_Rect2i>`                       | :ref:`image_margin<class_ResourceImporterImageFont_property_image_margin>`         | ``Rect2i(0, 0, 0, 0)``  |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`kerning_pairs<class_ResourceImporterImageFont_property_kerning_pairs>`       | ``PackedStringArray()`` |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`rows<class_ResourceImporterImageFont_property_rows>`                         | ``1``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                             | :ref:`scaling_mode<class_ResourceImporterImageFont_property_scaling_mode>`         | ``2``                   |
   +---------------------------------------------------+------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ResourceImporterImageFont_property_ascent:

.. rst-class:: classref-property

:ref:`int<class_int>` **ascent** = ``0`` :ref:`🔗<class_ResourceImporterImageFont_property_ascent>`

Подъем шрифта (количество пикселей над базовой линией). Если установлено значение ``0``, используется половина высоты символа.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_character_margin:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **character_margin** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_ResourceImporterImageFont_property_character_margin>`

Margin применяется вокруг каждого импортированного глифа. Если изображение шрифта содержит направляющие (в виде линий между глифами) или если интервал между символами выглядит неправильным, попробуйте настроить :ref:`character_margin<class_ResourceImporterImageFont_property_character_margin>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_character_ranges:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **character_ranges** = ``PackedStringArray()`` :ref:`🔗<class_ResourceImporterImageFont_property_character_ranges>`

The character ranges to import from the font image. This is an array that maps each position on the image (in tile coordinates, not pixels). The font atlas is traversed from left to right and top to bottom. Characters can be specified with decimal numbers (126), hexadecimal numbers (``0x007e`` or ``U+007e``), or between single quotes (``'~'``). Ranges can be specified with a hyphen between characters.

For example, ``0-127`` represents the full ASCII range. It can also be written as ``0x0000-0x007f`` (or ``U+0000-U+007f``). As another example, ``' '-'~'`` is equivalent to ``32-126`` and represents the range of printable (visible) ASCII characters.

For any range, the character advance and offset can be customized by appending three space-separated integer values (additional advance, x offset, y offset) to the end. For example ``'a'-'b' 4 5 2`` sets the advance to ``char_width + 4`` and offset to ``Vector2(5, 2)`` for both `a` and `b` characters.

\ **Note:** The overall number of characters must not exceed the number of :ref:`columns<class_ResourceImporterImageFont_property_columns>` multiplied by :ref:`rows<class_ResourceImporterImageFont_property_rows>`. Otherwise, the font will fail to import.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_columns:

.. rst-class:: classref-property

:ref:`int<class_int>` **columns** = ``1`` :ref:`🔗<class_ResourceImporterImageFont_property_columns>`

Количество столбцов в изображении шрифта. См. также :ref:`rows<class_ResourceImporterImageFont_property_rows>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterImageFont_property_compress>`

Если ``true``, используется сжатие без потерь для результирующего шрифта.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_descent:

.. rst-class:: classref-property

:ref:`int<class_int>` **descent** = ``0`` :ref:`🔗<class_ResourceImporterImageFont_property_descent>`

Снижение шрифта (количество пикселей ниже базовой линии). Если установлено значение ``0``, используется половина высоты символа.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterImageFont_property_fallbacks>`

Список резервных шрифтов для использования, если глиф не найден в этом растровом шрифте. Шрифты в начале массива пробуются первыми.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_image_margin:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **image_margin** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_ResourceImporterImageFont_property_image_margin>`

Поле для обрезки по бокам всего изображения. Это можно использовать для обрезки частей изображения, содержащих информацию об атрибуции или подобную информацию.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_kerning_pairs:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **kerning_pairs** = ``PackedStringArray()`` :ref:`🔗<class_ResourceImporterImageFont_property_kerning_pairs>`

Кернинговые пары для шрифта. Кернинговые пары регулируют интервал между двумя символами.

Каждая строка состоит из трех значений, разделенных пробелами: строка «from», строка «to» и смещение целого числа. Каждая комбинация образует две строки для кернинговой пары, например, ``ab cd -3`` создаст кернинговые пары ``ac``, ``ad``, ``bc`` и ``bd`` со смещением ``-3``. Для добавления символов Unicode можно использовать escape-последовательности ``\uXXXX``.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_rows:

.. rst-class:: classref-property

:ref:`int<class_int>` **rows** = ``1`` :ref:`🔗<class_ResourceImporterImageFont_property_rows>`

Количество строк в изображении шрифта. См. также :ref:`columns<class_ResourceImporterImageFont_property_columns>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_scaling_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **scaling_mode** = ``2`` :ref:`🔗<class_ResourceImporterImageFont_property_scaling_mode>`

Режим масштабирования шрифта.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
