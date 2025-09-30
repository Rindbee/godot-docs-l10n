:github_url: hide

.. _class_ConfigFile:

ConfigFile
==========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe d’aide pour gérer des fichiers de style INI.

.. rst-class:: classref-introduction-group

Description
-----------

This helper class can be used to store :ref:`Variant<class_Variant>` values on the filesystem using INI-style formatting. The stored values are identified by a section and a key:

.. code:: text

    [section]
    some_key=42
    string_example="Hello World3D!"
    a_vector=Vector3(1, 0, 2)

The stored data can be saved to or parsed from a file, though ConfigFile objects can also be used directly without accessing the filesystem.

The following example shows how to create a simple **ConfigFile** and save it on disc:


.. tabs::

 .. code-tab:: gdscript

    # Create new ConfigFile object.
    var config = ConfigFile.new()

    # Store some values.
    config.set_value("Player1", "player_name", "Steve")
    config.set_value("Player1", "best_score", 10)
    config.set_value("Player2", "player_name", "V3geta")
    config.set_value("Player2", "best_score", 9001)

    # Save it to a file (overwrite if already exists).
    config.save("user://scores.cfg")

 .. code-tab:: csharp

    // Create new ConfigFile object.
    var config = new ConfigFile();

    // Store some values.
    config.SetValue("Player1", "player_name", "Steve");
    config.SetValue("Player1", "best_score", 10);
    config.SetValue("Player2", "player_name", "V3geta");
    config.SetValue("Player2", "best_score", 9001);

    // Save it to a file (overwrite if already exists).
    config.Save("user://scores.cfg");



This example shows how the above file could be loaded:


.. tabs::

 .. code-tab:: gdscript

    var score_data = {}
    var config = ConfigFile.new()

    # Load data from a file.
    var err = config.load("user://scores.cfg")

    # If the file didn't load, ignore it.
    if err != OK:
        return

    # Iterate over all sections.
    for player in config.get_sections():
        # Fetch the data for each section.
        var player_name = config.get_value(player, "player_name")
        var player_score = config.get_value(player, "best_score")
        score_data[player_name] = player_score

 .. code-tab:: csharp

    var score_data = new Godot.Collections.Dictionary();
    var config = new ConfigFile();

    // Load data from a file.
    Error err = config.Load("user://scores.cfg");

    // If the file didn't load, ignore it.
    if (err != Error.Ok)
    {
        return;
    }

    // Iterate over all sections.
    foreach (String player in config.GetSections())
    {
        // Fetch the data for each section.
        var player_name = (String)config.GetValue(player, "player_name");
        var player_score = (int)config.GetValue(player, "best_score");
        score_data[player_name] = player_score;
    }



Any operation that mutates the ConfigFile such as :ref:`set_value()<class_ConfigFile_method_set_value>`, :ref:`clear()<class_ConfigFile_method_clear>`, or :ref:`erase_section()<class_ConfigFile_method_erase_section>`, only changes what is loaded in memory. If you want to write the change to a file, you have to save the changes with :ref:`save()<class_ConfigFile_method_save>`, :ref:`save_encrypted()<class_ConfigFile_method_save_encrypted>`, or :ref:`save_encrypted_pass()<class_ConfigFile_method_save_encrypted_pass>`.

Keep in mind that section and property names can't contain spaces. Anything after a space will be ignored on save and on load.

ConfigFiles can also contain manually written comment lines starting with a semicolon (``;``). Those lines will be ignored when parsing the file. Note that comments will be lost when saving the ConfigFile. This can still be useful for dedicated server configuration files, which are typically never overwritten without explicit user action.

\ **Note:** The file extension given to a ConfigFile does not have any impact on its formatting or behavior. By convention, the ``.cfg`` extension is used here, but any other extension such as ``.ini`` is also valid. Since neither ``.cfg`` nor ``.ini`` are standardized, Godot's ConfigFile formatting may differ from files written by other programs.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`clear<class_ConfigFile_method_clear>`\ (\ )                                                                                                                                           |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`encode_to_text<class_ConfigFile_method_encode_to_text>`\ (\ ) |const|                                                                                                                 |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_section<class_ConfigFile_method_erase_section>`\ (\ section\: :ref:`String<class_String>`\ )                                                                                    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_section_key<class_ConfigFile_method_erase_section_key>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ )                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_section_keys<class_ConfigFile_method_get_section_keys>`\ (\ section\: :ref:`String<class_String>`\ ) |const|                                                                      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_sections<class_ConfigFile_method_get_sections>`\ (\ ) |const|                                                                                                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                     | :ref:`get_value<class_ConfigFile_method_get_value>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_section<class_ConfigFile_method_has_section>`\ (\ section\: :ref:`String<class_String>`\ ) |const|                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`has_section_key<class_ConfigFile_method_has_section_key>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const|                                     |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load<class_ConfigFile_method_load>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load_encrypted<class_ConfigFile_method_load_encrypted>`\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`load_encrypted_pass<class_ConfigFile_method_load_encrypted_pass>`\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`parse<class_ConfigFile_method_parse>`\ (\ data\: :ref:`String<class_String>`\ )                                                                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save<class_ConfigFile_method_save>`\ (\ path\: :ref:`String<class_String>`\ )                                                                                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save_encrypted<class_ConfigFile_method_save_encrypted>`\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ )                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save_encrypted_pass<class_ConfigFile_method_save_encrypted_pass>`\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ )                                   |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_value<class_ConfigFile_method_set_value>`\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ConfigFile_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ConfigFile_method_clear>`

Supprime tout le contenu de la configuration.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_encode_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **encode_to_text**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_encode_to_text>`

Obtient la version texte de ce fichier de configuration (le même texte qui serait écrit dans un fichier).

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section:

.. rst-class:: classref-method

|void| **erase_section**\ (\ section\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section>`

Supprime la section spécifiée ainsi que toutes ses paires valeur-clé avec. Affiche une erreur si la section n'existe pas.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section_key:

.. rst-class:: classref-method

|void| **erase_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section_key>`

Supprime la clé spécifiée dans une section. Affiche une erreur si la section ou la clé n'existe pas.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_section_keys:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_section_keys**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_get_section_keys>`

Renvoie un tableau de tous les identifiants des clés définis dans la section spécifiée. Affiche une erreur et renvoie un tableau vide si la section n'existe pas.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_sections:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_sections**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_get_sections>`

Renvoie un tableau de tous les identifiants de sections définis.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_ConfigFile_method_get_value>`

Renvoie l'actuelle valeur pour la section et la clé spécifiées. Si la section ou la clé n'existent pas, la méthode renvoie la valeur du paramètre de repli ``default``. Si ``default`` n'est pas spécifié ou défini à ``null``, une erreur est levée.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section>`

Renvoie ``true`` si la section spécifiée existe.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section_key>`

Renvoie ``true`` si la paire section et clé spécifiée existe.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load>`

Charge le fichier de configuration spécifié en paramètre. Le contenu du fichier est interprété et chargé dans l'objet **ConfigFile** sur lequel la méthode a été appelée.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors du succès, ou une des valeurs :ref:`Error<enum_@GlobalScope_Error>` si l'opération a échoué.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted>`

Charge le fichier de configuration encrypté spécifié en paramètre, en utilisant la clé ``key`` fournie pour le décrypter. Le contenu du fichier est interprété et chargé dans l'objet **ConfigFile** sur lequel la méthode a été appelée.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors du succès, ou une des valeurs :ref:`Error<enum_@GlobalScope_Error>` si l'opération a échoué.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted_pass>`

Charge le fichier de configuration crypté spécifié comme paramètre, en utilisant le mode de passe ``password`` donné pour le décrypter. Le contenu du fichier est interprété puis chargé dans l'objet **ConfigFile** sur lequel la méthode a été appelée.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors d'un succès, ou une des autres valeurs :ref:`Error<enum_@GlobalScope_Error>` si l'opération a échoué.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ data\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_parse>`

Interprète la chaîne passée comme étant le contenu d'un fichier de configuration. La chaîne est interprétée puis chargée dans l'objet ConfigFile sur lequel la méthode a été appelée.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors d'un succès, ou une des autres valeurs :ref:`Error<enum_@GlobalScope_Error>` si l'opération a échoué.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save>`

Enregistre le contenu de l'objet **ConfigFile** dans le fichier spécifié en paramètre. Le fichier de sortie utilise une structure de type INI.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors d'un succès, ou une des autres valeurs :ref:`Error<enum_@GlobalScope_Error>` si l'opération a échoué.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted>`

Enregistre le contenu de l'objet **ConfigFile** vers le fichier chiffré AES-256 donné en paramètre, en utilisant la clé ``key`` fournie pour le crypter. Le fichier de sortie utilise une structure de type INI.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors d'un succès, ou une des autres valeurs :ref:`Error<enum_@GlobalScope_Error>` si l'opération a échoué.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted_pass>`

Enregistre le contenu de l'objet **ConfigFile** vers le fichier chiffré AES-256 donné en paramètre, en utilisant le mot de passe ``password`` fourni pour le crypter. Le fichier de sortie utilise une structure de type INI.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` lors d'un succès, ou une des autres valeurs :ref:`Error<enum_@GlobalScope_Error>` si l'opération a échoué.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_set_value:

.. rst-class:: classref-method

|void| **set_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ConfigFile_method_set_value>`

Attribue une valeur à la clé spécifiée de la section spécifiée. Si la section ou la clé n'existe pas, elles sont créées. Passer une valeur ``null`` supprime la clé spécifiée si elle existe, et supprime la section si elle est vide une fois que la clé a été supprimée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
