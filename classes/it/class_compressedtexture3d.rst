:github_url: hide

.. _class_CompressedTexture3D:

CompressedTexture3D
===================

**Eredita:** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Texture a 3 dimensioni, facoltativamente compressa.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

**CompressedTexture3D** è la controparte compressa in VRAM di :ref:`ImageTexture3D<class_ImageTexture3D>`. L'estensione dei file per le **CompressedTexture3D** è ``.ctex3d``. Questo formato file è interno a Godot; viene creato importando altri formati immagine con il sistema di importazione.

\ **CompressedTexture3D** utilizza la compressione VRAM, che consente di ridurre l'utilizzo di memoria sulla GPU durante il rendering della texture. Ciò migliora anche i tempi di caricamento, poiché le texture compresse in VRAM sono più veloci da caricare rispetto alle texture che utilizzano la compressione lossless. La compressione VRAM può presentare artefatti evidenti ed è progettata per il rendering 3D, non 2D.

Vedi :ref:`Texture3D<class_Texture3D>` per una descrizione generale delle texture 3D.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`load_path<class_CompressedTexture3D_property_load_path>` | ``""`` |
   +-----------------------------+----------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_CompressedTexture3D_method_load>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CompressedTexture3D_property_load_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **load_path** = ``""`` :ref:`🔗<class_CompressedTexture3D_property_load_path>`

.. rst-class:: classref-property-setget

- :ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_load_path**\ (\ )

Percorso del file **CompressedTexture3D** con estensione ``.ctex3d``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_CompressedTexture3D_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CompressedTexture3D_method_load>`

Carica la texture dal percorso ``path`` specificato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
