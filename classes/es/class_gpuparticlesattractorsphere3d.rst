:github_url: hide

.. _class_GPUParticlesAttractorSphere3D:

GPUParticlesAttractorSphere3D
=============================

**Hereda:** :ref:`GPUParticlesAttractor3D<class_GPUParticlesAttractor3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un atractor con forma de esferoide que influye en las partículas de los nodos :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un atractor con forma de esferoide que influye en las partículas de los nodos :ref:`GPUParticles3D<class_GPUParticles3D>`. Puede utilizarse para atraer partículas hacia su origen, o para alejarlas de su origen.

Los atractores de partículas funcionan en tiempo real y pueden ser movidos, rotados y escalados durante el juego. A diferencia de las formas de colisión, también se admite el escalado no uniforme de los atractores.

\ **Nota:** Los atractores de partículas sólo afectan a :ref:`GPUParticles3D<class_GPUParticles3D>`, no a :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`radius<class_GPUParticlesAttractorSphere3D_property_radius>` | ``1.0`` |
   +---------------------------+--------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GPUParticlesAttractorSphere3D_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractorSphere3D_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

El radio de la esfera del atractor en unidades 3D.

\ **Nota:** Se pueden obtener elipses estiradas utilizando un escalado no uniforme en el nodo **GPUParticlesAttractorSphere3D**.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
