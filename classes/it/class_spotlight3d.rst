:github_url: hide

.. _class_SpotLight3D:

SpotLight3D
===========

**Eredita:** :ref:`Light3D<class_Light3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un faretto, come un riflettore di spettacolo o una lanterna.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Uno Spotlight è un tipo di nodo :ref:`Light3D<class_Light3D>` che emette luci in una direzione specifica, a forma di cono. La luce è attenuata in base alla distanza. È possibile configurare questa attenuazione modificando i parametri di energia, raggio e attenuazione di :ref:`Light3D<class_Light3D>`.

La luce è emessa nella direzione -Z della base globale del nodo. Per una luce non ruotata, ciò significa che la luce è emessa in avanti, illuminando il lato frontale di un modello 3D (vedi :ref:`Vector3.FORWARD<class_Vector3_constant_FORWARD>` e :ref:`Vector3.MODEL_FRONT<class_Vector3_constant_MODEL_FRONT>`).

\ **Nota:** Quando si utilizza il metodo di rendering Mobile, solo 8 faretti possono essere visualizzati su ogni risorsa mesh. Tentare di visualizzare più di 8 faretti su una singola risorsa mesh provocherà uno sfarfallio dei faretti mentre la telecamera si muove. Quando si utilizza il metodo di rendering Compatibilità, solo 8 faretti possono essere visualizzati su ogni risorsa mesh per impostazione predefinita, ma questo limite può essere aumentato regolando :ref:`ProjectSettings.rendering/limits/opengl/max_lights_per_object<class_ProjectSettings_property_rendering/limits/opengl/max_lights_per_object>`.

\ **Nota:** Quando si utilizzano i metodi di rendering Mobile o Compatibilità, i faretti influenzeranno correttamente solo le mesh il cui AABB di visibilità interseca l'AABB della luce. Se si usa uno shader per deformare la mesh in modo che esca dal suo AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` deve essere aumentato sulla mesh. Altrimenti, la luce potrebbe non essere visibile sulla mesh.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Luci e ombre 3D <../tutorials/3d/lights_and_shadows>`

- :doc:`Fingere l'illuminazione globale <../tutorials/3d/global_illumination/faking_global_illumination>`

- `Demo di sparatutto in terza persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | light_specular                                                                   | ``0.5`` (overrides :ref:`Light3D<class_Light3D_property_light_specular>`)     |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_bias                                                                      | ``0.03`` (overrides :ref:`Light3D<class_Light3D_property_shadow_bias>`)       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | shadow_normal_bias                                                               | ``1.0`` (overrides :ref:`Light3D<class_Light3D_property_shadow_normal_bias>`) |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle<class_SpotLight3D_property_spot_angle>`                         | ``45.0``                                                                      |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>` | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`             | ``1.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`spot_range<class_SpotLight3D_property_spot_range>`                         | ``5.0``                                                                       |
   +---------------------------+----------------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_SpotLight3D_property_spot_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle** = ``45.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

L'angolo del faretto in gradi. Questo è il raggio angolare, ovvero l'angolo tra l'asse Z, il centro del cono, e il bordo del cono. Il raggio angolare predefinito di 45 gradi corrisponde a un cono con un diametro angolare di 90 gradi.

\ **Nota:** :ref:`spot_angle<class_SpotLight3D_property_spot_angle>` non è influenzato da :ref:`Node3D.scale<class_Node3D_property_scale>` (la scala della luce o la scala del suo genitore).

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_angle_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_angle_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_angle_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La curva di attenuazione *angolare* del faretto. Vedi anche :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>`.

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_attenuation:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_attenuation** = ``1.0`` :ref:`🔗<class_SpotLight3D_property_spot_attenuation>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

Controlla la funzione di attenuazione della distanza per i faretti.

Un valore di ``0.0`` manterrà una luminosità costante per la maggior parte della portata, ma attenuerà gradualmente la luce al limite del portata. Utilizza un valore di ``2.0`` per luci fisicamente accurate in quanto risulta nella corretta attenuazione del quadrato inverso.

\ **Nota:** Impostare l'attenuazione su ``2.0`` o superiore può comportare che gli oggetti distanti ricevano una luce minima, anche all'interno del portata. Ad esempio, con un portata di ``4096``, un oggetto lontano di ``100`` unità è attenuato di un fattore di ``0.0001``. Con una luminosità predefinita di ``1``, la luce non sarebbe visibile a quella distanza.

\ **Nota:** Utilizzare valori negativi o superiori a ``10.0`` può portare a risultati imprevisti.

.. rst-class:: classref-item-separator

----

.. _class_SpotLight3D_property_spot_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **spot_range** = ``5.0`` :ref:`🔗<class_SpotLight3D_property_spot_range>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ )

La portata massima raggiungibile dal riflettore. Nota che l'area effettivamente illuminata potrebbe apparire più piccola a seconda del :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>` in uso. A prescindere dal :ref:`spot_attenuation<class_SpotLight3D_property_spot_attenuation>` in uso, la luce non raggiungerà mai nulla al di fuori di questa portata.

\ **Nota:** :ref:`spot_range<class_SpotLight3D_property_spot_range>` non è influenzato da :ref:`Node3D.scale<class_Node3D_property_scale>` (la scala della luce o la scala del suo genitore).

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
