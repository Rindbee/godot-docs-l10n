:github_url: hide

.. _class_OpenXRInteractionProfileMetadata:

OpenXRInteractionProfileMetadata
================================

**Успадковує:** :ref:`Object<class_Object>`

Регулятори класу Meta в OpenXR.

.. rst-class:: classref-introduction-group

Опис
--------

Даний клас дозволяє OpenXR ядро та розширення для реєстрації метаданих, що стосуються підтримуваних пристроїв взаємодії, таких як контролери, трекери, пристрої гаптичних тощо. В першу чергу використовується редактором і для очищення будь-якої карти дій шляхом видалення розширених записів при необхідності.

.. rst-class:: classref-reftable-group

Методи
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

Описи методів
--------------------------

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

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
