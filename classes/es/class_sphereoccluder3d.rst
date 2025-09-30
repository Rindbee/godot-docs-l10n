:github_url: hide

.. _class_SphereOccluder3D:

SphereOccluder3D
================

**Hereda:** :ref:`Occluder3D<class_Occluder3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Spherical shape for use with occlusion culling in :ref:`OccluderInstance3D<class_OccluderInstance3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**SphereOccluder3D** stores a sphere shape that can be used by the engine's occlusion culling system.

See :ref:`OccluderInstance3D<class_OccluderInstance3D>`'s documentation for instructions on setting up occlusion culling.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Occlusion Culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_SphereOccluder3D_property_radius>` | ``1.0`` |
   +---------------------------+-------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_SphereOccluder3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_SphereOccluder3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

The sphere's radius in 3D units.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
