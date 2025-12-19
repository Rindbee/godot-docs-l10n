:github_url: hide

.. _class_OpenXRInteractionProfileMetadata:

OpenXRInteractionProfileMetadata
================================

**Наследует:** :ref:`Object<class_Object>`

Метакласс, регистрирующий поддерживаемые устройства в OpenXR.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс позволяет ядру и расширениям OpenXR регистрировать метаданные, относящиеся к поддерживаемым устройствам взаимодействия, таким как контроллеры, трекеры, тактильные устройства и т. д. Он в основном используется редактором карты действий и для очистки любой карты действий путем удаления записей, зависящих от расширения, когда это применимо.

.. rst-class:: classref-reftable-group

Методы
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

Описания метода
------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
