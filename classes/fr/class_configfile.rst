:github_url: hide

.. _class_ConfigFile:

ConfigFile
==========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe d’aide pour gérer des fichiers de style INI.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe d'aide peut être utilisée pour enregistrer des valeurs de type :ref:`Variant<class_Variant>` sur le système de fichier au format INI. Les valeurs enregistrées sont identifiées par une section et une clé :

.. code:: text

    [section]
    une_clef=42
    exemple_chaine="Bonjour le monde 3d !"
    un_vecteur=Vector3(1, 0, 2)

Les données stockées peuvent être enregistrées dans un fichier ou chargées depuis un fichier, mais aussi par les objets ConfigFile qui peuvent être utilisés directement sans accéder au système de fichiers.

L'exemple suivant montre comme créer un simple **ConfigFile** et l'enregistrer sur le disque :


.. tabs::

 .. code-tab:: gdscript

    # Créer un nouvel objet ConfigFile.
    var config = ConfigFile.new()

    # Stocker quelques valeurs.
    config.set_value("Joueur1", "nom_joueur", "Jean")
    config.set_value("Joueur1", "meilleur_score", 10)
    config.set_value("Joueur2", "nom_joueur", "V3geta")
    config.set_value("Joueur2", "meilleur_score", 9001)

    # L'enregistrer sur dans un fichier (en écrasant le fichier déjà existant s'il y en a un).
    config.save("user://scores.cfg")

 .. code-tab:: csharp

    // Créer un nouvel objet ConfigFile.
    var config = new ConfigFile();

    // Stocker quelques valeurs.
    config.set_value("Joueur1", "nom_joueur", "Jean")
    config.set_value("Joueur1", "meilleur_score", 10)
    config.set_value("Joueur2", "nom_joueur", "V3geta")
    config.set_value("Joueur2", "meilleur_score", 9001)

    // L'enregistrer sur dans un fichier (en écrasant le fichier déjà existant s'il y en a un).
    config.Save("user://scores.cfg");



Cet exemple montre comme le fichier au-dessus peut-être chargé :


.. tabs::

 .. code-tab:: gdscript

    var donnees_score = {}
    var config = ConfigFile.new()

    # Charger les données depuis le fichier.
    var err = config.load("user://scores.cfg")

    # Si le fichier n'a pu être chargé, ignorer la suite.
    if err != OK:
        return

    # Itérer sur les sections.
    for joueur in config.get_sections():
        # Récupérer les données de chaque section.
        var nom_joueur = config.get_value(joueur, "nom_joueur")
        var score_joueur = config.get_value(joueur, "meilleur_score")
        donnees_score[nom_joueur] = score_joueur

 .. code-tab:: csharp

    var donnees_score = new Godot.Collections.Dictionary();
    var config = new ConfigFile();

    // Charger les données depuis le fichier.
    Error err = config.Load("user://scores.cfg");

    // Si le fichier n'a pu être chargé, ignorer la suite.
    if (err != Error.Ok)
    {
        return;
    }

    // Itérer sur les sections.
    foreach (String joueur in config.GetSections())
    {
        // Récupérer les données de chaque section.
        var nom_joueur = (String)config.GetValue(joueur, "nom_joueur");
        var score_joueur = (int)config.GetValue(joueur, "meilleur_score");
        score_data[nom_joueur] = score_joueur;
    }



Toutes les opérations qui modifient le ConfigFile comme :ref:`set_value()<class_ConfigFile_method_set_value>`, :ref:`clear()<class_ConfigFile_method_clear>`, ou :ref:`erase_section()<class_ConfigFile_method_erase_section>`, ne changent que les données en mémoire. Si vous voulez aussi modifier le fichier, vous devez sauvegarder les changements avec :ref:`save()<class_ConfigFile_method_save>`, :ref:`save_encrypted()<class_ConfigFile_method_save_encrypted>`, ou :ref:`save_encrypted_pass()<class_ConfigFile_method_save_encrypted_pass>`.

Notez que les noms des sections et des propriétés ne peuvent contenir des espaces. Tous les caractères après un espace seront ignorés à la sauvegarde et au chargement.

Les ConfigFiles peuvent aussi contenir des lignes de commentaire écrites manuellement qui doivent commencer par un point-virgule (``;``). Ces lignes sont ignorées durant le parsing d'un fichier. À noter que ces commentaires seront perdus durant l'enregistrement d'un ConfigFile. Ils peuvent toujours servir pour les fichiers de configuration sur les serveurs, qui ne sont typiquement jamais modifiés sans action explicite de l'utilisateur.

\ **Note :** L'extension du nom de fichier donné à un ConfigFile n'a aucun impact sur son format ou son comportement. Par convention, l'extension ``.cfg`` est utilisée ici, mais n'importe quelle autre extension comme ``.ini`` est aussi valide. Comme ni ``.cfg`` ni ``.ini`` ne sont standardisés, le format des ConfigFile de Godot peuvent différer de ceux écrits par d'autres programmes.

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
