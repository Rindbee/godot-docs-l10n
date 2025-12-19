:github_url: hide

.. _class_InputEventAction:

InputEventAction
================

**Hérite de :** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un type d’évènement d’entrée pour les actions.

.. rst-class:: classref-introduction-group

Description
-----------

Contient une action générique qui peut être ciblée à partir de plusieurs types d'entrées. Les actions et leurs événements peuvent être définis dans l'onglet **Contrôles** dans **Projet > Paramètres du projet**, ou avec la classe :ref:`InputMap<class_InputMap>`.

\ **Note :** Contrairement aux autres sous-classes :ref:`InputEvent<class_InputEvent>` qui s'associent à des événements physiques uniques, cette classe virtuelle n'est pas émise par le moteur. Cette classe est utile pour émettre des actions manuellement avec :ref:`Input.parse_input_event()<class_Input_method_parse_input_event>`, qui sont ensuite reçues dans :ref:`Node._input()<class_Node_private_method__input>`. Pour vérifier si un événement physique correspond à une action de l'action map, utilisez :ref:`InputEvent.is_action()<class_InputEvent_method_is_action>` et :ref:`InputEvent.is_action_pressed()<class_InputEvent_method_is_action_pressed>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Utiliser InputEvent : les actions <../tutorials/inputs/inputevent.html#actions>`__

- `Démo 2D « Dodge The Creeps » <https://godotengine.org/asset-library/asset/2712>`__

- `Démo voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>` | :ref:`action<class_InputEventAction_property_action>`           | ``&""``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`event_index<class_InputEventAction_property_event_index>` | ``-1``    |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`pressed<class_InputEventAction_property_pressed>`         | ``false`` |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`strength<class_InputEventAction_property_strength>`       | ``1.0``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventAction_property_action:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action** = ``&""`` :ref:`🔗<class_InputEventAction_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action**\ (\ )

Le nom de l'action. Il s'agit généralement du nom d'une action existante dans l':ref:`InputMap<class_InputMap>` avec laquelle vous voulez que cet événement personnalisé corresponde.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_event_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **event_index** = ``-1`` :ref:`🔗<class_InputEventAction_property_event_index>`

.. rst-class:: classref-property-setget

- |void| **set_event_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_event_index**\ (\ )

The real event index in action this event corresponds to (from events defined for this action in the :ref:`InputMap<class_InputMap>`). If ``-1``, a unique ID will be used and actions pressed with this ID will need to be released with another **InputEventAction**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventAction_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

Si ``true``, l'état de l'action est appuyé. Si ``false``, l'état de l'action est relâché.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_InputEventAction_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

The action's strength between 0 and 1. This value is considered as equal to 0 if pressed is ``false``. The event strength allows faking analog joypad motion events, by specifying how strongly the joypad axis is bent or pressed.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
