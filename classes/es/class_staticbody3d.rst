:github_url: hide

.. _class_StaticBody3D:

StaticBody3D
============

**Hereda:** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`AnimatableBody3D<class_AnimatableBody3D>`

Un cuerpo físico 3D que no puede ser movido por fuerzas externas. Cuando se mueve manualmente, no afecta a otros cuerpos en su camino.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A static 3D physics body. It can't be moved by external forces or contacts, but can be moved manually by other means such as code, :ref:`AnimationMixer<class_AnimationMixer>`\ s (with :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>` set to :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`), and :ref:`RemoteTransform3D<class_RemoteTransform3D>`.

When **StaticBody3D** is moved, it is teleported to its new position without affecting other physics bodies in its path. If this is not desired, use :ref:`AnimatableBody3D<class_AnimatableBody3D>` instead.

\ **StaticBody3D** is useful for completely static objects like floors and walls, as well as moving surfaces like conveyor belts and circular revolving platforms (by using :ref:`constant_linear_velocity<class_StaticBody3D_property_constant_linear_velocity>` and :ref:`constant_angular_velocity<class_StaticBody3D_property_constant_angular_velocity>`).

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Introducción a la física <../tutorials/physics/physics_introduction>`

- :doc:`Solución de problemas de física <../tutorials/physics/troubleshooting_physics_issues>`

- `Demo de Pruebas de Física en 3D <https://godotengine.org/asset-library/asset/2747>`__

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

- `Demo de Vóxeles en 3D <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                 | :ref:`constant_angular_velocity<class_StaticBody3D_property_constant_angular_velocity>` | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                 | :ref:`constant_linear_velocity<class_StaticBody3D_property_constant_linear_velocity>`   | ``Vector3(0, 0, 0)`` |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>` | :ref:`physics_material_override<class_StaticBody3D_property_physics_material_override>` |                      |
   +-----------------------------------------------+-----------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_StaticBody3D_property_constant_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_StaticBody3D_property_constant_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_angular_velocity**\ (\ )

La velocidad angular constante del cuerpo. Esto no rota el cuerpo, pero afecta a los cuerpos que toca, como si estuviera rotando.

.. rst-class:: classref-item-separator

----

.. _class_StaticBody3D_property_constant_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **constant_linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_StaticBody3D_property_constant_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_constant_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_constant_linear_velocity**\ (\ )

La velocidad lineal constante del cuerpo. Esto no mueve el cuerpo, pero afecta a los cuerpos que toca, como si se estuviera moviendo.

.. rst-class:: classref-item-separator

----

.. _class_StaticBody3D_property_physics_material_override:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material_override** :ref:`🔗<class_StaticBody3D_property_physics_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material_override**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material_override**\ (\ )

El material de la física se sobrescribe para el cuerpo.

Si se asigna un material a esta propiedad, se utilizará en lugar de cualquier otro material de física, como por ejemplo uno heredado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
