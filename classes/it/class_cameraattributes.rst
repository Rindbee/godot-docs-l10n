:github_url: hide

.. _class_CameraAttributes:

CameraAttributes
================

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Ereditato da:** :ref:`CameraAttributesPhysical<class_CameraAttributesPhysical>`, :ref:`CameraAttributesPractical<class_CameraAttributesPractical>`

Classe genitore per le impostazioni della telecamera.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Controlla gli attributi specifici della telecamera, come la profondità di campo e la sostituzione dell'esposizione.

Quando è utilizzato in un :ref:`WorldEnvironment<class_WorldEnvironment>`, fornisce impostazioni predefinite per l'esposizione, l'esposizione automatica e la profondità di campo che saranno utilizzate da tutte le telecamere senza i propri **CameraAttributes**, inclusa la telecamera dell'editor. Quando è utilizzato in un :ref:`Camera3D<class_Camera3D>`, sostituirà qualsiasi **CameraAttributes** impostato nel :ref:`WorldEnvironment<class_WorldEnvironment>`. Quando è utilizzato in :ref:`VoxelGI<class_VoxelGI>` o :ref:`LightmapGI<class_LightmapGI>`, solo le impostazioni di esposizione saranno utilizzate.

Vedi anche :ref:`Environment<class_Environment>` per le impostazioni generali dell'ambiente 3D.

Questa è una classe puramente virtuale ereditata da :ref:`CameraAttributesPhysical<class_CameraAttributesPhysical>` e :ref:`CameraAttributesPractical<class_CameraAttributesPractical>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`auto_exposure_enabled<class_CameraAttributes_property_auto_exposure_enabled>` | ``false`` |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_scale<class_CameraAttributes_property_auto_exposure_scale>`     | ``0.4``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`auto_exposure_speed<class_CameraAttributes_property_auto_exposure_speed>`     | ``0.5``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`exposure_multiplier<class_CameraAttributes_property_exposure_multiplier>`     | ``1.0``   |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`exposure_sensitivity<class_CameraAttributes_property_exposure_sensitivity>`   | ``100.0`` |
   +---------------------------+-------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CameraAttributes_property_auto_exposure_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **auto_exposure_enabled** = ``false`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_auto_exposure_enabled**\ (\ )

Se ``true``, abilita la modalità di esposizione automatica con mappatura dei toni del renderer di scene. Se ``true``, il renderer determinerà automaticamente il valore dell'esposizione per adattarsi all'illuminazione della scena e alla luce osservata.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_auto_exposure_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_scale** = ``0.4`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_scale>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_scale**\ (\ )

La scala dell'effetto dell'esposizione automatica. Influisce sull'intensità dell'esposizione automatica.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_auto_exposure_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **auto_exposure_speed** = ``0.5`` :ref:`🔗<class_CameraAttributes_property_auto_exposure_speed>`

.. rst-class:: classref-property-setget

- |void| **set_auto_exposure_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_auto_exposure_speed**\ (\ )

La velocità dell'effetto dell'esposizione automatica. Influisce sul tempo necessario alla telecamera per eseguire l'esposizione automatica.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_exposure_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_multiplier** = ``1.0`` :ref:`🔗<class_CameraAttributes_property_exposure_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_exposure_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_exposure_multiplier**\ (\ )

Moltiplicatore per la quantità di esposizione. Un valore più alto produce un'immagine più luminosa.

.. rst-class:: classref-item-separator

----

.. _class_CameraAttributes_property_exposure_sensitivity:

.. rst-class:: classref-property

:ref:`float<class_float>` **exposure_sensitivity** = ``100.0`` :ref:`🔗<class_CameraAttributes_property_exposure_sensitivity>`

.. rst-class:: classref-property-setget

- |void| **set_exposure_sensitivity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_exposure_sensitivity**\ (\ )

Sensibilità dei sensori della telecamera, misurata in ISO. Una sensibilità più elevata produce un'immagine più luminosa.

Se :ref:`auto_exposure_enabled<class_CameraAttributes_property_auto_exposure_enabled>` è ``true``, questo può essere utilizzato come modo di compensazione dell'esposizione, raddoppiando il valore si aumenterà il valore dell'esposizione (misurato in EV100) di 1 stop.

\ **Nota:** Disponibile solo quando :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` è abilitato.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
