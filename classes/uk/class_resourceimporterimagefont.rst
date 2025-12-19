:github_url: hide

.. _class_ResourceImporterImageFont:

ResourceImporterImageFont
=========================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпорт шрифту бітма, де всі гліфи мають однакову ширину і висоту.

.. rst-class:: classref-introduction-group

Опис
--------

Ця робота на основі зображення може бути легше використовуватися, ніж :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>`, але вона вимагає всіх гліфів, щоб мати однакову ширину і висоту, glyph аванс і знімання офсетів можна налаштувати. Це робить **ResourceImporterImageFont** найбільш придатними для фіксованих шрифтів пропускної здатності.

Дивитися також :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Bitmap шрифти - Використання шрифтів <../tutorials/ui/gui_using_fonts.html#bitmap-fonts>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Описи властивостей
------------------------------------

.. _class_ResourceImporterImageFont_property_ascent:

.. rst-class:: classref-property

:ref:`int<class_int>` **ascent** = ``0`` :ref:`🔗<class_ResourceImporterImageFont_property_ascent>`

Шрифт сходження (номер пікселів над базовою лінією). Якщо встановити до ``0``, використовується половина висоти персонажа.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_character_margin:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **character_margin** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_ResourceImporterImageFont_property_character_margin>`

Маргін наноситься на кожну імпортну гліф. Якщо ваш образ шрифту містить інструкції (у вигляді лінійок між гліфами) або якщо з'являється некоректний інтервал, спробуйте налаштувати :ref:`character_margin<class_ResourceImporterImageFont_property_character_margin>`.

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

Кількість стовпців у зображенні шрифту. Див. також :ref:`rows<class_ResourceImporterImageFont_property_rows>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterImageFont_property_compress>`

Якщо ``true``, використовує стиснення без втрат для отриманого шрифту.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_descent:

.. rst-class:: classref-property

:ref:`int<class_int>` **descent** = ``0`` :ref:`🔗<class_ResourceImporterImageFont_property_descent>`

Фонтанний спуск (номер пікселів нижче базової лінії). Якщо встановити до ``0``, використовується половина висоти персонажа.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterImageFont_property_fallbacks>`

Список шрифтів, що падає на використання, якщо гліф не знайдено в цьому шрифті бітма. Шрифти на початку масиву намагаються спочатку.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_image_margin:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **image_margin** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_ResourceImporterImageFont_property_image_margin>`

Маргін вирізати по боках всього зображення. Це може бути використана для розрізання частин зображення, що містять інформацію про атрибут або схожу.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_kerning_pairs:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **kerning_pairs** = ``PackedStringArray()`` :ref:`🔗<class_ResourceImporterImageFont_property_kerning_pairs>`

Керування парами для шрифту. Керування парою налаштовують інтервал між двома символами.

Кожен рядок складається з трьох просторових роздільних значень: "з" рядка, "на" рядок і ціле офсет. Кожне поєднання формує два рядки для кермової пари, наприклад, ``ab cd -3`` створить кермові пари ``ac``, ``ad``, ``bc``, і ``bd`` з офсетом ``-3``. ``\uXXXX`` можна використовувати для додавання символів Unicode.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_rows:

.. rst-class:: classref-property

:ref:`int<class_int>` **rows** = ``1`` :ref:`🔗<class_ResourceImporterImageFont_property_rows>`

Кількість рядків у зображенні шрифту. Див. також :ref:`columns<class_ResourceImporterImageFont_property_columns>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterImageFont_property_scaling_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **scaling_mode** = ``2`` :ref:`🔗<class_ResourceImporterImageFont_property_scaling_mode>`

Режим масштабування шрифту.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
