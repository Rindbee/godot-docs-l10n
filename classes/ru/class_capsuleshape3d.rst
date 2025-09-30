:github_url: hide

.. _class_CapsuleShape3D:

CapsuleShape3D
==============

**Наследует:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Форма 3D-капсулы, используемая для физического столкновения.

.. rst-class:: classref-introduction-group

Описание
----------------

Форма капсулы 3D, предназначенная для использования в физике. Обычно используется для предоставления формы для :ref:`CollisionShape3D<class_CollisionShape3D>`.

\ **Производительность:** **CapsuleShape3D** быстро проверяет столкновения. Он быстрее, чем :ref:`CylinderShape3D<class_CylinderShape3D>`, но медленнее, чем :ref:`SphereShape3D<class_SphereShape3D>` и :ref:`BoxShape3D<class_BoxShape3D>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация 3D-физических тестов <https://godotengine.org/asset-library/asset/2747>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`height<class_CapsuleShape3D_property_height>`         | ``2.0`` |
   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`mid_height<class_CapsuleShape3D_property_mid_height>` |         |
   +---------------------------+-------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_CapsuleShape3D_property_radius>`         | ``0.5`` |
   +---------------------------+-------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CapsuleShape3D_property_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **height** = ``2.0`` :ref:`🔗<class_CapsuleShape3D_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height**\ (\ )

Полная высота капсулы, включая полусферы.

\ **Примечание:** :ref:`height<class_CapsuleShape3D_property_height>` капсулы должна быть как минимум вдвое больше :ref:`radius<class_CapsuleShape3D_property_radius>`. В противном случае капсула станет сферической. Если :ref:`height<class_CapsuleShape3D_property_height>` меньше удвоенного :ref:`radius<class_CapsuleShape3D_property_radius>`, свойства корректируются до допустимого значения.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape3D_property_mid_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **mid_height** :ref:`🔗<class_CapsuleShape3D_property_mid_height>`

.. rst-class:: classref-property-setget

- |void| **set_mid_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mid_height**\ (\ )

Высота капсулы, исключая полусферы. Это высота центральной цилиндрической части в середине капсулы, и это расстояние между центрами двух полусфер. Это оболочка для :ref:`height<class_CapsuleShape3D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_CapsuleShape3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``0.5`` :ref:`🔗<class_CapsuleShape3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радиус капсулы.

\ **Примечание:** :ref:`radius<class_CapsuleShape3D_property_radius>` капсулы не может быть больше половины её :ref:`height<class_CapsuleShape3D_property_height>`. В противном случае капсула становится сферической. Если :ref:`radius<class_CapsuleShape3D_property_radius>` больше половины :ref:`height<class_CapsuleShape3D_property_height>`, свойства корректируются до допустимого значения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
