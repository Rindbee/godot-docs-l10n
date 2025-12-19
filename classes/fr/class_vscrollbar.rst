:github_url: hide

.. _class_VScrollBar:

VScrollBar
==========

**Hérite de :** :ref:`ScrollBar<class_ScrollBar>` **<** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une barre de défilement verticale qui va de haut (min) en bas (max).

.. rst-class:: classref-introduction-group

Description
-----------

Une barre de défilement verticale, généralement utilisée pour parcourir du contenu qui s'étend au-delà de la hauteur visible d'un contrôle. C'est un contrôle basé sur :ref:`Range<class_Range>` et qui va de haut (minimum) en bas (maximum). Notez que la direction est l'opposée de celle de :ref:`VSlider<class_VSlider>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_horizontal | ``0`` (overrides :ref:`Control<class_Control_property_size_flags_horizontal>`) |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical   | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`)   |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_left<class_VScrollBar_theme_constant_padding_left>`   | ``0`` |
   +-----------------------+---------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_right<class_VScrollBar_theme_constant_padding_right>` | ``0`` |
   +-----------------------+---------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_VScrollBar_theme_constant_padding_left:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_left** = ``0`` :ref:`🔗<class_VScrollBar_theme_constant_padding_left>`

Padding between the left of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply vertical padding, modify the top/bottom content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. rst-class:: classref-item-separator

----

.. _class_VScrollBar_theme_constant_padding_right:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_right** = ``0`` :ref:`🔗<class_VScrollBar_theme_constant_padding_right>`

Padding between the right of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply vertical padding, modify the top/bottom content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
