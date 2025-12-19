:github_url: hide

.. _class_EditorTranslationParserPlugin:

EditorTranslationParserPlugin
=============================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Плагін для додавання користувацьких парсерів для вилучення рядків, які повинні бути перекладені з користувацьких файлів (.csv, .json тощо).

.. rst-class:: classref-introduction-group

Опис
--------

**EditorTranslationParserPlugin** is invoked when a file is being parsed to extract strings that require translation. To define the parsing and string extraction logic, override the :ref:`_parse_file()<class_EditorTranslationParserPlugin_private_method__parse_file>` method in script.

The return value should be an :ref:`Array<class_Array>` of :ref:`PackedStringArray<class_PackedStringArray>`\ s, one for each extracted translatable string. Each entry should contain ``[msgid, msgctxt, msgid_plural, comment, source_line]``, where all except ``msgid`` are optional. Empty strings will be ignored.

The extracted strings will be written into a translation template file selected by user under "Template Generation" in "Localization" tab in "Project Settings" menu.

Below shows an example of a custom parser that extracts strings from a CSV file to write into a template.


.. tabs::

 .. code-tab:: gdscript

    @tool
    extends EditorTranslationParserPlugin

    func _parse_file(path):
        var ret: Array[PackedStringArray] = []
        var file = FileAccess.open(path, FileAccess.READ)
        var text = file.get_as_text()
        var split_strs = text.split(",", false)
        for s in split_strs:
            ret.append(PackedStringArray([s]))
            #print("Extracted string: " + s)

        return ret

    func _get_recognized_extensions():
        return ["csv"]

 .. code-tab:: csharp

    using Godot;

    [Tool]
    public partial class CustomParser : EditorTranslationParserPlugin
    {
        public override Godot.Collections.Array<string[]> _ParseFile(string path)
        {
            Godot.Collections.Array<string[]> ret;
            using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
            string text = file.GetAsText();
            string[] splitStrs = text.Split(",", allowEmpty: false);
            foreach (string s in splitStrs)
            {
                ret.Add([s]);
                //GD.Print($"Extracted string: {s}");
            }
            return ret;
        }

        public override string[] _GetRecognizedExtensions()
        {
            return ["csv"];
        }
    }



To add a translatable string associated with a context, plural, comment, or source line:


.. tabs::

 .. code-tab:: gdscript

    # This will add a message with msgid "Test 1", msgctxt "context", msgid_plural "test 1 plurals", comment "test 1 comment", and source line "7".
    ret.append(PackedStringArray(["Test 1", "context", "test 1 plurals", "test 1 comment", "7"]))
    # This will add a message with msgid "A test without context" and msgid_plural "plurals".
    ret.append(PackedStringArray(["A test without context", "", "plurals"]))
    # This will add a message with msgid "Only with context" and msgctxt "a friendly context".
    ret.append(PackedStringArray(["Only with context", "a friendly context"]))

 .. code-tab:: csharp

    // This will add a message with msgid "Test 1", msgctxt "context", msgid_plural "test 1 plurals", comment "test 1 comment", and source line "7".
    ret.Add(["Test 1", "context", "test 1 plurals", "test 1 comment", "7"]);
    // This will add a message with msgid "A test without context" and msgid_plural "plurals".
    ret.Add(["A test without context", "", "plurals"]);
    // This will add a message with msgid "Only with context" and msgctxt "a friendly context".
    ret.Add(["Only with context", "a friendly context"]);



\ **Note:** If you override parsing logic for standard script types (GDScript, C#, etc.), it would be better to load the ``path`` argument using :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`. This is because built-in scripts are loaded as :ref:`Resource<class_Resource>` type, not :ref:`FileAccess<class_FileAccess>` type. For example:


.. tabs::

 .. code-tab:: gdscript

    func _parse_file(path):
        var res = ResourceLoader.load(path, "Script")
        var text = res.source_code
        # Parsing logic.

    func _get_recognized_extensions():
        return ["gd"]

 .. code-tab:: csharp

    public override Godot.Collections.Array<string[]> _ParseFile(string path)
    {
        var res = ResourceLoader.Load<Script>(path, "Script");
        string text = res.SourceCode;
        // Parsing logic.
    }

    public override string[] _GetRecognizedExtensions()
    {
        return ["gd"];
    }



To use **EditorTranslationParserPlugin**, register it using the :ref:`EditorPlugin.add_translation_parser_plugin()<class_EditorPlugin_method_add_translation_parser_plugin>` method first.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                              | :ref:`_get_recognized_extensions<class_EditorTranslationParserPlugin_private_method__get_recognized_extensions>`\ (\ ) |virtual| |const| |
   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] | :ref:`_parse_file<class_EditorTranslationParserPlugin_private_method__parse_file>`\ (\ path\: :ref:`String<class_String>`\ ) |virtual|   |
   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorTranslationParserPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__get_recognized_extensions>`

Список розширень файлів, пов'язаних з цим парсером, наприклад ``["csv"]``.

.. rst-class:: classref-item-separator

----

.. _class_EditorTranslationParserPlugin_private_method__parse_file:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_parse_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__parse_file>`

Зазначте цей метод, щоб визначити логіку, що підписує перекладацькі рядки.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
