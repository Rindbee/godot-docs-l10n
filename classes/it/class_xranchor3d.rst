:github_url: hide

.. _class_XRAnchor3D:

XRAnchor3D
==========

**Eredita:** :ref:`XRNode3D<class_XRNode3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un punto di ancoraggio nello spazio AR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

The **XRAnchor3D** point is an :ref:`XRNode3D<class_XRNode3D>` that maps a real world location identified by the AR platform to a position within the game world. For example, as long as plane detection in ARKit is on, ARKit will identify and update the position of planes (tables, floors, etc.) and create anchors for them.

This node is mapped to one of the anchors through its unique ID. When you receive a signal that a new anchor is available, you should add this node to your scene for that anchor. You can predefine nodes and set the ID; the nodes will simply remain on ``(0, 0, 0)`` until a plane is recognized.

Keep in mind that, as long as plane detection is enabled, the size, placing and orientation of an anchor will be updated as the detection logic learns more about the real world out there especially if only part of the surface is in view.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Indice della documentazione XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`     | :ref:`get_plane<class_XRAnchor3D_method_get_plane>`\ (\ ) |const| |
   +-------------------------------+-------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_size<class_XRAnchor3D_method_get_size>`\ (\ ) |const|   |
   +-------------------------------+-------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_XRAnchor3D_method_get_plane:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_plane**\ (\ ) |const| :ref:`🔗<class_XRAnchor3D_method_get_plane>`

Restituisce un piano allineato con la nostra ancora; utile per i test di intersezione.

.. rst-class:: classref-item-separator

----

.. _class_XRAnchor3D_method_get_size:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_size**\ (\ ) |const| :ref:`🔗<class_XRAnchor3D_method_get_size>`

Restituisce la dimensione stimata del piano che è stato rilevato. Diciamo che quando l'ancora si riferisce a un tavolo nel mondo reale, questa è la dimensione stimata della superficie di quel tavolo.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
