:github_url: hide

.. _class_CanvasTexture:

CanvasTexture
=============

**Eredita:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Texture con mappe normali e speculari facoltative da utilizzare nel rendering 2D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**CanvasTexture** è un'alternativa a :ref:`ImageTexture<class_ImageTexture>` per il rendering 2D. Consente di utilizzare mappe normali e mappe speculari in qualsiasi nodo che eredita da :ref:`CanvasItem<class_CanvasItem>`. **CanvasTexture** consente inoltre di sovrascrivere il filtro della texture e la modalità di ripetizione indipendentemente dalle proprietà del nodo (o dalle impostazioni del progetto).

\ **Nota:** **CanvasTexture** non può essere utilizzato in 3D. Non sarà visualizzato correttamente se applicato a qualsiasi :ref:`VisualInstance3D<class_VisualInstance3D>`, come :ref:`Sprite3D<class_Sprite3D>` o :ref:`Decal<class_Decal>`. Per materiali basati sulla fisica in 3D, utilizza invece :ref:`BaseMaterial3D<class_BaseMaterial3D>`.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Luci e ombre in 2D <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`diffuse_texture<class_CanvasTexture_property_diffuse_texture>`       |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`normal_texture<class_CanvasTexture_property_normal_texture>`         |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | resource_local_to_scene                                                    | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                           | :ref:`specular_color<class_CanvasTexture_property_specular_color>`         | ``Color(1, 1, 1, 1)``                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`specular_shininess<class_CanvasTexture_property_specular_shininess>` | ``1.0``                                                                                |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                   | :ref:`specular_texture<class_CanvasTexture_property_specular_texture>`     |                                                                                        |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureFilter<enum_CanvasItem_TextureFilter>` | :ref:`texture_filter<class_CanvasTexture_property_texture_filter>`         | ``0``                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` | :ref:`texture_repeat<class_CanvasTexture_property_texture_repeat>`         | ``0``                                                                                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CanvasTexture_property_diffuse_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **diffuse_texture** :ref:`🔗<class_CanvasTexture_property_diffuse_texture>`

.. rst-class:: classref-property-setget

- |void| **set_diffuse_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_diffuse_texture**\ (\ )

La texture diffusa (colore) da utilizzare. Questa è la texture principale che desideri impostare nella maggior parte dei casi.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_normal_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **normal_texture** :ref:`🔗<class_CanvasTexture_property_normal_texture>`

.. rst-class:: classref-property-setget

- |void| **set_normal_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_normal_texture**\ (\ )

La texture della mappa normale da usare. Ha un effetto visibile solo se :ref:`Light2D<class_Light2D>`\ s stanno influenzando questa **CanvasTexture**.

\ **Nota:** Godot si aspetta che la mappa normale utilizzi le coordinate X+, Y+ e Z+. Consulta `questa pagina <http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates>`__ per un confronto delle coordinate di mappa normale previste dai motori più diffusi.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **specular_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CanvasTexture_property_specular_color>`

.. rst-class:: classref-property-setget

- |void| **set_specular_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_specular_color**\ (\ )

Il moltiplicatore per i colori del riflesso speculare. Anche il colore dei :ref:`Light2D<class_Light2D>` è preso in considerazione quando si determina il colore del riflesso. Ha un effetto visibile solo se ci sono :ref:`Light2D<class_Light2D>` che stanno influenzando questa **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_shininess:

.. rst-class:: classref-property

:ref:`float<class_float>` **specular_shininess** = ``1.0`` :ref:`🔗<class_CanvasTexture_property_specular_shininess>`

.. rst-class:: classref-property-setget

- |void| **set_specular_shininess**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_specular_shininess**\ (\ )

L'esponente speculare per i riflessi speculari :ref:`Light2D<class_Light2D>`. Valori più alti risultano in un aspetto più lucido/"bagnato", con riflessi che diventano più localizzati e meno visibili nel complesso. Il valore predefinito di ``1.0`` disabilita totalmente i riflessi speculari. Ha un effetto visibile solo se ci sono :ref:`Light2D<class_Light2D>` che stanno influenzando questa **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_specular_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **specular_texture** :ref:`🔗<class_CanvasTexture_property_specular_texture>`

.. rst-class:: classref-property-setget

- |void| **set_specular_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_specular_texture**\ (\ )

La mappa speculare da usare per i riflessi speculari :ref:`Light2D<class_Light2D>`. Dovrebbe essere una texture in scala di grigi o colorata, con aree più luminose che risultano in un valore di :ref:`specular_shininess<class_CanvasTexture_property_specular_shininess>` più alto. L'uso di una :ref:`specular_texture<class_CanvasTexture_property_specular_texture>` colorata consente di controllare la lucentezza speculare singolarmente per canale. Ha un effetto visibile solo se ci sono :ref:`Light2D<class_Light2D>` che stanno influenzando questa **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_CanvasItem_TextureFilter>` **texture_filter** = ``0`` :ref:`🔗<class_CanvasTexture_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_CanvasItem_TextureFilter>`\ )
- :ref:`TextureFilter<enum_CanvasItem_TextureFilter>` **get_texture_filter**\ (\ )

La modalità di filtro della texture da utilizzare quando si disegna questa **CanvasTexture**.

.. rst-class:: classref-item-separator

----

.. _class_CanvasTexture_property_texture_repeat:

.. rst-class:: classref-property

:ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` **texture_repeat** = ``0`` :ref:`🔗<class_CanvasTexture_property_texture_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_texture_repeat**\ (\ value\: :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>`\ )
- :ref:`TextureRepeat<enum_CanvasItem_TextureRepeat>` **get_texture_repeat**\ (\ )

La modalità di ripetizione della texture da utilizzare quando si disegna questa **CanvasTexture**.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
