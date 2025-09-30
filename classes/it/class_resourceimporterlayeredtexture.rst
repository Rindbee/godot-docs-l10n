:github_url: hide

.. _class_ResourceImporterLayeredTexture:

ResourceImporterLayeredTexture
==============================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa una texture tridimensionale (:ref:`Texture3D<class_Texture3D>`), una :ref:`Texture2DArray<class_Texture2DArray>`, una :ref:`Cubemap<class_Cubemap>` o una :ref:`CubemapArray<class_CubemapArray>`.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Questo importa una texture tridimensionale, che può poi essere utilizzata negli shader personalizzati, come mappa di densità :ref:`FogMaterial<class_FogMaterial>` o come :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`. Vedi anche :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` e :ref:`ResourceImporterTextureAtlas<class_ResourceImporterTextureAtlas>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Importare immagini <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

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

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterLayeredTexture_property_compress/channel_pack:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/channel_pack** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/channel_pack>`

Controlla come bisogna utilizzare i canali colore nella texture importata.

\ **sRGB Friendly:**, impedisce l'uso del formato colore RG, poiché non supporta il colore sRGB.

\ **Optimized:**, consente l'uso del formato colore RG se la texture non utilizza il canale blu. Ciò riduce l'utilizzo della memoria se il canale blu della texture può essere scartato (tutti i pixel devono avere un valore blu pari a ``0``).

\ **Normal Map (RG Channels):** Ciò forza l'importazione di tutti i livelli della texture con il formato colore RG, mantenendo solo i canali rosso e verde. La compressione RGTC (Red-Green Texture Compression) è in grado di preservare i dettagli molto meglio, utilizzando la stessa quantità di memoria di una texture RGBA standard compressa per la VRAM. Ciò ha effetto solo sulle texture con le modalità di compressione VRAM Compressed o Basis Universal. Questa modalità è disponibile solo nelle texture multilivello (:ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>` e :ref:`Texture3D<class_Texture3D>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/hdr_compression:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/hdr_compression** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`

Controlla come bisogna comprimere in VRAM le immagini HDR.

\ **Disabled:** Non usare mai la compressione in VRAM per le texture HDR, a prescindere che siano opache o trasparenti. Invece, la texture viene convertita in RGBE9995 (9 bit per canale, più esponente a 5 bit, per un totale di 32 bit per pixel) per ridurre l'utilizzo della memoria rispetto a un formato immagine in virgola mobile dimezzato o a precisione singola.

\ **Opaque Only:** Usa la compressione in VRAM solo per le texture HDR opache. Ciò è dovuto a una limitazione dei formati HDR, poiché non esiste un formato HDR compresso in VRAM che supporti la trasparenza allo stesso tempo.

\ **Always:** Forza la compressione in VRAM anche per le texture HDR con un canale alfa. Per eseguire questa operazione, il canale alfa viene scartato durante l'importazione.

\ **Nota:** Efficace solo su immagini Radiance HDR (``.hdr``) e OpenEXR (``.exr``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/high_quality:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress/high_quality** = ``false`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/high_quality>`

Se ``true``, utilizza la compressione BPTC sulle piattaforme desktop e la compressione ASTC sulle piattaforme mobili. Quando si utilizza BPTC, BC7 è utilizzato per le texture SDR e BC6H per le texture HDR.

Se ``false``, utilizza la compressione S3TC sulle piattaforme desktop e ETC2 sulle piattaforme mobili/web, la quale è più veloce ma di qualità inferiore. Quando si utilizza il S3TC, DXT1 (BC1) è utilizzato per le texture opache e DXT5 (BC3) è utilizzato per le texture trasparenti o a mappa normale (RGTC).

BPTC e ASTC supportano la compressione in VRAM per le texture HDR, ma S3TC ed ETC2 no (vedi :ref:`compress/hdr_compression<class_ResourceImporterLayeredTexture_property_compress/hdr_compression>`).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/lossy_quality:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/lossy_quality** = ``0.7`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/lossy_quality>`

La qualità da usare quando si usa la modalità di compressione **Lossy** (con perdita). Valori più alti risultano in una migliore qualità, a costo di file di dimensioni maggiori. La qualità lossy non influisce sull'utilizzo della memoria della texture importata, ma solo sulle dimensioni del file su disco.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/mode** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/mode>`

La modalità di compressione da utilizzare. Ogni modalità di compressione offre un diverso compromesso:

\ **Lossless**: Qualità originale, elevato utilizzo di memoria, elevata dimensione su disco, importazione rapida.

\ **Lossy:** Qualità ridotta, elevato utilizzo di memoria, ridotta dimensione su disco, importazione rapida.

\ **VRAM Compressed:** Qualità ridotta, basso utilizzo di memoria, ridotta dimensione su disco, importazione più lenta. Utilizzare solo per le texture nelle scene 3D, non per gli elementi 2D.

\ **VRAM Uncompressed:** Qualità originale, elevato utilizzo di memoria, massima dimensione su disco, importazione più rapida.

\ **Basis Universal:** Qualità ridotta, basso utilizzo di memoria, minima dimensione su disco, importazione lenta. Utilizzare solo per le texture nelle scene 3D, non per gli elementi 2D.

Vedi `Modalità di compressione <../tutorials/assets_pipeline/importing_images.html#compress-mode>`__ nel manuale per ulteriori dettagli.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss:

.. rst-class:: classref-property

:ref:`float<class_float>` **compress/rdo_quality_loss** = ``0.0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/rdo_quality_loss>`

If greater than or equal to ``0.01``, enables Rate-Distortion Optimization (RDO) to reduce file size. Higher values result in smaller file sizes but lower quality.

\ **Note:** Enabling RDO makes encoding times significantly longer, especially when the image is large.

See also :ref:`ProjectSettings.rendering/textures/basis_universal/rdo_dict_size<class_ProjectSettings_property_rendering/textures/basis_universal/rdo_dict_size>` and :ref:`ProjectSettings.rendering/textures/basis_universal/zstd_supercompression_level<class_ProjectSettings_property_rendering/textures/basis_universal/zstd_supercompression_level>` if you want to reduce the file size further.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_compress/uastc_level:

.. rst-class:: classref-property

:ref:`int<class_int>` **compress/uastc_level** = ``0`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_compress/uastc_level>`

The UASTC encoding level. Higher values result in better quality but make encoding times longer.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/generate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mipmaps/generate** = ``true`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/generate>`

Se ``true``, vengono generate versioni più piccole della texture durante l'importazione. Ad esempio, una texture 64×64 genererà 6 mipmap (32×32, 16×16, 8×8, 4×4, 2×2, 1×1). Ciò presenta diversi vantaggi:

- Le texture non diventeranno granulose in lontananza (in 3D) o se rimpicciolite a causa dello zoom di un :ref:`Camera2D<class_Camera2D>` o della scala di un :ref:`CanvasItem<class_CanvasItem>` (in 2D).

- Le prestazioni miglioreranno se la texture è visualizzata in lontananza, poiché il campionamento di versioni più piccole della texture originale è più veloce e richiede meno larghezza di banda di memoria.

Lo svantaggio delle mipmap è che aumentano l'utilizzo della memoria di circa il 33% (per :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` e :ref:`CubemapArray<class_CubemapArray>`) o del 14% (per :ref:`Texture3D<class_Texture3D>`).

Si consiglia di abilitare le mipmap in 3D. Tuttavia, in 2D, questa opzione dovrebbe essere abilitata solo se il tuo progetto ne usufruisce visivamente. Se la telecamera non diminuisce mai lo zoom notevolmente, non ci sarà alcun vantaggio nell'abilitare mipmap, ma l'utilizzo della memoria aumenterà comunque.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_mipmaps/limit:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps/limit** = ``-1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_mipmaps/limit>`

Non implementato. Al momento non ha alcun effetto quando viene modificato.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterLayeredTexture_property_slices/arrangement:

.. rst-class:: classref-property

:ref:`int<class_int>` **slices/arrangement** = ``1`` :ref:`🔗<class_ResourceImporterLayeredTexture_property_slices/arrangement>`

Controlla come la texture della cubemap è disposta internamente. Quando si usano cubemap ad alta risoluzione, **2×3** e **3×2** sono meno soggetti a superare i limiti di dimensioni della texture dell'hardware rispetto a **1×6** e **6×1**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
