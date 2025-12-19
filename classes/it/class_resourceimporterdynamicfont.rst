:github_url: hide

.. _class_ResourceImporterDynamicFont:

ResourceImporterDynamicFont
===========================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa un file di font TTF, TTC, OTF, OTC, WOFF o WOFF2 per un rendering dei font che si adatta a qualsiasi dimensione.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A differenza dei font bitmap, i font dinamici possono essere ridimensionati a qualsiasi dimensione e apparire comunque nitidi. I font dinamici supportano anche opzionalmente il rendering dei font MSDF, il quale consente di cambiare le dimensioni in fase di esecuzione senza costi di ri-rasterizzazione.

Mentre WOFF e in particolar modo WOFF2 tendono a produrre dimensioni di file più piccole, non esiste un formato di font universalmente "migliore". Nella maggior parte delle situazioni, si consiglia di utilizzare il formato di font fornito sul sito Web dello sviluppatore del font.

Vedi anche :ref:`ResourceImporterBMFont<class_ResourceImporterBMFont>` e :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Font dinamici - Utilizzo dei font <../tutorials/ui/gui_using_fonts.html#dynamic-fonts>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`                           | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`antialiasing<class_ResourceImporterDynamicFont_property_antialiasing>`                                             | ``1``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`compress<class_ResourceImporterDynamicFont_property_compress>`                                                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`disable_embedded_bitmaps<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`           | :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`                                                   | ``[]``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`                                     | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>`                                     | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>`                                                       | ``1``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`keep_rounding_remainders<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`                     | ``true``  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`                                     | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`modulate_color_glyphs<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`                           | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`                                     | ``8``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`msdf_size<class_ResourceImporterDynamicFont_property_msdf_size>`                                                   | ``48``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` | ``false`` |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`opentype_features<class_ResourceImporterDynamicFont_property_opentype_features>`                                   | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`oversampling<class_ResourceImporterDynamicFont_property_oversampling>`                                             | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`           | :ref:`preload<class_ResourceImporterDynamicFont_property_preload>`                                                       | ``[]``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`                                         | ``{}``    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>`                             | ``4``     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterDynamicFont_property_allow_system_fallback:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_system_fallback** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_allow_system_fallback>`

Se ``true``, usa automaticamente i font di sistema come riserva se non viene trovato un glifo in questo font dinamico. Questo facilita il supporto dei caratteri CJK o delle emoji, poiché non è necessario includere un font CJK/emoji nel progetto. Vedi anche :ref:`fallbacks<class_ResourceImporterDynamicFont_property_fallbacks>`.

\ **Nota:** L'aspetto dei font di sistema varia a seconda delle piattaforme. Caricare le font di sistema è supportato solo su Windows, macOS, Linux, Android e iOS.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_antialiasing:

.. rst-class:: classref-property

:ref:`int<class_int>` **antialiasing** = ``1`` :ref:`🔗<class_ResourceImporterDynamicFont_property_antialiasing>`

Il metodo di antialiasing del font da utilizzare.

\ **Disabled:** Più adatto per i font pixellati, anche se *non è necessario* modificare l'antialiasing dal valore predefinito **Grayscale** se il file del font è stato creato bene e il font è usato a un multiplo intero della sua dimensione prevista. Se i font pixellati hanno un aspetto pessimo alla loro dimensione prevista, prova invece a impostare :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` su **Disabled**.

\ **Grayscale:** Utilizza l'antialiasing in scala di grigi. Questo è l'approccio utilizzato dal sistema operativo su macOS, Android e iOS.

\ **LCD Subpixel:** Utilizza l'antialiasing con motivi subpixel per rendere i font più nitidi sui display LCD. Questo è l'approccio utilizzato dal sistema operativo su Windows e sulla maggior parte delle distribuzioni Linux. Lo svantaggio è che questo può introdurre "frange" sui bordi, specialmente su tecnologie di visualizzazione che non usano i subpixel RGB standard (come i display OLED). La disposizione dei subpixel LCD è controllata globalmente da :ref:`ProjectSettings.gui/theme/lcd_subpixel_layout<class_ProjectSettings_property_gui/theme/lcd_subpixel_layout>`, il quale consente anche di ricorrere all'antialiasing in scala di grigi.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_compress>`

Se ``true``, utilizza la compressione senza perdite per il font risultante.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disable_embedded_bitmaps** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_disable_embedded_bitmaps>`

Se impostato su ``true``, il caricamento delle bitmap dei font incorporati è disabilitato (i font solo con bitmap e i font colorati ignorano questa proprietà).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_fallbacks>`

Lista di font di riserva da usare se un glifo non viene trovato in questo font dinamico. I font all'inizio dell'array vengono tentati per primi, ma i font di riserva che non supportano la lingua e l'alfabeto del glifo vengono tentati per ultimi (vedi :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>` e :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`). Vedi anche :ref:`allow_system_fallback<class_ResourceImporterDynamicFont_property_allow_system_fallback>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_force_autohinter:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_autohinter** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_force_autohinter>`

Se ``true``, forza la generazione dei dati di hinting per il font tramite l'autohinter di `FreeType <https://freetype.org/>`__. Questo renderà :ref:`hinting<class_ResourceImporterDynamicFont_property_hinting>` efficace con i font che non includono dati di hinting.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_generate_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_mipmaps** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_generate_mipmaps>`

Se ``true``, questo font avrà mipmap generate. Ciò evita che il testo appaia granuloso quando un :ref:`Control<class_Control>` è rimpicciolito o quando un :ref:`Label3D<class_Label3D>` è visto da molto lontano (se :ref:`Label3D.texture_filter<class_Label3D_property_texture_filter>` è impostato su una modalità che visualizza le mipmap).

L'attivazione di :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` aumenta il tempo di generazione del font e l'utilizzo della memoria. Abilita questa impostazione solo se ne hai effettivamente bisogno.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_hinting:

.. rst-class:: classref-property

:ref:`int<class_int>` **hinting** = ``1`` :ref:`🔗<class_ResourceImporterDynamicFont_property_hinting>`

The hinting mode to use. This controls how aggressively glyph edges should be snapped to pixels when rasterizing the font. Depending on personal preference, you may prefer using one hinting mode over the other. Hinting modes other than **None** are only effective if the font contains hinting data (see :ref:`force_autohinter<class_ResourceImporterDynamicFont_property_force_autohinter>`).

\ **None:** Smoothest appearance, which can make the font look blurry at small sizes.

\ **Light:** Sharp result by snapping glyph edges to pixels on the Y axis only.

\ **Normal:** Sharpest by snapping glyph edges to pixels on both X and Y axes.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_keep_rounding_remainders:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_rounding_remainders** = ``true`` :ref:`🔗<class_ResourceImporterDynamicFont_property_keep_rounding_remainders>`

Se impostato su ``true``, quando si allineano i glifi ai confini dei pixel, il resto dopo l'arrotondamento viene accumulato per garantire una distribuzione più uniforme dei glifi. Questa impostazione non ha effetto se è abilitato il posizionamento subpixel.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_language_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **language_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_language_support>`

Sovrascrivi la lista delle lingue supportate da questo font. Se lasciato vuoto, questo viene fornito dai metadati del font. Di solito non c'è bisogno di cambiarlo. Vedi anche :ref:`script_support<class_ResourceImporterDynamicFont_property_script_support>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_modulate_color_glyphs:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **modulate_color_glyphs** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_modulate_color_glyphs>`

Se impostato su ``true``, la modulazione del colore è applicata quando si disegnano glifi colorati, altrimenti è applicata solo ai glifi monocromatici.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_pixel_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_pixel_range** = ``8`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_pixel_range>`

The width of the range around the shape between the minimum and maximum representable signed distance. If using font outlines, :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>` must be set to at least *twice* the size of the largest font outline. The default :ref:`msdf_pixel_range<class_ResourceImporterDynamicFont_property_msdf_pixel_range>` value of ``8`` allows outline sizes up to ``4`` to look correct.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_msdf_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **msdf_size** = ``48`` :ref:`🔗<class_ResourceImporterDynamicFont_property_msdf_size>`

Dimensione del font sorgente utilizzata per generare le texture MSDF. Valori più alti consentono una maggiore precisione, ma sono più lenti da renderizzare e richiedono più memoria. Aumenta questo valore solo se noti una notevole mancanza di precisione nel rendering dei glifi. Efficace solo se :ref:`multichannel_signed_distance_field<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>` è ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **multichannel_signed_distance_field** = ``false`` :ref:`🔗<class_ResourceImporterDynamicFont_property_multichannel_signed_distance_field>`

Se impostato su ``true``, il font predefinito utilizzerà il multichannel signed distance field (MSDF) per un rendering nitido a qualsiasi dimensione. Poiché questo approccio non si basa sulla rasterizzazione del font ogni volta che ne cambia la dimensione, ciò consente di ridimensionare il font in tempo reale senza alcuna penalità sulle prestazioni. Il testo non apparirà granuloso per i :ref:`Control<class_Control>` rimpiccioliti (o per i :ref:`Label3D<class_Label3D>` visti da molto lontano).

Il rendering di font MSDF può essere combinato con :ref:`generate_mipmaps<class_ResourceImporterDynamicFont_property_generate_mipmaps>` per migliorare ulteriormente la qualità del rendering del font quando è rimpicciolito.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_opentype_features:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **opentype_features** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_opentype_features>`

Le funzionalità OpenType da abilitare, disabilitare o impostare un valore per questo font. Questo può essere utilizzato per abilitare le funzionalità opzionali fornite dal font, come legature o glifi alternativi. La lista delle funzionalità OpenType supportate varia in base al font.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_oversampling:

.. rst-class:: classref-property

:ref:`float<class_float>` **oversampling** = ``0.0`` :ref:`🔗<class_ResourceImporterDynamicFont_property_oversampling>`

Se impostato su un valore positivo, sostituisce il fattore di sovracampionamento della viewport in cui è utilizzato questo font. Vedi :ref:`Viewport.oversampling<class_Viewport_property_oversampling>`. Questo valore non sostituisce il parametro ``oversampling`` dei metodi ``draw_*``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_preload:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **preload** = ``[]`` :ref:`🔗<class_ResourceImporterDynamicFont_property_preload>`

Gli intervalli dei glifi da renderizzare in anticipo. Questo può evitare scatti durante il gameplay quando è necessario renderizzare nuovi caratteri, specialmente se :ref:`subpixel_positioning<class_ResourceImporterDynamicFont_property_subpixel_positioning>` è abilitato. Lo svantaggio di precaricare è che i tempi di caricamento iniziali del progetto aumenteranno, così come l'utilizzo della memoria.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_script_support:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **script_support** = ``{}`` :ref:`🔗<class_ResourceImporterDynamicFont_property_script_support>`

Sovrascrive la lista degli script di lingua supportati da questo font. Se lasciato vuoto, questo viene fornito dai metadati del font. Di solito non c'è bisogno di cambiarlo. Vedi anche :ref:`language_support<class_ResourceImporterDynamicFont_property_language_support>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterDynamicFont_property_subpixel_positioning:

.. rst-class:: classref-property

:ref:`int<class_int>` **subpixel_positioning** = ``4`` :ref:`🔗<class_ResourceImporterDynamicFont_property_subpixel_positioning>`

Il posizionamento subpixel migliora l'aspetto del rendering dei font, soprattutto se di dimensioni più piccole. Lo svantaggio è che inizialmente ci vuole più tempo per renderizzare il font, il che può causare scatti durante il gioco, soprattutto se si utilizzano font di grandi dimensioni. Per i font con un aspetto da pixel art, questa opzione dovrebbe essere impostata su **Disabled**.

\ **Disabled:** Nessun posizionamento subpixel. La qualità più bassa, il rendering più veloce.

\ **Auto:** Utilizza il posizionamento subpixel per le piccole dimensioni dei font (la qualità scelta varia a seconda della dimensione del font). I font di grandi dimensioni non utilizzeranno il posizionamento subpixel. Si tratta di un buon compromesso tra prestazioni e qualità.

\ **One Half of a Pixel:** Effettua sempre un posizionamento subpixel intermedio, a prescindere dalla dimensione del font. Alta qualità, rendering lento.

\ **One Quarter of a Pixel:** Effettua sempre un posizionamento subpixel preciso, a prescindere dalla dimensione del font. La massima qualità, il rendering più lento.

\ **Auto (Except Pixel Fonts):** **Disabled** per i font in stile pixellato (ogni contorno del glifo contiene solo linee dritte orizzontali e verticali), **Auto** per gli altri font.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
