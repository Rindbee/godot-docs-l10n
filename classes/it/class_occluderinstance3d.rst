:github_url: hide

.. _class_OccluderInstance3D:

OccluderInstance3D
==================

**Eredita:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Fornisce l'occlusion culling per i nodi 3D, migliorando le prestazioni in aree chiuse.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Occlusion culling can improve rendering performance in closed/semi-open areas by hiding geometry that is occluded by other objects.

The occlusion culling system is mostly static. **OccluderInstance3D**\ s can be moved or hidden at run-time, but doing so will trigger a background recomputation that can take several frames. It is recommended to only move **OccluderInstance3D**\ s sporadically (e.g. for procedural generation purposes), rather than doing so every frame.

The occlusion culling system works by rendering the occluders on the CPU in parallel using `Embree <https://www.embree.org/>`__, drawing the result to a low-resolution buffer then using this to cull 3D nodes individually. In the 3D editor, you can preview the occlusion culling buffer by choosing **Perspective > Display Advanced... > Occlusion Culling Buffer** in the top-left corner of the 3D viewport. The occlusion culling buffer quality can be adjusted in the Project Settings.

\ **Baking:** Select an **OccluderInstance3D** node, then use the **Bake Occluders** button at the top of the 3D editor. Only opaque materials will be taken into account; transparent materials (alpha-blended or alpha-tested) will be ignored by the occluder generation.

\ **Note:** Occlusion culling is only effective if :ref:`ProjectSettings.rendering/occlusion_culling/use_occlusion_culling<class_ProjectSettings_property_rendering/occlusion_culling/use_occlusion_culling>` is ``true``. Enabling occlusion culling has a cost on the CPU. Only enable occlusion culling if you actually plan to use it. Large open scenes with few or no objects blocking the view will generally not benefit much from occlusion culling. Large open scenes generally benefit more from mesh LOD and visibility ranges (:ref:`GeometryInstance3D.visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` and :ref:`GeometryInstance3D.visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`) compared to occlusion culling.

\ **Note:** Due to memory constraints, occlusion culling is not supported by default in Web export templates. It can be enabled by compiling custom Web export templates with ``module_raycast_enabled=yes``.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Occlusion culling <../tutorials/3d/occlusion_culling>`

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`int<class_int>`               | :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`                                       | ``4294967295`` |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`float<class_float>`           | :ref:`bake_simplification_distance<class_OccluderInstance3D_property_bake_simplification_distance>` | ``0.1``        |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+
   | :ref:`Occluder3D<class_Occluder3D>` | :ref:`occluder<class_OccluderInstance3D_property_occluder>`                                         |                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------+----------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`get_bake_mask_value<class_OccluderInstance3D_method_get_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`set_bake_mask_value<class_OccluderInstance3D_method_set_bake_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_OccluderInstance3D_property_bake_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **bake_mask** = ``4294967295`` :ref:`🔗<class_OccluderInstance3D_property_bake_mask>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bake_mask**\ (\ )

Gli strati visivi da considerare durante la preparazione per gli occlusori. Solo i :ref:`MeshInstance3D<class_MeshInstance3D>` i cui :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` corrispondono a questa :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` saranno inclusi nella mesh occlusore generata. Per impostazione predefinita, tutti gli oggetti con materiali *opachi* sono considerati per la preparazione degli occlusori.

Per migliorare le prestazioni ed evitare artefatti, si consiglia di escludere gli oggetti dinamici o piccoli dal processo di preparazione spostandoli su uno strato visivo separato ed escludendo tale strato nella :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_bake_simplification_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **bake_simplification_distance** = ``0.1`` :ref:`🔗<class_OccluderInstance3D_property_bake_simplification_distance>`

.. rst-class:: classref-property-setget

- |void| **set_bake_simplification_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bake_simplification_distance**\ (\ )

La distanza di semplificazione da utilizzare per semplificare il poligono occlusore generato (in unità 3D). Valori più elevati generano una mesh occlusore meno dettagliata, il che migliora le prestazioni ma riduce la precisione del culling.

La geometria dell'occlusore viene renderizzata dalla CPU, quindi è importante mantenerla il più semplice possibile. Poiché il buffer viene renderizzato a bassa risoluzione, le mesh occlusore meno dettagliate generalmente funzionano comunque bene. Il valore predefinito è piuttosto aggressivo, quindi potrebbe essere necessario diminuirlo in caso di falsi negativi (oggetti occlusi anche se visibili dalla telecamera). Un valore di ``0.01`` agirà in modo conservativo e manterrà la geometria *percettivamente* inalterata nel buffer dell'occlusion culling. A seconda della scena, un valore di ``0.01`` potrebbe comunque semplificare notevolmente la mesh rispetto a disattivare completamente la semplificazione.

Impostando questo valore su ``0.0`` la semplificazione viene completamente disabilitata, ma i vertici nella stessa posizione verranno comunque uniti. La mesh verrà inoltre reindicizzata per ridurre sia il numero di vertici sia di indici.

\ **Nota:** Questo metodo utilizza la libreria `meshoptimizer <https://meshoptimizer.org/>`__, in modo simile alla generazione del LOD.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_property_occluder:

.. rst-class:: classref-property

:ref:`Occluder3D<class_Occluder3D>` **occluder** :ref:`🔗<class_OccluderInstance3D_property_occluder>`

.. rst-class:: classref-property-setget

- |void| **set_occluder**\ (\ value\: :ref:`Occluder3D<class_Occluder3D>`\ )
- :ref:`Occluder3D<class_Occluder3D>` **get_occluder**\ (\ )

La risorsa occlusore per questo **OccluderInstance3D**. È possibile generare una risorsa occlusore selezionando un nodo **OccluderInstance3D** e quindi premendo il pulsante **Precalcola occlusori** nella parte superiore dell'editor.

È anche possibile disegnare il proprio poligono occlusore 2D aggiungendo una nuova risorsa :ref:`PolygonOccluder3D<class_PolygonOccluder3D>` alla proprietà :ref:`occluder<class_OccluderInstance3D_property_occluder>` nell'Ispettore.

In alternativa, è possibile selezionare un occlusore primitivo da usare: :ref:`QuadOccluder3D<class_QuadOccluder3D>`, :ref:`BoxOccluder3D<class_BoxOccluder3D>` o :ref:`SphereOccluder3D<class_SphereOccluder3D>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_OccluderInstance3D_method_get_bake_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OccluderInstance3D_method_get_bake_mask_value>`

Restituisce se lo strato specificato di :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>` è abilitato o meno, dato un ``layer_number`` compreso tra 1 e 32.

.. rst-class:: classref-item-separator

----

.. _class_OccluderInstance3D_method_set_bake_mask_value:

.. rst-class:: classref-method

|void| **set_bake_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_OccluderInstance3D_method_set_bake_mask_value>`

In base a ``value``, abilita o disabilita lo strato specificato in :ref:`bake_mask<class_OccluderInstance3D_property_bake_mask>`, dato un ``layer_number`` compreso tra 1 e 32.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
