:github_url: hide

.. _class_ConfigFile:

ConfigFile
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Clase de ayuda para manejar los archivos de tipo INI.

.. rst-class:: classref-introduction-group

Descripción
----------------------

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

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_ConfigFile_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_ConfigFile_method_clear>`

Elimina todo el contenido de la configuración.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_encode_to_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **encode_to_text**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_encode_to_text>`

Obtain the text version of this config file (the same text that would be written to a file).

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section:

.. rst-class:: classref-method

|void| **erase_section**\ (\ section\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section>`

Borra la sección especificada junto con todos los pares clave-valor que hay dentro. Provoca un error si la sección no existe.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_erase_section_key:

.. rst-class:: classref-method

|void| **erase_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_erase_section_key>`

Borra la clave especificada en una sección. Provoca un error si la sección o la clave no existen.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_section_keys:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_section_keys**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_get_section_keys>`

Devuelve un array de todos los identificadores clave definidos en la sección especificada. Levanta un error y devuelve un array vacío si la sección no existe.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_sections:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_sections**\ (\ ) |const| :ref:`🔗<class_ConfigFile_method_get_sections>`

Devuelve un array de todos los identificadores de sección definidos.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_get_value:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, default\: :ref:`Variant<class_Variant>` = null\ ) |const| :ref:`🔗<class_ConfigFile_method_get_value>`

Returns the current value for the specified section and key. If either the section or the key do not exist, the method returns the fallback ``default`` value. If ``default`` is not specified or set to ``null``, an error is also raised.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section**\ (\ section\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section>`

Devuelve ``true`` si existe la sección especificada.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_has_section_key:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_section_key**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_ConfigFile_method_has_section_key>`

Devuelve ``true`` si existe el par de claves de lasección especificada.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load>`

Loads the config file specified as a parameter. The file's contents are parsed and loaded in the **ConfigFile** object which the method was called on.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the other :ref:`Error<enum_@GlobalScope_Error>` values if the operation failed.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted>`

Loads the encrypted config file specified as a parameter, using the provided ``key`` to decrypt it. The file's contents are parsed and loaded in the **ConfigFile** object which the method was called on.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the other :ref:`Error<enum_@GlobalScope_Error>` values if the operation failed.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_load_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_load_encrypted_pass>`

Loads the encrypted config file specified as a parameter, using the provided ``password`` to decrypt it. The file's contents are parsed and loaded in the **ConfigFile** object which the method was called on.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the other :ref:`Error<enum_@GlobalScope_Error>` values if the operation failed.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ data\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_parse>`

Parses the passed string as the contents of a config file. The string is parsed and loaded in the ConfigFile object which the method was called on.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the other :ref:`Error<enum_@GlobalScope_Error>` values if the operation failed.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save>`

Saves the contents of the **ConfigFile** object to the file specified as a parameter. The output file uses an INI-style structure.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the other :ref:`Error<enum_@GlobalScope_Error>` values if the operation failed.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted**\ (\ path\: :ref:`String<class_String>`, key\: :ref:`PackedByteArray<class_PackedByteArray>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted>`

Saves the contents of the **ConfigFile** object to the AES-256 encrypted file specified as a parameter, using the provided ``key`` to encrypt it. The output file uses an INI-style structure.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the other :ref:`Error<enum_@GlobalScope_Error>` values if the operation failed.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_save_encrypted_pass:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save_encrypted_pass**\ (\ path\: :ref:`String<class_String>`, password\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ConfigFile_method_save_encrypted_pass>`

Saves the contents of the **ConfigFile** object to the AES-256 encrypted file specified as a parameter, using the provided ``password`` to encrypt it. The output file uses an INI-style structure.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or one of the other :ref:`Error<enum_@GlobalScope_Error>` values if the operation failed.

.. rst-class:: classref-item-separator

----

.. _class_ConfigFile_method_set_value:

.. rst-class:: classref-method

|void| **set_value**\ (\ section\: :ref:`String<class_String>`, key\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ConfigFile_method_set_value>`

Asigna un valor a la clave especificada de la sección especificada. Si la sección o la clave no existen, se crean. Al pasar un valor ``null`` se borra la clave especificada si existe, y se borra la sección si termina vacía una vez que se ha eliminado la clave.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
