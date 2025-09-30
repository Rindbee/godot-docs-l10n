:github_url: hide

.. _class_RemoteTransform2D:

RemoteTransform2D
=================

**Наследует:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

RemoteTransform2D помещает свой собственный :ref:`Transform2D<class_Transform2D>` в другой производный узел :ref:`Node2D<class_Node2D>` в сцене.

.. rst-class:: classref-introduction-group

Описание
----------------

RemoteTransform2D помещает свой собственный :ref:`Transform2D<class_Transform2D>` в другой производный узел :ref:`Node2D<class_Node2D>` (называемый удаленным узлом) в сцене.

Его можно настроить на обновление положения, поворота и/или масштаба другого узла. Он может использовать как глобальные, так и локальные координаты.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`remote_path<class_RemoteTransform2D_property_remote_path>`                       | ``NodePath("")`` |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_position<class_RemoteTransform2D_property_update_position>`               | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_rotation<class_RemoteTransform2D_property_update_rotation>`               | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`update_scale<class_RemoteTransform2D_property_update_scale>`                     | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`use_global_coordinates<class_RemoteTransform2D_property_use_global_coordinates>` | ``true``         |
   +---------------------------------+----------------------------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+------------------------------------------------------------------------------------+
   | |void| | :ref:`force_update_cache<class_RemoteTransform2D_method_force_update_cache>`\ (\ ) |
   +--------+------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RemoteTransform2D_property_remote_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **remote_path** = ``NodePath("")`` :ref:`🔗<class_RemoteTransform2D_property_remote_path>`

.. rst-class:: classref-property-setget

- |void| **set_remote_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_remote_node**\ (\ )

:ref:`NodePath<class_NodePath>` к удаленному узлу относительно положения RemoteTransform2D на сцене.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform2D_property_update_position:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_position** = ``true`` :ref:`🔗<class_RemoteTransform2D_property_update_position>`

.. rst-class:: classref-property-setget

- |void| **set_update_position**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_position**\ (\ )

Если ``true``, позиция удаленного узла обновляется.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform2D_property_update_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_rotation** = ``true`` :ref:`🔗<class_RemoteTransform2D_property_update_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_update_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_rotation**\ (\ )

Если ``true``, вращение удаленного узла обновляется.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform2D_property_update_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **update_scale** = ``true`` :ref:`🔗<class_RemoteTransform2D_property_update_scale>`

.. rst-class:: classref-property-setget

- |void| **set_update_scale**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_update_scale**\ (\ )

Если ``true``, масштаб удаленного узла обновляется.

.. rst-class:: classref-item-separator

----

.. _class_RemoteTransform2D_property_use_global_coordinates:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_global_coordinates** = ``true`` :ref:`🔗<class_RemoteTransform2D_property_use_global_coordinates>`

.. rst-class:: classref-property-setget

- |void| **set_use_global_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_global_coordinates**\ (\ )

Если ``true``, используются глобальные координаты. Если ``false``, используются локальные координаты.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_RemoteTransform2D_method_force_update_cache:

.. rst-class:: classref-method

|void| **force_update_cache**\ (\ ) :ref:`🔗<class_RemoteTransform2D_method_force_update_cache>`

**RemoteTransform2D** кэширует удаленный узел. Он может не заметить, если удаленный узел исчезнет; :ref:`force_update_cache()<class_RemoteTransform2D_method_force_update_cache>` заставляет его обновить кэш снова.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
