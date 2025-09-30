:github_url: hide

.. _class_World3D:

World3D
=======

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Ресурс, содержащий все компоненты трехмерного мира, такие как визуальный сценарий и физическое пространство.

.. rst-class:: classref-introduction-group

Описание
----------------

Класс, в котором есть все, что относится к миру: физическое пространство, визуальный сценарий и звуковое пространство. 3D-узлы регистрируют свои ресурсы в текущем 3D-мире.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Трассировка лучей <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`                   | :ref:`camera_attributes<class_World3D_property_camera_attributes>`       |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` | :ref:`direct_space_state<class_World3D_property_direct_space_state>`     |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`                             | :ref:`environment<class_World3D_property_environment>`                   |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`                             | :ref:`fallback_environment<class_World3D_property_fallback_environment>` |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`navigation_map<class_World3D_property_navigation_map>`             |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`scenario<class_World3D_property_scenario>`                         |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                             | :ref:`space<class_World3D_property_space>`                               |
   +-------------------------------------------------------------------+--------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_World3D_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_World3D_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

Ресурс :ref:`CameraAttributes<class_CameraAttributes>` по умолчанию, который следует использовать, если для :ref:`Camera3D<class_Camera3D>` ничего не установлено.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_direct_space_state:

.. rst-class:: classref-property

:ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **direct_space_state** :ref:`🔗<class_World3D_property_direct_space_state>`

.. rst-class:: classref-property-setget

- :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **get_direct_space_state**\ (\ )

Прямой доступ к состоянию трехмерного пространства физики мира. Используется для запроса текущих и потенциальных столкновений. При использовании многопоточной физики доступ ограничен :ref:`Node._physics_process()<class_Node_private_method__physics_process>` в основном потоке.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_World3D_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

:ref:`Environment<class_Environment>` этого World3D.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_fallback_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **fallback_environment** :ref:`🔗<class_World3D_property_fallback_environment>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_fallback_environment**\ (\ )

Резервная среда World3D будет использоваться в случае сбоя или отсутствия :ref:`environment<class_World3D_property_environment>`.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_navigation_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **navigation_map** :ref:`🔗<class_World3D_property_navigation_map>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_navigation_map**\ (\ )

:ref:`RID<class_RID>` навигационной карты этого мира. Используется :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_scenario:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **scenario** :ref:`🔗<class_World3D_property_scenario>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_scenario**\ (\ )

Визуальный сценарий World3D.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_space:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **space** :ref:`🔗<class_World3D_property_space>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_space**\ (\ )

Физическое пространство World3D.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
