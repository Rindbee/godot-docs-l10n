:github_url: hide

.. meta::
	:keywords: tray

.. _class_StatusIndicator:

StatusIndicator
===============

**Hérite de :** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Indicateur de statut d'application (icône de zone de notification).

\ **Note :** L'indicateur de statut est implémenté sur macOS et Windows.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`icon<class_StatusIndicator_property_icon>`       |                  |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>`   | :ref:`menu<class_StatusIndicator_property_menu>`       | ``NodePath("")`` |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`String<class_String>`       | :ref:`tooltip<class_StatusIndicator_property_tooltip>` | ``""``           |
   +-----------------------------------+--------------------------------------------------------+------------------+
   | :ref:`bool<class_bool>`           | :ref:`visible<class_StatusIndicator_property_visible>` | ``true``         |
   +-----------------------------------+--------------------------------------------------------+------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`get_rect<class_StatusIndicator_method_get_rect>`\ (\ ) |const| |
   +---------------------------+----------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_StatusIndicator_signal_pressed:

.. rst-class:: classref-signal

**pressed**\ (\ mouse_button\: :ref:`int<class_int>`, mouse_position\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_StatusIndicator_signal_pressed>`

Émis lorsque l'indicateur de statut est appuyé.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_StatusIndicator_property_icon:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **icon** :ref:`🔗<class_StatusIndicator_property_icon>`

.. rst-class:: classref-property-setget

- |void| **set_icon**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_icon**\ (\ )

Icône d'indicateur de statut.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_menu:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **menu** = ``NodePath("")`` :ref:`🔗<class_StatusIndicator_property_menu>`

.. rst-class:: classref-property-setget

- |void| **set_menu**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_menu**\ (\ )

Status indicator native popup menu. If this is set, the :ref:`pressed<class_StatusIndicator_signal_pressed>` signal is not emitted.

\ **Note:** Native popup is only supported if :ref:`NativeMenu<class_NativeMenu>` supports :ref:`NativeMenu.FEATURE_POPUP_MENU<class_NativeMenu_constant_FEATURE_POPUP_MENU>` feature.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_tooltip:

.. rst-class:: classref-property

:ref:`String<class_String>` **tooltip** = ``""`` :ref:`🔗<class_StatusIndicator_property_tooltip>`

.. rst-class:: classref-property-setget

- |void| **set_tooltip**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_tooltip**\ (\ )

Info-bulle d'indicateur de statut.

.. rst-class:: classref-item-separator

----

.. _class_StatusIndicator_property_visible:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **visible** = ``true`` :ref:`🔗<class_StatusIndicator_property_visible>`

.. rst-class:: classref-property-setget

- |void| **set_visible**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_visible**\ (\ )

Si ``true``, l'indicateur de statut est visible.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StatusIndicator_method_get_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_rect**\ (\ ) |const| :ref:`🔗<class_StatusIndicator_method_get_rect>`

Renvoie le rectangle de l'indicateur de statut dans les coordonnées de l'écran. Si cet indicateur de statut n'est pas visible, renvoie un :ref:`Rect2<class_Rect2>` vide.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
