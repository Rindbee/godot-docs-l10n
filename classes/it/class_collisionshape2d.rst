:github_url: hide

.. _class_CollisionShape2D:

CollisionShape2D
================

**Eredita:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nodo che fornisce uno :ref:`Shape2D<class_Shape2D>` a un :ref:`CollisionObject2D<class_CollisionObject2D>` genitore.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Un nodo che fornisce una :ref:`Shape2D<class_Shape2D>` a un :ref:`CollisionObject2D<class_CollisionObject2D>` genitore e consente di modificarla. Ciò può dare una forma di rilevamento a un':ref:`Area2D<class_Area2D>` o trasformare un :ref:`PhysicsBody2D<class_PhysicsBody2D>` in un oggetto solido.

.. rst-class:: classref-introduction-group

Tutorial
----------------

- :doc:`Introduzione alla fisica <../tutorials/physics/physics_introduction>`

- `Demo 2D "Dodge The Creeps" <https://godotengine.org/asset-library/asset/2712>`__

- `Demo 2D "Pong 2D" <https://godotengine.org/asset-library/asset/2728>`__

- `Demo di personaggio cinematico in 2D <https://godotengine.org/asset-library/asset/2719>`__

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`     | :ref:`debug_color<class_CollisionShape2D_property_debug_color>`                           | ``Color(0, 0, 0, 0)`` |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`disabled<class_CollisionShape2D_property_disabled>`                                 | ``false``             |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`       | :ref:`one_way_collision<class_CollisionShape2D_property_one_way_collision>`               | ``false``             |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`     | :ref:`one_way_collision_margin<class_CollisionShape2D_property_one_way_collision_margin>` | ``1.0``               |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Shape2D<class_Shape2D>` | :ref:`shape<class_CollisionShape2D_property_shape>`                                       |                       |
   +-------------------------------+-------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_CollisionShape2D_property_debug_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **debug_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_CollisionShape2D_property_debug_color>`

.. rst-class:: classref-property-setget

- |void| **set_debug_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_debug_color**\ (\ )

Il colore di debug della forma di collisione che è visualizzato nell'editor, o nel progetto in esecuzione se **Debug > Forme di collisione visibili**.

\ **Nota:** Il valore predefinito è :ref:`ProjectSettings.debug/shapes/collision/shape_color<class_ProjectSettings_property_debug/shapes/collision/shape_color>`. Il valore ``Color(0, 0, 0, 1)`` documentato qui è un segnaposto e non il colore di debug predefinito effettivo.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_disabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **disabled** = ``false`` :ref:`🔗<class_CollisionShape2D_property_disabled>`

.. rst-class:: classref-property-setget

- |void| **set_disabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_disabled**\ (\ )

Una forma di collisione disabilitata non ha alcun effetto nel mondo. Questa proprietà dovrebbe essere modificata con :ref:`Object.set_deferred()<class_Object_method_set_deferred>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_one_way_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **one_way_collision** = ``false`` :ref:`🔗<class_CollisionShape2D_property_one_way_collision>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_one_way_collision_enabled**\ (\ )

Imposta se questa forma di collisione deve rilevare la collisione solo su un lato (superiore o inferiore).

\ **Nota:** Questa proprietà non ha effetto se questo **CollisionShape2D** è un figlio di un nodo :ref:`Area2D<class_Area2D>`.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_one_way_collision_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **one_way_collision_margin** = ``1.0`` :ref:`🔗<class_CollisionShape2D_property_one_way_collision_margin>`

.. rst-class:: classref-property-setget

- |void| **set_one_way_collision_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_one_way_collision_margin**\ (\ )

Il margine utilizzato per la collisione a senso unico (in pixel). Valori più alti renderanno la forma più spessa e funzioneranno meglio per i collisori che entrano nella forma ad alta velocità.

.. rst-class:: classref-item-separator

----

.. _class_CollisionShape2D_property_shape:

.. rst-class:: classref-property

:ref:`Shape2D<class_Shape2D>` **shape** :ref:`🔗<class_CollisionShape2D_property_shape>`

.. rst-class:: classref-property-setget

- |void| **set_shape**\ (\ value\: :ref:`Shape2D<class_Shape2D>`\ )
- :ref:`Shape2D<class_Shape2D>` **get_shape**\ (\ )

La forma reale appartenente a questa forma di collisione.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
