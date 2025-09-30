:github_url: hide

.. _class_OpenXRRenderModelManager:

OpenXRRenderModelManager
========================

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Helper node that will automatically manage displaying render models.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

This helper node will automatically manage displaying render models. It will create new :ref:`OpenXRRenderModel<class_OpenXRRenderModel>` nodes as controllers and other hand held devices are detected, and remove those nodes when they are deactivated.

\ **Note:** If you want more control over this logic you can alternatively call :ref:`OpenXRRenderModelExtension.render_model_get_all()<class_OpenXRRenderModelExtension_method_render_model_get_all>` to obtain a list of active render model ids and create :ref:`OpenXRRenderModel<class_OpenXRRenderModel>` instances for each render model id provided.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                                 | :ref:`make_local_to_pose<class_OpenXRRenderModelManager_property_make_local_to_pose>` | ``""`` |
   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+
   | :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` | :ref:`tracker<class_OpenXRRenderModelManager_property_tracker>`                       | ``0``  |
   +-----------------------------------------------------------------------------+---------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_OpenXRRenderModelManager_signal_render_model_added:

.. rst-class:: classref-signal

**render_model_added**\ (\ render_model\: :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`\ ) :ref:`🔗<class_OpenXRRenderModelManager_signal_render_model_added>`

Emitted when a render model node is added as a child to this node.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelManager_signal_render_model_removed:

.. rst-class:: classref-signal

**render_model_removed**\ (\ render_model\: :ref:`OpenXRRenderModel<class_OpenXRRenderModel>`\ ) :ref:`🔗<class_OpenXRRenderModelManager_signal_render_model_removed>`

Emitted when a render model child node is about to be removed from this node.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OpenXRRenderModelManager_RenderModelTracker:

.. rst-class:: classref-enumeration

enum **RenderModelTracker**: :ref:`🔗<enum_OpenXRRenderModelManager_RenderModelTracker>`

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_ANY:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_ANY** = ``0``

All active render models are shown regardless of what tracker they relate to.

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_NONE_SET:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_NONE_SET** = ``1``

Only active render models are shown that are not related to any tracker we manage.

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_LEFT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_LEFT_HAND** = ``2``

Only active render models are shown that are related to the left hand tracker.

.. _class_OpenXRRenderModelManager_constant_RENDER_MODEL_TRACKER_RIGHT_HAND:

.. rst-class:: classref-enumeration-constant

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **RENDER_MODEL_TRACKER_RIGHT_HAND** = ``3``

Only active render models are shown that are related to the right hand tracker.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OpenXRRenderModelManager_property_make_local_to_pose:

.. rst-class:: classref-property

:ref:`String<class_String>` **make_local_to_pose** = ``""`` :ref:`🔗<class_OpenXRRenderModelManager_property_make_local_to_pose>`

.. rst-class:: classref-property-setget

- |void| **set_make_local_to_pose**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_make_local_to_pose**\ (\ )

Position render models local to this pose (this will adjust the position of the render models container node).

.. rst-class:: classref-item-separator

----

.. _class_OpenXRRenderModelManager_property_tracker:

.. rst-class:: classref-property

:ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **tracker** = ``0`` :ref:`🔗<class_OpenXRRenderModelManager_property_tracker>`

.. rst-class:: classref-property-setget

- |void| **set_tracker**\ (\ value\: :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>`\ )
- :ref:`RenderModelTracker<enum_OpenXRRenderModelManager_RenderModelTracker>` **get_tracker**\ (\ )

Limits render models to the specified tracker. Include: 0 = All render models, 1 = Render models not related to a tracker, 2 = Render models related to the left hand tracker, 3 = Render models related to the right hand tracker.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
