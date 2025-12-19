:github_url: hide

.. _class_OpenXRSpatialAnchorCapability:

OpenXRSpatialAnchorCapability
=============================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Implementation for handling spatial entity anchor logic.

.. rst-class:: classref-introduction-group

Опис
--------

This is an internal class that handles the OpenXR anchor spatial entity extension.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>` | :ref:`create_new_anchor<class_OpenXRSpatialAnchorCapability_method_create_new_anchor>`\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, spatial_context\: :ref:`RID<class_RID>` = RID()\ )                                                                                      |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`create_persistence_context<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )                    |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`free_persistence_context<class_OpenXRSpatialAnchorCapability_method_free_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ )                                                                                                                               |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                 | :ref:`get_persistence_context_handle<class_OpenXRSpatialAnchorCapability_method_get_persistence_context_handle>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) |const|                                                                                                           |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_persistence_scope_supported<class_OpenXRSpatialAnchorCapability_method_is_persistence_scope_supported>`\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`\ )                                                                          |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_spatial_anchor_supported<class_OpenXRSpatialAnchorCapability_method_is_spatial_anchor_supported>`\ (\ )                                                                                                                                                                      |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                               | :ref:`is_spatial_persistence_supported<class_OpenXRSpatialAnchorCapability_method_is_spatial_persistence_supported>`\ (\ )                                                                                                                                                            |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`persist_anchor<class_OpenXRSpatialAnchorCapability_method_persist_anchor>`\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ )     |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                | :ref:`remove_anchor<class_OpenXRSpatialAnchorCapability_method_remove_anchor>`\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`\ )                                                                                                                          |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`   | :ref:`unpersist_anchor<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>`\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_OpenXRSpatialAnchorCapability_PersistenceScope:

.. rst-class:: classref-enumeration

enum **PersistenceScope**: :ref:`🔗<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`

.. _class_OpenXRSpatialAnchorCapability_constant_PERSISTENCE_SCOPE_SYSTEM_MANAGED:

.. rst-class:: classref-enumeration-constant

:ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>` **PERSISTENCE_SCOPE_SYSTEM_MANAGED** = ``1``

Provides the application with read-only access (i.e. application cannot modify this scope) to spatial entities persisted and managed by the system. The application can use the UUID in the persistence component for this scope to correlate entities across spatial contexts and device reboots.

.. _class_OpenXRSpatialAnchorCapability_constant_PERSISTENCE_SCOPE_LOCAL_ANCHORS:

.. rst-class:: classref-enumeration-constant

:ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>` **PERSISTENCE_SCOPE_LOCAL_ANCHORS** = ``1000781000``

Persistence operations and data access is limited to spatial anchors, on the same device, for the same user and same app (using :ref:`persist_anchor()<class_OpenXRSpatialAnchorCapability_method_persist_anchor>` and :ref:`unpersist_anchor()<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>` functions)

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRSpatialAnchorCapability_method_create_new_anchor:

.. rst-class:: classref-method

:ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>` **create_new_anchor**\ (\ transform\: :ref:`Transform3D<class_Transform3D>`, spatial_context\: :ref:`RID<class_RID>` = RID()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_create_new_anchor>`

Creates a new anchor that will be tracked by the XR runtime. The ``transform`` should be a transform in the local space of your :ref:`XROrigin3D<class_XROrigin3D>` node. If ``spatial_context`` is not specified the default will be used, this requires :ref:`ProjectSettings.xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection<class_ProjectSettings_property_xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection>` to be set. The returned tracker will track the location in case our reference space changes.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_create_persistence_context:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **create_persistence_context**\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`, user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`

Creates a new persistence context for storing persistent data.

\ **Note:** This is an asynchronous method and returns an :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` object with which to track the status, discarding this object will not cancel the creation process. On success ``user_callback`` will be called if specified. The result value for this function is the :ref:`RID<class_RID>` for our persistence context.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_free_persistence_context:

.. rst-class:: classref-method

|void| **free_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_free_persistence_context>`

Frees a persistence context previously created with :ref:`create_persistence_context()<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_get_persistence_context_handle:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_persistence_context_handle**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) |const| :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_get_persistence_context_handle>`

Returns the internal handle for this persistence context.

\ **Note:** For GDExtension implementations.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_is_persistence_scope_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_persistence_scope_supported**\ (\ scope\: :ref:`PersistenceScope<enum_OpenXRSpatialAnchorCapability_PersistenceScope>`\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_is_persistence_scope_supported>`

Returns ``true`` if this persistence scope is supported by our spatial anchor capability.

\ **Note:** Only valid after an OpenXR instance has been created.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_is_spatial_anchor_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_spatial_anchor_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_is_spatial_anchor_supported>`

Returns ``true`` if spatial anchors are supported by the hardware. Only returns a valid value after OpenXR has been initialized.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_is_spatial_persistence_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_spatial_persistence_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_is_spatial_persistence_supported>`

Returns ``true`` if persistent spatial anchors are supported by the hardware. Only returns a valid value after OpenXR has been initialized.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_persist_anchor:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **persist_anchor**\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_persist_anchor>`

Changes this anchor into a persistent anchor. This means its location will be stored on the device and the anchor will be restored the next time your application starts. If ``persistence_context`` is not specified the default will be used, this requires :ref:`ProjectSettings.xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection<class_ProjectSettings_property_xr/openxr/extensions/spatial_entity/enable_builtin_anchor_detection>` to be set.

\ **Note:** This is an asynchronous method and returns an :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` object with which to track the status, discarding this object will not cancel the creation process. On success ``user_callback`` will be called if specified. The result value for this function is a boolean which will be set to ``true`` on successful completion.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_remove_anchor:

.. rst-class:: classref-method

|void| **remove_anchor**\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_remove_anchor>`

Remove an anchor previously created with :ref:`create_new_anchor()<class_OpenXRSpatialAnchorCapability_method_create_new_anchor>`. If this anchor was persistent you must first call :ref:`unpersist_anchor()<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>` and await its callback.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialAnchorCapability_method_unpersist_anchor:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **unpersist_anchor**\ (\ anchor_tracker\: :ref:`OpenXRAnchorTracker<class_OpenXRAnchorTracker>`, persistence_context\: :ref:`RID<class_RID>` = RID(), user_callback\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRSpatialAnchorCapability_method_unpersist_anchor>`

Removes the persistent data from this anchor. The runtime will not recreate the anchor when your application restarts. If ``persistence_context`` is not specified the default will be used, this requires :ref:`ProjectSettings.xr/openxr/extensions/spatial_entity/enabled<class_ProjectSettings_property_xr/openxr/extensions/spatial_entity/enabled>` to be set.

\ **Note:** This is an asynchronous method and returns an :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` object with which to track the status, discarding this object will not cancel the creation process. On success ``user_callback`` will be called if specified. The result value for this function is a boolean which will be set to ``true`` on successful completion.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
