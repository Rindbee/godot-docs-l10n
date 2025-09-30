:github_url: hide

.. _class_EditorTranslationParserPlugin:

EditorTranslationParserPlugin
=============================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Estensione per aggiungere parser personalizzati per estrarre stringhe da tradurre dai file personalizzati (.csv, .json ecc.).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**EditorTranslationParserPlugin** viene richiamato quando un file viene analizzato per estrarre stringhe che richiedono una traduzione. Per definire la logica di analisi ed estrazione delle stringhe, sovrascrivi il metodo :ref:`_parse_file()<class_EditorTranslationParserPlugin_private_method__parse_file>` da script.

Il valore restituito dovrebbe essere un :ref:`Array<class_Array>` di :ref:`PackedStringArray<class_PackedStringArray>`, uno per ogni stringa traducibile estratta. Ogni voce dovrebbe contenere ``[msgid, msgctxt, msgid_plural, comment]``, dove tutti tranne ``msgid`` sono facoltativi. Le stringhe vuote verranno ignorate.

Le stringhe estratte verranno inserite in un file POT selezionato dall'utente in "Generazione del POT" nella scheda "Localizzazione" nel menu "Impostazioni del progetto".

Di seguito è riportato un esempio di un parser personalizzato che estrae stringhe da un file CSV per scriverle in un POT.


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
            #print("Stringa estratta: " + s)

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
                //GD.Print($"Stringa estratta: {s}");
            }
            return ret;
        }

        public override string[] _GetRecognizedExtensions()
        {
            return ["csv"];
        }
    }



Per aggiungere una stringa traducibile associata a un contesto, a un plurale o a un commento:


.. tabs::

 .. code-tab:: gdscript

    # Questo aggiungerà un messaggio con msgid "Test 1", msgctxt "contesto" e msgid_plural "test 1 plurals" e commento "test 1 commento".
    ret.append(PackedStringArray(["Test 1", "contesto", "test 1 plurali", "test 1 commento"]))
    # Questo aggiungerà un messaggio con msgid "Un test senza contesto" e msgid_plural "plurali".
    ret.append(PackedStringArray(["Un test senza contesto", "", "plurali"]))
    # Questo aggiungerà un messaggio con msgid "Solo con contesto" e msgctxt "un contesto leggibile".
    ret.append(PackedStringArray(["Solo con contesto", "un contesto leggibile"]))

 .. code-tab:: csharp

    // Questo aggiungerà un messaggio con msgid "Test 1", msgctxt "contesto" e msgid_plural "test 1 plurali" e commento "test 1 commento".
    ret.Add(["Test 1", "contesto", "test 1 plurali", "test 1 commento"]);
    // Questo aggiungerà un messaggio con msgid "Un test senza contesto" e msgid_plural "plurali".
    ret.Add(["Un test senza contesto", "", "plurali"]);
    // Questo aggiungerà un messaggio con msgid "Solo con contesto" e msgctxt "un contesto leggibile".
    ret.Add(["Solo con contesto", "un contesto leggibile"]);



\ **Nota:** Se si sovrascrive la logica di analisi per i tipi di script standard (GDScript, C#, ecc.), sarebbe meglio caricare l'argomento ``path`` tramite :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`. Questo perché gli script integrati sono caricati come tipo :ref:`Resource<class_Resource>`, non come tipo :ref:`FileAccess<class_FileAccess>`. Ad esempio:


.. tabs::

 .. code-tab:: gdscript

    func _parse_file(path):
        var res = ResourceLoader.load(path, "Script")
        var text = res.source_code
        # Logica di analisi.

    func _get_recognized_extensions():
        return ["gd"]

 .. code-tab:: csharp

    public override Godot.Collections.Array<string[]> _ParseFile(string path)
    {
        var res = ResourceLoader.Load<Script>(path, "Script");
        string text = res.SourceCode;
        // Logica di analisi.
    }

    public override string[] _GetRecognizedExtensions()
    {
        return ["gd"];
    }



Per utilizzare **EditorTranslationParserPlugin**, registrarlo prima attraverso il metodo :ref:`EditorPlugin.add_translation_parser_plugin()<class_EditorPlugin_method_add_translation_parser_plugin>`.

.. rst-class:: classref-reftable-group

Metodi
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

Descrizioni dei metodi
--------------------------------------------

.. _class_EditorTranslationParserPlugin_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__get_recognized_extensions>`

Ottiene la lista delle estensioni di file da associare a questo parser, ad esempio ``["csv"]``.

.. rst-class:: classref-item-separator

----

.. _class_EditorTranslationParserPlugin_private_method__parse_file:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedStringArray<class_PackedStringArray>`\] **_parse_file**\ (\ path\: :ref:`String<class_String>`\ ) |virtual| :ref:`🔗<class_EditorTranslationParserPlugin_private_method__parse_file>`

Sovrascrivi questo metodo per definire una logica di analisi personalizzata per estrarre le stringhe da tradurre.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
