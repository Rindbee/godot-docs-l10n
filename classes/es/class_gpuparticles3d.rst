:github_url: hide

.. _class_GPUParticles3D:

GPUParticles3D
==============

**Hereda:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un emisor de partículas 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Nodo de partículas 3D utilizado para crear una variedad de sistemas y efectos de partículas. **GPUParticles3D** cuenta con un emisor que genera un número de partículas a una velocidad determinada.

Usa :ref:`process_material<class_GPUParticles3D_property_process_material>` para añadir un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` para configurar la apariencia y el comportamiento de las partículas. Alternativamente, puedes añadir un :ref:`ShaderMaterial<class_ShaderMaterial>` que se aplicará a todas las partículas.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Sistemas de partículas (3D) <../tutorials/3d/particles/index>`

- :doc:`Controlar miles de peces con Partículas <../tutorials/performance/vertex_animation/controlling_thousands_of_fish>`

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`amount<class_GPUParticles3D_property_amount>`                           | ``8``                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`               | ``1.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`collision_base_size<class_GPUParticles3D_property_collision_base_size>` | ``0.01``                      |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`           | :ref:`draw_order<class_GPUParticles3D_property_draw_order>`                   | ``0``                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`draw_pass_1<class_GPUParticles3D_property_draw_pass_1>`                 |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`draw_pass_2<class_GPUParticles3D_property_draw_pass_2>`                 |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`draw_pass_3<class_GPUParticles3D_property_draw_pass_3>`                 |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Mesh<class_Mesh>`                                   | :ref:`draw_pass_4<class_GPUParticles3D_property_draw_pass_4>`                 |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`draw_passes<class_GPUParticles3D_property_draw_passes>`                 | ``1``                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Skin<class_Skin>`                                   | :ref:`draw_skin<class_GPUParticles3D_property_draw_skin>`                     |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`emitting<class_GPUParticles3D_property_emitting>`                       | ``true``                      |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`explosiveness<class_GPUParticles3D_property_explosiveness>`             | ``0.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>`                     | ``30``                        |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`fract_delta<class_GPUParticles3D_property_fract_delta>`                 | ``true``                      |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`interp_to_end<class_GPUParticles3D_property_interp_to_end>`             | ``0.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`interpolate<class_GPUParticles3D_property_interpolate>`                 | ``true``                      |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`lifetime<class_GPUParticles3D_property_lifetime>`                       | ``1.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`local_coords<class_GPUParticles3D_property_local_coords>`               | ``false``                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`one_shot<class_GPUParticles3D_property_one_shot>`                       | ``false``                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`preprocess<class_GPUParticles3D_property_preprocess>`                   | ``0.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`Material<class_Material>`                           | :ref:`process_material<class_GPUParticles3D_property_process_material>`       |                               |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`randomness<class_GPUParticles3D_property_randomness>`                   | ``0.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`int<class_int>`                                     | :ref:`seed<class_GPUParticles3D_property_seed>`                               | ``0``                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`speed_scale<class_GPUParticles3D_property_speed_scale>`                 | ``1.0``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`NodePath<class_NodePath>`                           | :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>`                 | ``NodePath("")``              |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>`             | ``false``                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`float<class_float>`                                 | :ref:`trail_lifetime<class_GPUParticles3D_property_trail_lifetime>`           | ``0.3``                       |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` | :ref:`transform_align<class_GPUParticles3D_property_transform_align>`         | ``0``                         |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>`           | ``false``                     |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>`                                   | :ref:`visibility_aabb<class_GPUParticles3D_property_visibility_aabb>`         | ``AABB(-4, -4, -4, 8, 8, 8)`` |
   +-----------------------------------------------------------+-------------------------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`capture_aabb<class_GPUParticles3D_method_capture_aabb>`\ (\ ) |const|                                                                                                                                                                                          |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`convert_from_particles<class_GPUParticles3D_method_convert_from_particles>`\ (\ particles\: :ref:`Node<class_Node>`\ )                                                                                                                                         |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`emit_particle<class_GPUParticles3D_method_emit_particle>`\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Mesh<class_Mesh>` | :ref:`get_draw_pass_mesh<class_GPUParticles3D_method_get_draw_pass_mesh>`\ (\ pass\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`request_particles_process<class_GPUParticles3D_method_request_particles_process>`\ (\ process_time\: :ref:`float<class_float>`\ )                                                                                                                              |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`restart<class_GPUParticles3D_method_restart>`\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ )                                                                                                                                                               |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_draw_pass_mesh<class_GPUParticles3D_method_set_draw_pass_mesh>`\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )                                                                                                                        |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_GPUParticles3D_signal_finished:

.. rst-class:: classref-signal

**finished**\ (\ ) :ref:`🔗<class_GPUParticles3D_signal_finished>`

Emitida cuando todas las partículas activas han terminado de procesarse. Para reiniciar inmediatamente el ciclo de emisión, llama a :ref:`restart()<class_GPUParticles3D_method_restart>`.

Esta señal nunca se emite cuando :ref:`one_shot<class_GPUParticles3D_property_one_shot>` está deshabilitado, ya que las partículas se emitirán y procesarán continuamente.

\ **Nota:** Para los emisores :ref:`one_shot<class_GPUParticles3D_property_one_shot>`, debido a que las partículas se calculan en la GPU, puede haber un breve período después de recibir la señal durante el cual establecer :ref:`emitting<class_GPUParticles3D_property_emitting>` en ``true`` no reiniciará el ciclo de emisión. Este retraso se evita llamando en su lugar a :ref:`restart()<class_GPUParticles3D_method_restart>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_GPUParticles3D_DrawOrder:

.. rst-class:: classref-enumeration

enum **DrawOrder**: :ref:`🔗<enum_GPUParticles3D_DrawOrder>`

.. _class_GPUParticles3D_constant_DRAW_ORDER_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_INDEX** = ``0``

Las partículas se dibujan en el orden en que se emiten.

.. _class_GPUParticles3D_constant_DRAW_ORDER_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_LIFETIME** = ``1``

Las partículas se dibujan en orden de vida útil restante. En otras palabras, la partícula con la vida útil más alta se dibuja al frente.

.. _class_GPUParticles3D_constant_DRAW_ORDER_REVERSE_LIFETIME:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_REVERSE_LIFETIME** = ``2``

Las partículas se dibujan en orden inverso a su vida útil restante. En otras palabras, la partícula con la vida útil más baja se dibuja al frente.

.. _class_GPUParticles3D_constant_DRAW_ORDER_VIEW_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **DRAW_ORDER_VIEW_DEPTH** = ``3``

Las partículas se dibujan en orden de profundidad.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_EmitFlags:

.. rst-class:: classref-enumeration

enum **EmitFlags**: :ref:`🔗<enum_GPUParticles3D_EmitFlags>`

.. _class_GPUParticles3D_constant_EMIT_FLAG_POSITION:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_POSITION** = ``1``

La partícula comienza en la posición especificada.

.. _class_GPUParticles3D_constant_EMIT_FLAG_ROTATION_SCALE:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_ROTATION_SCALE** = ``2``

La partícula comienza con la rotación y la escala especificadas.

.. _class_GPUParticles3D_constant_EMIT_FLAG_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_VELOCITY** = ``4``

La partícula comienza con el vector de velocidad especificado, que define la dirección y la velocidad de emisión.

.. _class_GPUParticles3D_constant_EMIT_FLAG_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_COLOR** = ``8``

La partícula comienza con el color especificado.

.. _class_GPUParticles3D_constant_EMIT_FLAG_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>` **EMIT_FLAG_CUSTOM** = ``16``

Particle starts with specified ``CUSTOM`` data.

.. rst-class:: classref-item-separator

----

.. _enum_GPUParticles3D_TransformAlign:

.. rst-class:: classref-enumeration

enum **TransformAlign**: :ref:`🔗<enum_GPUParticles3D_TransformAlign>`

.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_DISABLED** = ``0``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Z_BILLBOARD:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Z_BILLBOARD** = ``1``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Y_TO_VELOCITY** = ``2``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. _class_GPUParticles3D_constant_TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY:

.. rst-class:: classref-enumeration-constant

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY** = ``3``

.. container:: contribute

	There is currently no description for this enum. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_GPUParticles3D_constant_MAX_DRAW_PASSES:

.. rst-class:: classref-constant

**MAX_DRAW_PASSES** = ``4`` :ref:`🔗<class_GPUParticles3D_constant_MAX_DRAW_PASSES>`

Número máximo de pases de dibujado soportados.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_GPUParticles3D_property_amount:

.. rst-class:: classref-property

:ref:`int<class_int>` **amount** = ``8`` :ref:`🔗<class_GPUParticles3D_property_amount>`

.. rst-class:: classref-property-setget

- |void| **set_amount**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_amount**\ (\ )

El número de partículas a emitir en un ciclo de emisión. La tasa de emisión efectiva es de ``(amount * amount_ratio) / lifetime`` partículas por segundo. Valores más altos aumentarán los requisitos de la GPU, incluso si no todas las partículas son visibles en un momento dado o si se reduce :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`.

\ **Nota:** Cambiar este valor hará que el sistema de partículas se reinicie. Para evitar esto, cambia :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_amount_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **amount_ratio** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_amount_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_amount_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amount_ratio**\ (\ )

La relación de partículas que deberían emitirse realmente. Si se establece a un valor menor que ``1.0``, esto establecerá la cantidad de partículas emitidas a lo largo de la vida útil a ``amount * amount_ratio``. A diferencia de cambiar :ref:`amount<class_GPUParticles3D_property_amount>`, cambiar :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` mientras se emite no afecta a las partículas ya emitidas y no hace que el sistema de partículas se reinicie. :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` se puede utilizar para crear efectos que hagan que el número de partículas emitidas varíe con el tiempo.

\ **Nota:** Reducir el :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` no tiene ningún beneficio de rendimiento, ya que los recursos deben ser asignados y procesados para la :ref:`amount<class_GPUParticles3D_property_amount>` total de partículas independientemente del :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>`. Si no tiene la intención de cambiar el número de partículas emitidas mientras las partículas están emitiendo, asegúrese de que :ref:`amount_ratio<class_GPUParticles3D_property_amount_ratio>` esté establecido en ``1`` y cambie :ref:`amount<class_GPUParticles3D_property_amount>` a su gusto en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_collision_base_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_base_size** = ``0.01`` :ref:`🔗<class_GPUParticles3D_property_collision_base_size>`

.. rst-class:: classref-property-setget

- |void| **set_collision_base_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_base_size**\ (\ )

El diámetro base para la colisión de partículas en metros. Si las partículas parecen hundirse en el suelo al colisionar, aumenta este valor. Si las partículas parecen flotar al colisionar, disminuye este valor. Solo es efectivo si :ref:`ParticleProcessMaterial.collision_mode<class_ParticleProcessMaterial_property_collision_mode>` es :ref:`ParticleProcessMaterial.COLLISION_RIGID<class_ParticleProcessMaterial_constant_COLLISION_RIGID>` o :ref:`ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT<class_ParticleProcessMaterial_constant_COLLISION_HIDE_ON_CONTACT>`.

\ **Nota:** Las partículas siempre tienen una forma de colisión esférica.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_order:

.. rst-class:: classref-property

:ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **draw_order** = ``0`` :ref:`🔗<class_GPUParticles3D_property_draw_order>`

.. rst-class:: classref-property-setget

- |void| **set_draw_order**\ (\ value\: :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>`\ )
- :ref:`DrawOrder<enum_GPUParticles3D_DrawOrder>` **get_draw_order**\ (\ )

Orden de dibujado de las partículas.

\ **Nota:** :ref:`DRAW_ORDER_INDEX<class_GPUParticles3D_constant_DRAW_ORDER_INDEX>` es la única opción que admite vectores de movimiento para efectos como TAA. Se sugiere usar este orden de dibujado si las partículas son opacas para corregir artefactos de fantasma.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_1:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_1** :ref:`🔗<class_GPUParticles3D_property_draw_pass_1>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

:ref:`Mesh<class_Mesh>` que se dibuja para el primer pase de dibujado.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_2:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_2** :ref:`🔗<class_GPUParticles3D_property_draw_pass_2>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

:ref:`Mesh<class_Mesh>` que se dibuja para el segundo pase de dibujado.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_3:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_3** :ref:`🔗<class_GPUParticles3D_property_draw_pass_3>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

:ref:`Mesh<class_Mesh>` que se dibuja para el tercer pase de dibujado.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_pass_4:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **draw_pass_4** :ref:`🔗<class_GPUParticles3D_property_draw_pass_4>`

.. rst-class:: classref-property-setget

- |void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const|

:ref:`Mesh<class_Mesh>` que se dibuja para el cuarto pase de dibujado.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_passes:

.. rst-class:: classref-property

:ref:`int<class_int>` **draw_passes** = ``1`` :ref:`🔗<class_GPUParticles3D_property_draw_passes>`

.. rst-class:: classref-property-setget

- |void| **set_draw_passes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_draw_passes**\ (\ )

El número de pases de dibujado cuando se renderizan las partículas.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_draw_skin:

.. rst-class:: classref-property

:ref:`Skin<class_Skin>` **draw_skin** :ref:`🔗<class_GPUParticles3D_property_draw_skin>`

.. rst-class:: classref-property-setget

- |void| **set_skin**\ (\ value\: :ref:`Skin<class_Skin>`\ )
- :ref:`Skin<class_Skin>` **get_skin**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_emitting:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **emitting** = ``true`` :ref:`🔗<class_GPUParticles3D_property_emitting>`

.. rst-class:: classref-property-setget

- |void| **set_emitting**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_emitting**\ (\ )

Si es ``true``, se están emitiendo partículas. :ref:`emitting<class_GPUParticles3D_property_emitting>` se puede utilizar para iniciar y detener la emisión de partículas. Sin embargo, si :ref:`one_shot<class_GPUParticles3D_property_one_shot>` es ``true``, establecer :ref:`emitting<class_GPUParticles3D_property_emitting>` en ``true`` no reiniciará el ciclo de emisión a menos que todas las partículas activas hayan terminado de procesarse. Utiliza la señal :ref:`finished<class_GPUParticles3D_signal_finished>` para que se te notifique una vez que todas las partículas activas terminen de procesarse.

\ **Nota:** Para los emisores :ref:`one_shot<class_GPUParticles3D_property_one_shot>`, debido a que las partículas se computan en la GPU, puede haber un breve período después de recibir la señal :ref:`finished<class_GPUParticles3D_signal_finished>` durante el cual establecer esto en ``true`` no reiniciará el ciclo de emisión.

\ **Consejo:** Si tu emisor :ref:`one_shot<class_GPUParticles3D_property_one_shot>` necesita reiniciar inmediatamente la emisión de partículas una vez que se recibe la señal :ref:`finished<class_GPUParticles3D_signal_finished>`, considera llamar a :ref:`restart()<class_GPUParticles3D_method_restart>` en lugar de establecer :ref:`emitting<class_GPUParticles3D_property_emitting>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_explosiveness:

.. rst-class:: classref-property

:ref:`float<class_float>` **explosiveness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_explosiveness>`

.. rst-class:: classref-property-setget

- |void| **set_explosiveness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_explosiveness_ratio**\ (\ )

Ratio de tiempo entre cada emisión. Si ``0``, las partículas se emiten continuamente. Si ``1``, todas las partículas se emiten simultáneamente.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fixed_fps:

.. rst-class:: classref-property

:ref:`int<class_int>` **fixed_fps** = ``30`` :ref:`🔗<class_GPUParticles3D_property_fixed_fps>`

.. rst-class:: classref-property-setget

- |void| **set_fixed_fps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fixed_fps**\ (\ )

The particle system's frame rate is fixed to a value. For example, changing the value to 2 will make the particles render at 2 frames per second. Note this does not slow down the simulation of the particle system itself.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_fract_delta:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fract_delta** = ``true`` :ref:`🔗<class_GPUParticles3D_property_fract_delta>`

.. rst-class:: classref-property-setget

- |void| **set_fractional_delta**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_fractional_delta**\ (\ )

Si es ``true``, resulta en un cálculo delta fraccionario que tiene un efecto de visualización de partículas más suave.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interp_to_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **interp_to_end** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_interp_to_end>`

.. rst-class:: classref-property-setget

- |void| **set_interp_to_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_interp_to_end**\ (\ )

Hace que todas las partículas en este nodo se interpolen hacia el final de su vida útil.

\ **Nota:** Esto solo funciona cuando se usa con un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`. Debe implementarse manualmente para shaders de proceso personalizados.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_interpolate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interpolate** = ``true`` :ref:`🔗<class_GPUParticles3D_property_interpolate>`

.. rst-class:: classref-property-setget

- |void| **set_interpolate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_interpolate**\ (\ )

Habilita la interpolación de partículas, lo que hace que el movimiento de las partículas sea más suave cuando su :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` es menor que la frecuencia de actualización de la pantalla.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **lifetime** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lifetime**\ (\ )

The amount of time each particle will exist (in seconds). The effective emission rate is ``(amount * amount_ratio) / lifetime`` particles per second.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_local_coords:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **local_coords** = ``false`` :ref:`🔗<class_GPUParticles3D_property_local_coords>`

.. rst-class:: classref-property-setget

- |void| **set_use_local_coordinates**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_local_coordinates**\ (\ )

Si es ``true``, las partículas usan el espacio de coordenadas del nodo padre (conocido como coordenadas locales). Esto hará que las partículas se muevan y giren junto con el nodo **GPUParticles3D** (y sus padres) cuando se mueve o gira. Si es ``false``, las partículas usan coordenadas globales; no se moverán ni rotarán junto con el nodo **GPUParticles3D** (y sus padres) cuando se mueve o gira.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_one_shot:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_shot** = ``false`` :ref:`🔗<class_GPUParticles3D_property_one_shot>`

.. rst-class:: classref-property-setget

- |void| **set_one_shot**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_one_shot**\ (\ )

Si es ``true``, solo se emitirá el número de partículas igual a :ref:`amount<class_GPUParticles3D_property_amount>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_preprocess:

.. rst-class:: classref-property

:ref:`float<class_float>` **preprocess** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_preprocess>`

.. rst-class:: classref-property-setget

- |void| **set_pre_process_time**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pre_process_time**\ (\ )

Cantidad de tiempo para preprocesar las partículas antes de que comience la animación. Permite iniciar la animación algún tiempo después de que las partículas hayan comenzado a emitirse.

\ **Nota:** Esto puede ser muy costoso si se establece en un número alto, ya que requiere ejecutar el shader de partículas varias veces igual a :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` (o 30, si :ref:`fixed_fps<class_GPUParticles3D_property_fixed_fps>` es 0) por cada segundo. En casos extremos, incluso puede provocar un fallo de la GPU debido al volumen de trabajo realizado en un solo fotograma.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_process_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **process_material** :ref:`🔗<class_GPUParticles3D_property_process_material>`

.. rst-class:: classref-property-setget

- |void| **set_process_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_process_material**\ (\ )

:ref:`Material<class_Material>` para procesar partículas. Puede ser un :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>` o un :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_randomness:

.. rst-class:: classref-property

:ref:`float<class_float>` **randomness** = ``0.0`` :ref:`🔗<class_GPUParticles3D_property_randomness>`

.. rst-class:: classref-property-setget

- |void| **set_randomness_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_randomness_ratio**\ (\ )

Ratio de aleatoriedad de las emisiones.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_seed:

.. rst-class:: classref-property

:ref:`int<class_int>` **seed** = ``0`` :ref:`🔗<class_GPUParticles3D_property_seed>`

.. rst-class:: classref-property-setget

- |void| **set_seed**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_seed**\ (\ )

Establece la semilla aleatoria utilizada por el sistema de partículas. Solo es efectivo si :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_speed_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **speed_scale** = ``1.0`` :ref:`🔗<class_GPUParticles3D_property_speed_scale>`

.. rst-class:: classref-property-setget

- |void| **set_speed_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_speed_scale**\ (\ )

Relación de escala de velocidad. Un valor de ``0`` puede ser usado para pausar las partículas.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_sub_emitter:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **sub_emitter** = ``NodePath("")`` :ref:`🔗<class_GPUParticles3D_property_sub_emitter>`

.. rst-class:: classref-property-setget

- |void| **set_sub_emitter**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_sub_emitter**\ (\ )

Ruta a otro nodo **GPUParticles3D** que se utilizará como subemisor (ver :ref:`ParticleProcessMaterial.sub_emitter_mode<class_ParticleProcessMaterial_property_sub_emitter_mode>`). Los subemisores se pueden utilizar para lograr efectos tales como fuegos artificiales, chispas en la colisión, burbujas que estallan en gotas de agua, y más.

\ **Nota:** Cuando :ref:`sub_emitter<class_GPUParticles3D_property_sub_emitter>` está establecido, el nodo **GPUParticles3D** de destino ya no emitirá partículas por sí solo.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **trail_enabled** = ``false`` :ref:`🔗<class_GPUParticles3D_property_trail_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_trail_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_trail_enabled**\ (\ )

Si es ``true``, habilita los rastros de partículas utilizando un sistema de skinning de malla. Diseñado para funcionar con :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` y :ref:`TubeTrailMesh<class_TubeTrailMesh>`.

\ **Nota:** :ref:`BaseMaterial3D.use_particle_trails<class_BaseMaterial3D_property_use_particle_trails>` también debe estar habilitado en el material de la malla de partículas. De lo contrario, establecer :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` en ``true`` no tendrá ningún efecto.

\ **Nota:** A diferencia de :ref:`GPUParticles2D<class_GPUParticles2D>`, el número de secciones y subdivisiones del rastro se establece en las propiedades de :ref:`RibbonTrailMesh<class_RibbonTrailMesh>` o :ref:`TubeTrailMesh<class_TubeTrailMesh>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_trail_lifetime:

.. rst-class:: classref-property

:ref:`float<class_float>` **trail_lifetime** = ``0.3`` :ref:`🔗<class_GPUParticles3D_property_trail_lifetime>`

.. rst-class:: classref-property-setget

- |void| **set_trail_lifetime**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_trail_lifetime**\ (\ )

La cantidad de tiempo que la estela de la partícula debe representar (en segundos). Solo es efectivo si :ref:`trail_enabled<class_GPUParticles3D_property_trail_enabled>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_transform_align:

.. rst-class:: classref-property

:ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **transform_align** = ``0`` :ref:`🔗<class_GPUParticles3D_property_transform_align>`

.. rst-class:: classref-property-setget

- |void| **set_transform_align**\ (\ value\: :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>`\ )
- :ref:`TransformAlign<enum_GPUParticles3D_TransformAlign>` **get_transform_align**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_use_fixed_seed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_fixed_seed** = ``false`` :ref:`🔗<class_GPUParticles3D_property_use_fixed_seed>`

.. rst-class:: classref-property-setget

- |void| **set_use_fixed_seed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_fixed_seed**\ (\ )

Si es ``true``, las partículas usarán la misma semilla para cada simulación utilizando la semilla definida en :ref:`seed<class_GPUParticles3D_property_seed>`. Esto es útil para situaciones en las que el resultado visual debe ser consistente en las repeticiones, por ejemplo, cuando se utiliza el modo Movie Maker.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_property_visibility_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **visibility_aabb** = ``AABB(-4, -4, -4, 8, 8, 8)`` :ref:`🔗<class_GPUParticles3D_property_visibility_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_visibility_aabb**\ (\ )

El :ref:`AABB<class_AABB>` que determina la región del nodo que debe estar visible en la pantalla para que el sistema de partículas esté activo. Se añade :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` en cada uno de los ejes del AABB. Las colisiones y la atracción de partículas solo ocurrirán dentro de esta área.

Aumenta el tamaño de la caja si las partículas aparecen/desaparecen repentinamente cuando el nodo entra/sale de la pantalla. El :ref:`AABB<class_AABB>` se puede aumentar mediante código o con la herramienta del editor **Partículas → Generar AABB**.

\ **Nota:** :ref:`visibility_aabb<class_GPUParticles3D_property_visibility_aabb>` se anula mediante :ref:`GeometryInstance3D.custom_aabb<class_GeometryInstance3D_property_custom_aabb>` si esa propiedad se establece en un valor no predeterminado.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_GPUParticles3D_method_capture_aabb:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **capture_aabb**\ (\ ) |const| :ref:`🔗<class_GPUParticles3D_method_capture_aabb>`

Devuelve el cuadro delimitador alineado con el eje que contiene todas las partículas que están activas en el cuadro actual.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_convert_from_particles:

.. rst-class:: classref-method

|void| **convert_from_particles**\ (\ particles\: :ref:`Node<class_Node>`\ ) :ref:`🔗<class_GPUParticles3D_method_convert_from_particles>`

Establece las propiedades de este nodo para que coincidan con un nodo :ref:`CPUParticles3D<class_CPUParticles3D>` dado.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_emit_particle:

.. rst-class:: classref-method

|void| **emit_particle**\ (\ xform\: :ref:`Transform3D<class_Transform3D>`, velocity\: :ref:`Vector3<class_Vector3>`, color\: :ref:`Color<class_Color>`, custom\: :ref:`Color<class_Color>`, flags\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GPUParticles3D_method_emit_particle>`

Emite una sola partícula. Que se apliquen ``xform``, ``velocity``, ``color`` y ``custom`` depende del valor de ``flags``. Véase :ref:`EmitFlags<enum_GPUParticles3D_EmitFlags>`.

El ParticleProcessMaterial por defecto sobrescribirá ``color`` y usará el contenido de ``custom`` como ``(rotación, edad, animación, tiempo de vida)``.

\ **Nota:** :ref:`emit_particle()<class_GPUParticles3D_method_emit_particle>` solo es compatible con los métodos de renderizado Forward+ y Mobile, no con Compatibility.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_get_draw_pass_mesh:

.. rst-class:: classref-method

:ref:`Mesh<class_Mesh>` **get_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GPUParticles3D_method_get_draw_pass_mesh>`

Devuelve el :ref:`Mesh<class_Mesh>` que se dibuja en el índice ``pass``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_request_particles_process:

.. rst-class:: classref-method

|void| **request_particles_process**\ (\ process_time\: :ref:`float<class_float>`\ ) :ref:`🔗<class_GPUParticles3D_method_request_particles_process>`

Solicita a las partículas que se procesen durante un tiempo adicional durante un solo fotograma.

Útil para la reproducción de partículas si se usa en combinación con :ref:`use_fixed_seed<class_GPUParticles3D_property_use_fixed_seed>` o al llamar a :ref:`restart()<class_GPUParticles3D_method_restart>` con el parámetro ``keep_seed`` establecido en ``true``.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_restart:

.. rst-class:: classref-method

|void| **restart**\ (\ keep_seed\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_GPUParticles3D_method_restart>`

Reinicia el ciclo de emisión de partículas, limpiando las partículas existentes. Para evitar que las partículas desaparezcan de la ventana gráfica, espera a la señal :ref:`finished<class_GPUParticles3D_signal_finished>` antes de llamar.

\ **Nota:** La señal :ref:`finished<class_GPUParticles3D_signal_finished>` solo es emitida por emisores :ref:`one_shot<class_GPUParticles3D_property_one_shot>`.

Si ``keep_seed`` es ``true``, la semilla aleatoria actual se conservará. Útil para la búsqueda y la reproducción.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticles3D_method_set_draw_pass_mesh:

.. rst-class:: classref-method

|void| **set_draw_pass_mesh**\ (\ pass\: :ref:`int<class_int>`, mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_GPUParticles3D_method_set_draw_pass_mesh>`

Establece el :ref:`Mesh<class_Mesh>` que se dibuja en el índice ``pass``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
