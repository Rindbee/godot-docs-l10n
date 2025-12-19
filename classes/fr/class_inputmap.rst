:github_url: hide

.. _class_InputMap:

InputMap
========

**Hérite de :** :ref:`Object<class_Object>`

Un singleton qui gère tous les :ref:`InputEventAction<class_InputEventAction>`\ s.

.. rst-class:: classref-introduction-group

Description
-----------

Gère tous les :ref:`InputEventAction<class_InputEventAction>` qui peuvent être créés/modifiés dans le menu de Paramètres du projet **Projet > Paramètres du projet > Contrôle** ou dans le code avec :ref:`add_action()<class_InputMap_method_add_action>` et :ref:`action_add_event()<class_InputMap_method_action_add_event>`. Voir :ref:`Node._input()<class_Node_private_method__input>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Utiliser InputEvent : InputMap <../tutorials/inputs/inputevent.html#inputmap>`__

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_add_event<class_InputMap_method_action_add_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_erase_event<class_InputMap_method_action_erase_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                  |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_erase_events<class_InputMap_method_action_erase_events>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`action_get_deadzone<class_InputMap_method_action_get_deadzone>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`InputEvent<class_InputEvent>`\] | :ref:`action_get_events<class_InputMap_method_action_get_events>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                                 |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`action_has_event<class_InputMap_method_action_has_event>`\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ )                                                      |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`action_set_deadzone<class_InputMap_method_action_set_deadzone>`\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>`\ )                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_action<class_InputMap_method_add_action>`\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>` = 0.2\ )                                                                   |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`erase_action<class_InputMap_method_erase_action>`\ (\ action\: :ref:`StringName<class_StringName>`\ )                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`event_is_action<class_InputMap_method_event_is_action>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                      | :ref:`get_action_description<class_InputMap_method_get_action_description>`\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const|                                                                               |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_actions<class_InputMap_method_get_actions>`\ (\ )                                                                                                                                                           |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_action<class_InputMap_method_has_action>`\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const|                                                                                                       |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`load_from_project_settings<class_InputMap_method_load_from_project_settings>`\ (\ )                                                                                                                             |
   +------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_InputMap_method_action_add_event:

.. rst-class:: classref-method

|void| **action_add_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_add_event>`

Ajoute un :ref:`InputEvent<class_InputEvent>` à une action. Cet :ref:`InputEvent<class_InputEvent>` déclenchera l'action.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_erase_event:

.. rst-class:: classref-method

|void| **action_erase_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_erase_event>`

Retire un :ref:`InputEvent<class_InputEvent>` d'une action.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_erase_events:

.. rst-class:: classref-method

|void| **action_erase_events**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_erase_events>`

Retire tous les événements d'une action.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_get_deadzone:

.. rst-class:: classref-method

:ref:`float<class_float>` **action_get_deadzone**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_get_deadzone>`

Returns a deadzone value for the action.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_get_events:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`InputEvent<class_InputEvent>`\] **action_get_events**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_action_get_events>`

Renvoie un tableau d':ref:`InputEvent<class_InputEvent>`\ s associés à une action donnée.

\ **Note :** Lorsqu'utilisé dans l'éditeur (par exemple un script outil ou :ref:`EditorPlugin<class_EditorPlugin>`), cette méthode renverra les événements pour l'action de l'éditeur. Si vous souhaitez accéder aux liaisons des entrées de votre projet depuis l'éditeur, lisez les paramètres ``input/*`` de :ref:`ProjectSettings<class_ProjectSettings>`.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_has_event:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **action_has_event**\ (\ action\: :ref:`StringName<class_StringName>`, event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputMap_method_action_has_event>`

Renvoie ``true`` si l'action est associée au :ref:`InputEvent<class_InputEvent>` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_action_set_deadzone:

.. rst-class:: classref-method

|void| **action_set_deadzone**\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>`\ ) :ref:`🔗<class_InputMap_method_action_set_deadzone>`

Définit une valeur pour la zone morte de l'action.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_add_action:

.. rst-class:: classref-method

|void| **add_action**\ (\ action\: :ref:`StringName<class_StringName>`, deadzone\: :ref:`float<class_float>` = 0.2\ ) :ref:`🔗<class_InputMap_method_add_action>`

Adds an empty action to the **InputMap** with a configurable ``deadzone``.

An :ref:`InputEvent<class_InputEvent>` can then be added to this action with :ref:`action_add_event()<class_InputMap_method_action_add_event>`.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_erase_action:

.. rst-class:: classref-method

|void| **erase_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_InputMap_method_erase_action>`

Retirer une action de **InputMap**.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_event_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **event_is_action**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputMap_method_event_is_action>`

Returns ``true`` if the given event is part of an existing action. This method ignores keyboard modifiers if the given :ref:`InputEvent<class_InputEvent>` is not pressed (for proper release detection). See :ref:`action_has_event()<class_InputMap_method_action_has_event>` if you don't want this behavior.

If ``exact_match`` is ``false``, it ignores additional input modifiers for :ref:`InputEventKey<class_InputEventKey>` and :ref:`InputEventMouseButton<class_InputEventMouseButton>` events, and the direction for :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>` events.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_get_action_description:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_action_description**\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_InputMap_method_get_action_description>`

Renvoie la description facilement lisible de l'action donnée.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_get_actions:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_actions**\ (\ ) :ref:`🔗<class_InputMap_method_get_actions>`

Renvoie la liste de toutes les actions dans l'**InputMap**.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_has_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_action**\ (\ action\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_InputMap_method_has_action>`

Renvoie ``true`` si l'**InputMap** a une action enregistrée avec le nom donné.

.. rst-class:: classref-item-separator

----

.. _class_InputMap_method_load_from_project_settings:

.. rst-class:: classref-method

|void| **load_from_project_settings**\ (\ ) :ref:`🔗<class_InputMap_method_load_from_project_settings>`

Efface toutes les :ref:`InputEventAction<class_InputEventAction>` dans le **InputMap** et les rechargent depuis les :ref:`ProjectSettings<class_ProjectSettings>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
