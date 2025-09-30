:github_url: hide

.. _class_ResourceImporterSVG:

ResourceImporterSVG
===================

**Eredita:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Imports an SVG file as an automatically scalable texture for use in UI elements and 2D rendering.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

This importer imports :ref:`DPITexture<class_DPITexture>` resources. See also :ref:`ResourceImporterTexture<class_ResourceImporterTexture>` and :ref:`ResourceImporterImage<class_ResourceImporterImage>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`           | :ref:`base_scale<class_ResourceImporterSVG_property_base_scale>` | ``1.0``  |
   +-------------------------------------+------------------------------------------------------------------+----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`color_map<class_ResourceImporterSVG_property_color_map>`   | ``{}``   |
   +-------------------------------------+------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`             | :ref:`compress<class_ResourceImporterSVG_property_compress>`     | ``true`` |
   +-------------------------------------+------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`           | :ref:`saturation<class_ResourceImporterSVG_property_saturation>` | ``1.0``  |
   +-------------------------------------+------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_ResourceImporterSVG_property_base_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **base_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_base_scale>`

Texture scale. ``1.0`` is the original SVG size. Higher values result in a larger image.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_color_map:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **color_map** = ``{}`` :ref:`🔗<class_ResourceImporterSVG_property_color_map>`

If set, remaps texture colors according to :ref:`Color<class_Color>`-:ref:`Color<class_Color>` map.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterSVG_property_compress>`

Se ``true``, utilizza la compressione senza perdita di dati per la sorgente SVG.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterSVG_property_saturation:

.. rst-class:: classref-property

:ref:`float<class_float>` **saturation** = ``1.0`` :ref:`🔗<class_ResourceImporterSVG_property_saturation>`

Sostituisce la saturazione della texture.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
