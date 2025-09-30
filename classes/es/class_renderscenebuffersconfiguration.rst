:github_url: hide

.. _class_RenderSceneBuffersConfiguration:

RenderSceneBuffersConfiguration
===============================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Objeto de configuración utilizado para configurar un objeto :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este objeto de configuración es creado y poblado por el motor de renderizado en un cambio de viewport y se utiliza para (re)configurar un objeto :ref:`RenderSceneBuffers<class_RenderSceneBuffers>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` | :ref:`anisotropic_filtering_level<class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level>` | ``2``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                              | :ref:`fsr_sharpness<class_RenderSceneBuffersConfiguration_property_fsr_sharpness>`                             | ``0.0``            |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>`                                                        | :ref:`internal_size<class_RenderSceneBuffersConfiguration_property_internal_size>`                             | ``Vector2i(0, 0)`` |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>`                                 | :ref:`msaa_3d<class_RenderSceneBuffersConfiguration_property_msaa_3d>`                                         | ``0``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`RID<class_RID>`                                                                  | :ref:`render_target<class_RenderSceneBuffersConfiguration_property_render_target>`                             | ``RID()``          |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>`               | :ref:`scaling_3d_mode<class_RenderSceneBuffersConfiguration_property_scaling_3d_mode>`                         | ``255``            |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>`               | :ref:`screen_space_aa<class_RenderSceneBuffersConfiguration_property_screen_space_aa>`                         | ``0``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>`                                                        | :ref:`target_size<class_RenderSceneBuffersConfiguration_property_target_size>`                                 | ``Vector2i(0, 0)`` |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`float<class_float>`                                                              | :ref:`texture_mipmap_bias<class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias>`                 | ``0.0``            |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`                                                                  | :ref:`view_count<class_RenderSceneBuffersConfiguration_property_view_count>`                                   | ``1``              |
   +----------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level:

.. rst-class:: classref-property

:ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` **anisotropic_filtering_level** = ``2`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_anisotropic_filtering_level>`

.. rst-class:: classref-property-setget

- |void| **set_anisotropic_filtering_level**\ (\ value\: :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>`\ )
- :ref:`ViewportAnisotropicFiltering<enum_RenderingServer_ViewportAnisotropicFiltering>` **get_anisotropic_filtering_level**\ (\ )

Nivel del filtro anisotrópico.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_fsr_sharpness:

.. rst-class:: classref-property

:ref:`float<class_float>` **fsr_sharpness** = ``0.0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_fsr_sharpness>`

.. rst-class:: classref-property-setget

- |void| **set_fsr_sharpness**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fsr_sharpness**\ (\ )

Nitidez FSR aplicable si se utiliza el escalado FSR.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_internal_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **internal_size** = ``Vector2i(0, 0)`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_internal_size>`

.. rst-class:: classref-property-setget

- |void| **set_internal_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_internal_size**\ (\ )

El tamaño del búfer de renderizado 3D utilizado para el renderizado.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_msaa_3d:

.. rst-class:: classref-property

:ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **msaa_3d** = ``0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_msaa_3d>`

.. rst-class:: classref-property-setget

- |void| **set_msaa_3d**\ (\ value\: :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>`\ )
- :ref:`ViewportMSAA<enum_RenderingServer_ViewportMSAA>` **get_msaa_3d**\ (\ )

El modo MSAA que estamos usando para el renderizado 3D.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_render_target:

.. rst-class:: classref-property

:ref:`RID<class_RID>` **render_target** = ``RID()`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_render_target>`

.. rst-class:: classref-property-setget

- |void| **set_render_target**\ (\ value\: :ref:`RID<class_RID>`\ )
- :ref:`RID<class_RID>` **get_render_target**\ (\ )

El objetivo de renderizado asociado con estos búferes.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_scaling_3d_mode:

.. rst-class:: classref-property

:ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **scaling_3d_mode** = ``255`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_scaling_3d_mode>`

.. rst-class:: classref-property-setget

- |void| **set_scaling_3d_mode**\ (\ value\: :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>`\ )
- :ref:`ViewportScaling3DMode<enum_RenderingServer_ViewportScaling3DMode>` **get_scaling_3d_mode**\ (\ )

El modo de escalado solicitado con el que se escala hacia arriba/abajo si :ref:`internal_size<class_RenderSceneBuffersConfiguration_property_internal_size>` y :ref:`target_size<class_RenderSceneBuffersConfiguration_property_target_size>` no son iguales.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_screen_space_aa:

.. rst-class:: classref-property

:ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **screen_space_aa** = ``0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_screen_space_aa>`

.. rst-class:: classref-property-setget

- |void| **set_screen_space_aa**\ (\ value\: :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>`\ )
- :ref:`ViewportScreenSpaceAA<enum_RenderingServer_ViewportScreenSpaceAA>` **get_screen_space_aa**\ (\ )

El AA de espacio de pantalla solicitado aplicado en el post-procesado.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_target_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **target_size** = ``Vector2i(0, 0)`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_target_size>`

.. rst-class:: classref-property-setget

- |void| **set_target_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_target_size**\ (\ )

El tamaño objetivo (de reescalado) si se utiliza el escalado.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_mipmap_bias** = ``0.0`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_texture_mipmap_bias>`

.. rst-class:: classref-property-setget

- |void| **set_texture_mipmap_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_mipmap_bias**\ (\ )

Sesgo aplicado a los mipmaps.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersConfiguration_property_view_count:

.. rst-class:: classref-property

:ref:`int<class_int>` **view_count** = ``1`` :ref:`🔗<class_RenderSceneBuffersConfiguration_property_view_count>`

.. rst-class:: classref-property-setget

- |void| **set_view_count**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_view_count**\ (\ )

El número de vistas que estamos renderizando.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
