:github_url: hide

.. _class_WorldBoundaryShape3D:

WorldBoundaryShape3D
====================

**Hereda:** :ref:`Shape3D<class_Shape3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una forma de límite de mundo 3D (mitad del espacio) utilizada para colisiones físicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de límite del mundo en 3D, destinada a ser utilizada en la física. **WorldBoundaryShape3D** funciona como un plano infinito que obliga a todos los cuerpos físicos a permanecer por encima de él. La normal del :ref:`plane<class_WorldBoundaryShape3D_property_plane>` determina qué dirección se considera "arriba" y en el editor, la línea sobre el plano representa esta dirección. Se puede utilizar, por ejemplo, para suelos planos sin fin.

\ **Nota:** Cuando el motor de física se establece en **Jolt Physics** en la configuración del proyecto (:ref:`ProjectSettings.physics/3d/physics_engine<class_ProjectSettings_property_physics/3d/physics_engine>`), **WorldBoundaryShape3D** tiene un tamaño finito (centrado en el origen de la forma). Se puede ajustar cambiando :ref:`ProjectSettings.physics/jolt_physics_3d/limits/world_boundary_shape_size<class_ProjectSettings_property_physics/jolt_physics_3d/limits/world_boundary_shape_size>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------+-----------------------+
   | :ref:`Plane<class_Plane>` | :ref:`plane<class_WorldBoundaryShape3D_property_plane>` | ``Plane(0, 1, 0, 0)`` |
   +---------------------------+---------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_WorldBoundaryShape3D_property_plane:

.. rst-class:: classref-property

:ref:`Plane<class_Plane>` **plane** = ``Plane(0, 1, 0, 0)`` :ref:`🔗<class_WorldBoundaryShape3D_property_plane>`

.. rst-class:: classref-property-setget

- |void| **set_plane**\ (\ value\: :ref:`Plane<class_Plane>`\ )
- :ref:`Plane<class_Plane>` **get_plane**\ (\ )

El :ref:`Plane<class_Plane>` utilizado por **WorldBoundaryShape3D** para la colisión.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
