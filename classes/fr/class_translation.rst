:github_url: hide

.. _class_Translation:

Translation
===========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`OptimizedTranslation<class_OptimizedTranslation>`

Une traduction de langue qui associe une collection de chaînes à leurs traductions individuelles.

.. rst-class:: classref-introduction-group

Description
-----------

**Translation** maps a collection of strings to their individual translations, and also provides convenience methods for pluralization.

A **Translation** consists of messages. A message is identified by its context and untranslated string. Unlike `gettext <https://www.gnu.org/software/gettext/>`__, using an empty context string in Godot means not using any context.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Internationaliser des jeux <../tutorials/i18n/internationalizing_games>`

- :doc:`Localisation à l'aide de gettext <../tutorials/i18n/localization_using_gettext>`

- :doc:`Locales <../tutorials/i18n/locales>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`String<class_String>` | :ref:`locale<class_Translation_property_locale>`                               | ``"en"`` |
   +-----------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`String<class_String>` | :ref:`plural_rules_override<class_Translation_property_plural_rules_override>` | ``""``   |
   +-----------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`_get_message<class_Translation_private_method__get_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const|                                                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`_get_plural_message<class_Translation_private_method__get_plural_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_message<class_Translation_method_add_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ )                                                                    |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_plural_message<class_Translation_method_add_plural_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_messages\: :ref:`PackedStringArray<class_PackedStringArray>`, context\: :ref:`StringName<class_StringName>` = &""\ )                                       |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`erase_message<class_Translation_method_erase_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ )                                                                                                                      |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_message<class_Translation_method_get_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                                                                                  |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_message_count<class_Translation_method_get_message_count>`\ (\ ) |const|                                                                                                                                                                                                              |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_message_list<class_Translation_method_get_message_list>`\ (\ ) |const|                                                                                                                                                                                                                |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`               | :ref:`get_plural_message<class_Translation_method_get_plural_message>`\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const|               |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_translated_message_list<class_Translation_method_get_translated_message_list>`\ (\ ) |const|                                                                                                                                                                                          |
   +---------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Translation_property_locale:

.. rst-class:: classref-property

:ref:`String<class_String>` **locale** = ``"en"`` :ref:`🔗<class_Translation_property_locale>`

.. rst-class:: classref-property-setget

- |void| **set_locale**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_locale**\ (\ )

La langue de la traduction.

.. rst-class:: classref-item-separator

----

.. _class_Translation_property_plural_rules_override:

.. rst-class:: classref-property

:ref:`String<class_String>` **plural_rules_override** = ``""`` :ref:`🔗<class_Translation_property_plural_rules_override>`

.. rst-class:: classref-property-setget

- |void| **set_plural_rules_override**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_plural_rules_override**\ (\ )

The plural rules string to enforce. See `GNU gettext <https://www.gnu.org/software/gettext/manual/html_node/Plural-forms.html>`__ for examples and more info.

If empty or invalid, default plural rules from :ref:`TranslationServer.get_plural_rules()<class_TranslationServer_method_get_plural_rules>` are used. The English plural rules are used as a fallback.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Translation_private_method__get_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_Translation_private_method__get_message>`

La méthode virtuelle :ref:`get_message()<class_Translation_method_get_message>` à surcharger.

.. rst-class:: classref-item-separator

----

.. _class_Translation_private_method__get_plural_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **_get_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>`\ ) |virtual| |const| :ref:`🔗<class_Translation_private_method__get_plural_message>`

Méthode virtuelle pour redéfinir :ref:`get_plural_message()<class_Translation_method_get_plural_message>`.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_add_message:

.. rst-class:: classref-method

|void| **add_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_add_message>`

Ajoute un message s'il n'existe pas, suivi de sa traduction.

Un contexte supplémentaire pourrait être utilisé pour spécifier le contexte de traduction ou différencier les mots polysémiques.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_add_plural_message:

.. rst-class:: classref-method

|void| **add_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, xlated_messages\: :ref:`PackedStringArray<class_PackedStringArray>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_add_plural_message>`

Adds a message involving plural translation if nonexistent, followed by its translation.

An additional context could be used to specify the translation context or differentiate polysemic words.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_erase_message:

.. rst-class:: classref-method

|void| **erase_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_Translation_method_erase_message>`

Efface un message.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Translation_method_get_message>`

Renvoie la traduction d’un message.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_message_count**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_message_count>`

Renvoie le nombre de messages existants.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_message_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_message_list**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_message_list>`

Returns the keys of all messages, that is, the context and untranslated strings of each message.

\ **Note:** If a message does not use a context, the corresponding element is the untranslated string. Otherwise, the corresponding element is the context and untranslated string separated by the EOT character (``U+0004``). This is done for compatibility purposes.

::

    for key in translation.get_message_list():
        var p = key.find("\u0004")
        if p == -1:
            var untranslated = key
            print("Message %s" % untranslated)
        else:
            var context = key.substr(0, p)
            var untranslated = key.substr(p + 1)
            print("Message %s with context %s" % [untranslated, context])

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_plural_message:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_plural_message**\ (\ src_message\: :ref:`StringName<class_StringName>`, src_plural_message\: :ref:`StringName<class_StringName>`, n\: :ref:`int<class_int>`, context\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_Translation_method_get_plural_message>`

Renvoie la traduction d'un message impliquant des pluriels.

Le nombre ``n`` est le nombre ou la quantité de l'objet pluriel. Il sera utilisé pour guider le système de traduction pour obtenir la bonne forme du pluriel pour la langue choisie.

\ **Note :** Les pluriels sont uniquement supportées dans les :doc:`traductions basées sur gettext (PO) <../tutorials/i18n/localization_using_gettext>`, pas en CSV.

.. rst-class:: classref-item-separator

----

.. _class_Translation_method_get_translated_message_list:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_translated_message_list**\ (\ ) |const| :ref:`🔗<class_Translation_method_get_translated_message_list>`

Returns all the translated strings.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
