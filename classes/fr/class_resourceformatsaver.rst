:github_url: hide

.. _class_ResourceFormatSaver:

ResourceFormatSaver
===================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Enregistre un type de ressource spécifique dans un fichier.

.. rst-class:: classref-introduction-group

Description
-----------

Le moteur peut sauvegarder des ressources lorsque vous le faites depuis l'éditeur, ou lorsque vous utilisez le singleton :ref:`ResourceSaver<class_ResourceSaver>`. Ceci est accompli grâce à plusieurs **ResourceFormatSaver**\ s, chacun manipulant son propre format et étant appelé automatiquement par le moteur.

Par défaut, Godot sauvegarde les ressources comme ``.tres`` (basé sur du texte), ``.res`` (en binaire) ou dans un autre format intégré, mais vous pouvez choisir de créer votre propre format en étendant cette classe. Assurez-vous de respecter les types et les valeurs de renvoi documentés. Vous devriez lui donner un nom de classe global avec ``class_name`` pour qu'elle soit enregistrée. Comme les ResourcesFormatSavers intégrés, elle sera appelée automatiquement lors de la sauvegarde des ressources de ses types reconnus. Vous pouvez également implémenter un :ref:`ResourceFormatLoader<class_ResourceFormatLoader>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>` | :ref:`_get_recognized_extensions<class_ResourceFormatSaver_private_method__get_recognized_extensions>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const|                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize<class_ResourceFormatSaver_private_method__recognize>`\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const|                                                  |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_recognize_path<class_ResourceFormatSaver_private_method__recognize_path>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |const|    |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_save<class_ResourceFormatSaver_private_method__save>`\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`             | :ref:`_set_uid<class_ResourceFormatSaver_private_method__set_uid>`\ (\ path\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) |virtual|                                         |
   +---------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ResourceFormatSaver_private_method__get_recognized_extensions:

.. rst-class:: classref-method

:ref:`PackedStringArray<class_PackedStringArray>` **_get_recognized_extensions**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__get_recognized_extensions>`

Returns the list of extensions available for saving the resource object, provided it is recognized (see :ref:`_recognize()<class_ResourceFormatSaver_private_method__recognize>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__recognize:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__recognize>`

Renvoie quand une ressource donnée peut être enregistrée par ce enregistreur.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__recognize_path:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_recognize_path**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_ResourceFormatSaver_private_method__recognize_path>`

Returns ``true`` if this saver handles a given save path and ``false`` otherwise.

If this method is not implemented, the default behavior returns whether the path's extension is within the ones provided by :ref:`_get_recognized_extensions()<class_ResourceFormatSaver_private_method__get_recognized_extensions>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__save:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_save**\ (\ resource\: :ref:`Resource<class_Resource>`, path\: :ref:`String<class_String>`, flags\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_ResourceFormatSaver_private_method__save>`

Saves the given resource object to a file at the target ``path``. ``flags`` is a bitmask composed with :ref:`SaverFlags<enum_ResourceSaver_SaverFlags>` constants.

Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or an :ref:`Error<enum_@GlobalScope_Error>` constant in case of failure.

.. rst-class:: classref-item-separator

----

.. _class_ResourceFormatSaver_private_method__set_uid:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **_set_uid**\ (\ path\: :ref:`String<class_String>`, uid\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_ResourceFormatSaver_private_method__set_uid>`

Sets a new UID for the resource at the given ``path``. Returns :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` on success, or an :ref:`Error<enum_@GlobalScope_Error>` constant in case of failure.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
