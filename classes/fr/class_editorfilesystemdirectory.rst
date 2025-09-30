:github_url: hide

.. _class_EditorFileSystemDirectory:

EditorFileSystemDirectory
=========================

**Hérite de :** :ref:`Object<class_Object>`

Un répertoire pour le système de fichiers des ressources.

.. rst-class:: classref-introduction-group

Description
-----------

Une variation bas-niveau et plus générale du concept de dossier.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`find_dir_index<class_EditorFileSystemDirectory_method_find_dir_index>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                        |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`find_file_index<class_EditorFileSystemDirectory_method_find_file_index>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                      |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file<class_EditorFileSystemDirectory_method_get_file>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                           |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_file_count<class_EditorFileSystemDirectory_method_get_file_count>`\ (\ ) |const|                                                            |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | :ref:`get_file_import_is_valid<class_EditorFileSystemDirectory_method_get_file_import_is_valid>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|           |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_path<class_EditorFileSystemDirectory_method_get_file_path>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_script_class_extends<class_EditorFileSystemDirectory_method_get_file_script_class_extends>`\ (\ idx\: :ref:`int<class_int>`\ ) |const| |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_file_script_class_name<class_EditorFileSystemDirectory_method_get_file_script_class_name>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|       |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                               | :ref:`get_file_type<class_EditorFileSystemDirectory_method_get_file_type>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                 |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_name<class_EditorFileSystemDirectory_method_get_name>`\ (\ )                                                                                |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_parent<class_EditorFileSystemDirectory_method_get_parent>`\ (\ )                                                                            |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                       | :ref:`get_path<class_EditorFileSystemDirectory_method_get_path>`\ (\ ) |const|                                                                        |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` | :ref:`get_subdir<class_EditorFileSystemDirectory_method_get_subdir>`\ (\ idx\: :ref:`int<class_int>`\ )                                               |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                             | :ref:`get_subdir_count<class_EditorFileSystemDirectory_method_get_subdir_count>`\ (\ ) |const|                                                        |
   +-------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_EditorFileSystemDirectory_method_find_dir_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_dir_index**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_find_dir_index>`

Returns the index of the directory with name ``name`` or ``-1`` if not found.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_find_file_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **find_file_index**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_find_file_index>`

Renvoie l'index du fichier nommé ``name`` ou ``-1`` s'il n'est pas trouvé.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file>`

Renvoie le nom du fichier à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_file_count**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_count>`

Renvoie le nombre de fichiers dans ce dossier.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_import_is_valid:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_file_import_is_valid**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_import_is_valid>`

Renvoie ``true`` si le fichier à l'index ``idx`` à été importé correctement.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_path**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_path>`

Renvoie le chemin du fichier à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_script_class_extends:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_script_class_extends**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_script_class_extends>`

Returns the base class of the script class defined in the file at index ``idx``. If the file doesn't define a script class using the ``class_name`` syntax, this will return an empty string.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_script_class_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_file_script_class_name**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_script_class_name>`

Returns the name of the script class defined in the file at index ``idx``. If the file doesn't define a script class using the ``class_name`` syntax, this will return an empty string.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_file_type:

.. rst-class:: classref-method

:ref:`StringName<class_StringName>` **get_file_type**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_file_type>`

Returns the resource type of the file at index ``idx``. This returns a string such as ``"Resource"`` or ``"GDScript"``, *not* a file extension such as ``".gd"``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_name**\ (\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_name>`

Renvoie le nom de ce répertoire.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_parent:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_parent**\ (\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_parent>`

Renvoie le dossier parent de ce dossier ou ``null`` si appelé dans un dossier à ``res://`` ou ``user://``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_path:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_path**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_path>`

Renvoie le chemin d'accès à ce répertoire.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_subdir:

.. rst-class:: classref-method

:ref:`EditorFileSystemDirectory<class_EditorFileSystemDirectory>` **get_subdir**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_EditorFileSystemDirectory_method_get_subdir>`

Renvoie le sous-répertoire à l'index ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_EditorFileSystemDirectory_method_get_subdir_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_subdir_count**\ (\ ) |const| :ref:`🔗<class_EditorFileSystemDirectory_method_get_subdir_count>`

Renvoie le nombre de sous-dossiers dans ce dossier.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
