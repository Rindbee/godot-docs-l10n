:github_url: hide

.. _class_World3D:

World3D
=======

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un recurso que contiene todos los componentes de un mundo 3D, como un escenario visual y un espacio físico.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase que tiene todo lo perteneciente a un mundo: un espacio de física, un escenario visual y un espacio de sonido. Los nodos 3D registran sus recursos en el mundo 3D actual.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Ray casting <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_World3D_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_World3D_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

El recurso :ref:`CameraAttributes<class_CameraAttributes>` por defecto a usar si no se ha establecido ninguno en la :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_direct_space_state:

.. rst-class:: classref-property

:ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **direct_space_state** :ref:`🔗<class_World3D_property_direct_space_state>`

.. rst-class:: classref-property-setget

- :ref:`PhysicsDirectSpaceState3D<class_PhysicsDirectSpaceState3D>` **get_direct_space_state**\ (\ )

Acceso directo al estado del espacio físico 3D del mundo. Se utiliza para consultar colisiones actuales y potenciales. Al usar física multihilo, el acceso se limita a :ref:`Node._physics_process()<class_Node_private_method__physics_process>` en el hilo principal.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_World3D_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

El :ref:`Environment<class_Environment>` del World3D.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_fallback_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **fallback_environment** :ref:`🔗<class_World3D_property_fallback_environment>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_fallback_environment**\ (\ )

El entorno de respaldo de World3D se utilizará si :ref:`environment<class_World3D_property_environment>` falla o falta.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_navigation_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **navigation_map** :ref:`🔗<class_World3D_property_navigation_map>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_navigation_map**\ (\ )

El :ref:`RID<class_RID>` del mapa de navegación de este mundo. Usado por :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_scenario:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **scenario** :ref:`🔗<class_World3D_property_scenario>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_scenario**\ (\ )

El escenario visual de World3D.

.. rst-class:: classref-item-separator

----

.. _class_World3D_property_space:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **space** :ref:`🔗<class_World3D_property_space>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_space**\ (\ )

El espacio físico de World3D.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
