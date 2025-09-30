:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/FoldableGroup.xml.

.. _class_FoldableGroup:

FoldableGroup
=============

**Eredita:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un gruppo di contenitori riducibili che non consente a più di un pulsante di essere espanso.

.. rst-class:: classref-introduction-group

Descrizione
----------------------

A group of :ref:`FoldableContainer<class_FoldableContainer>`-derived nodes. Only one container can be expanded at a time.

.. rst-class:: classref-reftable-group

Proprietà
------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`allow_folding_all<class_FoldableGroup_property_allow_folding_all>` | ``false``                                                                             |
   +-------------------------+--------------------------------------------------------------------------+---------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene                                                  | ``true`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+--------------------------------------------------------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Metodi
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`FoldableContainer<class_FoldableContainer>`\] | :ref:`get_containers<class_FoldableGroup_method_get_containers>`\ (\ ) |const|                 |
   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+
   | :ref:`FoldableContainer<class_FoldableContainer>`                              | :ref:`get_expanded_container<class_FoldableGroup_method_get_expanded_container>`\ (\ ) |const| |
   +--------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Segnali
--------------

.. _class_FoldableGroup_signal_expanded:

.. rst-class:: classref-signal

**expanded**\ (\ container\: :ref:`FoldableContainer<class_FoldableContainer>`\ ) :ref:`🔗<class_FoldableGroup_signal_expanded>`

Emesso quando viene espanso uno dei contenitori del gruppo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni delle proprietà
------------------------------------------------------

.. _class_FoldableGroup_property_allow_folding_all:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_folding_all** = ``false`` :ref:`🔗<class_FoldableGroup_property_allow_folding_all>`

.. rst-class:: classref-property-setget

- |void| **set_allow_folding_all**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_allow_folding_all**\ (\ )

Se ``true``, è possibile ridurre tutti i contenitori in questo FoldableGroup.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descrizioni dei metodi
--------------------------------------------

.. _class_FoldableGroup_method_get_containers:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`FoldableContainer<class_FoldableContainer>`\] **get_containers**\ (\ ) |const| :ref:`🔗<class_FoldableGroup_method_get_containers>`

Returns an :ref:`Array<class_Array>` of :ref:`FoldableContainer<class_FoldableContainer>`\ s that have this as their FoldableGroup (see :ref:`FoldableContainer.foldable_group<class_FoldableContainer_property_foldable_group>`). This is equivalent to :ref:`ButtonGroup<class_ButtonGroup>` but for FoldableContainers.

.. rst-class:: classref-item-separator

----

.. _class_FoldableGroup_method_get_expanded_container:

.. rst-class:: classref-method

:ref:`FoldableContainer<class_FoldableContainer>` **get_expanded_container**\ (\ ) |const| :ref:`🔗<class_FoldableGroup_method_get_expanded_container>`

Restituisce il contenitore attualmente espanso.

.. |virtual| replace:: :abbr:`virtual (Questo metodo dovrebbe solitamente essere sovrascritto dall'utente per aver un effetto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Questo metodo non ha effetti collaterali. Non modifica alcuna variabile appartenente all'istanza.)`
.. |vararg| replace:: :abbr:`vararg (Questo metodo accetta qualsiasi numero di argomenti oltre a quelli descritti qui.)`
.. |constructor| replace:: :abbr:`constructor (Questo metodo è utilizzato per creare un tipo.)`
.. |static| replace:: :abbr:`static (Questo metodo non necessita di alcun'istanza per essere chiamato, quindi può essere chiamato direttamente usando il nome della classe.)`
.. |operator| replace:: :abbr:`operator (Questo metodo descrive un operatore valido da usare con questo tipo come operando di sinistra.)`
.. |bitfield| replace:: :abbr:`BitField (Questo valore è un intero composto da una maschera di bit dei seguenti flag.)`
.. |void| replace:: :abbr:`void (Nessun valore restituito.)`
