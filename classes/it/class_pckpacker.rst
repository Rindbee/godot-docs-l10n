:github_url: hide

.. _class_PCKPacker:

PCKPacker
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Crea pacchetti che possono essere caricati in un progetto in esecuzione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**PCKPacker** è utilizzato per creare pacchetti che è possibile caricare in un progetto in esecuzione attraverso :ref:`ProjectSettings.load_resource_pack()<class_ProjectSettings_method_load_resource_pack>`.


.. tabs::

 .. code-tab:: gdscript

    var packer = PCKPacker.new()
    packer.pck_start("test.pck")
    packer.add_file("res://text.txt", "text.txt")
    packer.flush()

 .. code-tab:: csharp

    var packer = new PckPacker();
    packer.PckStart("test.pck");
    packer.AddFile("res://text.txt", "text.txt");
    packer.Flush();



Il **PCKPacker** soprastante crea il pacchetto ``test.pck``, quindi aggiunge un file denominato ``text.txt`` alla radice del pacchetto.

\ **Nota:** PCK è il formato di file impacchettato di Godot. Per creare archivi ZIP che è possibile leggere da qualsiasi programma, usa invece :ref:`ZIPPacker<class_ZIPPacker>`.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file<class_PCKPacker_method_add_file>`\ (\ target_path\: :ref:`String<class_String>`, source_path\: :ref:`String<class_String>`, encrypt\: :ref:`bool<class_bool>` = false\ )                                                                                                               |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`add_file_removal<class_PCKPacker_method_add_file_removal>`\ (\ target_path\: :ref:`String<class_String>`\ )                                                                                                                                                                                     |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`flush<class_PCKPacker_method_flush>`\ (\ verbose\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                                                                           |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`pck_start<class_PCKPacker_method_pck_start>`\ (\ pck_path\: :ref:`String<class_String>`, alignment\: :ref:`int<class_int>` = 32, key\: :ref:`String<class_String>` = "0000000000000000000000000000000000000000000000000000000000000000", encrypt_directory\: :ref:`bool<class_bool>` = false\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_PCKPacker_method_add_file:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file**\ (\ target_path\: :ref:`String<class_String>`, source_path\: :ref:`String<class_String>`, encrypt\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_add_file>`

Adds the ``source_path`` file to the current PCK package at the ``target_path`` internal path. The ``res://`` prefix for ``target_path`` is optional and stripped internally. File content is immediately written to the PCK.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_add_file_removal:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **add_file_removal**\ (\ target_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_PCKPacker_method_add_file_removal>`

Registra una rimozione di file del percorso interno ``target_path`` al PCK. Questo è usato principalmente per le patch. Se il file in questo percorso è stato caricato da un PCK precedente, verrà rimosso. Il prefisso ``res://`` per ``target_path`` è facoltativo e rimosso internamente.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_flush:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **flush**\ (\ verbose\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_flush>`

Writes the file directory and closes the PCK. If ``verbose`` is ``true``, a list of files added will be printed to the console for easier debugging.

\ **Note:** **PCKPacker** will automatically flush when it's freed, which happens when it goes out of scope or when it gets assigned with ``null``. In C# the reference must be disposed after use, either with the ``using`` statement or by calling the ``Dispose`` method directly.

.. rst-class:: classref-item-separator

----

.. _class_PCKPacker_method_pck_start:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **pck_start**\ (\ pck_path\: :ref:`String<class_String>`, alignment\: :ref:`int<class_int>` = 32, key\: :ref:`String<class_String>` = "0000000000000000000000000000000000000000000000000000000000000000", encrypt_directory\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_PCKPacker_method_pck_start>`

Crea un nuovo file PCK con al percorso ``pck_path``. L'estensione del file ``.pck`` non viene aggiunta automaticamente, quindi dovrebbe far parte di ``pck_path`` (anche se non è obbligatoria).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
