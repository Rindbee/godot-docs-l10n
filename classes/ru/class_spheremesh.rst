:github_url: hide

.. _class_SphereMesh:

SphereMesh
==========

**Наследует:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Класс, представляющий собой сферическую :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Класс, представляющий собой сферическую :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`height<class_SphereMesh_property_height>`                   | ``1.0``   |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`is_hemisphere<class_SphereMesh_property_is_hemisphere>`     | ``false`` |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_SphereMesh_property_radial_segments>` | ``64``    |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`radius<class_SphereMesh_property_radius>`                   | ``0.5``   |
   +---------------------------+-------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`rings<class_SphereMesh_property_rings>`                     | ``32``    |
   +---------------------------+-------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SphereMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``1.0`` :ref:`🔗<class_SphereMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Полная высота сферы.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_is_hemisphere:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_hemisphere** = ``false`` :ref:`🔗<class_SphereMesh_property_is_hemisphere>`

.. rst-class:: classref-property-setget

- |void| **set_is_hemisphere**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_hemisphere**\ (\ )

Если ``true``, создается полушарие вместо полной сферы.

\ **Примечание:** Чтобы получить обычное полушарие, высота и радиус сферы должны быть равны.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_SphereMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

Количество радиальных сегментов на сфере.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_SphereMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радиус сферы.

.. rst-class:: classref-item-separator

----

.. _class_SphereMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``32`` :ref:`🔗<class_SphereMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

Количество сегментов вдоль высоты сферы.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
