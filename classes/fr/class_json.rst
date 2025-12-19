:github_url: hide

.. _class_JSON:

JSON
====

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe d'aide pour créer et interpréter des données JSON.

.. rst-class:: classref-introduction-group

Description
-----------

La classe **JSON** permet à tous les types de données d'être convertis en et d'une chaîne JSON. Ceci est utile pour la sérialisation de données, par exemple pour enregistrer dans un fichier ou envoyer sur le réseau.

\ :ref:`stringify()<class_JSON_method_stringify>` est utilisée pour convertir tout type de données en une chaîne JSON.

\ :ref:`parse()<class_JSON_method_parse>` est utilisée pour convertir des données JSON existantes en un :ref:`Variant<class_Variant>` qui peut être utilisé dans Godot. Si parsé avec succès, utilisez :ref:`data<class_JSON_property_data>` pour récupérer le :ref:`Variant<class_Variant>` et utilisez :ref:`@GlobalScope.typeof()<class_@GlobalScope_method_typeof>` pour vérifier si le type du Variant est celui que vous attendez. Les objets JSON sont convertis en un :ref:`Dictionary<class_Dictionary>`, mais les données JSON peuvent être utilisées pour stocker des :ref:`Array<class_Array>`\ s, des nombres, des :ref:`String<class_String>`\ s et même seulement un booléen.

::

    var donnees_a_envoyer = ["a", "b", "c"]
    var chaine_json = JSON.stringify(donnees_a_envoyer)
    # Sauvegarder les données
    # ...
    # Récupérer les données
    var json = JSON.new()
    var erreur = json.parse(chaine_json)
    if erreur == OK:
        var donnees_recues = json.data
        if typeof(donnees_recues) == TYPE_ARRAY:
            print(donnees_recues) # Affiche le tableau.
        else:
            print("Données inattendues")
    else:
        print("Erreur du parsing JSON : ", json.get_error_message(), " dans ", json_string, " à la ligne ", json.get_error_line())

Alternativement, vous pouvez parser des chaînes en utilisant la méthode statique :ref:`parse_string()<class_JSON_method_parse_string>`, mais il ne gère pas les erreurs.

::

    var donnes = JSON.parse_string(chaine_json) # Renvoie null si le parsing a echoué.

\ **Note :** Les deux méthodes de parsing ne sont pas entièrement conformes à la spécification JSON :

- Les virgules de fin dans les tableaux ou les objets sont ignorées, au lieu de causer une erreur de parsing.

- Les caractères de nouvelle ligne et de tabulations sont acceptés en caractères alphabétiques et sont traités comme leurs séquences d'échappement correspondantes ``\n`` et ``\t``.

- Les chiffres sont parsés en utilisant :ref:`String.to_float()<class_String_method_to_float>` qui est généralement plus laxiste que la spécification JSON.

- Certaines erreurs, telles que les séquences Unicode invalides, ne provoquent pas d'erreur de parsing. Au lieu de cela, la chaîne est nettoyée et une erreur est affichée dans la console.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+----------+
   | :ref:`Variant<class_Variant>` | :ref:`data<class_JSON_property_data>` | ``null`` |
   +-------------------------------+---------------------------------------+----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`from_native<class_JSON_method_from_native>`\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                 | :ref:`get_error_line<class_JSON_method_get_error_line>`\ (\ ) |const|                                                                                                                                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_error_message<class_JSON_method_get_error_message>`\ (\ ) |const|                                                                                                                                                                 |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`get_parsed_text<class_JSON_method_get_parsed_text>`\ (\ ) |const|                                                                                                                                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`parse<class_JSON_method_parse>`\ (\ json_text\: :ref:`String<class_String>`, keep_text\: :ref:`bool<class_bool>` = false\ )                                                                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`parse_string<class_JSON_method_parse_string>`\ (\ json_string\: :ref:`String<class_String>`\ ) |static|                                                                                                                               |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`           | :ref:`stringify<class_JSON_method_stringify>`\ (\ data\: :ref:`Variant<class_Variant>`, indent\: :ref:`String<class_String>` = "", sort_keys\: :ref:`bool<class_bool>` = true, full_precision\: :ref:`bool<class_bool>` = false\ ) |static| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`         | :ref:`to_native<class_JSON_method_to_native>`\ (\ json\: :ref:`Variant<class_Variant>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                         |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_JSON_property_data:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **data** = ``null`` :ref:`🔗<class_JSON_property_data>`

.. rst-class:: classref-property-setget

- |void| **set_data**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_data**\ (\ )

Contient les données JSON parsées en leur forme de :ref:`Variant<class_Variant>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_JSON_method_from_native:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **from_native**\ (\ variant\: :ref:`Variant<class_Variant>`, full_objects\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_from_native>`

Convertit un type natif du moteur en une valeur compatible JSON.

Par défaut, les objets sont ignorés pour des raisons de sécurité, sauf si ``full_objects`` vaut\ ``true``.

Vous pouvez convertir une valeur native en une chaîne JSON comme ceci :

::

    func encoder_donnees(valeur, objets_complets = false):
        return JSON.stringify(JSON.from_native(valeur, objets_complets))

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_line:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_error_line**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_line>`

Renvoie ``0`` si le dernier appel à :ref:`parse()<class_JSON_method_parse>` était un succès, ou le numéro de ligne où le parsing a échoué.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_error_message:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_error_message**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_error_message>`

Renvoie une chaîne vide si le dernier appel à :ref:`parse()<class_JSON_method_parse>` était un succès, ou le message d'erreur si il a échoué.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_get_parsed_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_parsed_text**\ (\ ) |const| :ref:`🔗<class_JSON_method_get_parsed_text>`

Renvoie le texte parsé par :ref:`parse()<class_JSON_method_parse>` (nécessite de passer ``keep_text`` à :ref:`parse()<class_JSON_method_parse>`).

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **parse**\ (\ json_text\: :ref:`String<class_String>`, keep_text\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_JSON_method_parse>`

Essaye de parser le texte ``json_text`` fourni.

Renvoie une erreur :ref:`Error<enum_@GlobalScope_Error>`. Si le parsing était un succès, elle renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` et le résultat peut être récupéré en utilisant :ref:`data<class_JSON_property_data>`. Si c'était un échec, utilisez :ref:`get_error_line()<class_JSON_method_get_error_line>` et :ref:`get_error_message()<class_JSON_method_get_error_message>` pour identifier la source de l'échec.

Variante non statique de :ref:`parse_string()<class_JSON_method_parse_string>`, si vous voulez gérer les erreurs de manière personnalisée.

L'argument optionnel ``keep_text`` ordonne au parseur de conserver une copie du texte original. Ce texte peut être obtenu plus tard en utilisant la fonction :ref:`get_parsed_text()<class_JSON_method_get_parsed_text>` et est utilisé lors de la sauvegarde de la ressource (au lieu de générer un nouveau texte à partir de :ref:`data<class_JSON_property_data>`).

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_parse_string:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **parse_string**\ (\ json_string\: :ref:`String<class_String>`\ ) |static| :ref:`🔗<class_JSON_method_parse_string>`

Essaie de parser le ``json_string`` fourni et renvoie les données parsées. Renvoie ``null`` si le parsing a échoué.

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_stringify:

.. rst-class:: classref-method

:ref:`String<class_String>` **stringify**\ (\ data\: :ref:`Variant<class_Variant>`, indent\: :ref:`String<class_String>` = "", sort_keys\: :ref:`bool<class_bool>` = true, full_precision\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_stringify>`

Convertit une variable :ref:`Variant<class_Variant>` en texte JSON et renvoie le résultat. Utile pour sérialiser les données pour les enregistrer ou les envoyer à travers le réseau.

\ **Note :** Les spécifications du JSON ne définissent pas de types entier ou flottant, et ne définissent que le type commun *number*. Donc, convertir un Variant en JSON transformera tous les nombres en type :ref:`float<class_float>`.

\ **Note :** Si ``full_precision`` vaut ``true``, lors de la conversion des flottants, les chiffres non fiables sont convertis avec les chiffres fiables pour garantir un décodage exact.

La paramètre ``indent`` contrôle si et comment le JSON doit être indenté, la chaine de caractères utilisé pour ce paramètre sera utilisé pour l'indentation de la sortie, et même les espaces ``"   "`` fonctionneront. ``\t`` et ``\n`` peuvent aussi être utilisé pour la tabulation, ou pour le retour à la ligne, respectivement.

\ **Exemples de sortie :**\ 

::

    ## JSON.print(my_dictionary)
    {"name":"mon_dictionnaire","version":"1.0.0","entities":[{"name":"élément_0","value":"valeur_0"},{"name":"élément_1","value":"valeur_1"}]}

    ## JSON.print(my_dictionary, "\t")
    {
        "name": "mon_dictionnaire",
        "version": "1.0.0",
        "entities": [
            {
                "name": "élément_0",
                "value": "valeur_0"
            },
            {
                "name": "élément_1",
                "value": "valeur_1"
            }
        ]
    }

    ## JSON.print(my_dictionary, "...")
    {
    ..."name": "mon_dictionnaire",
    ..."version": "1.0.0",
    ..."entities": [
    ......{
    ........."name": "élément_0",
    ........."value": "valeur_0"
    ......},
    ......{
    ........."name": "élément_1",
    ........."value": "valeur_1"
    ......}
    ...]
    }

.. rst-class:: classref-item-separator

----

.. _class_JSON_method_to_native:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **to_native**\ (\ json\: :ref:`Variant<class_Variant>`, allow_objects\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_JSON_method_to_native>`

Convertit une valeur compatible-JSON qui a été créée avec :ref:`from_native()<class_JSON_method_from_native>` vers un type natif du moteur.

Par défaut, les objets sont ignorés pour des raisons de sécurité, sauf si ``allow_objects`` vaut ``true``.

Vous pouvez convertir une chaîne JSON en une valeur native comme ceci :

::

    func decoder_donnees(chaine, autoriser_objets = false):
        return JSON.to_native(JSON.parse_string(chaine), autoriser_objets)

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
