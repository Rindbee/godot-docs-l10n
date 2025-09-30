:github_url: hide

.. _class_RenderSceneBuffers:

RenderSceneBuffers
==================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`RenderSceneBuffersExtension<class_RenderSceneBuffersExtension>`, :ref:`RenderSceneBuffersRD<class_RenderSceneBuffersRD>`

Oggetto astratto dei buffer di scena, creato per ogni viewport per cui viene eseguito il rendering 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Oggetto astratto dei buffer di scena, creato per ogni viewport per cui viene eseguito il rendering 3D. Gestisce tutti i buffer aggiuntivi utilizzati durante il rendering e scarterà i buffer quando la viewport viene ridimensionata.

\ **Nota:** Questo è un oggetto interno nel server di rendering, non istanziarlo da script.

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`configure<class_RenderSceneBuffers_method_configure>`\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_RenderSceneBuffers_method_configure:

.. rst-class:: classref-method

|void| **configure**\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) :ref:`🔗<class_RenderSceneBuffers_method_configure>`

This method is called by the rendering server when the associated viewport's configuration is changed. It will discard the old buffers and recreate the internal buffers used.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
