:github_url: hide

.. _class_XRCamera3D:

XRCamera3D
==========

**Eredita:** :ref:`Camera3D<class_Camera3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo telecamera con alcune regole predefinite per AR/VR applicate, come il tracciamento della posizione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo è un nodo 3D di supporto per la nostra telecamera; si noti che, se è applicabile il rendering stereoscopico (VR-HMD), la maggior parte delle proprietà della telecamera saranno ignorate, poiché le informazioni HMD le sovrascrivono. Le uniche proprietà di cui ci si può fidare sono i piani vicino e lontano.

La posizione e l'orientamento di questo nodo sono aggiornati automaticamente dal server XR per rappresentare la posizione dell'HMD se tale tracciamento è disponibile e può quindi essere utilizzato dalla logica di gioco. Si noti che, a differenza del controller XR, il thread di rendering ha accesso ai dati di tracciamento più aggiornati dell'HMD e la posizione di XRCamera3D può essere in ritardo di alcuni millisecondi rispetto a ciò che è utilizzato per il rendering.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
