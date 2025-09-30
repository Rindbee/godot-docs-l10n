:github_url: hide

.. _class_XRTracker:

XRTracker
=========

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`XRFaceTracker<class_XRFaceTracker>`, :ref:`XRPositionalTracker<class_XRPositionalTracker>`

Un oggetto tracciato.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo oggetto è la base di tutti i tracciatori XR.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_XRTracker_property_description:

.. rst-class:: classref-property

:ref:`String<class_String>` **description** = ``""`` :ref:`🔗<class_XRTracker_property_description>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_desc**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tracker_desc**\ (\ )

La descrizione di questo tracciatore.

.. rst-class:: classref-item-separator

----

.. _class_XRTracker_property_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **name** = ``&"Unknown"`` :ref:`🔗<class_XRTracker_property_name>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_tracker_name**\ (\ )

The unique name of this tracker. The trackers that are available differ between various XR runtimes and can often be configured by the user. Godot maintains a number of reserved names that it expects the :ref:`XRInterface<class_XRInterface>` to implement if applicable:

- ``"head"`` identifies the :ref:`XRPositionalTracker<class_XRPositionalTracker>` of the player's head

- ``"left_hand"`` identifies the :ref:`XRControllerTracker<class_XRControllerTracker>` in the player's left hand

- ``"right_hand"`` identifies the :ref:`XRControllerTracker<class_XRControllerTracker>` in the player's right hand

- ``"/user/hand_tracker/left"`` identifies the :ref:`XRHandTracker<class_XRHandTracker>` for the player's left hand

- ``"/user/hand_tracker/right"`` identifies the :ref:`XRHandTracker<class_XRHandTracker>` for the player's right hand

- ``"/user/body_tracker"`` identifies the :ref:`XRBodyTracker<class_XRBodyTracker>` for the player's body

- ``"/user/face_tracker"`` identifies the :ref:`XRFaceTracker<class_XRFaceTracker>` for the player's face

.. rst-class:: classref-item-separator

----

.. _class_XRTracker_property_type:

.. rst-class:: classref-property

:ref:`TrackerType<enum_XRServer_TrackerType>` **type** = ``128`` :ref:`🔗<class_XRTracker_property_type>`

.. rst-class:: classref-property-setget

- |void| **set_tracker_type**\ (\ value\: :ref:`TrackerType<enum_XRServer_TrackerType>`\ )
- :ref:`TrackerType<enum_XRServer_TrackerType>` **get_tracker_type**\ (\ )

Il tipo di tracciatore.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
