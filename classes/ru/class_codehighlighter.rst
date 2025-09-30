:github_url: hide

.. _class_CodeHighlighter:

CodeHighlighter
===============

**Наследует:** :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Подсветка синтаксиса, предназначенная для кода.

.. rst-class:: classref-introduction-group

Описание
----------------

Изменяя различные свойства этого ресурса, вы можете изменять цвета строк, комментариев, чисел и других текстовых шаблонов внутри элемента управления :ref:`TextEdit<class_TextEdit>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_regions<class_CodeHighlighter_property_color_regions>`                 | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`function_color<class_CodeHighlighter_property_function_color>`               | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`keyword_colors<class_CodeHighlighter_property_keyword_colors>`               | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`member_keyword_colors<class_CodeHighlighter_property_member_keyword_colors>` | ``{}``                |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`member_variable_color<class_CodeHighlighter_property_member_variable_color>` | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`number_color<class_CodeHighlighter_property_number_color>`                   | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`           | :ref:`symbol_color<class_CodeHighlighter_property_symbol_color>`                   | ``Color(0, 0, 0, 1)`` |
   +-------------------------------------+------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_color_region<class_CodeHighlighter_method_add_color_region>`\ (\ start_key\: :ref:`String<class_String>`, end_key\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, line_only\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_keyword_color<class_CodeHighlighter_method_add_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ )                                                                                     |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`add_member_keyword_color<class_CodeHighlighter_method_add_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ )                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_color_regions<class_CodeHighlighter_method_clear_color_regions>`\ (\ )                                                                                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_keyword_colors<class_CodeHighlighter_method_clear_keyword_colors>`\ (\ )                                                                                                                                                         |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`clear_member_keyword_colors<class_CodeHighlighter_method_clear_member_keyword_colors>`\ (\ )                                                                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_keyword_color<class_CodeHighlighter_method_get_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_member_keyword_color<class_CodeHighlighter_method_get_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const|                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_color_region<class_CodeHighlighter_method_has_color_region>`\ (\ start_key\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_keyword_color<class_CodeHighlighter_method_has_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ ) |const|                                                                                                                |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`has_member_keyword_color<class_CodeHighlighter_method_has_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const|                                                                                           |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_color_region<class_CodeHighlighter_method_remove_color_region>`\ (\ start_key\: :ref:`String<class_String>`\ )                                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_keyword_color<class_CodeHighlighter_method_remove_keyword_color>`\ (\ keyword\: :ref:`String<class_String>`\ )                                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`remove_member_keyword_color<class_CodeHighlighter_method_remove_member_keyword_color>`\ (\ member_keyword\: :ref:`String<class_String>`\ )                                                                                             |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CodeHighlighter_property_color_regions:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_regions** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_color_regions>`

.. rst-class:: classref-property-setget

- |void| **set_color_regions**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_color_regions**\ (\ )

Устанавливает цветовые регионы. Все существующие регионы будут удалены. Ключ :ref:`Dictionary<class_Dictionary>` — это начальный и конечный ключ региона, разделенные пробелом. Значение — цвет региона.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_function_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **function_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_function_color>`

.. rst-class:: classref-property-setget

- |void| **set_function_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_function_color**\ (\ )

Устанавливает цвет для функций. Функция — это строка, не являющаяся ключевым словом, за которой следует '('.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_keyword_colors:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **keyword_colors** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_keyword_colors>`

.. rst-class:: classref-property-setget

- |void| **set_keyword_colors**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_keyword_colors**\ (\ )

Устанавливает цвета ключевых слов. Все существующие ключевые слова будут удалены. Ключ :ref:`Dictionary<class_Dictionary>` — это ключевое слово. Значение — это цвет ключевого слова.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_member_keyword_colors:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **member_keyword_colors** = ``{}`` :ref:`🔗<class_CodeHighlighter_property_member_keyword_colors>`

.. rst-class:: classref-property-setget

- |void| **set_member_keyword_colors**\ (\ value\: :ref:`Dictionary<class_Dictionary>`\ )
- :ref:`Dictionary<class_Dictionary>` **get_member_keyword_colors**\ (\ )

Устанавливает цвета ключевых слов-членов. Все существующие ключевые слова-члены будут удалены. Ключ :ref:`Dictionary<class_Dictionary>` — это ключевое слово-член. Значение — это цвет ключевого слова-члена.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_member_variable_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **member_variable_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_member_variable_color>`

.. rst-class:: classref-property-setget

- |void| **set_member_variable_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_member_variable_color**\ (\ )

Устанавливает цвет для переменных-членов. Переменная-член — это не ключевое слово, нефункциональная строка, начинающаяся с '.'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_number_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **number_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_number_color>`

.. rst-class:: classref-property-setget

- |void| **set_number_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_number_color**\ (\ )

Устанавливает цвет для чисел.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_property_symbol_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **symbol_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_CodeHighlighter_property_symbol_color>`

.. rst-class:: classref-property-setget

- |void| **set_symbol_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_symbol_color**\ (\ )

Устанавливает цвет символов.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_CodeHighlighter_method_add_color_region:

.. rst-class:: classref-method

|void| **add_color_region**\ (\ start_key\: :ref:`String<class_String>`, end_key\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`, line_only\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_CodeHighlighter_method_add_color_region>`

Добавляет цветовую область (например, для комментариев или строк) от ``start_key`` до ``end_key``. Оба ключа должны быть символами, и ``start_key`` не должен использоваться совместно с другими разделителями.

Если ``line_only`` — это ``true`` или ``end_key`` — это пустая :ref:`String<class_String>`, область не переносится на следующую строку.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_add_keyword_color:

.. rst-class:: classref-method

|void| **add_keyword_color**\ (\ keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_CodeHighlighter_method_add_keyword_color>`

Устанавливает цвет для ключевого слова.

Ключевое слово не может содержать никаких символов, кроме '\_'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_add_member_keyword_color:

.. rst-class:: classref-method

|void| **add_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`, color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_CodeHighlighter_method_add_member_keyword_color>`

Задает цвет для ключевого слова участника.

Ключевое слово участника не может содержать никаких символов, кроме '\_'.

Оно не будет выделено, если ему предшествует '.'.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_color_regions:

.. rst-class:: classref-method

|void| **clear_color_regions**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_color_regions>`

Удаляет все цветные области.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_keyword_colors:

.. rst-class:: classref-method

|void| **clear_keyword_colors**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_keyword_colors>`

Удалить все ключевые слова.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_clear_member_keyword_colors:

.. rst-class:: classref-method

|void| **clear_member_keyword_colors**\ (\ ) :ref:`🔗<class_CodeHighlighter_method_clear_member_keyword_colors>`

Удаляет все ключевые слова участников.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_get_keyword_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_get_keyword_color>`

Возвращает цвет для ключевого слова.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_get_member_keyword_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_get_member_keyword_color>`

Возвращает цвет для ключевого слова члена.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_color_region:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_color_region**\ (\ start_key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_color_region>`

Возвращает ``true``, если начальный ключ существует, в противном случае ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_keyword_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_keyword_color>`

Возвращает ``true``, если ключевое слово существует, в противном случае ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_has_member_keyword_color:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_CodeHighlighter_method_has_member_keyword_color>`

Возвращает ``true``, если ключевое слово члена существует, в противном случае — ``false``.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_color_region:

.. rst-class:: classref-method

|void| **remove_color_region**\ (\ start_key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_color_region>`

Удаляет цветовую область, использующую эту клавишу запуска.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_keyword_color:

.. rst-class:: classref-method

|void| **remove_keyword_color**\ (\ keyword\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_keyword_color>`

Удаляет ключевое слово.

.. rst-class:: classref-item-separator

----

.. _class_CodeHighlighter_method_remove_member_keyword_color:

.. rst-class:: classref-method

|void| **remove_member_keyword_color**\ (\ member_keyword\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CodeHighlighter_method_remove_member_keyword_color>`

Удаляет ключевое слово участника.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
