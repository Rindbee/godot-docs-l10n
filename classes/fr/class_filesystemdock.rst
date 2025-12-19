:github_url: hide

.. _class_FileSystemDock:

FileSystemDock
==============

**Hérite de :** :ref:`EditorDock<class_EditorDock>` **<** :ref:`MarginContainer<class_MarginContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Le dock de l'éditeur Godot pour gérer des fichiers dans le projet.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe est disponible seulement dans des :ref:`EditorPlugin<class_EditorPlugin>`\ s et ne peut pas être instanciée. Vous pouvez y accéder en utilisant :ref:`EditorInterface.get_file_system_dock()<class_EditorInterface_method_get_file_system_dock>`.

Bien que **FileSystemDock** n'expose aucune méthode de manipulation de fichiers, il peut écouter divers signaux liés aux fichiers.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_resource_tooltip_plugin<class_FileSystemDock_method_add_resource_tooltip_plugin>`\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ )       |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`navigate_to_path<class_FileSystemDock_method_navigate_to_path>`\ (\ path\: :ref:`String<class_String>`\ )                                                                         |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_resource_tooltip_plugin<class_FileSystemDock_method_remove_resource_tooltip_plugin>`\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_FileSystemDock_signal_display_mode_changed:

.. rst-class:: classref-signal

**display_mode_changed**\ (\ ) :ref:`🔗<class_FileSystemDock_signal_display_mode_changed>`

Émis lorsque l'utilisateur change le mode d'affichage des fichiers ou le mode scindé.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_file_removed:

.. rst-class:: classref-signal

**file_removed**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_file_removed>`

Émis lorsque le fichier ``file`` donné a été supprimé.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_files_moved:

.. rst-class:: classref-signal

**files_moved**\ (\ old_file\: :ref:`String<class_String>`, new_file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_files_moved>`

Émis quand un fichier est déplacé du chemin ``old_file`` vers le chemin ``new_file``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_color_changed:

.. rst-class:: classref-signal

**folder_color_changed**\ (\ ) :ref:`🔗<class_FileSystemDock_signal_folder_color_changed>`

Émis lorsque les dossiers changent de couleur.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_moved:

.. rst-class:: classref-signal

**folder_moved**\ (\ old_folder\: :ref:`String<class_String>`, new_folder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_folder_moved>`

Émis quand un dossier est déplacé du chemin ``old_folder`` vers le chemin ``new_folder``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_folder_removed:

.. rst-class:: classref-signal

**folder_removed**\ (\ folder\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_folder_removed>`

Émis lorsque le dossier ``folder`` donné a été supprimé.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_inherit:

.. rst-class:: classref-signal

**inherit**\ (\ file\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_signal_inherit>`

Émis quand une nouvelle scène est créée qui hérite de la scène au chemin ``file``.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_instantiate:

.. rst-class:: classref-signal

**instantiate**\ (\ files\: :ref:`PackedStringArray<class_PackedStringArray>`\ ) :ref:`🔗<class_FileSystemDock_signal_instantiate>`

Émis lorsque les scènes données sont instanciées dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_resource_removed:

.. rst-class:: classref-signal

**resource_removed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_FileSystemDock_signal_resource_removed>`

Émis lorsque une ressource externe ``resource`` a eu son fichier supprimé.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_signal_selection_changed:

.. rst-class:: classref-signal

**selection_changed**\ (\ ) :ref:`🔗<class_FileSystemDock_signal_selection_changed>`

Emitted when the selection changes. Use :ref:`EditorInterface.get_selected_paths()<class_EditorInterface_method_get_selected_paths>` in the connected method to get the selected paths.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_FileSystemDock_method_add_resource_tooltip_plugin:

.. rst-class:: classref-method

|void| **add_resource_tooltip_plugin**\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) :ref:`🔗<class_FileSystemDock_method_add_resource_tooltip_plugin>`

Enregistre un nouveau :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_method_navigate_to_path:

.. rst-class:: classref-method

|void| **navigate_to_path**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_FileSystemDock_method_navigate_to_path>`

Définit le chemin ``path`` donné comme actuellement sélectionné, en veillant à ce que le fichier / répertoire sélectionné soit visible.

.. rst-class:: classref-item-separator

----

.. _class_FileSystemDock_method_remove_resource_tooltip_plugin:

.. rst-class:: classref-method

|void| **remove_resource_tooltip_plugin**\ (\ plugin\: :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`\ ) :ref:`🔗<class_FileSystemDock_method_remove_resource_tooltip_plugin>`

Retire un :ref:`EditorResourceTooltipPlugin<class_EditorResourceTooltipPlugin>`. Échoue si le plugin n'a pas été ajouté précédemment.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
