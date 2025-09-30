:github_url: hide

.. _class_GLTFPhysicsBody:

GLTFPhysicsBody
===============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Representa un cuerpo de física glTF.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Represents a physics body as an intermediary between the ``OMI_physics_body`` glTF data and Godot's nodes, and it's abstracted in a way that allows adding support for different glTF physics extensions in the future.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

- `OMI_physics_body glTF extension <https://github.com/omigroup/gltf-extensions/tree/main/extensions/2.0/OMI_physics_body>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`angular_velocity<class_GLTFPhysicsBody_property_angular_velocity>`       | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`String<class_String>`         | :ref:`body_type<class_GLTFPhysicsBody_property_body_type>`                     | ``"rigid"``                          |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`center_of_mass<class_GLTFPhysicsBody_property_center_of_mass>`           | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`inertia_diagonal<class_GLTFPhysicsBody_property_inertia_diagonal>`       | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`inertia_orientation<class_GLTFPhysicsBody_property_inertia_orientation>` | ``Quaternion(0, 0, 0, 1)``           |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`inertia_tensor<class_GLTFPhysicsBody_property_inertia_tensor>`           | ``Basis(0, 0, 0, 0, 0, 0, 0, 0, 0)`` |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`linear_velocity<class_GLTFPhysicsBody_property_linear_velocity>`         | ``Vector3(0, 0, 0)``                 |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+
   | :ref:`float<class_float>`           | :ref:`mass<class_GLTFPhysicsBody_property_mass>`                               | ``1.0``                              |
   +-------------------------------------+--------------------------------------------------------------------------------+--------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`     | :ref:`from_dictionary<class_GLTFPhysicsBody_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>`     | :ref:`from_node<class_GLTFPhysicsBody_method_from_node>`\ (\ body_node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) |static| |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`               | :ref:`to_dictionary<class_GLTFPhysicsBody_method_to_dictionary>`\ (\ ) |const|                                                         |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CollisionObject3D<class_CollisionObject3D>` | :ref:`to_node<class_GLTFPhysicsBody_method_to_node>`\ (\ ) |const|                                                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GLTFPhysicsBody_property_angular_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **angular_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_angular_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_angular_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_angular_velocity**\ (\ )

The angular velocity of the physics body, in radians per second. This is only used when the body type is "rigid" or "vehicle".

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_body_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **body_type** = ``"rigid"`` :ref:`🔗<class_GLTFPhysicsBody_property_body_type>`

.. rst-class:: classref-property-setget

- |void| **set_body_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_body_type**\ (\ )

The type of the body.

When importing, this controls what type of :ref:`CollisionObject3D<class_CollisionObject3D>` node Godot should generate. Valid values are ``"static"``, ``"animatable"``, ``"character"``, ``"rigid"``, ``"vehicle"``, and ``"trigger"``.

When exporting, this will be squashed down to one of ``"static"``, ``"kinematic"``, or ``"dynamic"`` motion types, or the ``"trigger"`` property.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_center_of_mass:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **center_of_mass** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_center_of_mass>`

.. rst-class:: classref-property-setget

- |void| **set_center_of_mass**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_center_of_mass**\ (\ )

The center of mass of the body, in meters. This is in local space relative to the body. By default, the center of the mass is the body's origin.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_diagonal:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **inertia_diagonal** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_diagonal>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_diagonal**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_inertia_diagonal**\ (\ )

The inertia strength of the physics body, in kilogram meter squared (kg⋅m²). This represents the inertia around the principle axes, the diagonal of the inertia tensor matrix. This is only used when the body type is "rigid" or "vehicle".

When converted to a Godot :ref:`RigidBody3D<class_RigidBody3D>` node, if this value is zero, then the inertia will be calculated automatically.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_orientation:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **inertia_orientation** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_orientation**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_inertia_orientation**\ (\ )

The inertia orientation of the physics body. This defines the rotation of the inertia's principle axes relative to the object's local axes. This is only used when the body type is "rigid" or "vehicle" and :ref:`inertia_diagonal<class_GLTFPhysicsBody_property_inertia_diagonal>` is set to a non-zero value.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_inertia_tensor:

.. rst-class:: classref-property

:ref:`Basis<class_Basis>` **inertia_tensor** = ``Basis(0, 0, 0, 0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_inertia_tensor>`

.. rst-class:: classref-property-setget

- |void| **set_inertia_tensor**\ (\ value\: :ref:`Basis<class_Basis>`\ )
- :ref:`Basis<class_Basis>` **get_inertia_tensor**\ (\ )

**Obsoleto:** Esta propiedad podría ser modificada o eliminada en versiones futuras.

The inertia tensor of the physics body, in kilogram meter squared (kg⋅m²). This is only used when the body type is "rigid" or "vehicle".

When converted to a Godot :ref:`RigidBody3D<class_RigidBody3D>` node, if this value is zero, then the inertia will be calculated automatically.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_linear_velocity:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **linear_velocity** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_GLTFPhysicsBody_property_linear_velocity>`

.. rst-class:: classref-property-setget

- |void| **set_linear_velocity**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_linear_velocity**\ (\ )

The linear velocity of the physics body, in meters per second. This is only used when the body type is "rigid" or "vehicle".

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_property_mass:

.. rst-class:: classref-property

:ref:`float<class_float>` **mass** = ``1.0`` :ref:`🔗<class_GLTFPhysicsBody_property_mass>`

.. rst-class:: classref-property-setget

- |void| **set_mass**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mass**\ (\ )

The mass of the physics body, in kilograms. This is only used when the body type is "rigid" or "vehicle".

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GLTFPhysicsBody_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFPhysicsBody_method_from_dictionary>`

Creates a new GLTFPhysicsBody instance by parsing the given :ref:`Dictionary<class_Dictionary>` in the ``OMI_physics_body`` glTF extension format.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFPhysicsBody<class_GLTFPhysicsBody>` **from_node**\ (\ body_node\: :ref:`CollisionObject3D<class_CollisionObject3D>`\ ) |static| :ref:`🔗<class_GLTFPhysicsBody_method_from_node>`

Creates a new GLTFPhysicsBody instance from the given Godot :ref:`CollisionObject3D<class_CollisionObject3D>` node.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsBody_method_to_dictionary>`

Serializes this GLTFPhysicsBody instance into a :ref:`Dictionary<class_Dictionary>`. It will be in the format expected by the ``OMI_physics_body`` glTF extension.

.. rst-class:: classref-item-separator

----

.. _class_GLTFPhysicsBody_method_to_node:

.. rst-class:: classref-method

:ref:`CollisionObject3D<class_CollisionObject3D>` **to_node**\ (\ ) |const| :ref:`🔗<class_GLTFPhysicsBody_method_to_node>`

Converts this GLTFPhysicsBody instance into a Godot :ref:`CollisionObject3D<class_CollisionObject3D>` node.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
