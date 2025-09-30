:github_url: hide

.. _class_World2D:

World2D
=======

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Ресурс, содержащий все компоненты двухмерного мира, такие как холст (canvas) и физическое пространство.

.. rst-class:: classref-introduction-group

Описание
----------------

Класс, в котором есть все, что относится к 2D-миру: физическое пространство, холст и звуковое пространство. 2D-узлы регистрируют свои ресурсы в текущем 2D-мире.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Трассировка лучей <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`canvas<class_World2D_property_canvas>`                         |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` | :ref:`direct_space_state<class_World2D_property_direct_space_state>` |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`navigation_map<class_World2D_property_navigation_map>`         |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`space<class_World2D_property_space>`                           |
   +-------------------------------------------------------------------+----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_World2D_property_canvas:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **canvas** :ref:`🔗<class_World2D_property_canvas>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_canvas**\ (\ )

:ref:`RID<class_RID>` ресурса холста этого мира. Используется :ref:`RenderingServer<class_RenderingServer>` для 2D-рисования.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_direct_space_state:

.. rst-class:: classref-property

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **direct_space_state** :ref:`🔗<class_World2D_property_direct_space_state>`

.. rst-class:: classref-property-setget

- :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **get_direct_space_state**\ (\ )

Прямой доступ к физическому 2D-пространству мира. Используется для запроса текущих и потенциальных столкновений. При использовании многопоточной физики доступ ограничен :ref:`Node._physics_process()<class_Node_private_method__physics_process>` в основном потоке.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_navigation_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **navigation_map** :ref:`🔗<class_World2D_property_navigation_map>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_navigation_map**\ (\ )

:ref:`RID<class_RID>` навигационной карты этого мира. Используется :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_space:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **space** :ref:`🔗<class_World2D_property_space>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_space**\ (\ )

:ref:`RID<class_RID>` ресурса физического пространства этого мира. Используется :ref:`PhysicsServer2D<class_PhysicsServer2D>` для 2D-физики, рассматривая его и как пространство, и как область.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
