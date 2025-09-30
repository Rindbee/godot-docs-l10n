:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/OmniLight3D.xml.

.. _class_OmniLight3D:

OmniLight3D
===========

**Eredita:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una luce omnidirezionale, come quella di una lampadina o di una candela.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una luce omnidirezionale è un tipo di :ref:`Light3D<class_Light3D>` che emette luce in tutte le direzioni. La luce è attenuata dalla distanza e questa attenuazione può essere configurata modificando i suoi parametri di energia, raggio e attenuazione.

\ **Nota:** Quando si utilizza il metodo di rendering Mobile, solo 8 luci omni possono essere visualizzate su ogni risorsa mesh. Tentare di visualizzare più di 8 luci omni su una singola risorsa mesh provocherà uno sfarfallio delle luci omni mentre la telecamera si muove. Quando si utilizza il metodo di rendering Compatibilità, solo 8 luci omni possono essere visualizzate su ogni risorsa mesh per impostazione predefinita, ma questo limite può essere aumentato regolando :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>`.

\ **Nota:** Quando si utilizzano i metodi di rendering Mobile o Compatibilità, le luci omni influenzeranno correttamente solo le mesh il cui AABB di visibilità interseca l'AABB della luce. Se si usa uno shader per deformare la mesh in modo che esca dal suo AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` deve essere aumentato sulla mesh. Altrimenti, la luce potrebbe non essere visibile sulla mesh.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Luci e ombre 3D <../tutorials/3d/lights_and_shadows>`

- :doc:`Fingere l'illuminazione globale <../tutorials/3d/global_illumination/faking_global_illumination>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | light_specular                                                       | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` | ``1.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | :ref:`omni_range<class_OmniLight3D_property_omni_range>`             | ``5.0``                                                                       |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` | :ref:`omni_shadow_mode<class_OmniLight3D_property_omni_shadow_mode>` | ``1``                                                                         |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                      | shadow_normal_bias                                                   | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +------------------------------------------------+----------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumerazioni
------------------------

.. _enum_OmniLight3D_ShadowMode:

.. rst-class:: classref-enumeration

enum **ShadowMode**: :ref:`🔗<enum_OmniLight3D_ShadowMode>`

.. _class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_DUAL_PARABOLOID** = ``0``

Le ombre sono renderizzate con una texture a doppio paraboloide. Più veloce di :ref:`SHADOW_CUBE<class_OmniLight3D_constant_SHADOW_CUBE>`, ma di qualità inferiore.

.. _class_OmniLight3D_constant_SHADOW_CUBE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **SHADOW_CUBE** = ``1``

Le ombre sono renderizzate in una cubemap. Più lento di :ref:`SHADOW_DUAL_PARABOLOID<class_OmniLight3D_constant_SHADOW_DUAL_PARABOLOID>`, ma di qualità superiore.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OmniLight3D_property_omni_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_attenuation** = ``1.0`` :ref:`🔗<class_OmniLight3D_property_omni_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Controlla la funzione di attenuazione della distanza per la luce omnidirezionale.

Un valore di ``0.0`` manterrà una luminosità costante per la maggior parte della portata, ma attenuerà gradualmente la luce al limite del portata. Utilizza un valore di ``2.0`` per luci fisicamente accurate in quanto risulta nella corretta attenuazione del quadrato inverso.

\ **Nota:** Impostare l'attenuazione su ``2.0`` o superiore può comportare che gli oggetti distanti ricevano una luce minima, anche all'interno del portata. Ad esempio, con un portata di ``4096``, un oggetto lontano di ``100`` unità è attenuato di un fattore di ``0.0001``. Con una luminosità predefinita di ``1``, la luce non sarebbe visibile a quella distanza.

\ **Nota:** Utilizzare valori negativi o superiori a ``10.0`` può portare a risultati imprevisti.

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **omni_range** = ``5.0`` :ref:`🔗<class_OmniLight3D_property_omni_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Il raggio della luce. Nota che l'area effettivamente illuminata potrebbe apparire più piccola a seconda del :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` in uso. A prescindere dal :ref:`omni_attenuation<class_OmniLight3D_property_omni_attenuation>` in uso, la luce non raggiungerà mai nulla al di fuori di questo raggio.

\ **Nota:** :ref:`omni_range<class_OmniLight3D_property_omni_range>` non è influenzato da :ref:`Node3D.scale<class_Node3D_property_scale>` (la scala della luce o la scala del suo genitore).

.. rst-class:: classref-item-separator

----

.. _class_OmniLight3D_property_omni_shadow_mode:

.. rst-class:: classref-property

:ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **omni_shadow_mode** = ``1`` :ref:`🔗<class_OmniLight3D_property_omni_shadow_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_mode**\ (\ value\: :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>`\ )
- :ref:`ShadowMode<enum_OmniLight3D_ShadowMode>` **get_shadow_mode**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
