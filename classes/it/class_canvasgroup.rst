:github_url: hide

.. _class_CanvasGroup:

CanvasGroup
===========

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Unisce vari nodi 2D in un'unica operazione di disegno.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Child :ref:`CanvasItem<class_CanvasItem>` nodes of a **CanvasGroup** are drawn as a single object. It allows to e.g. draw overlapping translucent 2D nodes without causing the overlapping sections to be more opaque than intended (set the :ref:`CanvasItem.self_modulate<class_CanvasItem_property_self_modulate>` property on the **CanvasGroup** to achieve this effect).

\ **Note:** The **CanvasGroup** uses a custom shader to read from the backbuffer to draw its children. Assigning a :ref:`Material<class_Material>` to the **CanvasGroup** overrides the built-in shader. To duplicate the behavior of the built-in shader in a custom :ref:`Shader<class_Shader>`, use the following:

::

    shader_type canvas_item;
    render_mode unshaded;

    uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;

    void fragment() {
        vec4 c = textureLod(screen_texture, SCREEN_UV, 0.0);

        if (c.a > 0.0001) {
            c.rgb /= c.a;
        }

        COLOR *= c;
    }

\ **Note:** Since **CanvasGroup** and :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` both utilize the backbuffer, children of a **CanvasGroup** who have their :ref:`CanvasItem.clip_children<class_CanvasItem_property_clip_children>` set to anything other than :ref:`CanvasItem.CLIP_CHILDREN_DISABLED<class_CanvasItem_constant_CLIP_CHILDREN_DISABLED>` will not function correctly.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`clear_margin<class_CanvasGroup_property_clear_margin>` | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`     | ``10.0``  |
   +---------------------------+--------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>`   | ``false`` |
   +---------------------------+--------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CanvasGroup_property_clear_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **clear_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_clear_margin>`

.. rst-class:: classref-property-setget

- |void| **set_clear_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_clear_margin**\ (\ )

Imposta la dimensione del margine utilizzato per espandere il rettangolo di compensazione di questo **CanvasGroup**. Questo espande l'area del backbuffer che sarà utilizzata dal **CanvasGroup**. Un margine più piccolo ridurrà l'area utilizzata dal backbuffer, il che può aumentare le prestazioni, tuttavia se :ref:`use_mipmaps<class_CanvasGroup_property_use_mipmaps>` è abilitato, un margine piccolo potrebbe causare errori nelle mipmap sul bordo del **CanvasGroup**. Pertanto, questo dovrebbe essere lasciato il più piccolo possibile, ma dovrebbe essere aumentato se compaiono artefatti lungo i bordi del gruppo canvas.

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_fit_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **fit_margin** = ``10.0`` :ref:`🔗<class_CanvasGroup_property_fit_margin>`

.. rst-class:: classref-property-setget

- |void| **set_fit_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_fit_margin**\ (\ )

Imposta la dimensione di un margine utilizzato per espandere il rettangolo disegnabile di questo **CanvasGroup**. La dimensione del **CanvasGroup** è determinata adattando un rettangolo attorno ai suoi figli, quindi espandendo tale rettangolo di :ref:`fit_margin<class_CanvasGroup_property_fit_margin>`. Ciò aumenta sia l'area del backbuffer utilizzata, sia l'area coperta dal **CanvasGroup**, entrambe le quali possono ridurre le prestazioni. Dovrebbe essere mantenuto il più piccolo possibile e dovrebbe essere espanso solo quando è necessaria una dimensione maggiore (ad esempio per effetti di shader personalizzati).

.. rst-class:: classref-item-separator

----

.. _class_CanvasGroup_property_use_mipmaps:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_mipmaps** = ``false`` :ref:`🔗<class_CanvasGroup_property_use_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_use_mipmaps**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_mipmaps**\ (\ )

Se ``true``, calcola le mipmap per il backbuffer prima di disegnare il **CanvasGroup** in modo che le mipmap siano utilizzabili in uno :ref:`ShaderMaterial<class_ShaderMaterial>` personalizzato allegato al **CanvasGroup**. La generazione delle mipmap ha un costo in termini di prestazioni, pertanto questa opzione non dovrebbe essere abilitata a meno che non sia necessario.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
