:github_url: hide

.. _class_OpenXRInteractionProfileMetadata:

OpenXRInteractionProfileMetadata
================================

**Eredita:** :ref:`Object<class_Object>`

Meta-classe che registra i dispositivi supportati in OpenXR.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questa classe consente alla base e alle estensioni OpenXR di registrare metadati relativi ai dispositivi di interazione supportati, quali controller, tracciatori, dispositivi tattili, ecc. È utilizzata principalmente dall'editor delle mappe di azioni e per ripulire qualsiasi mappa di azioni, rimuovendo le voci dipendenti dall'estensione, dove applicabile.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_interaction_profile<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ )                                                                                                                                        |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_io_path<class_OpenXRInteractionProfileMetadata_method_register_io_path>`\ (\ interaction_profile\: :ref:`String<class_String>`, display_name\: :ref:`String<class_String>`, toplevel_path\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`, action_type\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_path_rename<class_OpenXRInteractionProfileMetadata_method_register_path_rename>`\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                                     |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_profile_rename<class_OpenXRInteractionProfileMetadata_method_register_profile_rename>`\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ )                                                                                                                                                                                                               |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_top_level_path<class_OpenXRInteractionProfileMetadata_method_register_top_level_path>`\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ )                                                                                                                                                  |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OpenXRInteractionProfileMetadata_method_register_interaction_profile:

.. rst-class:: classref-method

|void| **register_interaction_profile**\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`

Registers an interaction profile using its OpenXR designation (e.g. ``/interaction_profiles/khr/simple_controller`` is the profile for OpenXR's simple controller profile).

\ ``display_name`` is the description shown to the user. ``openxr_path`` is the interaction profile path being registered. ``openxr_extension_names`` optionally restricts this profile to the given extension being enabled/available. If the extension is not available, the profile and all related entries used in an action map are filtered out.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_io_path:

.. rst-class:: classref-method

|void| **register_io_path**\ (\ interaction_profile\: :ref:`String<class_String>`, display_name\: :ref:`String<class_String>`, toplevel_path\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`, action_type\: :ref:`ActionType<enum_OpenXRAction_ActionType>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_io_path>`

Registers an input/output path for the given ``interaction_profile``. The profile should previously have been registered using :ref:`register_interaction_profile()<class_OpenXRInteractionProfileMetadata_method_register_interaction_profile>`. ``display_name`` is the description shown to the user. ``toplevel_path`` specifies the bind path this input/output can be bound to (e.g. ``/user/hand/left`` or ``/user/hand/right``). ``openxr_path`` is the action input/output being registered (e.g. ``/user/hand/left/input/aim/pose``). ``openxr_extension_names`` restricts this input/output to an enabled/available extension, this doesn't need to repeat the extension on the profile but relates to overlapping extension (e.g. ``XR_EXT_palm_pose`` that introduces ``…/input/palm_ext/pose`` input paths). ``action_type`` defines the type of input or output provided by OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_path_rename:

.. rst-class:: classref-method

|void| **register_path_rename**\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_path_rename>`

Allows for renaming old input/output paths to new paths in order to load and process older action maps.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_profile_rename:

.. rst-class:: classref-method

|void| **register_profile_rename**\ (\ old_name\: :ref:`String<class_String>`, new_name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_profile_rename>`

Allows for renaming old interaction profile paths to new paths in order to load and process older action maps.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRInteractionProfileMetadata_method_register_top_level_path:

.. rst-class:: classref-method

|void| **register_top_level_path**\ (\ display_name\: :ref:`String<class_String>`, openxr_path\: :ref:`String<class_String>`, openxr_extension_names\: :ref:`String<class_String>`\ ) :ref:`🔗<class_OpenXRInteractionProfileMetadata_method_register_top_level_path>`

Registers a top level path to which profiles can be bound. For instance ``/user/hand/left`` refers to the bind point for the player's left hand. Extensions can register additional top level paths, for instance a haptic vest extension might register ``/user/body/vest``.

\ ``display_name`` is the name shown to the user. ``openxr_path`` is the top level path being registered. ``openxr_extension_names`` is optional and ensures the top level path is only used if the specified extension is available/enabled.

When a top level path ends up being bound by OpenXR, an :ref:`XRPositionalTracker<class_XRPositionalTracker>` is instantiated to manage the state of the device.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
