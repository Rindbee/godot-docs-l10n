:github_url: hide

.. _class_EditorSyntaxHighlighter:

EditorSyntaxHighlighter
=======================

**Hérite de :** :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`GDScriptSyntaxHighlighter<class_GDScriptSyntaxHighlighter>`

Classe de base pour :ref:`SyntaxHighlighter<class_SyntaxHighlighter>` utilisé par le :ref:`ScriptEditor<class_ScriptEditor>`.

.. rst-class:: classref-introduction-group

Description
-----------

Base class that all :ref:`SyntaxHighlighter<class_SyntaxHighlighter>`\ s used by the :ref:`ScriptEditor<class_ScriptEditor>` extend from.

Add a syntax highlighter to an individual script by calling :ref:`ScriptEditorBase.add_syntax_highlighter()<class_ScriptEditorBase_method_add_syntax_highlighter>`. To apply to all scripts on open, call :ref:`ScriptEditor.register_syntax_highlighter()<class_ScriptEditor_method_register_syntax_highlighter>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` | :ref:`_create<class_EditorSyntaxHighlighter_private_method__create>`\ (\ ) |virtual| |const|                                   |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                   | :ref:`_get_name<class_EditorSyntaxHighlighter_private_method__get_name>`\ (\ ) |virtual| |const|                               |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`             | :ref:`_get_supported_languages<class_EditorSyntaxHighlighter_private_method__get_supported_languages>`\ (\ ) |virtual| |const| |
   +---------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorSyntaxHighlighter_private_method__create:

.. rst-class:: classref-method

:ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` **_create**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__create>`

Virtual method which creates a new instance of the syntax highlighter.

.. rst-class:: classref-item-separator

----

.. _class_EditorSyntaxHighlighter_private_method__get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **_get_name**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__get_name>`

Virtual method which can be overridden to return the syntax highlighter name.

.. rst-class:: classref-item-separator

----

.. _class_EditorSyntaxHighlighter_private_method__get_supported_languages:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_supported_languages**\ (\ ) |virtual| |const| :ref:`🔗<class_EditorSyntaxHighlighter_private_method__get_supported_languages>`

Virtual method which can be overridden to return the supported language names.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
