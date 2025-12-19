:github_url: hide

.. _class_XRTracker:

XRTracker
=========

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`XRFaceTracker<class_XRFaceTracker>`, :ref:`XRPositionalTracker<class_XRPositionalTracker>`

Un objet suivi.

.. rst-class:: classref-introduction-group

Description
-----------

Cet objet est la base de tous les trackers XR.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur la XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------+----------------+
   | :ref:`String<class_String>`                   | :ref:`description<class_XRTracker_property_description>` | ``""``         |
   +-----------------------------------------------+----------------------------------------------------------+----------------+
   | :ref:`StringName<class_StringName>`           | :ref:`name<class_XRTracker_property_name>`               | ``&"Unknown"`` |
   +-----------------------------------------------+----------------------------------------------------------+----------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>` | :ref:`type<class_XRTracker_property_type>`               | ``128``        |
   +-----------------------------------------------+----------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_XRTracker_property_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **description** = ``""`` :ref:`🔗<class_XRTracker_property_description>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_desc**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tracker_desc**\ (\ )

La description de ce tracker.

.. rst-class:: classref-item-separator

----

.. _class_XRTracker_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** = ``&"Unknown"`` :ref:`🔗<class_XRTracker_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker_name**\ (\ )

Le nom unique de ce tracker. Les trackers qui sont disponibles diffèrent entre les différents runtime XR et peuvent souvent être configurés par l'utilisateur. Godot maintient un certain nombre de noms réservés auxquels il s'attend à ce que la :ref:`XRInterface<class_XRInterface>` implémente le cas échéant :

- ``head`` identifie le :ref:`XRPositionalTracker<class_XRPositionalTracker>` de la tête du joueur

- ``left_hand`` identifie le :ref:`XRControllerTracker<class_XRControllerTracker>` dans la main gauche du joueur

- ``right_hand`` identifie le :ref:`XRControllerTracker<class_XRControllerTracker>` dans la main droite du joueur

- ``/user/hand_tracker/left`` identifie le :ref:`XRHandTracker<class_XRHandTracker>` pour la main gauche du joueur

- ``/user/hand_tracker/right`` identifie le :ref:`XRHandTracker<class_XRHandTracker>` pour la main droite du joueur

- ``/user/body_tracker`` identifie le :ref:`XRBodyTracker<class_XRBodyTracker>` pour le corps du joueur

- ``/user/face_tracker`` identifie le :ref:`XRFaceTracker<class_XRFaceTracker>` pour le visage du joueur

.. rst-class:: classref-item-separator

----

.. _class_XRTracker_property_type:

.. rst-class:: classref-property

:ref:`TrackerType<enum_XRServer_TrackerType>` **type** = ``128`` :ref:`🔗<class_XRTracker_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_type**\ (\ value\: :ref:`TrackerType<enum_XRServer_TrackerType>`\ )
- :ref:`TrackerType<enum_XRServer_TrackerType>` **get_tracker_type**\ (\ )

Le type de tracker.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
