:github_url: hide

.. _class_InputEvent:

InputEvent
==========

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`InputEventAction<class_InputEventAction>`, :ref:`InputEventFromWindow<class_InputEventFromWindow>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventMIDI<class_InputEventMIDI>`, :ref:`InputEventShortcut<class_InputEventShortcut>`

Classe de base abstraite pour les événements d'entrée.

.. rst-class:: classref-introduction-group

Description
-----------

Classe de base abstraite de tous les types d'événements d'entrée. Voir :ref:`Node._input()<class_Node_private_method__input>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation d'InputEvent <../tutorials/inputs/inputevent>`

- :doc:`Transformations du canevas et de la fenêtre d'affichage <../tutorials/2d/2d_transforms>`

- `Démo 2D « Dodge The Creeps » <https://godotengine.org/asset-library/asset/2712>`__

- `Démo voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`device<class_InputEvent_property_device>` | ``0`` |
   +-----------------------+-------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`accumulate<class_InputEvent_method_accumulate>`\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ )                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`         | :ref:`as_text<class_InputEvent_method_as_text>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_action_strength<class_InputEvent_method_get_action_strength>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                           |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action<class_InputEvent_method_is_action>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                                               |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_pressed<class_InputEvent_method_is_action_pressed>`\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_released<class_InputEvent_method_is_action_released>`\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const|                                             |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_action_type<class_InputEvent_method_is_action_type>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_canceled<class_InputEvent_method_is_canceled>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_echo<class_InputEvent_method_is_echo>`\ (\ ) |const|                                                                                                                                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_match<class_InputEvent_method_is_match>`\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const|                                                                   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_pressed<class_InputEvent_method_is_pressed>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_released<class_InputEvent_method_is_released>`\ (\ ) |const|                                                                                                                                                        |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`InputEvent<class_InputEvent>` | :ref:`xformed_by<class_InputEvent_method_xformed_by>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                                |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_InputEvent_constant_DEVICE_ID_EMULATION:

.. rst-class:: classref-constant

**DEVICE_ID_EMULATION** = ``-1`` :ref:`🔗<class_InputEvent_constant_DEVICE_ID_EMULATION>`

ID de périphérique utilisé pour une entrée de souris émulée à partir d'un écran tactile, ou pour une entrée tactile émulée à partir d'une souris. Cela peut être utilisé pour distinguer l'entrée de la souris émulée de l'entrée de la souris physique, ou de l'entrée tactile émulée de l'entrée tactile physique.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEvent_property_device:

.. rst-class:: classref-property

:ref:`int<class_int>` **device** = ``0`` :ref:`🔗<class_InputEvent_property_device>`

.. rst-class:: classref-property-setget

- |void| **set_device**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_device**\ (\ )

L'identifiant du périphérique de l'événement.

\ **Note :** :ref:`device<class_InputEvent_property_device>` peut être négatif pour des cas d'utilisation spéciaux qui ne se réfèrent pas aux appareils physiquement présents sur le système. Voir :ref:`DEVICE_ID_EMULATION<class_InputEvent_constant_DEVICE_ID_EMULATION>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_InputEvent_method_accumulate:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **accumulate**\ (\ with_event\: :ref:`InputEvent<class_InputEvent>`\ ) :ref:`🔗<class_InputEvent_method_accumulate>`

Renvoie ``true`` si l'événement d'entrée donné et cet événement d'entrée peuvent être ajoutés ensemble (seulement pour les événements de type :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`).

La position, la position globale et la vitesse de l'événement d'entrée donné seront copiées. La propriété ``relative`` résultante est une somme des deux événements. Les modificateurs des deux événements doivent être identiques.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_as_text:

.. rst-class:: classref-method

:ref:`String<class_String>` **as_text**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_as_text>`

Renvoie une représentation :ref:`String<class_String>` de l'évènement.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_get_action_strength:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_action_strength**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_get_action_strength>`

Renvoie une valeur entre 0,0 et 1,0 selon l'état de l'action donnée. Utile pour obtenir la valeur des événements du type :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

Si ``exact_match`` vaut ``false``, ignore les modificateurs d'entrée supplémentaires pour les évènements :ref:`InputEventKey<class_InputEventKey>` et :ref:`InputEventMouseButton<class_InputEventMouseButton>`, et la direction pour les évènements :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action>`

Renvoie ``true`` si cet événement d'entrée correspond à une action prédéfinie de n'importe quel type.

Si ``exact_match`` vaut ``false``, ignore les modificateurs d'entrée supplémentaires pour les évènements :ref:`InputEventKey<class_InputEventKey>` et :ref:`InputEventMouseButton<class_InputEventMouseButton>`, et la direction pour les évènements :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_pressed**\ (\ action\: :ref:`StringName<class_StringName>`, allow_echo\: :ref:`bool<class_bool>` = false, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_pressed>`

Renvoie ``true`` si l'action donnée correspond à cet événement et est appuyée (et n'est pas un événement d'écho pour les événements :ref:`InputEventKey<class_InputEventKey>`, sauf si ``allow_echo`` vaut ``true``). Non pertinent pour les événements de type :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` ou :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

Si ``exact_match`` vaut ``false``, cela ignore les modificateurs d'entrée supplémentaires pour les évènements :ref:`InputEventKey<class_InputEventKey>` et :ref:`InputEventMouseButton<class_InputEventMouseButton>`, et la direction pour les évènements :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

\ **Note :** En raison d'un problème de clavier fantôme (keyboard ghosting), :ref:`is_action_pressed()<class_InputEvent_method_is_action_pressed>` peut renvoyer ``false`` même si l'une des touches de l'action est appuyée. Voir `Exemples d'entrée <../tutorials/inputs/input_examples.html#keyboard-events>`__ dans la documentation pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_released**\ (\ action\: :ref:`StringName<class_StringName>`, exact_match\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_released>`

Renvoie ``true`` si l'action donnée correspond à cet événement et est relâchée (c-à-d non appuyée). Non pertinent pour les événements de type :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` ou :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

Si ``exact_match`` vaut ``false``, cela ignore les modificateurs d'entrée supplémentaires pour les évènements :ref:`InputEventKey<class_InputEventKey>` et :ref:`InputEventMouseButton<class_InputEventMouseButton>`, et la direction pour les évènements :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_action_type:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_action_type**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_action_type>`

Renvoie ``true`` si le type de cet événement d'entrée est un type qui peut être assigné à une action d'entrée : :ref:`InputEventKey<class_InputEventKey>`, :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`, :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, :ref:`InputEventAction<class_InputEventAction>`. Renvoie ``false`` pour tous les autres types d'événements d'entrée.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_canceled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_canceled**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_canceled>`

Renvoie ``true`` si cet évènement d'entrée a été annulé.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_echo:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_echo**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_echo>`

Renvoie ``true`` si cet évènement est un évènement d'écho (seulement pour les évènements du type :ref:`InputEventKey<class_InputEventKey>`). Un événement d'écho est un événement de touche répété envoyé lorsque l'utilisateur maintient la touche. Tout autre type d'évènement renvoie ``false``.

\ **Note :** Le taux auquel les évènement d'écho sont envoyés est généralement d'environ 20 événements par seconde (après avoir maintenu la touche pendant environ une demi-seconde). Cependant, le délai/vitesse de répétition de la touche peut être changé par l'utilisateur ou désactivé entièrement dans les paramètres du système d'exploitation. Pour vous assurer que votre projet fonctionne correctement sur toutes les configurations, ne supposez pas dans le comportement de votre projet que l'utilisateur a une configuration de répétition de touche spécifique.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_match:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_match**\ (\ event\: :ref:`InputEvent<class_InputEvent>`, exact_match\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_InputEvent_method_is_match>`

Renvoie ``true`` si l'événement ``event`` spécifié correspond à cet événement. Seulement valable pour les événements d'action, ce qui inclut les évènements de touche (:ref:`InputEventKey<class_InputEventKey>`), de bouton (:ref:`InputEventMouseButton<class_InputEventMouseButton>` ou :ref:`InputEventJoypadButton<class_InputEventJoypadButton>`), d'axe :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`, et d'action (:ref:`InputEventAction<class_InputEventAction>`).

Si ``exact_match`` vaut ``false``, la vérification ignore les modificateurs d'entrée supplémentaires pour les évènements :ref:`InputEventKey<class_InputEventKey>` et :ref:`InputEventMouseButton<class_InputEventMouseButton>`, et la direction pour les évènements :ref:`InputEventJoypadMotion<class_InputEventJoypadMotion>`.

\ **Note :** Cette méthode ne considère que la configuration de l'événement (tel que la touche du clavier ou l'axe de la manette), et non les informations d'état comme :ref:`is_pressed()<class_InputEvent_method_is_pressed>`, :ref:`is_released()<class_InputEvent_method_is_released>`, :ref:`is_echo()<class_InputEvent_method_is_echo>`, ou :ref:`is_canceled()<class_InputEvent_method_is_canceled>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_pressed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_pressed**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_pressed>`

Renvoie ``true`` si cet évènement d'entrée est appuyé. Non pertinent pour les événements de type :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` ou :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

\ **Note :** En raison d'un problème de clavier fantôme (keyboard ghosting), :ref:`is_action_pressed()<class_InputEvent_method_is_action_pressed>` peut renvoyer ``false`` même si l'une des touches de l'action est appuyée. Voir `Exemples d'entrée <../tutorials/inputs/input_examples.html#keyboard-events>`__ dans la documentation pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_is_released:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_released**\ (\ ) |const| :ref:`🔗<class_InputEvent_method_is_released>`

Renvoie ``true`` si cet évènement d'entrée est relâché. Non pertinent pour les événements de type :ref:`InputEventMouseMotion<class_InputEventMouseMotion>` ou :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEvent_method_xformed_by:

.. rst-class:: classref-method

:ref:`InputEvent<class_InputEvent>` **xformed_by**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, local_ofs\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_InputEvent_method_xformed_by>`

Renvoie une copie de l'événement d'entrée donné qui a été décalé de ``local_ofs`` et transformé par ``xform``. Pertinent pour les évènements de type :ref:`InputEventMouseButton<class_InputEventMouseButton>`, :ref:`InputEventMouseMotion<class_InputEventMouseMotion>`, :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`, :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`, :ref:`InputEventMagnifyGesture<class_InputEventMagnifyGesture>` et :ref:`InputEventPanGesture<class_InputEventPanGesture>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
