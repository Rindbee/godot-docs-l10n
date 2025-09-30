:github_url: hide

.. _class_CSGShape3D:

CSGShape3D
==========

**Eredita:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CSGCombiner3D<class_CSGCombiner3D>`, :ref:`CSGPrimitive3D<class_CSGPrimitive3D>`

La classe di base CSG.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

This is the CSG base class that provides CSG operation support to the various CSG nodes in Godot.

\ **Performance:** CSG nodes are only intended for prototyping as they have a significant CPU performance cost. Consider baking final CSG operation results into static geometry that replaces the CSG nodes.

Individual CSG root node results can be baked to nodes with static resources with the editor menu that appears when a CSG root node is selected.

Individual CSG root nodes can also be baked to static resources with scripts by calling :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` for the visual mesh or :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` for the physics collision.

Entire scenes of CSG nodes can be baked to static geometry and exported with the editor glTF scene exporter: **Scene > Export As... > glTF 2.0 Scene...**

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Prototipazione de livelli con CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`calculate_tangents<class_CSGShape3D_property_calculate_tangents>` | ``true``  |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`       | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`         | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`collision_priority<class_CSGShape3D_property_collision_priority>` | ``1.0``   |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`Operation<enum_CSGShape3D_Operation>` | :ref:`operation<class_CSGShape3D_property_operation>`                   | ``0``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`snap<class_CSGShape3D_property_snap>`                             |           |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`use_collision<class_CSGShape3D_property_use_collision>`           | ``false`` |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` | :ref:`bake_collision_shape<class_CSGShape3D_method_bake_collision_shape>`\ (\ )                                                                                  |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`                         | :ref:`bake_static_mesh<class_CSGShape3D_method_bake_static_mesh>`\ (\ )                                                                                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_layer_value<class_CSGShape3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_mask_value<class_CSGShape3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`get_meshes<class_CSGShape3D_method_get_meshes>`\ (\ ) |const|                                                                                              |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`is_root_shape<class_CSGShape3D_method_is_root_shape>`\ (\ ) |const|                                                                                        |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_layer_value<class_CSGShape3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_mask_value<class_CSGShape3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )   |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_CSGShape3D_Operation:

.. rst-class:: classref-enumeration

enum **Operation**: :ref:`🔗<enum_CSGShape3D_Operation>`

.. _class_CSGShape3D_constant_OPERATION_UNION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_UNION** = ``0``

La geometria di entrambe i primitivi è unita, mentre la geometria intersecante è rimossa.

.. _class_CSGShape3D_constant_OPERATION_INTERSECTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_INTERSECTION** = ``1``

Rimane solo la geometria intersecante, il resto viene rimosso.

.. _class_CSGShape3D_constant_OPERATION_SUBTRACTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_SUBTRACTION** = ``2``

La seconda forma è sottratta dalla prima, lasciando un incavo nella sua forma.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CSGShape3D_property_calculate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **calculate_tangents** = ``true`` :ref:`🔗<class_CSGShape3D_property_calculate_tangents>`

.. rst-class:: classref-property-setget

- |void| **set_calculate_tangents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_calculating_tangents**\ (\ )

Calcola le tangenti per la forma CSG che consente l'uso di mappe normali. Questo è applicato solo alla forma radice, questa impostazione è ignorata su qualsiasi figlio. Impostando questo valore su ``false`` si può velocizzare leggermente la generazione delle forme.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Gli strati di fisica in cui si trova quest'area.

Gli oggetti collidibili possono esistere in uno qualsiasi dei 32 livelli diversi. Questi livelli funzionano come un sistema di marcatura e non sono visivi. Un collidibile può usare questi livelli per selezionare con quali oggetti esso può collidere, attraverso la proprietà collision_mask.

Un contatto viene rilevato se l'oggetto A è in uno qualsiasi degli strati scansionati dall'oggetto B, o se l'oggetto B è in uno qualsiasi degli strati scansionati dall'oggetto A. Consulta `Strati e maschere di collisione <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Gli strati di fisica che questa forma CSG scansiona per le collisioni. Efficace solo se :ref:`use_collision<class_CSGShape3D_property_use_collision>` è ``true``. Consulta `Strati e maschere di collisione <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ nella documentazione per ulteriori informazioni.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CSGShape3D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

La priorità utilizzata per risolvere la collisione quando si verifica una penetrazione. Efficace solo se :ref:`use_collision<class_CSGShape3D_property_use_collision>` è ``true``. Più alta è la priorità, minore sarà la penetrazione nell'oggetto. Questo può essere utilizzato, ad esempio, per impedire al giocatore di sfondare i confini di un livello.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_operation:

.. rst-class:: classref-property

:ref:`Operation<enum_CSGShape3D_Operation>` **operation** = ``0`` :ref:`🔗<class_CSGShape3D_property_operation>`

.. rst-class:: classref-property-setget

- |void| **set_operation**\ (\ value\: :ref:`Operation<enum_CSGShape3D_Operation>`\ )
- :ref:`Operation<enum_CSGShape3D_Operation>` **get_operation**\ (\ )

L'operazione che è eseguita su questa forma. Viene ignorata per il primo nodo figlio CSG poiché l'operazione avviene tra questo nodo e il figlio precedente del genitore di questo nodo.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_snap:

.. rst-class:: classref-property

:ref:`float<class_float>` **snap** :ref:`🔗<class_CSGShape3D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_snap**\ (\ )

**Deprecato:** The CSG library no longer uses snapping.

Questa proprietà non fa nulla.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_use_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_collision** = ``false`` :ref:`🔗<class_CSGShape3D_property_use_collision>`

.. rst-class:: classref-property-setget

- |void| **set_use_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_collision**\ (\ )

Aggiunge una forma di collisione al motore fisico per la nostra forma CSG. Questa funzionerà sempre come un corpo statico. Nota che la forma di collisione è ancora attiva anche se la forma CSG stessa è nascosta. Vedi anche :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` e :ref:`collision_priority<class_CSGShape3D_property_collision_priority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CSGShape3D_method_bake_collision_shape:

.. rst-class:: classref-method

:ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` **bake_collision_shape**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_collision_shape>`

Returns a baked physics :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` of this node's CSG operation result. Returns an empty shape if the node is not a CSG root node or has no valid geometry.

\ **Performance:** If the CSG operation results in a very detailed geometry with many faces physics performance will be very slow. Concave shapes should in general only be used for static level geometry and not with dynamic objects that are moving.

\ **Note:** CSG mesh data updates are deferred, which means they are updated with a delay of one rendered frame. To avoid getting an empty shape or outdated mesh data, make sure to call ``await get_tree().process_frame`` before using :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` in :ref:`Node._ready()<class_Node_private_method__ready>` or after changing properties on the **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_bake_static_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_static_mesh**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_static_mesh>`

Returns a baked static :ref:`ArrayMesh<class_ArrayMesh>` of this node's CSG operation result. Materials from involved CSG nodes are added as extra mesh surfaces. Returns an empty mesh if the node is not a CSG root node or has no valid geometry.

\ **Note:** CSG mesh data updates are deferred, which means they are updated with a delay of one rendered frame. To avoid getting an empty mesh or outdated mesh data, make sure to call ``await get_tree().process_frame`` before using :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` in :ref:`Node._ready()<class_Node_private_method__ready>` or after changing properties on the **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_layer_value>`

Restituisce se lo strato specificato di :ref:`collision_layer<class_CSGShape3D_property_collision_layer>` è abilitato o meno, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_mask_value>`

Restituisce se lo strato specificato della :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` è abilitato, fornito un numero di strato ``layer_number`` tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_meshes>`

Returns an :ref:`Array<class_Array>` with two elements, the first is the :ref:`Transform3D<class_Transform3D>` of this node and the second is the root :ref:`Mesh<class_Mesh>` of this node. Only works when this node is the root shape.

\ **Note:** CSG mesh data updates are deferred, which means they are updated with a delay of one rendered frame. To avoid getting an empty shape or outdated mesh data, make sure to call ``await get_tree().process_frame`` before using :ref:`get_meshes()<class_CSGShape3D_method_get_meshes>` in :ref:`Node._ready()<class_Node_private_method__ready>` or after changing properties on the **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_is_root_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_root_shape**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_is_root_shape>`

Restituisce ``true`` se questa è una forma radice ed è quindi l'oggetto che viene renderizzato.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_layer_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato nel :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`, fornito un ``layer_number`` compreso tra 1 e 32.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
