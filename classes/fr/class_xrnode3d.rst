:github_url: hide

.. _class_XRNode3D:

XRNode3D
========

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`XRAnchor3D<class_XRAnchor3D>`, :ref:`XRController3D<class_XRController3D>`

Un nœud 3D qui a sa position automatiquement mise à jour par le :ref:`XRServer<class_XRServer>`.

.. rst-class:: classref-introduction-group

Description
-----------

Ce nœud peut être lié à une pose spécifique d'un :ref:`XRPositionalTracker<class_XRPositionalTracker>` et aura automatiquement sa transformation :ref:`Node3D.transform<class_Node3D_property_transform>` mise à jour par le :ref:`XRServer<class_XRServer>`. Les nœuds de ce type doivent être ajoutés comme enfants du nœud :ref:`XROrigin3D<class_XROrigin3D>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur la XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                          | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`pose<class_XRNode3D_property_pose>`                           | ``&"default"``                                                                |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`show_when_tracked<class_XRNode3D_property_show_when_tracked>` | ``false``                                                                     |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`tracker<class_XRNode3D_property_tracker>`                     | ``&""``                                                                       |
   +---------------------------------------------------------------------+---------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`get_has_tracking_data<class_XRNode3D_method_get_has_tracking_data>`\ (\ ) |const|                                                                                                                                                                                                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`     | :ref:`get_is_active<class_XRNode3D_method_get_is_active>`\ (\ ) |const|                                                                                                                                                                                                                 |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRPose<class_XRPose>` | :ref:`get_pose<class_XRNode3D_method_get_pose>`\ (\ )                                                                                                                                                                                                                                   |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`trigger_haptic_pulse<class_XRNode3D_method_trigger_haptic_pulse>`\ (\ action_name\: :ref:`String<class_String>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) |
   +-----------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_XRNode3D_signal_tracking_changed:

.. rst-class:: classref-signal

**tracking_changed**\ (\ tracking\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_XRNode3D_signal_tracking_changed>`

Émis lorsque le :ref:`tracker<class_XRNode3D_property_tracker>` commence ou arrête de recevoir des données de suivi à jour pour la :ref:`pose<class_XRNode3D_property_pose>` suivie. L'argument ``tracking`` indique si le tracker obtient des données de suivi à jour.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_XRNode3D_property_pose:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **pose** = ``&"default"`` :ref:`🔗<class_XRNode3D_property_pose>`

.. rst-class:: classref-property-setget

- |void| **set_pose_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_pose_name**\ (\ )

Le nom de la pose à laquelle nous sommes liés. Quelle pose un tracker supporte n'est pas connu au moment du design.

Godot définit de nombreux noms de pose standard tels que ``aim`` et ``grip``, mais d'autres peuvent être configurés dans une :ref:`XRInterface<class_XRInterface>` donnée.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_property_show_when_tracked:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_when_tracked** = ``false`` :ref:`🔗<class_XRNode3D_property_show_when_tracked>`

.. rst-class:: classref-property-setget

- |void| **set_show_when_tracked**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_show_when_tracked**\ (\ )

Active l'affichage du nœud quand le suivi commence, et cache le nœud quand le suivi est perdu.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_property_tracker:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **tracker** = ``&""`` :ref:`🔗<class_XRNode3D_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker**\ (\ )

Le nom du tracker auquel nous sommes liés. Quels trackers sont disponibles n'est pas connu lors de la conception.

Godot définit un certain nombre de trackers standards tels que ``left_hand`` et ``right_hand``, mais d'autres peuvent être configurés dans une :ref:`XRInterface<class_XRInterface>` donnée.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_XRNode3D_method_get_has_tracking_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_has_tracking_data**\ (\ ) |const| :ref:`🔗<class_XRNode3D_method_get_has_tracking_data>`

Renvoie ``true`` si le :ref:`tracker<class_XRNode3D_property_tracker>` dispose de données de suivi actuelles pour la :ref:`pose<class_XRNode3D_property_pose>` suivie.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_get_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_is_active**\ (\ ) |const| :ref:`🔗<class_XRNode3D_method_get_is_active>`

Renvoie ``true`` si le :ref:`tracker<class_XRNode3D_property_tracker>` a été enregistré et que la :ref:`pose<class_XRNode3D_property_pose>` est suivie.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_get_pose:

.. rst-class:: classref-method

:ref:`XRPose<class_XRPose>` **get_pose**\ (\ ) :ref:`🔗<class_XRNode3D_method_get_pose>`

Renvoie la :ref:`XRPose<class_XRPose>` contenant l'état actuel de la pose en cours de suivi. Cela donne accès à des propriétés supplémentaires de cette pose.

.. rst-class:: classref-item-separator

----

.. _class_XRNode3D_method_trigger_haptic_pulse:

.. rst-class:: classref-method

|void| **trigger_haptic_pulse**\ (\ action_name\: :ref:`String<class_String>`, frequency\: :ref:`float<class_float>`, amplitude\: :ref:`float<class_float>`, duration_sec\: :ref:`float<class_float>`, delay_sec\: :ref:`float<class_float>`\ ) :ref:`🔗<class_XRNode3D_method_trigger_haptic_pulse>`

Déclenche une impulsion haptique sur un appareil associé à cette interface.

\ ``action_name`` est le nom de l'action pour cette impulsion.

\ ``frequency`` est la fréquence de l'impulsion, définie à ``0.0`` pour que le système utilise une fréquence par défaut.

\ ``amplitude`` est l'amplitude de l'impulsion entre ``0.0`` et ``1.0``.

\ ``duration_sec`` est la durée de l'impulsion en secondes.

\ ``delay_sec`` est un délai en secondes avant que l'impulsion ne soit donnée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
