:github_url: hide

.. _class_OpenXRSpatialContextPersistenceConfig:

OpenXRSpatialContextPersistenceConfig
=====================================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration header for spatial persistence.

.. rst-class:: classref-introduction-group

Опис
--------

Configuration header for spatial persistence. Pass this to :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` as the next parameter to create a spatial context with spatial persistence capabilities.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_persistence_context<class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ )       |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_persistence_context<class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context>`\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context:

.. rst-class:: classref-method

|void| **add_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContextPersistenceConfig_method_add_persistence_context>`

Adds a persistence context to this configuration. You must add at least one persistence context to create a valid configuration. You can create a persistence context by calling :ref:`OpenXRSpatialAnchorCapability.create_persistence_context()<class_OpenXRSpatialAnchorCapability_method_create_persistence_context>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context:

.. rst-class:: classref-method

|void| **remove_persistence_context**\ (\ persistence_context\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_OpenXRSpatialContextPersistenceConfig_method_remove_persistence_context>`

Removes a persistence context.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
