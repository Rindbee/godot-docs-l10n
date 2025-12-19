:github_url: hide

.. _class_FogVolume:

FogVolume
=========

**Hereda:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una región que contribuye a la niebla volumétrica predeterminada del entorno mundial.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Los **FogVolume**\ s se utilizan para añadir niebla localizada al efecto de niebla volumétrica global. Los **FogVolume**\ s también pueden eliminar la niebla volumétrica de áreas específicas si se utiliza un :ref:`FogMaterial<class_FogMaterial>` con una :ref:`FogMaterial.density<class_FogMaterial_property_density>` negativa.

El rendimiento de los **FogVolume**\ s está directamente relacionado con su tamaño relativo en la pantalla y la complejidad de su :ref:`FogMaterial<class_FogMaterial>` adjunto. Es mejor mantener los **FogVolume**\ s relativamente pequeños y simples siempre que sea posible.

\ **Nota:** Los **FogVolume**\ s solo tienen un efecto visible si :ref:`Environment.volumetric_fog_enabled<class_Environment_property_volumetric_fog_enabled>` es ``true``. Si no quieres que la niebla sea globalmente visible (pero solo dentro de los nodos **FogVolume**), establece :ref:`Environment.volumetric_fog_density<class_Environment_property_volumetric_fog_density>` a ``0.0``.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Niebla volumétrica y volúmenes de niebla <../tutorials/3d/volumetric_fog>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`Material<class_Material>`                            | :ref:`material<class_FogVolume_property_material>` |                      |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` | :ref:`shape<class_FogVolume_property_shape>`       | ``3``                |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                              | :ref:`size<class_FogVolume_property_size>`         | ``Vector3(2, 2, 2)`` |
   +------------------------------------------------------------+----------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_FogVolume_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_FogVolume_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

El :ref:`Material<class_Material>` utilizado por **FogVolume**. Puede ser un :ref:`FogMaterial<class_FogMaterial>` integrado o un :ref:`ShaderMaterial<class_ShaderMaterial>` personalizado.

.. rst-class:: classref-item-separator

----

.. _class_FogVolume_property_shape:

.. rst-class:: classref-property

:ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` **shape** = ``3`` :ref:`🔗<class_FogVolume_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>`\ )
- :ref:`FogVolumeShape<enum_RenderingServer_FogVolumeShape>` **get_shape**\ (\ )

La forma del **FogVolume**. Esto se puede establecer en :ref:`RenderingServer.FOG_VOLUME_SHAPE_ELLIPSOID<class_RenderingServer_constant_FOG_VOLUME_SHAPE_ELLIPSOID>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_BOX<class_RenderingServer_constant_FOG_VOLUME_SHAPE_BOX>` o :ref:`RenderingServer.FOG_VOLUME_SHAPE_WORLD<class_RenderingServer_constant_FOG_VOLUME_SHAPE_WORLD>`.

.. rst-class:: classref-item-separator

----

.. _class_FogVolume_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_FogVolume_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

El tamaño del **FogVolume** cuando :ref:`shape<class_FogVolume_property_shape>` es :ref:`RenderingServer.FOG_VOLUME_SHAPE_ELLIPSOID<class_RenderingServer_constant_FOG_VOLUME_SHAPE_ELLIPSOID>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>`, :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>` o :ref:`RenderingServer.FOG_VOLUME_SHAPE_BOX<class_RenderingServer_constant_FOG_VOLUME_SHAPE_BOX>`.

\ **Nota:** Los volúmenes de niebla delgados pueden parecer parpadear cuando la cámara se mueve o gira. Esto se puede aliviar aumentando :ref:`ProjectSettings.rendering/environment/volumetric_fog/volume_depth<class_ProjectSettings_property_rendering/environment/volumetric_fog/volume_depth>` (a costa del rendimiento) o disminuyendo :ref:`Environment.volumetric_fog_length<class_Environment_property_volumetric_fog_length>` (sin coste de rendimiento, pero a costa de un menor alcance de la niebla). Alternativamente, el **FogVolume** puede hacerse más grueso y usar una menor densidad en el :ref:`material<class_FogVolume_property_material>`.

\ **Nota:** Si :ref:`shape<class_FogVolume_property_shape>` es :ref:`RenderingServer.FOG_VOLUME_SHAPE_CONE<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CONE>` o :ref:`RenderingServer.FOG_VOLUME_SHAPE_CYLINDER<class_RenderingServer_constant_FOG_VOLUME_SHAPE_CYLINDER>`, el cono/cilindro se ajustará para encajar dentro del tamaño. El escalado no uniforme de las formas de cono/cilindro a través de la propiedad :ref:`size<class_FogVolume_property_size>` no es compatible, pero puedes escalar el nodo **FogVolume** en su lugar.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
