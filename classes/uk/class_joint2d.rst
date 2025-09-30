:github_url: hide

.. _class_Joint2D:

Joint2D
=======

**Успадковує:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`DampedSpringJoint2D<class_DampedSpringJoint2D>`, :ref:`GrooveJoint2D<class_GrooveJoint2D>`, :ref:`PinJoint2D<class_PinJoint2D>`

Абстрактний базовий клас для всіх фізичних суглобів 2D.

.. rst-class:: classref-introduction-group

Опис
--------

Абстрактний базовий клас для всіх суглобів в 2D фізики. 2D суглоби зв’яжуться разом з двома фізико-фізичними органами (:ref:`node_a<class_Joint2D_property_node_a>` і :ref:`node_b<class_Joint2D_property_node_b>`) і застосовуються обмеження.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`float<class_float>`       | :ref:`bias<class_Joint2D_property_bias>`                           | ``0.0``          |
   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`         | :ref:`disable_collision<class_Joint2D_property_disable_collision>` | ``true``         |
   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_a<class_Joint2D_property_node_a>`                       | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`node_b<class_Joint2D_property_node_b>`                       | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`get_rid<class_Joint2D_method_get_rid>`\ (\ ) |const| |
   +-----------------------+------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Joint2D_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0`` :ref:`🔗<class_Joint2D_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Коли :ref:`node_a<class_Joint2D_property_node_a>` і :ref:`node_b<class_Joint2D_property_node_b>` перейде в різних напрямках :ref:`bias<class_Joint2D_property_bias>` контролює, як швидко стикається з ними назад до початкового положення. Чим нижче :ref:`bias<class_Joint2D_property_bias>` тим більше два тіла можуть натягнути на суглоб.

При налаштуванні до ``0``, значення за замовчуванням від :ref:`ProjectSettings.physics/2d/solver/default_constraint_bias<class_ProjectSettings_property_physics/2d/solver/default_constraint_bias>` використовується.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_disable_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_collision** = ``true`` :ref:`🔗<class_Joint2D_property_disable_collision>`

.. rst-class:: classref-property-setget

- |void| **set_exclude_nodes_from_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_exclude_nodes_from_collision**\ (\ )

Якщо ``true``, два тіла, які з'єднуються між собою.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_node_a:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_a** = ``NodePath("")`` :ref:`🔗<class_Joint2D_property_node_a>`

.. rst-class:: classref-property-setget

- |void| **set_node_a**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_a**\ (\ )

Шлях до першого тіла (A) прикріплюється до суглоба. Вузлі необхідно успадкувати ``ФізикаBody2D``.

.. rst-class:: classref-item-separator

----

.. _class_Joint2D_property_node_b:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **node_b** = ``NodePath("")`` :ref:`🔗<class_Joint2D_property_node_b>`

.. rst-class:: classref-property-setget

- |void| **set_node_b**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_node_b**\ (\ )

Шлях до другого тіла (B) прикріплюється до суглоба. Вузлі необхідно успадкувати :ref:`PhysicsBody2D<class_PhysicsBody2D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Joint2D_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_Joint2D_method_get_rid>`

Повертає внутрішній суглоб :ref:`RID<class_RID>` з :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
