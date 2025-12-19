:github_url: hide

.. _class_OpenXRInteractionProfileMetadata:

OpenXRInteractionProfileMetadata
================================

**Hereda:** :ref:`Object<class_Object>`

Meta clase que registra los dispositivos compatibles en OpenXR.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase permite que el núcleo de OpenXR y las extensiones registren metadatos relacionados con los dispositivos de interacción compatibles, como controladores, rastreadores, dispositivos hápticos, etc. Se utiliza principalmente por el editor de mapas de acciones y para sanear cualquier mapa de acciones eliminando las entradas dependientes de la extensión cuando corresponda.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
