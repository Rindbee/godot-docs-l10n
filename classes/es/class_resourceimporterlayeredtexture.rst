:github_url: hide

.. _class_ResourceImporterLayeredTexture:

ResourceImporterLayeredTexture
==============================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa una textura tridimensional (:ref:`Texture3D<class_Texture3D>`), un :ref:`Texture2DArray<class_Texture2DArray>`, un :ref:`Cubemap<class_Cubemap>` o un :ref:`CubemapArray<class_CubemapArray>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esto importa una textura tridimensional, que luego puede ser usada en shaders personalizados, como un mapa de densidad :ref:`FogMaterial<class_FogMaterial>` o como un :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`. Véase también :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` y :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Importando imágenes <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/channel_pack<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`         | ``0``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`   | ``1``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`compress/high_quality<class_ResourceImporterLayeredTexture_property_compress/high_quality>`         | ``false`` |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`compress/lossy_quality<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`       | ``0.7``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/mode<class_ResourceImporterLayeredTexture_property_compress/mode>`                         | ``1``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`compress/rdo_quality_loss<class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss>` | ``0.0``   |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`compress/uastc_level<class_ResourceImporterLayeredTexture_property_compress/uastc_level>`           | ``0``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`mipmaps/generate<class_ResourceImporterLayeredTexture_property_mipmaps/generate>`                   | ``true``  |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`mipmaps/limit<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`                         | ``-1``    |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`     | :ref:`slices/arrangement<class_ResourceImporterLayeredTexture_property_slices/arrangement>`               | ``1``     |
   +---------------------------+-----------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ResourceImporterLayeredTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`

Controls how color channels should be used in the imported texture.

\ **sRGB Friendly:**, prevents the R and RG color formats from being used, as they do not support nonlinear sRGB encoding.

\ **Optimized:**, allows the RG color format to be used if the texture does not use the blue channel. This reduces memory usage if the texture's blue channel can be discarded (all pixels must have a blue value of ``0``).

\ **Normal Map (RG Channels):** This forces all layers from the texture to be imported with the RG color format, with only the red and green channels preserved. RGTC (Red-Green Texture Compression) compression is able to preserve its detail much better, while using the same amount of memory as a standard RGBA VRAM-compressed texture. This only has an effect on textures with the VRAM Compressed or Basis Universal compression modes. This mode is only available in layered textures (:ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>` and :ref:`Texture3D<class_Texture3D>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`

Controla cómo se debe realizar la compresión VRAM para las imágenes HDR.

\ **Desactivado:** Nunca uses la compresión VRAM para texturas HDR, independientemente de si son opacas o transparentes. En su lugar, la textura se convierte a RGBE9995 (9 bits por canal + exponente de 5 bits = 32 bits por píxel) para reducir el uso de memoria en comparación con un formato de imagen de punto flotante de media precisión o de precisión simple.

\ **Solo opaco:** Solo usa la compresión VRAM para texturas HDR opacas. Esto se debe a una limitación de los formatos HDR, ya que no hay un formato HDR comprimido en VRAM que admita la transparencia al mismo tiempo.

\ **Siempre:** Fuerza la compresión VRAM incluso para texturas HDR con un canal alfa. Para realizar esto, el canal alfa se descarta en la importación.

\ **Nota:** Solo es efectivo en imágenes Radiance HDR (``.hdr``) y OpenEXR (``.exr``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/high_quality>`

Si es ``true``, usa la compresión BPTC en plataformas de escritorio y la compresión ASTC en plataformas móviles. Cuando se usa BPTC, BC7 se usa para texturas SDR y BC6H se usa para texturas HDR.

Si es ``false``, usa la compresión S3TC más rápida pero de menor calidad en plataformas de escritorio y ETC2 en plataformas móviles/web. Cuando se usa S3TC, DXT1 (BC1) se usa para texturas opacas y DXT5 (BC3) se usa para texturas transparentes o mapas normales (RGTC).

BPTC y ASTC admiten la compresión VRAM para texturas HDR, pero S3TC y ETC2 no (ver :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`

La calidad a usar cuando se usa el modo de compresión **Con pérdida**. Los valores más altos dan como resultado una mejor calidad, a costa de tamaños de archivo más grandes. La calidad con pérdida no afecta el uso de memoria de la textura importada, solo el tamaño de su archivo en el disco.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/mode>`

El modo de compresión a utilizar. Cada modo de compresión ofrece una compensación diferente:

\ **Sin pérdida**: Calidad original, alto uso de memoria, gran tamaño en el disco, importación rápida.

\ **Con pérdida:** Calidad reducida, alto uso de memoria, tamaño reducido en el disco, importación rápida.

\ **VRAM Comprimido:** Calidad reducida, bajo uso de memoria, tamaño reducido en el disco, importación más lenta. Solo usar para texturas en escenas 3D, no para elementos 2D.

\ **VRAM Sin comprimir:** Calidad original, alto uso de memoria, mayor tamaño en el disco, importación más rápida.

\ **Basis Universal:** Calidad reducida, bajo uso de memoria, menor tamaño en el disco, importación lenta. Solo usar para texturas en escenas 3D, no para elementos 2D.

Véase `Modo de compresión <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__ en el manual para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss>`

Si es mayor o igual que ``0.01``, activa la optimización de tasa-distorsión (RDO) para reducir el tamaño del archivo. Los valores más altos dan como resultado archivos más pequeños, pero de menor calidad.

\ **Nota:** Habilitar RDO hace que los tiempos de codificación sean significativamente más largos, especialmente cuando la imagen es grande.

Véase también :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` y :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>` si quieres reducir aún más el tamaño del archivo.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/uastc_level>`

El nivel de codificación UASTC. Los valores más altos dan como resultado una mejor calidad, pero hacen que los tiempos de codificación sean más largos.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``true`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/generate>`

Si es ``true``, las versiones más pequeñas de la textura se generan en la importación. Por ejemplo, una textura de 64×64 generará 6 mipmaps (32×32, 16×16, 8×8, 4×4, 2×2, 1×1). Esto tiene varios beneficios:

- Las texturas no se volverán granuladas en la distancia (en 3D), o si se reducen debido al zoom de :ref:`Camera2D<class_Camera2D>` o a la escala de :ref:`CanvasItem<class_CanvasItem>` (en 2D).

- El rendimiento mejorará si la textura se muestra en la distancia, ya que el muestreo de versiones más pequeñas de la textura original es más rápido y requiere menos ancho de banda de memoria.

La desventaja de los mipmaps es que aumentan el uso de memoria en aproximadamente un 33% (para :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` y :ref:`CubemapArray<class_CubemapArray>`) o un 14% (para :ref:`Texture3D<class_Texture3D>`).

Se recomienda habilitar los mipmaps en 3D. Sin embargo, en 2D, esto solo debe habilitarse si tu proyecto se beneficia visiblemente de tener los mipmaps habilitados. Si la cámara nunca se aleja significativamente, no habrá ningún beneficio al habilitar los mipmaps, pero el uso de memoria aumentará.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`

Sin implementar. Esto actualmente no tiene ningún efecto cuando se cambia.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_slices/arrangement:

.. rst-class:: classref-property

:ref:`int<class_int>` **slices/arrangement** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_slices/arrangement>`

Controla cómo se dispone internamente la textura del mapa de entorno. Cuando se utilizan mapas de entorno de alta resolución, **2×3** y **3×2** son menos propensos a exceder los límites de tamaño de la textura del hardware en comparación con **1×6** y **6×1**.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
