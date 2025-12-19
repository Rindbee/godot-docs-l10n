:github_url: hide

.. _class_OpenXRSpatialComponentPolygon2DList:

OpenXRSpatialComponentPolygon2DList
===================================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries polygon2d result data.

.. rst-class:: classref-introduction-group

Опис
--------

Object for storing the queries 2D polygon result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>`               | :ref:`get_transform<class_OpenXRSpatialComponentPolygon2DList_method_get_transform>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_vertices<class_OpenXRSpatialComponentPolygon2DList_method_get_vertices>`\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRSpatialComponentPolygon2DList_method_get_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_transform**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPolygon2DList_method_get_transform>`

Returns the transform for positioning our polygon for the entity at this ``index``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentPolygon2DList_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_vertices**\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentPolygon2DList_method_get_vertices>`

Returns the polygon vertices for the entity at this ``index``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
