:github_url: hide

.. _class_CollisionShape2D:

CollisionShape2D
================

**Hereda:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo que proporciona una :ref:`Shape2D<class_Shape2D>` a un padre :ref:`CollisionObject2D<class_CollisionObject2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A node that provides a :ref:`Shape2D<class_Shape2D>` to a :ref:`CollisionObject2D<class_CollisionObject2D>` parent and allows it to be edited. This can give a detection shape to an :ref:`Area2D<class_Area2D>` or turn a :ref:`PhysicsBody2D<class_PhysicsBody2D>` into a solid object.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción a la física <../tutorials/physics/physics_introduction>`

- `Demo de Dodge The Creeps en 2D <https://godotengine.org/asset-library/asset/2712>`__

- `Demo de Pong en 2D <https://godotengine.org/asset-library/asset/2728>`__

- `Demo de Personaje Cinemático en 2D <https://godotengine.org/asset-library/asset/2719>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_color<class_CollisionShape2D_property_debug_color>`                           | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`disabled<class_CollisionShape2D_property_disabled>`                                 | ``false``             |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`one_way_collision<class_CollisionShape2D_property_one_way_collision>`               | ``false``             |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`one_way_collision_margin<class_CollisionShape2D_property_one_way_collision_margin>` | ``1.0``               |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Shape2D<class_Shape2D>` | :ref:`shape<class_CollisionShape2D_property_shape>`                                       |                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CollisionShape2D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionShape2D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

The collision shape color that is displayed in the editor, or in the running project if **Debug > Visible Collision Shapes** is checked at the top of the editor.

\ **Note:** The default value is :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. The ``Color(0, 0, 0, 0)`` value documented here is a placeholder, and not the actual default debug color.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionShape2D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Una forma de colisión desactivada no tiene ningún efecto en el mundo. Esta propiedad debe cambiarse con :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_one_way_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_way_collision** = ``false`` :ref:`🔗<class_CollisionShape2D_property_one_way_collision>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_way_collision_enabled**\ (\ )

Establece si esta forma de colisión sólo debe detectar la colisión en un lado (superior o inferior).

\ **Nota:** Esta propiedad no tiene ningún efecto si este **CollisionShape2D** es hijo de un nodo :ref:`Area2D<class_Area2D>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_one_way_collision_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **one_way_collision_margin** = ``1.0`` :ref:`🔗<class_CollisionShape2D_property_one_way_collision_margin>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_one_way_collision_margin**\ (\ )

El margen utilizado para la colisión en un sentido (en píxeles). Valores más altos harán la forma más gruesa, y funcionará mejor para los colisionadores que entran en la forma a alta velocidad.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_CollisionShape2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

La forma actual que posee esta forma de colisión.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
