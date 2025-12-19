:github_url: hide

.. _class_Separator:

Separator
=========

**Hérite de :** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`HSeparator<class_HSeparator>`, :ref:`VSeparator<class_VSeparator>`

Classe de base abstraite pour séparateurs.

.. rst-class:: classref-introduction-group

Description
-----------

Classe de base abstraite pour les séparateurs, utilisée pour séparer d'autres contrôles. Les **Separator**\ s sont purement visuels et normalement dessinés comme une :ref:`StyleBoxLine<class_StyleBoxLine>`.

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------+-------+
   | :ref:`int<class_int>`           | :ref:`separation<class_Separator_theme_constant_separation>` | ``0`` |
   +---------------------------------+--------------------------------------------------------------+-------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`separator<class_Separator_theme_style_separator>`      |       |
   +---------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_Separator_theme_constant_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **separation** = ``0`` :ref:`🔗<class_Separator_theme_constant_separation>`

La taille de la zone couverte par le séparateur. Fonctionne effectivement comme une largeur/taille minimale.

.. rst-class:: classref-item-separator

----

.. _class_Separator_theme_style_separator:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **separator** :ref:`🔗<class_Separator_theme_style_separator>`

Le style pour la ligne de séparation. Fonctionne mieux avec :ref:`StyleBoxLine<class_StyleBoxLine>` (n'oubliez pas d'activer :ref:`StyleBoxLine.vertical<class_StyleBoxLine_property_vertical>` pour :ref:`VSeparator<class_VSeparator>`).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
