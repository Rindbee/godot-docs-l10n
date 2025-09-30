:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/Label3D.xml.

.. _class_Label3D:

Label3D
=======

**Eredita:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo per visualizzare testo semplice nello spazio 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un nodo per visualizzare testo semplice nello spazio 3D. Regolando varie proprietà di questo nodo, puoi configurare cose come l'aspetto del testo e se è sempre rivolto verso la telecamera.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Testo 3D <../tutorials/3d/3d_text>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`alpha_antialiasing_edge<class_Label3D_property_alpha_antialiasing_edge>`                             | ``0.0``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`           | :ref:`alpha_antialiasing_mode<class_Label3D_property_alpha_antialiasing_mode>`                             | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>`                            | :ref:`alpha_cut<class_Label3D_property_alpha_cut>`                                                         | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`alpha_hash_scale<class_Label3D_property_alpha_hash_scale>`                                           | ``1.0``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`alpha_scissor_threshold<class_Label3D_property_alpha_scissor_threshold>`                             | ``0.5``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`                         | :ref:`autowrap_mode<class_Label3D_property_autowrap_mode>`                                                 | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]         | :ref:`autowrap_trim_flags<class_Label3D_property_autowrap_trim_flags>`                                     | ``192``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`                   | :ref:`billboard<class_Label3D_property_billboard>`                                                         | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` | cast_shadow                                                                                                | ``0`` (overrides :ref:`GeometryInstance3D<class_GeometryInstance3D_property_cast_shadow>`) |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`double_sided<class_Label3D_property_double_sided>`                                                   | ``true``                                                                                   |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`fixed_size<class_Label3D_property_fixed_size>`                                                       | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Font<class_Font>`                                                   | :ref:`font<class_Label3D_property_font>`                                                                   |                                                                                            |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`font_size<class_Label3D_property_font_size>`                                                         | ``32``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`GIMode<enum_GeometryInstance3D_GIMode>`                             | gi_mode                                                                                                    | ``0`` (overrides :ref:`GeometryInstance3D<class_GeometryInstance3D_property_gi_mode>`)     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`horizontal_alignment<class_Label3D_property_horizontal_alignment>`                                   | ``1``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_Label3D_property_justification_flags>`                                     | ``163``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                               | :ref:`language<class_Label3D_property_language>`                                                           | ``""``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_Label3D_property_line_spacing>`                                                   | ``0.0``                                                                                    |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                                                 | :ref:`modulate<class_Label3D_property_modulate>`                                                           | ``Color(1, 1, 1, 1)``                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`no_depth_test<class_Label3D_property_no_depth_test>`                                                 | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                             | :ref:`offset<class_Label3D_property_offset>`                                                               | ``Vector2(0, 0)``                                                                          |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                                                 | :ref:`outline_modulate<class_Label3D_property_outline_modulate>`                                           | ``Color(0, 0, 0, 1)``                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`outline_render_priority<class_Label3D_property_outline_render_priority>`                             | ``-1``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`outline_size<class_Label3D_property_outline_size>`                                                   | ``12``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`pixel_size<class_Label3D_property_pixel_size>`                                                       | ``0.005``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                     | :ref:`render_priority<class_Label3D_property_render_priority>`                                             | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`shaded<class_Label3D_property_shaded>`                                                               | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`         | :ref:`structured_text_bidi_override<class_Label3D_property_structured_text_bidi_override>`                 | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                                 | :ref:`structured_text_bidi_override_options<class_Label3D_property_structured_text_bidi_override_options>` | ``[]``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                                               | :ref:`text<class_Label3D_property_text>`                                                                   | ``""``                                                                                     |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`text_direction<class_Label3D_property_text_direction>`                                               | ``0``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`                   | :ref:`texture_filter<class_Label3D_property_texture_filter>`                                               | ``3``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                   | :ref:`uppercase<class_Label3D_property_uppercase>`                                                         | ``false``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`             | :ref:`vertical_alignment<class_Label3D_property_vertical_alignment>`                                       | ``1``                                                                                      |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_Label3D_property_width>`                                                                 | ``500.0``                                                                                  |
   +---------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>` | :ref:`generate_triangle_mesh<class_Label3D_method_generate_triangle_mesh>`\ (\ ) |const|                                                           |
   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                 | :ref:`get_draw_flag<class_Label3D_method_get_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|                            |
   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_draw_flag<class_Label3D_method_set_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_Label3D_DrawFlags:

.. rst-class:: classref-enumeration

enum **DrawFlags**: :ref:`🔗<enum_Label3D_DrawFlags>`

.. _class_Label3D_constant_FLAG_SHADED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_SHADED** = ``0``

Se impostato, le luci nell'ambiente influiscono sull'etichetta.

.. _class_Label3D_constant_FLAG_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_DOUBLE_SIDED** = ``1``

Se impostato, il testo può essere visto anche dal retro. Altrimenti, il testo è invisibile guardandolo da dietro.

.. _class_Label3D_constant_FLAG_DISABLE_DEPTH_TEST:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_DISABLE_DEPTH_TEST** = ``2``

Disattiva il test di profondità, quindi questo oggetto viene disegnato sopra tutti gli altri. Tuttavia, gli oggetti disegnati dopo di esso nell'ordine di disegno potrebbero coprirlo.

.. _class_Label3D_constant_FLAG_FIXED_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_FIXED_SIZE** = ``3``

L'etichetta è ridimensionata in base alla profondità in modo che appaia sempre delle stesse dimensioni sullo schermo.

.. _class_Label3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_Label3D_DrawFlags>` **FLAG_MAX** = ``4``

Rappresenta la dimensione dell'enumerazione :ref:`DrawFlags<enum_Label3D_DrawFlags>`.

.. rst-class:: classref-item-separator

----

.. _enum_Label3D_AlphaCutMode:

.. rst-class:: classref-enumeration

enum **AlphaCutMode**: :ref:`🔗<enum_Label3D_AlphaCutMode>`

.. _class_Label3D_constant_ALPHA_CUT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_DISABLED** = ``0``

Questa modalità esegue la fusione alfa standard. Può visualizzare aree traslucide, ma potrebbero essere visibili problemi di ordinamento della trasparenza quando più materiali trasparenti si sovrappongono. :ref:`GeometryInstance3D.cast_shadow<class_GeometryInstance3D_property_cast_shadow>` non ha effetto quando si usa questa modalità di trasparenza; Il **Label3D** non proietterà mai ombre.

.. _class_Label3D_constant_ALPHA_CUT_DISCARD:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_DISCARD** = ``1``

Questa modalità consente solo pixel completamente trasparenti o completamente opachi. Saranno visibili bordi netti a meno che non sia abilitata una qualche forma di antialiasing di spazio dello schermo (vedi :ref:`ProjectSettings.rendering/anti_aliasing/quality/screen_space_aa<class_ProjectSettings_property_rendering/anti_aliasing/quality/screen_space_aa>`). Questa modalità è anche nota come *alpha testing* o *trasparenza a 1 bit*.

\ **Nota:** Questa modalità potrebbe causare problemi con font e contorni con antialiasing, provare a regolare :ref:`alpha_scissor_threshold<class_Label3D_property_alpha_scissor_threshold>` o utilizzare un font MSDF.

\ **Nota:** Quando si utilizza testo con glifi sovrapposti (ad esempio, corsivi), questa modalità potrebbe causare problemi di ordinamento della trasparenza tra il testo principale e il contorno.

.. _class_Label3D_constant_ALPHA_CUT_OPAQUE_PREPASS:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_OPAQUE_PREPASS** = ``2``

Questa modalità disegna pixel completamente opachi nel pre-passaggio di profondità. È più lenta di :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>` o :ref:`ALPHA_CUT_DISCARD<class_Label3D_constant_ALPHA_CUT_DISCARD>`, ma consente di visualizzare aree traslucide e bordi lisci usando un ordinamento corretto.

\ **Nota:** Quando si utilizza testo con glifi sovrapposti (ad esempio, corsivi), questa modalità potrebbe causare problemi di ordinamento della trasparenza tra il testo principale e il contorno.

.. _class_Label3D_constant_ALPHA_CUT_HASH:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **ALPHA_CUT_HASH** = ``3``

Questa modalità taglia tutti i valori al di sotto di una soglia spazialmente deterministica, il resto rimarrà opaco.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_Label3D_property_alpha_antialiasing_edge:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_antialiasing_edge** = ``0.0`` :ref:`🔗<class_Label3D_property_alpha_antialiasing_edge>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing_edge**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_antialiasing_edge**\ (\ )

Soglia alla quale sarà applicato l'antialiasing sul canale alfa.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_antialiasing_mode:

.. rst-class:: classref-property

:ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **alpha_antialiasing_mode** = ``0`` :ref:`🔗<class_Label3D_property_alpha_antialiasing_mode>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing**\ (\ value\: :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`\ )
- :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **get_alpha_antialiasing**\ (\ )

Il tipo di antialiasing dell'alfa da applicare.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_cut:

.. rst-class:: classref-property

:ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **alpha_cut** = ``0`` :ref:`🔗<class_Label3D_property_alpha_cut>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_cut_mode**\ (\ value\: :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>`\ )
- :ref:`AlphaCutMode<enum_Label3D_AlphaCutMode>` **get_alpha_cut_mode**\ (\ )

La modalità di ritaglio alfa da utilizzare per lo sprite.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_hash_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_hash_scale** = ``1.0`` :ref:`🔗<class_Label3D_property_alpha_hash_scale>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_hash_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_hash_scale**\ (\ )

La scala di hashing per l'Alpha Hash. Valori consigliati tra ``0`` e ``2``.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_alpha_scissor_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_scissor_threshold** = ``0.5`` :ref:`🔗<class_Label3D_property_alpha_scissor_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_scissor_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_scissor_threshold**\ (\ )

Soglia oltre la quale l'alpha scissor scarterà i valori.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_autowrap_mode:

.. rst-class:: classref-property

:ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **autowrap_mode** = ``0`` :ref:`🔗<class_Label3D_property_autowrap_mode>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_mode**\ (\ value\: :ref:`AutowrapMode<enum_TextServer_AutowrapMode>`\ )
- :ref:`AutowrapMode<enum_TextServer_AutowrapMode>` **get_autowrap_mode**\ (\ )

Se impostato su un valore diverso da :ref:`TextServer.AUTOWRAP_OFF<class_TextServer_constant_AUTOWRAP_OFF>`, il testo è avvolto all'interno del rettangolo di delimitazione del nodo. Se ridimensioni il nodo, cambierà automaticamente la sua altezza per mostrare tutto il testo.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_autowrap_trim_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **autowrap_trim_flags** = ``192`` :ref:`🔗<class_Label3D_property_autowrap_trim_flags>`

.. rst-class:: classref-property-setget

- |void| **set_autowrap_trim_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_autowrap_trim_flags**\ (\ )

Autowrap space trimming flags. See :ref:`TextServer.BREAK_TRIM_START_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_START_EDGE_SPACES>` and :ref:`TextServer.BREAK_TRIM_END_EDGE_SPACES<class_TextServer_constant_BREAK_TRIM_END_EDGE_SPACES>` for more info.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_billboard:

.. rst-class:: classref-property

:ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **billboard** = ``0`` :ref:`🔗<class_Label3D_property_billboard>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_mode**\ (\ value\: :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`\ )
- :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **get_billboard_mode**\ (\ )

La modalità di billboard da usare per l'etichetta.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_double_sided:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_sided** = ``true`` :ref:`🔗<class_Label3D_property_double_sided>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

Se ``true``, il testo è visibile anche da dietro, se ``false``, è invisibile guardandolo da dietro.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_fixed_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fixed_size** = ``false`` :ref:`🔗<class_Label3D_property_fixed_size>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

If ``true``, the label is rendered at the same size regardless of distance. The label's size on screen is the same as if the camera was ``1.0`` units away from the label's origin, regardless of the actual distance from the camera. The :ref:`Camera3D<class_Camera3D>`'s field of view (or :ref:`Camera3D.size<class_Camera3D_property_size>` when in orthogonal/frustum mode) still affects the size the label is drawn at.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_font:

.. rst-class:: classref-property

:ref:`Font<class_Font>` **font** :ref:`🔗<class_Label3D_property_font>`

.. rst-class:: classref-property-setget

- |void| **set_font**\ (\ value\: :ref:`Font<class_Font>`\ )
- :ref:`Font<class_Font>` **get_font**\ (\ )

Configurazione del font utilizzata per visualizzare il testo.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_font_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **font_size** = ``32`` :ref:`🔗<class_Label3D_property_font_size>`

.. rst-class:: classref-property-setget

- |void| **set_font_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_font_size**\ (\ )

Dimensione del font del testo del **Label3D**. Per rendere il carattere più dettagliato da vicino, aumenta :ref:`font_size<class_Label3D_property_font_size>` e diminuisci :ref:`pixel_size<class_Label3D_property_pixel_size>` allo stesso tempo.

Dimensioni del font più elevate richiedono più tempo per renderizzare i nuovi caratteri, il che può causare scatti durante il gioco.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_horizontal_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **horizontal_alignment** = ``1`` :ref:`🔗<class_Label3D_property_horizontal_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_horizontal_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_horizontal_alignment**\ (\ )

Controlla l'allineamento orizzontale del testo. Supporta sinistra, centro, destra, e riempi (noto anche come giustifica).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_Label3D_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Line fill alignment rules.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_language:

.. rst-class:: classref-property

:ref:`String<class_String>` **language** = ``""`` :ref:`🔗<class_Label3D_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_language**\ (\ )

Codice della lingua usato per gli algoritmi di interruzione di riga e di formazione del testo, se lasciato vuoto è invece utilizzata la localizzazione attuale.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_Label3D_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Spaziatura verticale aggiuntiva tra le righe (in pixel), la spaziatura è aggiunta alla discesa della riga. Questo valore può essere negativo.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Label3D_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Il :ref:`Color<class_Color>` del testo di **Label3D**.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_no_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **no_depth_test** = ``false`` :ref:`🔗<class_Label3D_property_no_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

Se ``true``, il test di profondità è disabilitato e l'oggetto sarà disegnato in ordine di rendering.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Label3D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Lo scostamento del disegno del testo (in pixel).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **outline_modulate** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_Label3D_property_outline_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_outline_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_outline_modulate**\ (\ )

La tinta del contorno del testo.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_render_priority** = ``-1`` :ref:`🔗<class_Label3D_property_outline_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_outline_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_render_priority**\ (\ )

Imposta la priorità di rendering per il contorno del testo. Gli oggetti con priorità più alta saranno ordinati davanti agli oggetti con priorità più bassa.

\ **Nota:** Questo si applica solo se :ref:`alpha_cut<class_Label3D_property_alpha_cut>` è impostato su :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>` (valore predefinito).

\ **Nota:** Questo si applica solo all'ordinamento degli oggetti trasparenti. Non avrà alcun impatto sul modo in cui gli oggetti trasparenti sono ordinati rispetto agli oggetti opachi. Questo perché gli oggetti opachi non sono ordinati, mentre gli oggetti trasparenti sono ordinati da dietro in avanti (in base a priorità).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_outline_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **outline_size** = ``12`` :ref:`🔗<class_Label3D_property_outline_size>`

.. rst-class:: classref-property-setget

- |void| **set_outline_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_outline_size**\ (\ )

La dimensione del contorno del testo.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.005`` :ref:`🔗<class_Label3D_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

La dimensione della larghezza di un pixel sull'etichetta per ridimensionarla in 3D. Per far apparire il font più dettagliato da vicino, aumenta :ref:`font_size<class_Label3D_property_font_size>` e diminuisci :ref:`pixel_size<class_Label3D_property_pixel_size>` allo stesso tempo.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** = ``0`` :ref:`🔗<class_Label3D_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Imposta la priorità di rendering per il testo. Gli oggetti con priorità più alta saranno ordinati prima degli oggetti con priorità più bassa.

\ **Nota:** Questo si applica solo se :ref:`alpha_cut<class_Label3D_property_alpha_cut>` è impostato su :ref:`ALPHA_CUT_DISABLED<class_Label3D_constant_ALPHA_CUT_DISABLED>` (valore predefinito).

\ **Nota:** Questo si applica solo all'ordinamento degli oggetti trasparenti. Non avrà alcun impatto sul modo in cui gli oggetti trasparenti sono ordinati rispetto agli oggetti opachi. Questo perché gli oggetti opachi non sono ordinati, mentre gli oggetti trasparenti sono ordinati da dietro in avanti (in base alla priorità).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_shaded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shaded** = ``false`` :ref:`🔗<class_Label3D_property_shaded>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const|

Se ``true``, la :ref:`Light3D<class_Light3D>` nell':ref:`Environment<class_Environment>` ha effetti sull'etichetta.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_structured_text_bidi_override:

.. rst-class:: classref-property

:ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **structured_text_bidi_override** = ``0`` :ref:`🔗<class_Label3D_property_structured_text_bidi_override>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override**\ (\ value\: :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>`\ )
- :ref:`StructuredTextParser<enum_TextServer_StructuredTextParser>` **get_structured_text_bidi_override**\ (\ )

Imposta la sostituzione dell'algoritmo BiDi per il testo strutturato.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_structured_text_bidi_override_options:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **structured_text_bidi_override_options** = ``[]`` :ref:`🔗<class_Label3D_property_structured_text_bidi_override_options>`

.. rst-class:: classref-property-setget

- |void| **set_structured_text_bidi_override_options**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_structured_text_bidi_override_options**\ (\ )

Imposta opzioni aggiuntive per la sostituzione BiDi.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_text:

.. rst-class:: classref-property

:ref:`String<class_String>` **text** = ``""`` :ref:`🔗<class_Label3D_property_text>`

.. rst-class:: classref-property-setget

- |void| **set_text**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_text**\ (\ )

Il testo da visualizzare sullo schermo.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_text_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **text_direction** = ``0`` :ref:`🔗<class_Label3D_property_text_direction>`

.. rst-class:: classref-property-setget

- |void| **set_text_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_text_direction**\ (\ )

Direzione di scrittura del testo di base.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **texture_filter** = ``3`` :ref:`🔗<class_Label3D_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`\ )
- :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **get_texture_filter**\ (\ )

Flag di filtro per la texture.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_uppercase:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **uppercase** = ``false`` :ref:`🔗<class_Label3D_property_uppercase>`

.. rst-class:: classref-property-setget

- |void| **set_uppercase**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_uppercase**\ (\ )

Se ``true``, tutto il testo è visualizzato in MAIUSCOLO.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_vertical_alignment:

.. rst-class:: classref-property

:ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **vertical_alignment** = ``1`` :ref:`🔗<class_Label3D_property_vertical_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_vertical_alignment**\ (\ value\: :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>`\ )
- :ref:`VerticalAlignment<enum_@GlobalScope_VerticalAlignment>` **get_vertical_alignment**\ (\ )

Controlla l'allineamento verticale del testo. Supporta sopra, centro, sotto.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``500.0`` :ref:`🔗<class_Label3D_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Larghezza del testo (in pixel), utilizzata per l'allineamento automatico e di riempimento.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_Label3D_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_Label3D_method_generate_triangle_mesh>`

Restituisce un :ref:`TriangleMesh<class_TriangleMesh>` con i vertici dell'etichetta che seguono la sua configurazione attuale (ad esempio il suo :ref:`pixel_size<class_Label3D_property_pixel_size>`).

.. rst-class:: classref-item-separator

----

.. _class_Label3D_method_get_draw_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`\ ) |const| :ref:`🔗<class_Label3D_method_get_draw_flag>`

Restituisce il valore del flag specificato.

.. rst-class:: classref-item-separator

----

.. _class_Label3D_method_set_draw_flag:

.. rst-class:: classref-method

|void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_Label3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_Label3D_method_set_draw_flag>`

Se ``true``, il ``flag`` specificato verrà abilitato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
