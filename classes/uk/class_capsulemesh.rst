:github_url: hide

.. _class_CapsuleMesh:

CapsuleMesh
===========

**Успадковує:** :ref:`PrimitiveMesh<class_PrimitiveMesh>` **<** :ref:`Mesh<class_Mesh>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Клас, що представляє форму капсули :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-introduction-group

Опис
--------

Клас, що представляє форму капсули :ref:`PrimitiveMesh<class_PrimitiveMesh>`.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleMesh_property_height>`                   | ``2.0`` |
   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`radial_segments<class_CapsuleMesh_property_radial_segments>` | ``64``  |
   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleMesh_property_radius>`                   | ``0.5`` |
   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`rings<class_CapsuleMesh_property_rings>`                     | ``8``   |
   +---------------------------+--------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_CapsuleMesh_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CapsuleMesh_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Загальна висота сітки капсули (включаючи напівсферичні кінці).

\ **Примітка:** :ref:`height<class_CapsuleMesh_property_height>` капсули повинна бути щонайменше вдвічі більшою за її :ref:`radius<class_CapsuleMesh_property_radius>`. В іншому випадку капсула стає колом. Якщо :ref:`height<class_CapsuleMesh_property_height>` менша ніж вдвічі більша за :ref:`radius<class_CapsuleMesh_property_radius>`, властивості налаштовуються на дійсне значення.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleMesh_property_radial_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **radial_segments** = ``64`` :ref:`🔗<class_CapsuleMesh_property_radial_segments>`

.. rst-class:: classref-property-setget

- |void| **set_radial_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_radial_segments**\ (\ )

Кількість радіальних сегментів на сітці капсули.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleMesh_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CapsuleMesh_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радіус сітки капсули.

\ **Примітка:** :ref:`radius<class_CapsuleMesh_property_radius>` капсули не може бути більшим за половину її :ref:`height<class_CapsuleMesh_property_height>`. В іншому випадку капсула стає колом. Якщо :ref:`radius<class_CapsuleMesh_property_radius>` більший за половину :ref:`height<class_CapsuleMesh_property_height>`, властивості налаштовуються на дійсне значення.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleMesh_property_rings:

.. rst-class:: classref-property

:ref:`int<class_int>` **rings** = ``8`` :ref:`🔗<class_CapsuleMesh_property_rings>`

.. rst-class:: classref-property-setget

- |void| **set_rings**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_rings**\ (\ )

Кількість кілець по висоті капсули.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
