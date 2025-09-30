:github_url: hide

.. _class_GPUParticlesAttractor3D:

GPUParticlesAttractor3D
=======================

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`GPUParticlesAttractorBox3D<class_GPUParticlesAttractorBox3D>`, :ref:`GPUParticlesAttractorSphere3D<class_GPUParticlesAttractorSphere3D>`, :ref:`GPUParticlesAttractorVectorField3D<class_GPUParticlesAttractorVectorField3D>`

Classe di base astratta per attrattori di particelle 3D.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Gli attrattori di particelle possono essere usati per attrarre particelle verso l'origine dell'attrattore o per allontanarle dall'origine dell'attrattore.

Gli attrattori di particelle funzionano in tempo reale e possono essere spostati, ruotati e ridimensionati durante il gioco. A differenza delle forme di collisione, è supportato anche il ridimensionamento non uniforme degli attrattori.

Gli attrattori possono essere temporaneamente disattivati nascondendoli o impostando la loro :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` su ``0.0``.

\ **Nota:** Gli attrattori di particelle influenzano solo i :ref:`GPUParticles3D<class_GPUParticles3D>`, non i :ref:`CPUParticles3D<class_CPUParticles3D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`attenuation<class_GPUParticlesAttractor3D_property_attenuation>`       | ``1.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`     | :ref:`cull_mask<class_GPUParticlesAttractor3D_property_cull_mask>`           | ``4294967295`` |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` | ``0.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>` | :ref:`strength<class_GPUParticlesAttractor3D_property_strength>`             | ``1.0``        |
   +---------------------------+------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_GPUParticlesAttractor3D_property_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **attenuation** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_attenuation**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attenuation**\ (\ )

L'attenuazione dell'attrattore di particelle. Valori più alti risultano in una spinta più graduale delle particelle man mano che si avvicinano all'origine dell'attrattore. Valori pari a zero o negativi faranno sì che le particelle siano spinte molto velocemente non appena toccano i bordi dell'attrattore.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``4294967295`` :ref:`🔗<class_GPUParticlesAttractor3D_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Gli strati di rendering delle particelle (:ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`) che saranno influenzati dall'attrattore. Per impostazione predefinita, tutte le particelle sono influenzate da un attrattore.

Dopo aver configurato i nodi delle particelle adeguatamente, è possibile deselezionare strati specifici per impedire che determinate particelle siano interessate dagli attrattori. Ad esempio, questo può essere utilizzato se si utilizza un attrattore come parte di un effetto magico ma non si desidera che l'attrattore influenzi particelle del meteo non correlate nella stessa posizione.

L'attrazione delle particelle può anche essere disabilitata per ogni materiale di processo impostando :ref:`ParticleProcessMaterial.attractor_interaction_enabled<class_ParticleProcessMaterial_property_attractor_interaction_enabled>` sul nodo :ref:`GPUParticles3D<class_GPUParticles3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_directionality:

.. rst-class:: classref-property

:ref:`float<class_float>` **directionality** = ``0.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_directionality>`

.. rst-class:: classref-property-setget

- |void| **set_directionality**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_directionality**\ (\ )

Regola la direzionalità dell'attrattore. A ``0.0``, l'attrattore non è affatto direzionale: attrarrà le particelle verso il suo centro. A ``1.0``, l'attrattore è totalmente direzionale: le particelle saranno sempre spinte verso -Z locale (o +Z se :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` è negativo).

\ **Nota:** Se :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` è maggiore di ``0.0``, la direzione in cui sono spinte le particelle può essere modificata ruotando il nodo **GPUParticlesAttractor3D**.

.. rst-class:: classref-item-separator

----

.. _class_GPUParticlesAttractor3D_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_GPUParticlesAttractor3D_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

Regola la forza dell'attrattore. Se :ref:`strength<class_GPUParticlesAttractor3D_property_strength>` è negativo, le particelle saranno spinte nella direzione opposta. Le particelle saranno spinte *via* dall'origine dell'attrattore se :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` è ``0.0``, o verso +Z locale se :ref:`directionality<class_GPUParticlesAttractor3D_property_directionality>` è maggiore di ``0.0``.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
