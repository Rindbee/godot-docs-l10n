:github_url: hide

.. _class_ResourceImporterTexture:

ResourceImporterTexture
=======================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa una imagen para usar en renderizado 2D o 3D.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este importador importa recursos :ref:`CompressedTexture2D<class_CompressedTexture2D>`. Si necesitas procesar la imagen en scripts de una manera más conveniente, usa :ref:`ResourceImporterImage<class_ResourceImporterImage>` en su lugar. Véase también :ref:`ResourceImporterLayeredTexture<class_ResourceImporterLayeredTexture>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Importando imágenes <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/channel_pack<class_ResourceImporterTexture_property_compress/channel_pack>`                                     | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/hdr_compression<class_ResourceImporterTexture_property_compress/hdr_compression>`                               | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`compress/high_quality<class_ResourceImporterTexture_property_compress/high_quality>`                                     | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`compress/lossy_quality<class_ResourceImporterTexture_property_compress/lossy_quality>`                                   | ``0.7``   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>`                                                     | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/normal_map<class_ResourceImporterTexture_property_compress/normal_map>`                                         | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`compress/rdo_quality_loss<class_ResourceImporterTexture_property_compress/rdo_quality_loss>`                             | ``0.0``   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`compress/uastc_level<class_ResourceImporterTexture_property_compress/uastc_level>`                                       | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`detect_3d/compress_to<class_ResourceImporterTexture_property_detect_3d/compress_to>`                                     | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`editor/convert_colors_with_editor_theme<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>` | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`editor/scale_with_editor_scale<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`                   | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`mipmaps/generate<class_ResourceImporterTexture_property_mipmaps/generate>`                                               | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`mipmaps/limit<class_ResourceImporterTexture_property_mipmaps/limit>`                                                     | ``-1``    |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/alpha<class_ResourceImporterTexture_property_process/channel_remap/alpha>`                         | ``3``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/blue<class_ResourceImporterTexture_property_process/channel_remap/blue>`                           | ``2``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/green<class_ResourceImporterTexture_property_process/channel_remap/green>`                         | ``1``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/channel_remap/red<class_ResourceImporterTexture_property_process/channel_remap/red>`                             | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/fix_alpha_border<class_ResourceImporterTexture_property_process/fix_alpha_border>`                               | ``true``  |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>`                                         | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/hdr_clamp_exposure<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>`                           | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/normal_map_invert_y<class_ResourceImporterTexture_property_process/normal_map_invert_y>`                         | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`     | :ref:`process/premult_alpha<class_ResourceImporterTexture_property_process/premult_alpha>`                                     | ``false`` |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`process/size_limit<class_ResourceImporterTexture_property_process/size_limit>`                                           | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`       | :ref:`roughness/mode<class_ResourceImporterTexture_property_roughness/mode>`                                                   | ``0``     |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>` | :ref:`roughness/src_normal<class_ResourceImporterTexture_property_roughness/src_normal>`                                       | ``""``    |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`   | :ref:`svg/scale<class_ResourceImporterTexture_property_svg/scale>`                                                             | ``1.0``   |
   +-----------------------------+--------------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ResourceImporterTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/channel_pack>`

Controla cómo se deben usar los canales de color en la textura importada.

\ **Compatible con sRGB:** Evita que se use el formato de color RG, ya que no es compatible con el color sRGB.

\ **Optimizado:** Permite que se use el formato de color RG si la textura no usa el canal azul. Esto reduce el uso de memoria si el canal azul de la textura se puede descartar (todos los píxeles deben tener un valor azul de ``0``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_compress/hdr_compression>`

Controla cómo se debe realizar la compresión VRAM para las imágenes HDR.

\ **Desactivado:** Nunca uses la compresión VRAM para texturas HDR, independientemente de si son opacas o transparentes. En su lugar, la textura se convierte a RGBE9995 (9 bits por canal + exponente de 5 bits = 32 bits por píxel) para reducir el uso de memoria en comparación con un formato de imagen de punto flotante de media precisión o de precisión simple.

\ **Solo opaco:** Solo usa la compresión VRAM para texturas HDR opacas. Esto se debe a una limitación de los formatos HDR, ya que no hay un formato HDR comprimido en VRAM que admita la transparencia al mismo tiempo.

\ **Siempre:** Fuerza la compresión VRAM incluso para texturas HDR con un canal alfa. Para realizar esto, el canal alfa se descarta en la importación.

\ **Nota:** Solo es efectivo en imágenes Radiance HDR (``.hdr``) y OpenEXR (``.exr``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_compress/high_quality>`

Si es ``true``, usa la compresión BPTC en plataformas de escritorio y la compresión ASTC en plataformas móviles. Cuando se usa BPTC, BC7 se usa para texturas SDR y BC6H se usa para texturas HDR.

Si es ``false``, usa la compresión S3TC más rápida pero de menor calidad en plataformas de escritorio y ETC2 en plataformas móviles/web. Cuando se usa S3TC, DXT1 (BC1) se usa para texturas opacas y DXT5 (BC3) se usa para texturas transparentes o mapas normales (RGTC).

BPTC y ASTC admiten la compresión VRAM para texturas HDR, pero S3TC y ETC2 no (ver :ref:`compress/hdr_compression<class_ResourceImporterTexture_property_compress/hdr_compression>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterTexture_property_compress/lossy_quality>`

La calidad a usar cuando se usa el modo de compresión **Con pérdida**. Los valores más altos dan como resultado una mejor calidad, a costa de tamaños de archivo más grandes. La calidad con pérdida no afecta el uso de memoria de la textura importada, solo el tamaño de su archivo en el disco.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/mode>`

El modo de compresión a utilizar. Cada modo de compresión ofrece una compensación diferente:

\ **Sin pérdida**: Calidad original, alto uso de memoria, gran tamaño en el disco, importación rápida.

\ **Con pérdida:** Calidad reducida, alto uso de memoria, tamaño reducido en el disco, importación rápida.

\ **VRAM Comprimido:** Calidad reducida, bajo uso de memoria, tamaño reducido en el disco, importación más lenta. Solo usar para texturas en escenas 3D, no para elementos 2D.

\ **VRAM Sin comprimir:** Calidad original, alto uso de memoria, mayor tamaño en el disco, importación más rápida.

\ **Basis Universal:** Calidad reducida, bajo uso de memoria, menor tamaño en el disco, importación lenta. Solo usar para texturas en escenas 3D, no para elementos 2D.

Véase `Modo de compresión <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__ en el manual para más detalles.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/normal_map:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/normal_map** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/normal_map>`

Cuando se utiliza una textura como mapa normal, solo se requieren los canales rojo y verde. Dado que los algoritmos de compresión de textura regulares producen artefactos que no se ven tan bien en los mapas normales, el formato de compresión RGTC es el que mejor se adapta a estos datos. Forzar esta opción a Activar hará que Godot importe la imagen como comprimida en RGTC. De forma predeterminada, se establece en Detectar. Esto significa que si alguna vez se detecta que la textura se utiliza como un mapa normal, se cambiará a Activar y se volverá a importar automáticamente.

Ten en cuenta que la compresión RGTC afecta la imagen del mapa normal resultante. Tendrás que ajustar los shaders personalizados que utilizan el canal azul del mapa normal para tener esto en cuenta. Los shaders de materiales incorporados ya ignoran el canal azul en un mapa normal (independientemente del contenido real del mapa normal).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/rdo_quality_loss>`

Si es mayor o igual que ``0.01``, activa la optimización de tasa-distorsión (RDO) para reducir el tamaño del archivo. Los valores más altos dan como resultado archivos más pequeños, pero de menor calidad.

\ **Nota:** Habilitar RDO hace que los tiempos de codificación sean significativamente más largos, especialmente cuando la imagen es grande.

Véase también :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` y :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>` si quieres reducir aún más el tamaño del archivo.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_compress/uastc_level>`

El nivel de codificación UASTC. Los valores más altos dan como resultado una mejor calidad, pero hacen que los tiempos de codificación sean más largos.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_detect_3d/compress_to:

.. rst-class:: classref-property

:ref:`int<class_int>` **detect_3d/compress_to** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_detect_3d/compress_to>`

Esto cambia la opción :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>` que se utiliza cuando se detecta que una textura se está utilizando en 3D.

Cambiar esta opción de importación solo tiene efecto si se detecta que una textura se está utilizando en 3D. Cambiar esto a **Deshabilitado** y luego volver a importar no cambiará el modo de compresión existente en una textura (si se detecta que se está utilizando en 3D), pero elegir **Comprimido en VRAM** o **Basis Universal** sí lo hará.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/convert_colors_with_editor_theme** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/convert_colors_with_editor_theme>`

If ``true``, converts the imported image's colors to match :ref:`EditorSettings.interface/theme/icon_and_font_color<class_EditorSettings_property_interface/theme/icon_and_font_color>`. This assumes the image uses the exact same colors as :doc:`Godot's own color palette for editor icons <../engine_details/editor/creating_icons>`, with the source file designed for a dark editor theme. This should be enabled for editor plugin icons and custom class icons, but should be left disabled otherwise.

\ **Note:** Only available for SVG images.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_editor/scale_with_editor_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor/scale_with_editor_scale** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`

Si es ``true``, escala la imagen importada para que coincida con :ref:`EditorSettings.interface/editor/custom_display_scale<class_EditorSettings_property_interface/editor/custom_display_scale>`. Esto debe habilitarse para los iconos de los plugins del editor y los iconos de clase personalizados, pero debe dejarse deshabilitado en caso contrario.

\ **Nota:** Solo disponible para imágenes SVG.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/generate>`

Si es ``true``, se generan versiones más pequeñas de la textura al importar. Por ejemplo, una textura de 64×64 generará 6 mipmaps (32×32, 16×16, 8×8, 4×4, 2×2, 1×1). Esto tiene varios beneficios:

- Las texturas no se verán granuladas en la distancia (en 3D), o si se reducen debido al zoom de :ref:`Camera2D<class_Camera2D>` o la escala de :ref:`CanvasItem<class_CanvasItem>` (en 2D).

- El rendimiento mejorará si la textura se muestra en la distancia, ya que muestrear versiones más pequeñas de la textura original es más rápido y requiere menos ancho de banda de memoria.

La desventaja de los mipmaps es que aumentan el uso de memoria en aproximadamente un 33%.

Se recomienda habilitar los mipmaps en 3D. Sin embargo, en 2D, esto solo debe habilitarse si tu proyecto se beneficia visiblemente de tener los mipmaps habilitados. Si la cámara nunca se aleja significativamente, no habrá ningún beneficio al habilitar los mipmaps, pero el uso de memoria aumentará.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterTexture_property_mipmaps/limit>`

Sin implementar. Esto actualmente no tiene ningún efecto cuando se cambia.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/alpha:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/alpha** = ``3`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/alpha>`

Especifica la fuente de datos del canal alfa de la imagen de salida.

\ **Rojo:** Utiliza los valores del canal rojo de la imagen de origen.

\ **Verde:** Utiliza los valores del canal verde de la imagen de origen.

\ **Azul:** Utiliza los valores del canal azul de la imagen de origen.

\ **Alfa:** Utiliza los valores del canal alfa de la imagen de origen.

\ **Rojo Invertido:** Utiliza los valores invertidos del canal rojo de la imagen de origen (``1.0 - R``).

\ **Verde Invertido:** Utiliza los valores invertidos del canal verde de la imagen de origen (``1.0 - G``).

\ **Azul Invertido:** Utiliza los valores invertidos del canal azul de la imagen de origen (``1.0 - B``).

\ **Alfa Invertido:** Utiliza los valores invertidos del canal alfa de la imagen de origen (``1.0 - A``).

\ **Sin usar:** Establece el valor del canal de color al valor predeterminado (``1.0`` para alfa, ``0.0`` para rojo, verde o azul).

\ **Cero:** Establece el valor del canal de color a ``0.0``.

\ **Uno:** Establece el valor del canal de color a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/blue:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/blue** = ``2`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/blue>`

Especifica la fuente de datos del canal azul de la imagen de salida.

\ **Rojo:** Utiliza los valores del canal rojo de la imagen de origen.

\ **Verde:** Utiliza los valores del canal verde de la imagen de origen.

\ **Azul:** Utiliza los valores del canal azul de la imagen de origen.

\ **Alfa:** Utiliza los valores del canal alfa de la imagen de origen.

\ **Rojo Invertido:** Utiliza los valores invertidos del canal rojo de la imagen de origen (``1.0 - R``).

\ **Verde Invertido:** Utiliza los valores invertidos del canal verde de la imagen de origen (``1.0 - G``).

\ **Azul Invertido:** Utiliza los valores invertidos del canal azul de la imagen de origen (``1.0 - B``).

\ **Alfa Invertido:** Utiliza los valores invertidos del canal alfa de la imagen de origen (``1.0 - A``).

\ **Sin usar:** Establece el valor del canal de color al valor predeterminado (``1.0`` para alfa, ``0.0`` para rojo, verde o azul).

\ **Cero:** Establece el valor del canal de color a ``0.0``.

\ **Uno:** Establece el valor del canal de color a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/green:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/green** = ``1`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/green>`

Especifica la fuente de datos del canal verde de la imagen de salida.

\ **Rojo:** Utiliza los valores del canal rojo de la imagen de origen.

\ **Verde:** Utiliza los valores del canal verde de la imagen de origen.

\ **Azul:** Utiliza los valores del canal azul de la imagen de origen.

\ **Alfa:** Utiliza los valores del canal alfa de la imagen de origen.

\ **Rojo Invertido:** Utiliza los valores invertidos del canal rojo de la imagen de origen (``1.0 - R``).

\ **Verde Invertido:** Utiliza los valores invertidos del canal verde de la imagen de origen (``1.0 - G``).

\ **Azul Invertido:** Utiliza los valores invertidos del canal azul de la imagen de origen (``1.0 - B``).

\ **Alfa Invertido:** Utiliza los valores invertidos del canal alfa de la imagen de origen (``1.0 - A``).

\ **Sin usar:** Establece el valor del canal de color al valor predeterminado (``1.0`` para alfa, ``0.0`` para rojo, verde o azul).

\ **Cero:** Establece el valor del canal de color a ``0.0``.

\ **Uno:** Establece el valor del canal de color a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/channel_remap/red:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/channel_remap/red** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/channel_remap/red>`

Especifica la fuente de datos del canal rojo de la imagen de salida.

\ **Rojo:** Utiliza los valores del canal rojo de la imagen de origen.

\ **Verde:** Utiliza los valores del canal verde de la imagen de origen.

\ **Azul:** Utiliza los valores del canal azul de la imagen de origen.

\ **Alfa:** Utiliza los valores del canal alfa de la imagen de origen.

\ **Rojo Invertido:** Utiliza los valores invertidos del canal rojo de la imagen de origen (``1.0 - R``).

\ **Verde Invertido:** Utiliza los valores invertidos del canal verde de la imagen de origen (``1.0 - G``).

\ **Azul Invertido:** Utiliza los valores invertidos del canal azul de la imagen de origen (``1.0 - B``).

\ **Alfa Invertido:** Utiliza los valores invertidos del canal alfa de la imagen de origen (``1.0 - A``).

\ **Sin usar:** Establece el valor del canal de color al valor predeterminado (``1.0`` para alfa, ``0.0`` para rojo, verde o azul).

\ **Cero:** Establece el valor del canal de color a ``0.0``.

\ **Uno:** Establece el valor del canal de color a ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/fix_alpha_border:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/fix_alpha_border** = ``true`` :ref:`🔗<class_ResourceImporterTexture_property_process/fix_alpha_border>`

Si es ``true``, coloca píxeles del mismo color circundante en la transición de áreas transparentes a opacas. Para las texturas mostradas con filtrado bilineal, esto ayuda a reducir el efecto de contorno al exportar imágenes desde un editor de imágenes.

Se recomienda dejar esto habilitado (como está por defecto), a menos que esto cause problemas para una imagen en particular.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_as_srgb:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_as_srgb** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_as_srgb>`

Algunas imágenes HDR que puedes encontrar en línea pueden estar dañadas y contener datos de color sRGB (en lugar de datos de color lineal). Se aconseja no utilizar esos archivos. Si absolutamente tienes que hacerlo, habilitar :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` hará que se vean correctas.

\ **Advertencia:** Habilitar :ref:`process/hdr_as_srgb<class_ResourceImporterTexture_property_process/hdr_as_srgb>` en imágenes HDR bien formateadas hará que la imagen resultante se vea demasiado oscura, así que déjalo en ``false`` si no estás seguro.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/hdr_clamp_exposure:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/hdr_clamp_exposure** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>`

Si es ``true``, limita la exposición en las imágenes de alto rango dinámico importadas utilizando una fórmula de limitación inteligente (sin introducir un recorte *visible*).

Algunas imágenes panorámicas HDR que puedes encontrar en línea pueden contener píxeles extremadamente brillantes, debido a que se toman de fuentes de la vida real sin ningún recorte.

Si bien estas imágenes panorámicas HDR son precisas para la vida real, esto puede causar que el mapa de radiancia generado por Godot contenga destellos cuando se utiliza como un cielo de fondo. Esto se puede ver en los reflejos del material (incluso en materiales rugosos en casos extremos). Habilitar :ref:`process/hdr_clamp_exposure<class_ResourceImporterTexture_property_process/hdr_clamp_exposure>` puede resolver esto.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/normal_map_invert_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/normal_map_invert_y** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/normal_map_invert_y>`

**Obsoleto:** The same result can be achieved by setting :ref:`process/channel_remap/green<class_ResourceImporterTexture_property_process/channel_remap/green>` to ``Green Inverted``.

Si es ``true``, convierte el mapa normal de Y- (estilo DirectX) a Y+ (estilo OpenGL) invirtiendo su canal de color verde. Esta es la convención de mapa normal esperada por Godot.

Se puede encontrar más información sobre los mapas normales (incluida una tabla de orden de coordenadas para motores populares) `aquí <http://wiki.polycount.com/wiki/Normal_Map_Technical_Details>`__.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/premult_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **process/premult_alpha** = ``false`` :ref:`🔗<class_ResourceImporterTexture_property_process/premult_alpha>`

Una alternativa a la corrección de bordes oscurecidos con :ref:`process/fix_alpha_border<class_ResourceImporterTexture_property_process/fix_alpha_border>` es usar alfa pre-multiplicado. Al habilitar esta opción, la textura se convertirá a este formato. Una textura alfa pre-multiplicada requiere materiales específicos para que se muestre correctamente:

- En 2D, se deberá crear y configurar un :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` para usar el modo de mezcla :ref:`CanvasItemMaterial.BLEND_MODE_PREMULT_ALPHA<class_CanvasItemMaterial_constant_BLEND_MODE_PREMULT_ALPHA>` en los :ref:`CanvasItem<class_CanvasItem>`\ s que usen esta textura. En los shaders ``@canvas_item`` personalizados, se debe usar ``render_mode blend_premul_alpha;``.

- En 3D, se deberá crear y configurar un :ref:`BaseMaterial3D<class_BaseMaterial3D>` para usar el modo de mezcla :ref:`BaseMaterial3D.BLEND_MODE_PREMULT_ALPHA<class_BaseMaterial3D_constant_BLEND_MODE_PREMULT_ALPHA>` en los materiales que usen esta textura. En los shaders ``spatial`` personalizados, se debe usar ``render_mode blend_premul_alpha;``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_process/size_limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **process/size_limit** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_process/size_limit>`

Si se establece en un valor mayor que ``0``, el tamaño de la textura se limita al importar a un valor menor o igual al valor especificado aquí. Para las texturas no cuadradas, el límite de tamaño afecta a la dimensión más larga, con la dimensión más corta escalada para preservar la relación de aspecto. El cambio de tamaño se realiza utilizando la interpolación cúbica.

Esto se puede usar para reducir el uso de memoria sin afectar las imágenes de origen, o evitar problemas con las texturas que no se muestran en plataformas móviles/web (ya que estas generalmente no pueden mostrar texturas más grandes que 4096×4096).

\ **Nota:** Incluso si esto se establece en ``0``, el tamaño de importación está limitado a las siguientes dimensiones por razones técnicas. Dependiendo de :ref:`compress/mode<class_ResourceImporterTexture_property_compress/mode>`, las texturas se reducirán al importar si es necesario:

- **Con pérdida:** 16383 píxeles de ancho o alto, el que sea mayor;

- **Basis Universal:** 16384 píxeles de ancho o alto, el que sea mayor;

- **Todos los demás modos:** 32768 píxeles de ancho o alto, el que sea mayor.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **roughness/mode** = ``0`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/mode>`

El canal de color a considerar como un mapa de rugosidad en esta textura. Solo es efectivo si :ref:`roughness/src_normal<class_ResourceImporterTexture_property_roughness/src_normal>` no está vacío.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_roughness/src_normal:

.. rst-class:: classref-property

:ref:`String<class_String>` **roughness/src_normal** = ``""`` :ref:`🔗<class_ResourceImporterTexture_property_roughness/src_normal>`

La ruta a la textura a considerar como un mapa normal para el filtrado de rugosidad en la importación. Especificar esto puede ayudar a disminuir ligeramente el aliasing especular en 3D.

El filtrado de rugosidad en la importación solo se usa en renderizado 3D, no 2D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterTexture_property_svg/scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **svg/scale** = ``1.0`` :ref:`🔗<class_ResourceImporterTexture_property_svg/scale>`

La escala a la que se debe renderizar el SVG, siendo ``1.0`` el tamaño original del diseño. Los valores más altos resultan en una imagen más grande. Ten en cuenta que, a diferencia del sobremuestreo de fuentes, esto afecta el tamaño al que se renderiza el SVG en 2D. Véase también :ref:`editor/scale_with_editor_scale<class_ResourceImporterTexture_property_editor/scale_with_editor_scale>`.

\ **Nota:** Solo disponible para imágenes SVG.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
