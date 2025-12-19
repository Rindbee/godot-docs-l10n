:github_url: hide

.. _class_ResourceImporterCSVTranslation:

ResourceImporterCSVTranslation
==============================

**Наследует:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports comma-separated values as :ref:`Translation<class_Translation>`\ s.

.. rst-class:: classref-introduction-group

Описание
----------------

Comma-separated values are a plain text table storage format. The format's simplicity makes it easy to edit in any text editor or spreadsheet software. This makes it a common choice for game localization.

In the CSV file used for translation, the first column contains string identifiers, and the first row serves as the header. The first column's header can be any value. The remaining headers indicate the locale for that column. Columns whose headers begin with an underscore (``_``) will be ignored.

\ **Example CSV file:**\ 

.. code:: text

    keys,en,es,ja
    GREET,"Hello, friend!","Hola, amigo!",こんにちは
    ASK,How are you?,Cómo está?,元気ですか
    BYE,Goodbye,Adiós,さようなら
    QUOTE,"""Hello"" said the man.","""Hola"" dijo el hombre.",「こんにちは」男は言いました

Although keys in the first column typically use uppercase string identifiers, it is not uncommon to directly use strings appearing in the game as keys. To avoid string ambiguity, you can use a special ``?context`` column to specify the context to use with :ref:`Object.tr()<class_Object_method_tr>`.

.. code:: text

    en,?context,fr,ja,zh
    Letter,Alphabet,Lettre,字母,字母
    Letter,Message,Courrier,手紙,信件

To set the plural form of a string to use with :ref:`Object.tr_n()<class_Object_method_tr_n>`, add a special ``?plural`` column. After setting the plural form of the source string in this column, you can add additional rows to provide translations for more plural forms. The first column and all special columns in these plural form rows must be empty.

Godot includes built-in plural rules for some languages. You can also customize them using a special ``?pluralrule`` row. See `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__ for examples and more info.

.. code:: text

    en,?plural,fr,ru,zh,_Comment
    ?pluralrule,,nplurals=2; plural=(n >= 2);,,,Customize the plural rule for French
    There is %d apple,There are %d apples,Il y a %d pomme,Есть %d яблоко,那里有%d个苹果,
    ,,Il y a %d pommes,Есть %d яблока,,
    ,,,Есть %d яблок,,

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Импорт переводов <../tutorials/assets_pipeline/importing_translations>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`compress<class_ResourceImporterCSVTranslation_property_compress>`                           | ``1``     |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`delimiter<class_ResourceImporterCSVTranslation_property_delimiter>`                         | ``0``     |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`unescape_keys<class_ResourceImporterCSVTranslation_property_unescape_keys>`                 | ``false`` |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`unescape_translations<class_ResourceImporterCSVTranslation_property_unescape_translations>` | ``true``  |
   +-------------------------+---------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ResourceImporterCSVTranslation_property_compress:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress** = ``1`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_compress>`

- **Disabled**: Creates a :ref:`Translation<class_Translation>`.

- **Auto**: Creates an :ref:`OptimizedTranslation<class_OptimizedTranslation>` when possible. This makes the resulting file smaller at the cost of a small CPU overhead. Falls back to :ref:`Translation<class_Translation>` for translations with context or plural forms.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_delimiter:

.. rst-class:: classref-property

:ref:`int<class_int>` **delimiter** = ``0`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_delimiter>`

Разделитель для использования в файле CSV. Значение по умолчанию соответствует общепринятому соглашению CSV. Значения, разделенные табуляцией, иногда называются файлами TSV.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_keys:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_keys** = ``false`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_keys>`

If ``true``, message keys in the CSV file are unescaped using :ref:`String.c_unescape()<class_String_method_c_unescape>` during the import process.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterCSVTranslation_property_unescape_translations:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unescape_translations** = ``true`` :ref:`🔗<class_ResourceImporterCSVTranslation_property_unescape_translations>`

If ``true``, message translations in the CSV file are unescaped using :ref:`String.c_unescape()<class_String_method_c_unescape>` during the import process.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
