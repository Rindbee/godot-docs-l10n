:github_url: hide

.. _class_RDPipelineSpecializationConstant:

RDPipelineSpecializationConstant
================================

**Eredita:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Costante di specializzazione della pipeline (utilizzata da :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descrizione
----------------------

Una *costante di specializzazione* è un modo per creare varianti aggiuntive degli shader senza aumentare effettivamente il numero di versioni compilate. Ciò consente di migliorare le prestazioni riducendo il numero di versioni degli shader e riducendo la ramificazione ``if``, consentendo comunque agli shader di essere flessibili per diversi casi d'uso.

Questo oggetto è utilizzato da :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>`         | :ref:`constant_id<class_RDPipelineSpecializationConstant_property_constant_id>` | ``0`` |
   +-------------------------------+---------------------------------------------------------------------------------+-------+
   | :ref:`Variant<class_Variant>` | :ref:`value<class_RDPipelineSpecializationConstant_property_value>`             |       |
   +-------------------------------+---------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_RDPipelineSpecializationConstant_property_constant_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **constant_id** = ``0`` :ref:`🔗<class_RDPipelineSpecializationConstant_property_constant_id>`

.. rst-class:: classref-property-setget

- |void| **set_constant_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_constant_id**\ (\ )

L'identificatore della costante di specializzazione. Questo è un valore che inizia da ``0`` e che aumenta per ogni diversa costante di specializzazione per un determinato shader.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineSpecializationConstant_property_value:

.. rst-class:: classref-property

:ref:`Variant<class_Variant>` **value** :ref:`🔗<class_RDPipelineSpecializationConstant_property_value>`

.. rst-class:: classref-property-setget

- |void| **set_value**\ (\ value\: :ref:`Variant<class_Variant>`\ )
- :ref:`Variant<class_Variant>` **get_value**\ (\ )

Il valore della costante di specializzazione. Per le costanti di specializzazione sono validi solo i tipi :ref:`bool<class_bool>`, :ref:`int<class_int>` e :ref:`float<class_float>`.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
