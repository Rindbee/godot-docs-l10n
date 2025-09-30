:github_url: hide

.. _class_ScriptEditor:

ScriptEditor
============

**Hérite de :** :ref:`PanelContainer<class_PanelContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Éditeur de script de l'éditeur Godot.

.. rst-class:: classref-introduction-group

Description
-----------

L'éditeur de script de l'éditeur Godot.

\ **Note :** Cette classe ne devrait pas être instanciée directement. Accédez plutôt au singleton en utilisant :ref:`EditorInterface.get_script_editor()<class_EditorInterface_method_get_script_editor>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`clear_docs_from_script<class_ScriptEditor_method_clear_docs_from_script>`\ (\ script\: :ref:`Script<class_Script>`\ )                                                             |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`                            | :ref:`get_breakpoints<class_ScriptEditor_method_get_breakpoints>`\ (\ )                                                                                                                 |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ScriptEditorBase<class_ScriptEditorBase>`                              | :ref:`get_current_editor<class_ScriptEditor_method_get_current_editor>`\ (\ ) |const|                                                                                                   |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Script<class_Script>`                                                  | :ref:`get_current_script<class_ScriptEditor_method_get_current_script>`\ (\ )                                                                                                           |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`ScriptEditorBase<class_ScriptEditorBase>`\] | :ref:`get_open_script_editors<class_ScriptEditor_method_get_open_script_editors>`\ (\ ) |const|                                                                                         |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Script<class_Script>`\]                     | :ref:`get_open_scripts<class_ScriptEditor_method_get_open_scripts>`\ (\ ) |const|                                                                                                       |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`goto_help<class_ScriptEditor_method_goto_help>`\ (\ topic\: :ref:`String<class_String>`\ )                                                                                        |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`goto_line<class_ScriptEditor_method_goto_line>`\ (\ line_number\: :ref:`int<class_int>`\ )                                                                                        |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`open_script_create_dialog<class_ScriptEditor_method_open_script_create_dialog>`\ (\ base_name\: :ref:`String<class_String>`, base_path\: :ref:`String<class_String>`\ )           |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`register_syntax_highlighter<class_ScriptEditor_method_register_syntax_highlighter>`\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ )     |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`unregister_syntax_highlighter<class_ScriptEditor_method_unregister_syntax_highlighter>`\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                       | :ref:`update_docs_from_script<class_ScriptEditor_method_update_docs_from_script>`\ (\ script\: :ref:`Script<class_Script>`\ )                                                           |
   +------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_ScriptEditor_signal_editor_script_changed:

.. rst-class:: classref-signal

**editor_script_changed**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_signal_editor_script_changed>`

Émis lorsque l'utilisateur a changé de script actif. L'argument est un :ref:`Script<class_Script>` fraîchement activé.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_signal_script_close:

.. rst-class:: classref-signal

**script_close**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_signal_script_close>`

Émis lorsque l'éditeur est sur le point de fermer le script actif. L'argument est un :ref:`Script<class_Script>` qui va être fermé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ScriptEditor_method_clear_docs_from_script:

.. rst-class:: classref-method

|void| **clear_docs_from_script**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_method_clear_docs_from_script>`

Supprime la documentation pour le ``script`` donné.

\ **Note :** Cela devrait être appelé chaque fois que le script est changé pour garder l'état de la documentation ouverte à jour.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_breakpoints:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_breakpoints**\ (\ ) :ref:`🔗<class_ScriptEditor_method_get_breakpoints>`

Renvoie le tableau des points d'arrêt.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_current_editor:

.. rst-class:: classref-method

:ref:`ScriptEditorBase<class_ScriptEditorBase>` **get_current_editor**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_current_editor>`

Renvoie l'objet :ref:`ScriptEditorBase<class_ScriptEditorBase>` que l'utilisateur est actuellement en train d'éditer.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_current_script:

.. rst-class:: classref-method

:ref:`Script<class_Script>` **get_current_script**\ (\ ) :ref:`🔗<class_ScriptEditor_method_get_current_script>`

Renvoie le :ref:`Script<class_Script>` actuellement actif dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_open_script_editors:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`ScriptEditorBase<class_ScriptEditorBase>`\] **get_open_script_editors**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_open_script_editors>`

Renvoie un tableau avec tous les objets :ref:`ScriptEditorBase<class_ScriptEditorBase>` qui sont actuellement ouverts dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_get_open_scripts:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Script<class_Script>`\] **get_open_scripts**\ (\ ) |const| :ref:`🔗<class_ScriptEditor_method_get_open_scripts>`

Renvoie un tableau avec tous les objets :ref:`Script<class_Script>` qui sont actuellement ouverts dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_goto_help:

.. rst-class:: classref-method

|void| **goto_help**\ (\ topic\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_goto_help>`

Opens help for the given topic. The ``topic`` is an encoded string that controls which class, method, constant, signal, annotation, property, or theme item should be focused.

The supported ``topic`` formats include ``class_name:class``, ``class_method:class:method``, ``class_constant:class:constant``, ``class_signal:class:signal``, ``class_annotation:class:@annotation``, ``class_property:class:property``, and ``class_theme_item:class:item``, where ``class`` is the class name, ``method`` is the method name, ``constant`` is the constant name, ``signal`` is the signal name, ``annotation`` is the annotation name, ``property`` is the property name, and ``item`` is the theme item.

::

    # Shows help for the Node class.
    class_name:Node
    # Shows help for the global min function.
    # Global objects are accessible in the `@GlobalScope` namespace, shown here.
    class_method:@GlobalScope:min
    # Shows help for get_viewport in the Node class.
    class_method:Node:get_viewport
    # Shows help for the Input constant MOUSE_BUTTON_MIDDLE.
    class_constant:Input:MOUSE_BUTTON_MIDDLE
    # Shows help for the BaseButton signal pressed.
    class_signal:BaseButton:pressed
    # Shows help for the CanvasItem property visible.
    class_property:CanvasItem:visible
    # Shows help for the GDScript annotation export.
    # Annotations should be prefixed with the `@` symbol in the descriptor, as shown here.
    class_annotation:@GDScript:@export
    # Shows help for the GraphNode theme item named panel_selected.
    class_theme_item:GraphNode:panel_selected

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_goto_line:

.. rst-class:: classref-method

|void| **goto_line**\ (\ line_number\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ScriptEditor_method_goto_line>`

Va à la ligne spécifiée dans le script actuel.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_open_script_create_dialog:

.. rst-class:: classref-method

|void| **open_script_create_dialog**\ (\ base_name\: :ref:`String<class_String>`, base_path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_ScriptEditor_method_open_script_create_dialog>`

Opens the script create dialog. The script will extend ``base_name``. The file extension can be omitted from ``base_path``. It will be added based on the selected scripting language.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_register_syntax_highlighter:

.. rst-class:: classref-method

|void| **register_syntax_highlighter**\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditor_method_register_syntax_highlighter>`

Registers the :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` to the editor, the :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` will be available on all open scripts.

\ **Note:** Does not apply to scripts that are already opened.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_unregister_syntax_highlighter:

.. rst-class:: classref-method

|void| **unregister_syntax_highlighter**\ (\ syntax_highlighter\: :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>`\ ) :ref:`🔗<class_ScriptEditor_method_unregister_syntax_highlighter>`

Unregisters the :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` from the editor.

\ **Note:** The :ref:`EditorSyntaxHighlighter<class_EditorSyntaxHighlighter>` will still be applied to scripts that are already opened.

.. rst-class:: classref-item-separator

----

.. _class_ScriptEditor_method_update_docs_from_script:

.. rst-class:: classref-method

|void| **update_docs_from_script**\ (\ script\: :ref:`Script<class_Script>`\ ) :ref:`🔗<class_ScriptEditor_method_update_docs_from_script>`

Updates the documentation for the given ``script``.

\ **Note:** This should be called whenever the script is changed to keep the open documentation state up to date.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
