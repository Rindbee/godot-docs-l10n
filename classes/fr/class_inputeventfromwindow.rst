:github_url: hide

.. _class_InputEventFromWindow:

InputEventFromWindow
====================

**Hérite de :** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`InputEventScreenDrag<class_InputEventScreenDrag>`, :ref:`InputEventScreenTouch<class_InputEventScreenTouch>`, :ref:`InputEventWithModifiers<class_InputEventWithModifiers>`

Abstract base class for :ref:`Viewport<class_Viewport>`-based input events.

.. rst-class:: classref-introduction-group

Description
-----------

InputEventFromWindow represents events specifically received by windows. This includes mouse events, keyboard events in focused windows or touch screen actions.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`window_id<class_InputEventFromWindow_property_window_id>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_InputEventFromWindow_property_window_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **window_id** = ``0`` :ref:`🔗<class_InputEventFromWindow_property_window_id>`

.. rst-class:: classref-property-setget

- |void| **set_window_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_window_id**\ (\ )

The ID of a :ref:`Window<class_Window>` that received this event.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
