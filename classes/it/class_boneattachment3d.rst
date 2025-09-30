:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/BoneAttachment3D.xml.

.. _class_BoneAttachment3D:

BoneAttachment3D
================

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo che copia o sovrascrive dinamicamente la trasformazione 3D di un osso nel suo :ref:`Skeleton3D<class_Skeleton3D>` genitore.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo nodo seleziona un osso in un :ref:`Skeleton3D<class_Skeleton3D>` e si collega ad esso. Ciò significa che il nodo **BoneAttachment3D** copierà o sovrascriverà dinamicamente la trasformazione 3D dell'osso selezionato.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`bone_idx<class_BoneAttachment3D_property_bone_idx>`                           | ``-1``                                                                        |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                         | :ref:`bone_name<class_BoneAttachment3D_property_bone_name>`                         | ``""``                                                                        |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                                     | :ref:`external_skeleton<class_BoneAttachment3D_property_external_skeleton>`         |                                                                               |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`override_pose<class_BoneAttachment3D_property_override_pose>`                 | ``false``                                                                     |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                          | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`use_external_skeleton<class_BoneAttachment3D_property_use_external_skeleton>` | ``false``                                                                     |
   +---------------------------------------------------------------------+-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------+
   | :ref:`Skeleton3D<class_Skeleton3D>` | :ref:`get_skeleton<class_BoneAttachment3D_method_get_skeleton>`\ (\ )             |
   +-------------------------------------+-----------------------------------------------------------------------------------+
   | |void|                              | :ref:`on_skeleton_update<class_BoneAttachment3D_method_on_skeleton_update>`\ (\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_BoneAttachment3D_property_bone_idx:

.. rst-class:: classref-property

:ref:`int<class_int>` **bone_idx** = ``-1`` :ref:`🔗<class_BoneAttachment3D_property_bone_idx>`

.. rst-class:: classref-property-setget

- |void| **set_bone_idx**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bone_idx**\ (\ )

L'indice dell'osso attaccato.

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_bone_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **bone_name** = ``""`` :ref:`🔗<class_BoneAttachment3D_property_bone_name>`

.. rst-class:: classref-property-setget

- |void| **set_bone_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_bone_name**\ (\ )

Il nome dell'osso attaccato.

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_external_skeleton:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **external_skeleton** :ref:`🔗<class_BoneAttachment3D_property_external_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_external_skeleton**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_external_skeleton**\ (\ )

The :ref:`NodePath<class_NodePath>` to the external :ref:`Skeleton3D<class_Skeleton3D>` node.

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_override_pose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **override_pose** = ``false`` :ref:`🔗<class_BoneAttachment3D_property_override_pose>`

.. rst-class:: classref-property-setget

- |void| **set_override_pose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_override_pose**\ (\ )

Whether the **BoneAttachment3D** node will override the bone pose of the bone it is attached to. When set to ``true``, the **BoneAttachment3D** node can change the pose of the bone. When set to ``false``, the **BoneAttachment3D** will always be set to the bone's transform.

\ **Note:** This override performs interruptively in the skeleton update process using signals due to the old design. It may cause unintended behavior when used at the same time with :ref:`SkeletonModifier3D<class_SkeletonModifier3D>`.

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_property_use_external_skeleton:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_external_skeleton** = ``false`` :ref:`🔗<class_BoneAttachment3D_property_use_external_skeleton>`

.. rst-class:: classref-property-setget

- |void| **set_use_external_skeleton**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_external_skeleton**\ (\ )

Whether the **BoneAttachment3D** node will use an external :ref:`Skeleton3D<class_Skeleton3D>` node rather than attempting to use its parent node as the :ref:`Skeleton3D<class_Skeleton3D>`. When set to ``true``, the **BoneAttachment3D** node will use the external :ref:`Skeleton3D<class_Skeleton3D>` node set in :ref:`external_skeleton<class_BoneAttachment3D_property_external_skeleton>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_BoneAttachment3D_method_get_skeleton:

.. rst-class:: classref-method

:ref:`Skeleton3D<class_Skeleton3D>` **get_skeleton**\ (\ ) :ref:`🔗<class_BoneAttachment3D_method_get_skeleton>`

Returns the parent or external :ref:`Skeleton3D<class_Skeleton3D>` node if it exists, otherwise returns ``null``.

.. rst-class:: classref-item-separator

----

.. _class_BoneAttachment3D_method_on_skeleton_update:

.. rst-class:: classref-method

|void| **on_skeleton_update**\ (\ ) :ref:`🔗<class_BoneAttachment3D_method_on_skeleton_update>`

Una funzione che viene chiamata automaticamente quando :ref:`Skeleton3D<class_Skeleton3D>` viene aggiornato. Questa funzione è dove il nodo **BoneAttachment3D** aggiorna la sua posizione in modo che sia correttamente vincolato quando *non* è impostato per sovrascrivere la posa dell'osso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
