:github_url: hide

.. _class_RegEx:

RegEx
=====

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Classe pour chercher du texte avec des motifs en utilisant des expressions régulières.

.. rst-class:: classref-introduction-group

Description
-----------

Une expression régulière (ou regex) est un langage compact qui peut être utilisé pour reconnaître des chaînes qui suivent un motif spécifique, comme des URLs, des adresses mail, des phrases complètes, etc... Par exemple, un regex ``ab[0-9]`` trouverait toute chaîne valant ``ab`` suivi de n'importe quel chiffre entre ``0`` et ``9``. Pour une explication plus détaillée, vous pouvez facilement trouver divers tutoriels et explications détaillées sur Internet.

Pour commencer, l'objet RegEx doit être compilé avec le motif de recherche en utilisant :ref:`compile()<class_RegEx_method_compile>` avant qu'il puisse être utilisé.

::

    var regex = RegEx.new()
    regex.compile("\\w-(\\d+)")

Le motif de recherche doit être échappé d'abord en GDScript avant qu'il soit échappé pour l'expression. Par exemple, ``compile("\\d+")`` serait lu par RegEx comme ``\d+``. De la même façon, ``compile(("\"(?:\\\\.|[^\"])*\"")`` serait lu comme ``"(?:\\.|[^"])*"``. En GDScript, vous pouvez aussi utiliser des littéraux de chaîne brutes (r-strings). Par exemple, ``compile(r'"(?:\\.|[^"])*"')`` serait lu de la même manière.

En utilisant :ref:`search()<class_RegEx_method_search>`, vous pouvez trouver le motif dans le texte donné. Si un motif est trouvé, :ref:`RegExMatch<class_RegExMatch>` est renvoyé et vous pouvez récupérer les détails du résultat en utilisant des méthodes telles que :ref:`RegExMatch.get_string()<class_RegExMatch_method_get_string>` et :ref:`RegExMatch.get_start()<class_RegExMatch_method_get_start>`.

::

    var regex = RegEx.new()
    regex.compile("\\w-(\\d+)")
    var resultat = regex.search("abc n-0123")
    if resultat:
        print(resultat.get_string()) # Affiche "n-0123"

Les résultats des groupes de capture ``()`` peuvent être récupérés en passant le numéro du groupe aux diverses méthodes dans :ref:`RegExMatch<class_RegExMatch>`. Le groupe 0 est le défaut et se référera toujours au motif entier. Dans l'exemple ci-dessus, appeler ``resultat.get_string(1)`` vous donnerait ``0123``.

Cette version de RegEx supporte aussi les groupes de capture nommés, et les noms peuvent être utilisés pour récupérer les résultats. Si deux groupes ou plus ont le même nom, le nom se référerait seulement au premier avec une correspondance.

::

    var regex = RegEx.new()
    regex.compile("d(?<chiffre>[0-9]+)|x(?<chiffre>[0-9a-f]+)")
    var resultat = regex.search("le nombre est x2f")
    if resultat:
        print(resultat.get_string("chiffre")) # Affiche "2f"

Si vous avez besoin de traiter plusieurs résultats, :ref:`search_all()<class_RegEx_method_search_all>` génère une liste de tous les résultats ne se chevauchant pas. Cela peut-être combiné avec une boucle ``for`` pour plus de facilité.

::

    # Affiche "01 03 0 3f 42"
    for resultat in regex.search_all("d01, d03, d0c, x3f et x42"):
        print(resultat.get_string("chiffre"))

\ **Exemple :** Diviser une chaîne en utilisant une RegEx :

::

    var regex = RegEx.new()
    regex.compile("\\S+") # Classe de caractères non-espace
    var resultats = []
    for resultat in regex.search_all("Un  Deux \n\tTrois"):
        resultats.push_back(result.get_string())
    print(resultats) # Affiche ["Un", "Deux", "Trois"]

\ **Note :** L'implémentation regex de Godot est basée sur la bibliothèque `PCRE2 <https://www.pcre.org/>`__. Vous pouvez voir la référence des motifs complète `ici <https://www.pcre.org/current/doc/html/pcre2pattern.html>`__.

\ **Astuce :** Vous pouvez utiliser `Regexr <https://regexr.com/>`__ pour vérifier des expressions régulières en ligne.

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Descriptions des méthodes
--------------------------------------------------

.. _class_RegEx_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_RegEx_method_clear>`

Cette méthode réinitialise l'état de l'objet, comme si il était fraîchement créé. En fait, elle désaffecte l'expression régulière de cet objet.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_compile:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **compile**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_RegEx_method_compile>`

Compile et assigne le motif de recherche à utiliser. Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` si la compilation est réussie. Si la compilation échoue, renvoie :ref:`@GlobalScope.FAILED<class_@GlobalScope_constant_FAILED>` et lorsque ``show_error`` vaut ``true``, les détails sont affichés à la sortie standard.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_create_from_string:

.. rst-class:: classref-method

:ref:`RegEx<class_RegEx>` **create_from_string**\ (\ pattern\: :ref:`String<class_String>`, show_error\: :ref:`bool<class_bool>` = true\ ) |static| :ref:`🔗<class_RegEx_method_create_from_string>`

Crée et compile un nouvel objet **RegEx**. Voir aussi :ref:`compile()<class_RegEx_method_compile>`.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_group_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_group_count**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_group_count>`

Renvoie le nombre de groupes de capture dans le motif compilé.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_names:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_names**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_names>`

Renvoie un tableau de noms de groupes de capture nommés dans le motif compilé. Ils sont ordonnés par ordre d'apparition.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_get_pattern:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_pattern**\ (\ ) |const| :ref:`🔗<class_RegEx_method_get_pattern>`

Renvoie le motif de recherche original qui a été compilé.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid**\ (\ ) |const| :ref:`🔗<class_RegEx_method_is_valid>`

Renvoie si cet objet a un motif de recherche valide assigné.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search:

.. rst-class:: classref-method

:ref:`RegExMatch<class_RegExMatch>` **search**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search>`

Cherche le texte pour le motif compilé. Renvoie un conteneur :ref:`RegExMatch<class_RegExMatch>` du premier résultat correspondant si trouvé, sinon ``null``.

La région dans laquelle rechercher peut être spécifiée avec ``offset`` et ``end``. Ceci est utile lors d'une recherche d'un autre correspondance dans le même objet ``subject`` en appelant cette méthode à nouveau après un succès précédent. Notez que définir ces paramètres diffère du passage d'une chaîne raccourcie. Par exemple, l'ancre de démarrage ``^`` n'est pas affectée par ``offset``, et le caractère avant ``offset`` sera vérifié pour la limite de mot ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_search_all:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RegExMatch<class_RegExMatch>`\] **search_all**\ (\ subject\: :ref:`String<class_String>`, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_search_all>`

Cherche le texte pour le motif compilé. Renvoie un tableau de conteneurs :ref:`RegExMatch<class_RegExMatch>` pour chaque résultat ne se superposant pas. Si aucun résultat n'est trouvé, un tableau vide est renvoyé à la place.

La région dans laquelle rechercher peut être spécifiée avec ``offset`` et ``end``. Ceci est utile lors d'une recherche d'un autre correspondance dans le même objet ``subject`` en appelant cette méthode à nouveau après un succès précédent. Notez que définir ces paramètres diffère du passage d'une chaîne raccourcie. Par exemple, l'ancre de démarrage ``^`` n'est pas affectée par ``offset``, et le caractère avant ``offset`` sera vérifié pour la limite de mot ``\b``.

.. rst-class:: classref-item-separator

----

.. _class_RegEx_method_sub:

.. rst-class:: classref-method

:ref:`String<class_String>` **sub**\ (\ subject\: :ref:`String<class_String>`, replacement\: :ref:`String<class_String>`, all\: :ref:`bool<class_bool>` = false, offset\: :ref:`int<class_int>` = 0, end\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_RegEx_method_sub>`

Cherche le texte pour le motif compilé et le remplace par la chaîne spécifiée. les séquences d'échappement et les références arrières telles que ``$1`` et ``$name`` sont étendues et résolues. Par défaut, seule la première instance est remplacée, mais cela peut être changé pour toutes les instances (remplacement global).

La région dans laquelle rechercher peut être spécifiée avec ``offset`` et ``end``. Ceci est utile lors d'une recherche d'un autre correspondance dans le même objet ``subject`` en appelant cette méthode à nouveau après un succès précédent. Notez que définir ces paramètres diffère du passage d'une chaîne raccourcie. Par exemple, l'ancre de démarrage ``^`` n'est pas affectée par ``offset``, et le caractère avant ``offset`` sera vérifié pour la limite de mot ``\b``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
