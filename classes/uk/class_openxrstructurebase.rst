:github_url: hide

.. _class_OpenXRStructureBase:

OpenXRStructureBase
===================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`OpenXRSpatialContextPersistenceConfig<class_OpenXRSpatialContextPersistenceConfig>`

Object for storing OpenXR structure data.

.. rst-class:: classref-introduction-group

Опис
--------

Object for storing OpenXR structure data that is passed when calling into OpenXR APIs.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------------+------------------------------------------------------+
   | :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` | :ref:`next<class_OpenXRStructureBase_property_next>` |
   +-------------------------------------------------------+------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`_get_header<class_OpenXRStructureBase_private_method__get_header>`\ (\ next\: :ref:`int<class_int>`\ ) |virtual| |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_structure_type<class_OpenXRStructureBase_method_get_structure_type>`\ (\ )                                   |
   +-----------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_OpenXRStructureBase_property_next:

.. rst-class:: classref-property

:ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **next** :ref:`🔗<class_OpenXRStructureBase_property_next>`

.. rst-class:: classref-property-setget

- |void| **set_next**\ (\ value\: :ref:`OpenXRStructureBase<class_OpenXRStructureBase>`\ )
- :ref:`OpenXRStructureBase<class_OpenXRStructureBase>` **get_next**\ (\ )

Setting another structure object here chains these structures together to extend the API functionality. Consult the OpenXR documentation for which structures can be used with a given API call.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRStructureBase_private_method__get_header:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_header**\ (\ next\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_OpenXRStructureBase_private_method__get_header>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_OpenXRStructureBase_method_get_structure_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_structure_type**\ (\ ) :ref:`🔗<class_OpenXRStructureBase_method_get_structure_type>`

Returns the structure type (OpenXR ``XrStructureType``) used for this structure.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
