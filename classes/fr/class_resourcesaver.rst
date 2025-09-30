:github_url: hide

.. _class_ResourceSaver:

ResourceSaver
=============

**Hérite de :** :ref:`Object<class_Object>`

Un singleton pour sauvegarder des :ref:`Resource<class_Resource>`\ s dans le système de fichiers.

.. rst-class:: classref-introduction-group

Description
-----------

A singleton for saving resource types to the filesystem.

It uses the many :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` classes registered in the engine (either built-in or from a plugin) to save resource data to text-based (e.g. ``.tres`` or ``.tscn``) or binary files (e.g. ``.res`` or ``.scn``).

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`add_resource_format_saver<class_ResourceSaver_method_add_resource_format_saver>`\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, at_front\: :ref:`bool<class_bool>` = false\ )      |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`get_recognized_extensions<class_ResourceSaver_method_get_recognized_extensions>`\ (\ type\: :ref:`Resource<class_Resource>`\ )                                                                                |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_resource_id_for_path<class_ResourceSaver_method_get_resource_id_for_path>`\ (\ path\: :ref:`String<class_String>`, generate\: :ref:`bool<class_bool>` = false\ )                                          |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`remove_resource_format_saver<class_ResourceSaver_method_remove_resource_format_saver>`\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ )                                            |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`save<class_ResourceSaver_method_save>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>` = "", flags\: |bitfield|\[:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`\] = 0\ ) |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`set_uid<class_ResourceSaver_method_set_uid>`\ (\ resource\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ )                                                                                       |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ResourceSaver_SaverFlags:

.. rst-class:: classref-enumeration

flags **SaverFlags**: :ref:`🔗<enum_ResourceSaver_SaverFlags>`

.. _class_ResourceSaver_constant_FLAG_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_NONE** = ``0``

Aucune option d'enregistrement de ressource.

.. _class_ResourceSaver_constant_FLAG_RELATIVE_PATHS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_RELATIVE_PATHS** = ``1``

Enregistre la ressource avec un chemin relatif à la scène qui l'utilise.

.. _class_ResourceSaver_constant_FLAG_BUNDLE_RESOURCES:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_BUNDLE_RESOURCES** = ``2``

Regroupe les ressources externes.

.. _class_ResourceSaver_constant_FLAG_CHANGE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_CHANGE_PATH** = ``4``

Change le chemin :ref:`Resource.resource_path<class_Resource_property_resource_path>` de la ressource enregistrée pour correspondre à son nouvel emplacement.

.. _class_ResourceSaver_constant_FLAG_OMIT_EDITOR_PROPERTIES:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_OMIT_EDITOR_PROPERTIES** = ``8``

Ne sauvegarde pas les méta-données spécifiques à l'éditeur (commençant par ``__editor``).

.. _class_ResourceSaver_constant_FLAG_SAVE_BIG_ENDIAN:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_SAVE_BIG_ENDIAN** = ``16``

Save as big endian (see :ref:`FileAccess.big_endian<class_FileAccess_property_big_endian>`).

.. _class_ResourceSaver_constant_FLAG_COMPRESS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_COMPRESS** = ``32``

Compress the resource on save using :ref:`FileAccess.COMPRESSION_ZSTD<class_FileAccess_constant_COMPRESSION_ZSTD>`. Only available for binary resource types.

.. _class_ResourceSaver_constant_FLAG_REPLACE_SUBRESOURCE_PATHS:

.. rst-class:: classref-enumeration-constant

:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` **FLAG_REPLACE_SUBRESOURCE_PATHS** = ``64``

Remplace les chemins des sous-ressources sauvegardées (voir :ref:`Resource.take_over_path()<class_Resource_method_take_over_path>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ResourceSaver_method_add_resource_format_saver:

.. rst-class:: classref-method

|void| **add_resource_format_saver**\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`, at_front\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceSaver_method_add_resource_format_saver>`

Enregistre un nouveau :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`. Le ResourceSaver utilisera le ResourceFormatSaver comme décrit dans :ref:`save()<class_ResourceSaver_method_save>`.

Cette méthode est effectuée implicitement pour les ResourceFormatSavers écrits en GDScript (voir :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` pour plus d'informations).

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **get_recognized_extensions**\ (\ type\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_ResourceSaver_method_get_recognized_extensions>`

Renvoie la liste des extensions possibles pour enregistrer une ressource de ce type.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_get_resource_id_for_path:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_resource_id_for_path**\ (\ path\: :ref:`String<class_String>`, generate\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_ResourceSaver_method_get_resource_id_for_path>`

Returns the resource ID for the given path. If ``generate`` is ``true``, a new resource ID will be generated if one for the path is not found. If ``generate`` is ``false`` and the path is not found, :ref:`ResourceUID.INVALID_ID<class_ResourceUID_constant_INVALID_ID>` is returned.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_remove_resource_format_saver:

.. rst-class:: classref-method

|void| **remove_resource_format_saver**\ (\ format_saver\: :ref:`ResourceFormatSaver<class_ResourceFormatSaver>`\ ) :ref:`🔗<class_ResourceSaver_method_remove_resource_format_saver>`

Désenregistre le :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` donné.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **save**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>` = "", flags\: |bitfield|\[:ref:`SaverFlags<enum_ResourceSaver_SaverFlags>`\] = 0\ ) :ref:`🔗<class_ResourceSaver_method_save>`

Saves a resource to disk to the given path, using a :ref:`ResourceFormatSaver<class_ResourceFormatSaver>` that recognizes the resource object. If ``path`` is empty, **ResourceSaver** will try to use :ref:`Resource.resource_path<class_Resource_property_resource_path>`.

The ``flags`` bitmask can be specified to customize the save behavior.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success.

\ **Note:** When the project is running, any generated UID associated with the resource will not be saved as the required code is only executed in editor mode.

.. rst-class:: classref-item-separator

----

.. _class_ResourceSaver_method_set_uid:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **set_uid**\ (\ resource\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ResourceSaver_method_set_uid>`

Sets the UID of the given ``resource`` path to ``uid``. You can generate a new UID using :ref:`ResourceUID.create_id()<class_ResourceUID_method_create_id>`.

Since resources will normally get a UID automatically, this method is only useful in very specific cases.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
