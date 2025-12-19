:github_url: hide

.. _class_HScrollBar:

HScrollBar
==========

**Hérite de :** :ref:`ScrollBar<class_ScrollBar>` **<** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une barre de défilement horizontale qui va de gauche (min) à droite (max).

.. rst-class:: classref-introduction-group

Description
-----------

Une barre de défilement horizontale, généralement utilisée pour parcourir du contenu qui s'étend au-delà de la largeur visible d'un contrôle. C'est un contrôle basé sur :ref:`Range<class_Range>` et qui va de gauche (minimum) à droite (maximum).

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_bottom<class_HScrollBar_theme_constant_padding_bottom>` | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_top<class_HScrollBar_theme_constant_padding_top>`       | ``0`` |
   +-----------------------+-----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_HScrollBar_theme_constant_padding_bottom:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_bottom** = ``0`` :ref:`🔗<class_HScrollBar_theme_constant_padding_bottom>`

Padding between the bottom of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply horizontal padding, modify the left/right content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. rst-class:: classref-item-separator

----

.. _class_HScrollBar_theme_constant_padding_top:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_top** = ``0`` :ref:`🔗<class_HScrollBar_theme_constant_padding_top>`

Padding between the top of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply horizontal padding, modify the left/right content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
