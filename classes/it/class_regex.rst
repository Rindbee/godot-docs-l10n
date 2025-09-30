:github_url: hide

.. _class_RegEx:

RegEx
=====

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe per la ricerca di modelli nel testo, tramite espressioni regolari.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un'espressione regolare (o regex) è un linguaggio compatto che può essere utilizzato per riconoscere stringhe che seguono uno schema specifico, come URL, indirizzi email, frasi complete, ecc. Ad esempio, un'espressione regolare ``ab[0-9]`` troverebbe qualsiasi stringa che sia ``ab``, seguita da un numero qualsiasi da ``0`` a ``9``. Per un approfondimento, è possibile facilmente trovare vari tutorial e spiegazioni dettagliate su Internet.

Per iniziare, l'oggetto RegEx deve essere compilato con il pattern di ricerca tramite :ref:`compile()<class_RegEx_method_compile>` prima di poterlo utilizzare.

::

    var regex = RegEx.new()
    regex.compile("\\w-(\\d+)")

Il pattern di ricerca deve essere prima sottoposto a escape per GDScript, prima di essere sottoposto a escape per l'espressione. Ad esempio, ``compile("\\d+")`` sarebbe interpretato da RegEx come ``\d+``. Analogamente, ``compile("\"(?:\\\\.|[^\"])*\"")`` sarebbe interpretato come ``"(?:\\.|[^"])*"``. In GDScript, è anche possibile utilizzare stringhe letterali non elaborate (r-string). Ad esempio, ``compile(r'"(?:\\.|[^"])*"')`` sarebbe interpretato allo stesso modo.

Attraverso :ref:`search()<class_RegEx_method_search>`, è possibile trovare il pattern all'interno del testo specificato. Se viene trovato un pattern, viene restituito :ref:`RegExMatch<class_RegExMatch>` ed è possibile recuperare i dettagli dei risultati tramite metodi come :ref:`RegExMatch.get_string()<class_RegExMatch_method_get_string>` e :ref:`RegExMatch.get_start()<class_RegExMatch_method_get_start>`.

::

    var regex = RegEx.new()
    regex.compile("\\w-(\\d+)")
    var result = regex.search("abc n-0123")
    if result:
        print(result.get_string()) # Stampa"n-0123"

È possibile recuperare i risultati dell'acquisizione di gruppi ``()`` passando il numero del gruppo ai vari metodi in :ref:`RegExMatch<class_RegExMatch>`. Il gruppo 0 è quello predefinito e farà sempre riferimento all'intero pattern. Nell'esempio precedente, la chiamata a ``result.get_string(1)`` restituirebbe ``0123``.

Questa versione di RegEx supporta anche l'acquisizione di gruppi con nome, i cui nomi possono essere utilizzati per recuperare i risultati. Se due o più gruppi hanno lo stesso nome, il nome si riferirà solo al primo corrispondente.

::

    var regex = RegEx.new()
    regex.compile("d(?<digit>[0-9]+)|x(?<digit>[0-9a-f]+)")
    var result = regex.search("the number is x2f")
    if result:
        print(result.get_string("digit")) # Stampa "2f"

Se è necessario elaborare più risultati, :ref:`search_all()<class_RegEx_method_search_all>` genera un elenco di tutti i risultati non sovrapposti. Per comodità, è possibile combinare questo metodo con un ciclo ``for``.

::

    # Stampa "01 03 0 3f 42"
    for result in regex.search_all("d01, d03, d0c, x3f and x42"):
        print(result.get_string("digit"))

\ **Esempio:** Dividi una stringa tramite un'espressione regolare:

::

    var regex = RegEx.new()
    regex.compile("\\S+") # Classe negata di caratteri di spaziatura.
    var risultati = []
    for result in regex.search_all("Uno  Due \n\tTre"):
        risultati.push_back(result.get_string())
        print(results) # Stampa ["Uno", "Due", "Tre"]

\ **Nota:** L'implementazione delle espressioni regolari di Godot si basa sulla libreria `PCRE2 <https://www.pcre.org/>`__. È possibile visualizzare il riferimento completo ai pattern `qui <https://www.pcre.org/current/doc/html/pcre2pattern.html>`__.

\ **Suggerimento:** È possibile usare `Regexr <https://regexr.com/>`__ per testare online le espressioni regolari.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`clear<class_RegEx_method_clear>`\ (\ )                                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`compile<class_RegEx_method_compile>`\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ )                                                                                                            |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RegEx<class_RegEx>`                                        | :ref:`create_from_string<class_RegEx_method_create_from_string>`\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static|                                                                             |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_group_count<class_RegEx_method_get_group_count>`\ (\ ) |const|                                                                                                                                                                        |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                | :ref:`get_names<class_RegEx_method_get_names>`\ (\ ) |const|                                                                                                                                                                                    |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_pattern<class_RegEx_method_get_pattern>`\ (\ ) |const|                                                                                                                                                                                |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_valid<class_RegEx_method_is_valid>`\ (\ ) |const|                                                                                                                                                                                      |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RegExMatch<class_RegExMatch>`                              | :ref:`search<class_RegEx_method_search>`\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const|                                                                             |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] | :ref:`search_all<class_RegEx_method_search_all>`\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const|                                                                     |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`sub<class_RegEx_method_sub>`\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| |
   +------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RegEx_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_RegEx_method_clear>`

Questo metodo reimposta lo stato dell'oggetto, come se fosse stato appena creato. Ovvero, annulla l'assegnazione dell'espressione regolare di questo oggetto.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_compile:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **compile**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_RegEx_method_compile>`

Compila e assegna il modello di ricerca da usare. Restituisce :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` se la compilazione avviene con successo. Se si verifica un errore, restituisce :ref:`@GlobalScope.FAILED<class_@GlobalScope_constant_FAILED>` e, se ``show_error`` è ``true``, i dettagli vengono stampati sull'output standard.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_create_from_string:

.. rst-class:: classref-method

:ref:`RegEx<class_RegEx>` **create_from_string**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_RegEx_method_create_from_string>`

Crea e compila un nuovo oggetto **RegEx**. Vedi anche :ref:`compile()<class_RegEx_method_compile>`.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_group_count>`

Restituisce il numero di gruppi di cattura nel modello compilato.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_names**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_names>`

Restituisce un array di nomi di gruppi di cattura denominati nel pattern compilato. Sono elencati in ordine di apparizione.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_pattern:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_pattern**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_pattern>`

Restituisce il modello di ricerca originale compilato.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RegEx_method_is_valid>`

Restituisce se a questo oggetto è assegnato un modello di ricerca valido.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search:

.. rst-class:: classref-method

:ref:`RegExMatch<class_RegExMatch>` **search**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search>`

Ricerca nel testo il modello compilato. Restituisce un contenitore :ref:`RegExMatch<class_RegExMatch>` del primo risultato corrispondente se trovato, altrimenti ``null``.

La regione in cui cercare può essere specificata con ``offset`` e ``end``. Ciò è utile quando si cerca un'altra corrispondenza nello stesso soggetto (``subject``), richiamando questo metodo dopo un successo precedente. Nota che impostare questi parametri non è la stessa cosa di passare una stringa abbreviata. Ad esempio, l'ancora di inizio ``^`` non è influenzata da ``offset`` e il carattere prima di ``offset`` sarà controllato per il confine di parola ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] **search_all**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search_all>`

Ricerca nel testo il modello compilato. Restituisce un array di contenitori :ref:`RegExMatch<class_RegExMatch>` per ogni risultato non sovrapposto. Se nessun risultato è stato trovato, viene restituito un array vuoto.

La regione in cui cercare può essere specificata con ``offset`` e ``end``. Ciò è utile quando si cerca un'altra corrispondenza nello stesso soggetto (``subject``), richiamando questo metodo dopo un successo precedente. Nota che impostare questi parametri non è la stessa cosa di passare una stringa abbreviata. Ad esempio, l'ancora di inizio ``^`` non è influenzata da ``offset`` e il carattere prima di ``offset`` sarà controllato per il confine di parola ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_sub:

.. rst-class:: classref-method

:ref:`String<class_String>` **sub**\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_sub>`

Ricerca nel testo il modello compilato e lo sostituisce con la stringa specificata. Escape e backreference come ``$1`` e ``$name`` vengono espansi e risolti. Per impostazione predefinita, solo la prima istanza viene sostituita, ma può essere modificata per tutte le istanze (sostituzione globale).

La regione in cui cercare può essere specificata con ``offset`` e ``end``. Ciò è utile quando si cerca un'altra corrispondenza nello stesso soggetto (``subject``), richiamando questo metodo dopo un successo precedente. Nota che impostare questi parametri non è la stessa cosa di passare una stringa abbreviata. Ad esempio, l'ancora di inizio ``^`` non è influenzata da ``offset`` e il carattere prima di ``offset`` sarà controllato per il confine di parola ``\b``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
