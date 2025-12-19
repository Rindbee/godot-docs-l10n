:github_url: hide

.. _class_GPUParticlesCollisionHeightField3D:

GPUParticlesCollisionHeightField3D
==================================

**Hereda:** :ref:`GPUParticlesCollision3D<class_GPUParticlesCollision3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una forma de colisión de partículas 3D con forma de mapa de altura en tiempo real que afecta a los nodos :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una forma de colisión de partículas 3D con forma de mapa de altura en tiempo real que afecta a los nodos :ref:`GPUParticles3D<class_GPUParticles3D>`.

Las formas de mapa de altura permiten representar de forma eficiente las colisiones de objetos convexos y cóncavos con un solo "suelo" (como el terreno). Esto es menos flexible que :ref:`GPUParticlesCollisionSDF3D<class_GPUParticlesCollisionSDF3D>`, pero no requiere un paso de procesado.

\ **GPUParticlesCollisionHeightField3D** también se puede regenerar en tiempo real cuando se mueve, cuando se mueve la cámara o incluso de forma continua. Esto hace que **GPUParticlesCollisionHeightField3D** sea una buena opción para efectos climáticos como la lluvia y la nieve, y juegos con geometría muy dinámica. Sin embargo, esta clase es limitada ya que los mapas de altura no pueden representar salientes (por ejemplo, interiores o cuevas).

\ **Nota:** :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` debe ser `` true`` en el material de proceso del :ref:`GPUParticles3D<class_GPUParticles3D>` para que la colisión funcione.

\ **Nota:** La colisión de partículas solo afecta a :ref:`GPUParticles3D<class_GPUParticles3D>`, no a :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`follow_camera_enabled<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>` | ``false``            |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                                                 | :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>`           | ``1048575``          |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` | :ref:`resolution<class_GPUParticlesCollisionHeightField3D_property_resolution>`                       | ``2``                |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                                         | :ref:`size<class_GPUParticlesCollisionHeightField3D_property_size>`                                   | ``Vector3(2, 2, 2)`` |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` | :ref:`update_mode<class_GPUParticlesCollisionHeightField3D_property_update_mode>`                     | ``0``                |
   +-----------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_heightfield_mask_value<class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_heightfield_mask_value<class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_GPUParticlesCollisionHeightField3D_Resolution:

.. rst-class:: classref-enumeration

enum **Resolution**: :ref:`🔗<enum_GPUParticlesCollisionHeightField3D_Resolution>`

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_256:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_256** = ``0``

Generate a 256×256 heightmap. Intended for small-scale scenes, or larger scenes with no distant particles.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_512:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_512** = ``1``

Generate a 512×512 heightmap. Intended for medium-scale scenes, or larger scenes with no distant particles.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_1024:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_1024** = ``2``

Generate a 1024×1024 heightmap. Intended for large scenes with distant particles.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_2048:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_2048** = ``3``

Generate a 2048×2048 heightmap. Intended for very large scenes with distant particles.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_4096:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_4096** = ``4``

Generate a 4096×4096 heightmap. Intended for huge scenes with distant particles.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_8192:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_8192** = ``5``

Generate a 8192×8192 heightmap. Intended for gigantic scenes with distant particles.

.. _class_GPUParticlesCollisionHeightField3D_constant_RESOLUTION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **RESOLUTION_MAX** = ``6``

Representa el tamaño del enum :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>`.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticlesCollisionHeightField3D_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_GPUParticlesCollisionHeightField3D_UpdateMode>`

.. _class_GPUParticlesCollisionHeightField3D_constant_UPDATE_MODE_WHEN_MOVED:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **UPDATE_MODE_WHEN_MOVED** = ``0``

Only update the heightmap when the **GPUParticlesCollisionHeightField3D** node is moved, or when the camera moves if :ref:`follow_camera_enabled<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>` is ``true``. An update can be forced by slightly moving the **GPUParticlesCollisionHeightField3D** in any direction, or by calling :ref:`RenderingServer.particles_collision_height_field_update()<class_RenderingServer_method_particles_collision_height_field_update>`.

.. _class_GPUParticlesCollisionHeightField3D_constant_UPDATE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **UPDATE_MODE_ALWAYS** = ``1``

Update the heightmap every frame. This has a significant performance cost. This update should only be used when geometry that particles can collide with changes significantly during gameplay.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_camera_enabled** = ``false`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_follow_camera_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_follow_camera_enabled**\ (\ )

Si es ``true``, el **GPUParticlesCollisionHeightField3D** seguirá la cámara actual en el espacio global. El **GPUParticlesCollisionHeightField3D** no necesita ser un hijo del nodo :ref:`Camera3D<class_Camera3D>` para que esto funcione.

Seguir a la cámara tiene un coste de rendimiento, ya que obligará al mapa de altura a actualizarse cada vez que la cámara se mueva. Considera la posibilidad de reducir :ref:`resolution<class_GPUParticlesCollisionHeightField3D_property_resolution>` para mejorar el rendimiento si :ref:`follow_camera_enabled<class_GPUParticlesCollisionHeightField3D_property_follow_camera_enabled>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_heightfield_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **heightfield_mask** = ``1048575`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>`

.. rst-class:: classref-property-setget

- |void| **set_heightfield_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_heightfield_mask**\ (\ )

The visual layers to account for when updating the heightmap. Only :ref:`MeshInstance3D<class_MeshInstance3D>`\ s whose :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` match with this :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` will be included in the heightmap collision update. By default, all 20 user-visible layers are taken into account for updating the heightmap collision.

\ **Note:** Since the :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` allows for 32 layers to be stored in total, there are an additional 12 layers that are only used internally by the engine and aren't exposed in the editor. Setting :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` using a script allows you to toggle those reserved layers, which can be useful for editor plugins.

To adjust :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` more easily using a script, use :ref:`get_heightfield_mask_value()<class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value>` and :ref:`set_heightfield_mask_value()<class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_resolution:

.. rst-class:: classref-property

:ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **resolution** = ``2`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_resolution>`

.. rst-class:: classref-property-setget

- |void| **set_resolution**\ (\ value\: :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>`\ )
- :ref:`Resolution<enum_GPUParticlesCollisionHeightField3D_Resolution>` **get_resolution**\ (\ )

Higher resolutions can represent small details more accurately in large scenes, at the cost of lower performance. If :ref:`update_mode<class_GPUParticlesCollisionHeightField3D_property_update_mode>` is :ref:`UPDATE_MODE_ALWAYS<class_GPUParticlesCollisionHeightField3D_constant_UPDATE_MODE_ALWAYS>`, consider using the lowest resolution possible.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

The collision heightmap's size in 3D units. To improve heightmap quality, :ref:`size<class_GPUParticlesCollisionHeightField3D_property_size>` should be set as small as possible while covering the parts of the scene you need.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_property_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **update_mode** = ``0`` :ref:`🔗<class_GPUParticlesCollisionHeightField3D_property_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>`\ )
- :ref:`UpdateMode<enum_GPUParticlesCollisionHeightField3D_UpdateMode>` **get_update_mode**\ (\ )

The update policy to use for the generated heightmap.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_heightfield_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticlesCollisionHeightField3D_method_get_heightfield_mask_value>`

Devuelve ``true`` si la capa especificada de :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>` está habilitada, dado un ``layer_number`` entre ``1`` y ``20``, inclusivo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value:

.. rst-class:: classref-method

|void| **set_heightfield_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GPUParticlesCollisionHeightField3D_method_set_heightfield_mask_value>`

Basado en ``value``, habilita o deshabilita la capa especificada en :ref:`heightfield_mask<class_GPUParticlesCollisionHeightField3D_property_heightfield_mask>`, dado un ``layer_number`` entre ``1`` y ``20``, inclusivo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
