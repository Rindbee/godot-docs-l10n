:github_url: hide

.. _class_ColorPicker:

ColorPicker
===========

**Eredita:** :ref:`VBoxContainer<class_VBoxContainer>` **<** :ref:`BoxContainer<class_BoxContainer>` **<** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un widget che fornisce un'interfaccia per selezionare o modificare un colore.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un widget che fornisce un'interfaccia per selezionare o modificare un colore. Può opzionalmente fornire funzionalità come un campionatore di colori (contagocce), modalità colore e preimpostazioni.

\ **Nota:** Questo controllo è il widget di selezione colore stesso. È possibile usare un :ref:`ColorPickerButton<class_ColorPickerButton>` al suo posto se è necessario un pulsante che faccia apparire un **ColorPicker** in un popup.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- `Demo di interpolazione Tween <https://godotengine.org/asset-library/asset/2733>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`can_add_swatches<class_ColorPicker_property_can_add_swatches>`       | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                | :ref:`color<class_ColorPicker_property_color>`                             | ``Color(1, 1, 1, 1)`` |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`ColorModeType<enum_ColorPicker_ColorModeType>`     | :ref:`color_mode<class_ColorPicker_property_color_mode>`                   | ``0``                 |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`color_modes_visible<class_ColorPicker_property_color_modes_visible>` | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`deferred_mode<class_ColorPicker_property_deferred_mode>`             | ``false``             |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`edit_alpha<class_ColorPicker_property_edit_alpha>`                   | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`edit_intensity<class_ColorPicker_property_edit_intensity>`           | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`hex_visible<class_ColorPicker_property_hex_visible>`                 | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` | :ref:`picker_shape<class_ColorPicker_property_picker_shape>`               | ``0``                 |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`presets_visible<class_ColorPicker_property_presets_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`sampler_visible<class_ColorPicker_property_sampler_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                  | :ref:`sliders_visible<class_ColorPicker_property_sliders_visible>`         | ``true``              |
   +----------------------------------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_preset<class_ColorPicker_method_add_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )                   |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`add_recent_preset<class_ColorPicker_method_add_recent_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )     |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`erase_preset<class_ColorPicker_method_erase_preset>`\ (\ color\: :ref:`Color<class_Color>`\ )               |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`erase_recent_preset<class_ColorPicker_method_erase_recent_preset>`\ (\ color\: :ref:`Color<class_Color>`\ ) |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`get_presets<class_ColorPicker_method_get_presets>`\ (\ ) |const|                                            |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`get_recent_presets<class_ColorPicker_method_get_recent_presets>`\ (\ ) |const|                              |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Proprietà del tema
------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Color<class_Color>`         | :ref:`focused_not_editing_cursor_color<class_ColorPicker_theme_color_focused_not_editing_cursor_color>` | ``Color(1, 1, 1, 0.275)`` |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`center_slider_grabbers<class_ColorPicker_theme_constant_center_slider_grabbers>`                  | ``1``                     |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`h_width<class_ColorPicker_theme_constant_h_width>`                                                | ``30``                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`label_width<class_ColorPicker_theme_constant_label_width>`                                        | ``10``                    |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`margin<class_ColorPicker_theme_constant_margin>`                                                  | ``4``                     |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`sv_height<class_ColorPicker_theme_constant_sv_height>`                                            | ``256``                   |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`int<class_int>`             | :ref:`sv_width<class_ColorPicker_theme_constant_sv_width>`                                              | ``256``                   |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`add_preset<class_ColorPicker_theme_icon_add_preset>`                                              |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`bar_arrow<class_ColorPicker_theme_icon_bar_arrow>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_hue<class_ColorPicker_theme_icon_color_hue>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`color_script<class_ColorPicker_theme_icon_color_script>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`expanded_arrow<class_ColorPicker_theme_icon_expanded_arrow>`                                      |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`folded_arrow<class_ColorPicker_theme_icon_folded_arrow>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`menu_option<class_ColorPicker_theme_icon_menu_option>`                                            |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`overbright_indicator<class_ColorPicker_theme_icon_overbright_indicator>`                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`picker_cursor<class_ColorPicker_theme_icon_picker_cursor>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`picker_cursor_bg<class_ColorPicker_theme_icon_picker_cursor_bg>`                                  |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sample_bg<class_ColorPicker_theme_icon_sample_bg>`                                                |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`sample_revert<class_ColorPicker_theme_icon_sample_revert>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`screen_picker<class_ColorPicker_theme_icon_screen_picker>`                                        |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_circle<class_ColorPicker_theme_icon_shape_circle>`                                          |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_rect<class_ColorPicker_theme_icon_shape_rect>`                                              |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`shape_rect_wheel<class_ColorPicker_theme_icon_shape_rect_wheel>`                                  |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`picker_focus_circle<class_ColorPicker_theme_style_picker_focus_circle>`                           |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`picker_focus_rectangle<class_ColorPicker_theme_style_picker_focus_rectangle>`                     |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+
   | :ref:`StyleBox<class_StyleBox>`   | :ref:`sample_focus<class_ColorPicker_theme_style_sample_focus>`                                         |                           |
   +-----------------------------------+---------------------------------------------------------------------------------------------------------+---------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_ColorPicker_signal_color_changed:

.. rst-class:: classref-signal

**color_changed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_color_changed>`

Emesso quando il colore cambia.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_signal_preset_added:

.. rst-class:: classref-signal

**preset_added**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_preset_added>`

Emesso quando una preimpostazione viene aggiunta.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_signal_preset_removed:

.. rst-class:: classref-signal

**preset_removed**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_signal_preset_removed>`

Emesso quando una preimpostazione viene rimossa.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_ColorPicker_ColorModeType:

.. rst-class:: classref-enumeration

enum **ColorModeType**: :ref:`🔗<enum_ColorPicker_ColorModeType>`

.. _class_ColorPicker_constant_MODE_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_RGB** = ``0``

Consente di modificare il colore con gli slider del rosso, verde e blu nello spazio colore sRGB.

.. _class_ColorPicker_constant_MODE_HSV:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_HSV** = ``1``

Consente di modificare il colore con i cursori della tonalità , saturazione e valore.

.. _class_ColorPicker_constant_MODE_RAW:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_RAW** = ``2``

**Deprecato:** This is replaced by :ref:`MODE_LINEAR<class_ColorPicker_constant_MODE_LINEAR>`.



.. _class_ColorPicker_constant_MODE_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_LINEAR** = ``2``

Consente di modificare il colore con gli slider del rosso, verde e blu nello spazio colore lineare.

.. _class_ColorPicker_constant_MODE_OKHSL:

.. rst-class:: classref-enumeration-constant

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **MODE_OKHSL** = ``3``

Consente di modificare il colore con gli slider del tonalità, saturazione e valore.

OKHSL è un nuovo spazio colore simile a HSL ma che si adatta meglio alla percezione sfruttando lo spazio colore Oklab che è progettato per essere semplice da usare, facendo un buon lavoro nel prevedere la luminosità, la crominanza e la tonalità percepite.

\ `Spazi colore Okhsv e Okhsl <https://bottosson.github.io/posts/colorpicker/>`__

.. rst-class:: classref-item-separator

----

.. _enum_ColorPicker_PickerShapeType:

.. rst-class:: classref-enumeration

enum **PickerShapeType**: :ref:`🔗<enum_ColorPicker_PickerShapeType>`

.. _class_ColorPicker_constant_SHAPE_HSV_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_HSV_RECTANGLE** = ``0``

Spazio colore rettangolare del modello di colore HSV.

.. _class_ColorPicker_constant_SHAPE_HSV_WHEEL:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_HSV_WHEEL** = ``1``

Spazio colore rettangolare del modello di colore HSV con una ruota.

.. _class_ColorPicker_constant_SHAPE_VHS_CIRCLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_VHS_CIRCLE** = ``2``

Spazio colore circolare del modello di colore HSV. Usa la saturazione come raggio.

.. _class_ColorPicker_constant_SHAPE_OKHSL_CIRCLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OKHSL_CIRCLE** = ``3``

Spazio colore circolare del modello di colore HSL OK.

.. _class_ColorPicker_constant_SHAPE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_NONE** = ``4``

La forma dello spazio colore e il pulsante di selezione della forma sono nascosti. Non possono essere selezionati dal popup delle forme.

.. _class_ColorPicker_constant_SHAPE_OK_HS_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OK_HS_RECTANGLE** = ``5``

Modello di colore OKHSL rettangolare con luminosità costante.

.. _class_ColorPicker_constant_SHAPE_OK_HL_RECTANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **SHAPE_OK_HL_RECTANGLE** = ``6``

Modello di colore OKHSL rettangolare con saturazione costante.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ColorPicker_property_can_add_swatches:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **can_add_swatches** = ``true`` :ref:`🔗<class_ColorPicker_property_can_add_swatches>`

.. rst-class:: classref-property-setget

- |void| **set_can_add_swatches**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_swatches_enabled**\ (\ )

Se ``true``, è possibile aggiungere preset in Campioni. Se ``false``, il pulsante per aggiungere preset è disabilitato.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_ColorPicker_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_pick_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_pick_color**\ (\ )

Il colore attualmente selezionato.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color_mode:

.. rst-class:: classref-property

:ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **color_mode** = ``0`` :ref:`🔗<class_ColorPicker_property_color_mode>`

.. rst-class:: classref-property-setget

- |void| **set_color_mode**\ (\ value\: :ref:`ColorModeType<enum_ColorPicker_ColorModeType>`\ )
- :ref:`ColorModeType<enum_ColorPicker_ColorModeType>` **get_color_mode**\ (\ )

La modalità di colore attualmente selezionata.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_color_modes_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **color_modes_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_color_modes_visible>`

.. rst-class:: classref-property-setget

- |void| **set_modes_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_modes_visible**\ (\ )

Se ``true``, i pulsanti della modalità colore sono visibili.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_deferred_mode:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **deferred_mode** = ``false`` :ref:`🔗<class_ColorPicker_property_deferred_mode>`

.. rst-class:: classref-property-setget

- |void| **set_deferred_mode**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_deferred_mode**\ (\ )

Se ``true``, il colore sarà applicato solo dopo che l'utente rilascia il pulsante del mouse, altrimenti sarà applicato immediatamente anche in caso di movimento del mouse (il che può causare problemi di prestazioni).

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_edit_alpha:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_alpha** = ``true`` :ref:`🔗<class_ColorPicker_property_edit_alpha>`

.. rst-class:: classref-property-setget

- |void| **set_edit_alpha**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_alpha**\ (\ )

Se ``true``, mostra uno slider per il canale alfa (opacità).

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_edit_intensity:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **edit_intensity** = ``true`` :ref:`🔗<class_ColorPicker_property_edit_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_edit_intensity**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editing_intensity**\ (\ )

Se ``true``, mostra un cursore di intensità. L'intensità è applicata come segue: moltiplica il colore per ``2 ** intensità`` nello spazio RGB lineare, quindi lo converte nuovamente in sRGB.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_hex_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **hex_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_hex_visible>`

.. rst-class:: classref-property-setget

- |void| **set_hex_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_hex_visible**\ (\ )

Se ``true``, il campo di input del codice colore esadecimale è visibile.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_picker_shape:

.. rst-class:: classref-property

:ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **picker_shape** = ``0`` :ref:`🔗<class_ColorPicker_property_picker_shape>`

.. rst-class:: classref-property-setget

- |void| **set_picker_shape**\ (\ value\: :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>`\ )
- :ref:`PickerShapeType<enum_ColorPicker_PickerShapeType>` **get_picker_shape**\ (\ )

La forma della vista dello spazio colore.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_presets_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **presets_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_presets_visible>`

.. rst-class:: classref-property-setget

- |void| **set_presets_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_presets_visible**\ (\ )

Se ``true``, le preimpostazioni dei Campioni e dei Colori recenti sono visibili.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_sampler_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sampler_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_sampler_visible>`

.. rst-class:: classref-property-setget

- |void| **set_sampler_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sampler_visible**\ (\ )

Se ``true``, il campionatore e l'anteprima del colore sono visibili.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_property_sliders_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sliders_visible** = ``true`` :ref:`🔗<class_ColorPicker_property_sliders_visible>`

.. rst-class:: classref-property-setget

- |void| **set_sliders_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_sliders_visible**\ (\ )

Se ``true``, gli slider del colore sono visibili.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_ColorPicker_method_add_preset:

.. rst-class:: classref-method

|void| **add_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_add_preset>`

Aggiunge il colore specificato a una lista di preimpostazioni di colore. Le preimpostazioni sono visualizzate nel selettore colore e l'utente potrà selezionarli.

\ **Nota:** La lista delle preimpostazioni è solo per *questo* selettore colore.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_add_recent_preset:

.. rst-class:: classref-method

|void| **add_recent_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_add_recent_preset>`

Aggiunge il colore specificato a una lista di preset di colore recenti affinché possa essere scelto in seguito. I preset recenti sono i colori scelti di recente, un nuovo preset è creato automaticamente e aggiunto ai preset recenti quando selezioni un nuovo colore.

\ **Nota:** La lista dei preset recenti è solo per *questo* selettore di colori.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_erase_preset:

.. rst-class:: classref-method

|void| **erase_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_erase_preset>`

Rimuove il colore specificato dalla lista dei colori predefiniti di questo selettore di colori.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_erase_recent_preset:

.. rst-class:: classref-method

|void| **erase_recent_preset**\ (\ color\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_ColorPicker_method_erase_recent_preset>`

Rimuove il colore specificato dalla lista dei colori preimpostati di recente di questo selettore di colori.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_get_presets:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **get_presets**\ (\ ) |const| :ref:`🔗<class_ColorPicker_method_get_presets>`

Restituisce la lista dei colori nei preset del selettore di colori.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_method_get_recent_presets:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **get_recent_presets**\ (\ ) |const| :ref:`🔗<class_ColorPicker_method_get_recent_presets>`

Restituisce la lista dei colori presenti nei preset recenti del selettore di colori.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà del tema
------------------------------------------------------------------------

.. _class_ColorPicker_theme_color_focused_not_editing_cursor_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **focused_not_editing_cursor_color** = ``Color(1, 1, 1, 0.275)`` :ref:`🔗<class_ColorPicker_theme_color_focused_not_editing_cursor_color>`

Colore del rettangolo o del cerchio disegnato quando una parte della forma del selettore è evidenziata ma non modificabile tramite tastiera o joypad. È visualizzato *sopra* la forma del selettore, quindi è consigliabile utilizzare un colore parzialmente trasparente per garantire che la forma del selettore rimanga visibile.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_center_slider_grabbers:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **center_slider_grabbers** = ``1`` :ref:`🔗<class_ColorPicker_theme_constant_center_slider_grabbers>`

Sostituisce la proprietà del tema :ref:`Slider.center_grabber<class_Slider_theme_constant_center_grabber>` degli slider.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_h_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_width** = ``30`` :ref:`🔗<class_ColorPicker_theme_constant_h_width>`

Larghezza dello slider di selezione della tonalità.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_label_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **label_width** = ``10`` :ref:`🔗<class_ColorPicker_theme_constant_label_width>`

Larghezza minima delle etichette di colore accanto agli slider.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_margin:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin** = ``4`` :ref:`🔗<class_ColorPicker_theme_constant_margin>`

Il margine attorno al **ColorPicker**.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_sv_height:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **sv_height** = ``256`` :ref:`🔗<class_ColorPicker_theme_constant_sv_height>`

Altezza del riquadro di selezione del valore di saturazione.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_constant_sv_width:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **sv_width** = ``256`` :ref:`🔗<class_ColorPicker_theme_constant_sv_width>`

Larghezza del riquadro di selezione del valore di saturazione.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_add_preset:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **add_preset** :ref:`🔗<class_ColorPicker_theme_icon_add_preset>`

L'icona per il pulsante "Aggiungi preset".

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_bar_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **bar_arrow** :ref:`🔗<class_ColorPicker_theme_icon_bar_arrow>`

La texture per il grabber a freccia.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_hue:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_hue** :ref:`🔗<class_ColorPicker_theme_icon_color_hue>`

Texture personalizzata per lo slider di selezione della tonalità sulla destra.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_color_script:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **color_script** :ref:`🔗<class_ColorPicker_theme_icon_color_script>`

L'icona per il pulsante che cambia il colore da testo a esadecimale.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_expanded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **expanded_arrow** :ref:`🔗<class_ColorPicker_theme_icon_expanded_arrow>`

L'icona per il menu a tendina dei preset di colori quando è espanso.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_folded_arrow:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **folded_arrow** :ref:`🔗<class_ColorPicker_theme_icon_folded_arrow>`

L'icona per il menu a tendina dei preset di colori quando è chiuso.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_menu_option:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **menu_option** :ref:`🔗<class_ColorPicker_theme_icon_menu_option>`

L'icona per il menu a tendina dei preset di colori.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_overbright_indicator:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **overbright_indicator** :ref:`🔗<class_ColorPicker_theme_icon_overbright_indicator>`

Indicatore utilizzato per segnalare che il valore del colore è al di fuori dell'intervallo 0-1.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_picker_cursor:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **picker_cursor** :ref:`🔗<class_ColorPicker_theme_icon_picker_cursor>`

L'immagine visualizzata sopra il riquadro o cerchio dei colori (a seconda di :ref:`picker_shape<class_ColorPicker_property_picker_shape>`), che contrassegna il colore attualmente selezionato.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_picker_cursor_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **picker_cursor_bg** :ref:`🔗<class_ColorPicker_theme_icon_picker_cursor_bg>`

L'immagine di riempimento visualizzata dietro il cursore del selettore.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_sample_bg:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sample_bg** :ref:`🔗<class_ColorPicker_theme_icon_sample_bg>`

Pannello di sfondo per il riquadro di anteprima del colore (visibile quando il colore è traslucido).

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_sample_revert:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **sample_revert** :ref:`🔗<class_ColorPicker_theme_icon_sample_revert>`

L'icona per il pulsante di ripristino (visibile al centro del colore "vecchio" quando è diverso dal colore attualmente selezionato). Questa icona è modulata con un colore scuro se il colore "vecchio" è abbastanza luminoso, quindi l'icona dovrebbe essere chiara per garantire la visibilità in entrambi gli scenari.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_screen_picker:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **screen_picker** :ref:`🔗<class_ColorPicker_theme_icon_screen_picker>`

L'icona per il pulsante di preleva colore dallo schermo.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_circle:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_circle** :ref:`🔗<class_ColorPicker_theme_icon_shape_circle>`

L'icona per le forme circolari del selettore.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_rect:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_rect** :ref:`🔗<class_ColorPicker_theme_icon_shape_rect>`

L'icona per le forme rettangolari del selettore.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_icon_shape_rect_wheel:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **shape_rect_wheel** :ref:`🔗<class_ColorPicker_theme_icon_shape_rect_wheel>`

L'icona per le forme rettangolari della ruota di selezione.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_picker_focus_circle:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **picker_focus_circle** :ref:`🔗<class_ColorPicker_theme_style_picker_focus_circle>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando la parte circolare del selettore è evidenziata. È visualizzato *sopra* la forma del selettore, quindi è necessario utilizzare uno :ref:`StyleBox<class_StyleBox>` parzialmente trasparente per garantire che la forma del selettore rimanga visibile. Uno :ref:`StyleBox<class_StyleBox>` che rappresenta un contorno o una sottolineatura funziona bene per questo scopo. Per disabilitare l'effetto visivo del focus, assegna una risorsa :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Tieni presente che disattivare l'effetto visivo di focus ridurrà l'usabilità della navigazione tramite tastiera o controller, perciò non è consigliato per motivi di accessibilità.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_picker_focus_rectangle:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **picker_focus_rectangle** :ref:`🔗<class_ColorPicker_theme_style_picker_focus_rectangle>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato quando la parte rettangolare del selettore è evidenziata. È visualizzato *sopra* la forma del selettore, quindi è necessario utilizzare uno :ref:`StyleBox<class_StyleBox>` parzialmente trasparente per garantire che la forma del selettore rimanga visibile. Uno :ref:`StyleBox<class_StyleBox>` che rappresenta un contorno o una sottolineatura funziona bene per questo scopo. Per disabilitare l'effetto visivo del focus, assegna una risorsa :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Tieni presente che disattivare l'effetto visivo di focus ridurrà l'usabilità della navigazione tramite tastiera o controller, perciò non è consigliato per motivi di accessibilità.

.. rst-class:: classref-item-separator

----

.. _class_ColorPicker_theme_style_sample_focus:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **sample_focus** :ref:`🔗<class_ColorPicker_theme_style_sample_focus>`

Lo :ref:`StyleBox<class_StyleBox>` utilizzato per la parte del campione del colore precedente quando è evidenziato. È visualizzato *sopra* il campione, quindi è necessario utilizzare uno :ref:`StyleBox<class_StyleBox>` parzialmente trasparente per garantire che la forma del selettore rimanga visibile. Uno :ref:`StyleBox<class_StyleBox>` che rappresenta un contorno o una sottolineatura funziona bene per questo scopo. Per disabilitare l'effetto visivo del focus, assegna una risorsa :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`. Tieni presente che disattivare l'effetto visivo di focus ridurrà l'usabilità della navigazione tramite tastiera o controller, perciò non è consigliato per motivi di accessibilità.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
