:github_url: hide

.. _class_World2D:

World2D
=======

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un recurso que contiene todos los componentes de un mundo 2D, como un canvas y un espacio físico.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase que tiene todo lo perteneciente a un mundo 2D: un espacio de física, un canvas y un espacio de sonido. Los nodos 2D registran sus recursos en el mundo 2D actual.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Ray casting <../tutorials/physics/ray-casting>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

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

Descripciones de Propiedades
--------------------------------------------------------

.. _class_World2D_property_canvas:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **canvas** :ref:`🔗<class_World2D_property_canvas>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_canvas**\ (\ )

El :ref:`RID<class_RID>` del recurso de canvas de este mundo. Lo utiliza el :ref:`RenderingServer<class_RenderingServer>` para el dibujo 2D.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_direct_space_state:

.. rst-class:: classref-property

:ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **direct_space_state** :ref:`🔗<class_World2D_property_direct_space_state>`

.. rst-class:: classref-property-setget

- :ref:`PhysicsDirectSpaceState2D<class_PhysicsDirectSpaceState2D>` **get_direct_space_state**\ (\ )

Acceso directo al estado del espacio físico 2D del mundo. Se utiliza para consultar colisiones actuales y potenciales. Al usar física multihilo, el acceso se limita al :ref:`Node._physics_process()<class_Node_private_method__physics_process>` en el hilo principal.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_navigation_map:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **navigation_map** :ref:`🔗<class_World2D_property_navigation_map>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_navigation_map**\ (\ )

El :ref:`RID<class_RID>` del mapa de navegación de este mundo. Usado por :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_World2D_property_space:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **space** :ref:`🔗<class_World2D_property_space>`

.. rst-class:: classref-property-setget

- :ref:`RID<class_RID>` **get_space**\ (\ )

El :ref:`RID<class_RID>` del recurso espacial de física de este mundo. Lo utiliza :ref:`PhysicsServer2D<class_PhysicsServer2D>` para física 2D, tratándolo como espacio y área.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
