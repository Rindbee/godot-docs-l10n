:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/AudioListener3D.xml.

.. _class_AudioListener3D:

AudioListener3D
===============

**Eredita:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Sostituisce la posizione da cui si sentono i suoni.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una volta aggiunto all'albero di scene e abilitato usando :ref:`make_current()<class_AudioListener3D_method_make_current>`, questo nodo sostituirà la posizione da cui si sentono i suoni. Questo può essere utilizzato per ascoltare da un luogo diverso dal :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` | :ref:`doppler_tracking<class_AudioListener3D_property_doppler_tracking>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`clear_current<class_AudioListener3D_method_clear_current>`\ (\ )                           |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Transform3D<class_Transform3D>` | :ref:`get_listener_transform<class_AudioListener3D_method_get_listener_transform>`\ (\ ) |const| |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_current<class_AudioListener3D_method_is_current>`\ (\ ) |const|                         |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`make_current<class_AudioListener3D_method_make_current>`\ (\ )                             |
   +---------------------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_AudioListener3D_DopplerTracking:

.. rst-class:: classref-enumeration

enum **DopplerTracking**: :ref:`🔗<enum_AudioListener3D_DopplerTracking>`

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_DISABLED** = ``0``

Disabilita la simulazione dell'`effetto Doppler <https://it.wikipedia.org/wiki/Effetto_Doppler>`__ (impostazione predefinita).

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_IDLE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_IDLE_STEP** = ``1``

Simulate `Doppler effect <https://en.wikipedia.org/wiki/Doppler_effect>`__ by tracking positions of objects that are changed in ``_process``. Changes in the relative velocity of this listener compared to those objects affect how audio is perceived (changing the audio's :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`).

.. _class_AudioListener3D_constant_DOPPLER_TRACKING_PHYSICS_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **DOPPLER_TRACKING_PHYSICS_STEP** = ``2``

Simulate `Doppler effect <https://en.wikipedia.org/wiki/Doppler_effect>`__ by tracking positions of objects that are changed in ``_physics_process``. Changes in the relative velocity of this listener compared to those objects affect how audio is perceived (changing the audio's :ref:`AudioStreamPlayer3D.pitch_scale<class_AudioStreamPlayer3D_property_pitch_scale>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_AudioListener3D_property_doppler_tracking:

.. rst-class:: classref-property

:ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **doppler_tracking** = ``0`` :ref:`🔗<class_AudioListener3D_property_doppler_tracking>`

.. rst-class:: classref-property-setget

- |void| **set_doppler_tracking**\ (\ value\: :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>`\ )
- :ref:`DopplerTracking<enum_AudioListener3D_DopplerTracking>` **get_doppler_tracking**\ (\ )

If not :ref:`DOPPLER_TRACKING_DISABLED<class_AudioListener3D_constant_DOPPLER_TRACKING_DISABLED>`, this listener will simulate the `Doppler effect <https://en.wikipedia.org/wiki/Doppler_effect>`__ for objects changed in particular ``_process`` methods.

\ **Note:** The Doppler effect will only be heard on :ref:`AudioStreamPlayer3D<class_AudioStreamPlayer3D>`\ s if :ref:`AudioStreamPlayer3D.doppler_tracking<class_AudioStreamPlayer3D_property_doppler_tracking>` is not set to :ref:`AudioStreamPlayer3D.DOPPLER_TRACKING_DISABLED<class_AudioStreamPlayer3D_constant_DOPPLER_TRACKING_DISABLED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_AudioListener3D_method_clear_current:

.. rst-class:: classref-method

|void| **clear_current**\ (\ ) :ref:`🔗<class_AudioListener3D_method_clear_current>`

Disattiva l'ascoltatore per usare invece l'ascoltatore della telecamera attuale.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_get_listener_transform:

.. rst-class:: classref-method

:ref:`Transform3D<class_Transform3D>` **get_listener_transform**\ (\ ) |const| :ref:`🔗<class_AudioListener3D_method_get_listener_transform>`

Restituisce il :ref:`Transform3D<class_Transform3D>` ortonormalizzato globale dell'ascoltatore.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_AudioListener3D_method_is_current>`

Restituisce ``true`` se l'ascoltatore è stato reso attuale usando :ref:`make_current()<class_AudioListener3D_method_make_current>`, altrimenti ``false``.

\ **Nota:** Ci può essere più di un AudioListener3D contrassegnato come "attuale" nell'albero di scene, ma verrà utilizzato solo quello che è stato reso attuale per ultimo.

.. rst-class:: classref-item-separator

----

.. _class_AudioListener3D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_AudioListener3D_method_make_current>`

Attiva l'ascoltatore. Questo sostituirà l'ascoltatore della telecamera attuale.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
