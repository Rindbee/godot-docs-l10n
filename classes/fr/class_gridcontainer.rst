:github_url: hide

.. _class_GridContainer:

GridContainer
=============

**Hérite de :** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un conteneur qui arrange ses contrôles enfants en une disposition en grille.

.. rst-class:: classref-introduction-group

Description
-----------

**GridContainer** arranges its child controls in a grid layout. The number of columns is specified by the :ref:`columns<class_GridContainer_property_columns>` property, whereas the number of rows depends on how many are needed for the child controls. The number of rows and columns is preserved for every size of the container.

\ **Note:** **GridContainer** only works with child nodes inheriting from :ref:`Control<class_Control>`. It won't rearrange child nodes inheriting from :ref:`Node2D<class_Node2D>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation des conteneurs <../tutorials/ui/gui_containers>`

- `Démo de test de système d'exploitation <https://godotengine.org/asset-library/asset/2789>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`columns<class_GridContainer_property_columns>` | ``1`` |
   +-----------------------+------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`h_separation<class_GridContainer_theme_constant_h_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`v_separation<class_GridContainer_theme_constant_v_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GridContainer_property_columns:

.. rst-class:: classref-property

:ref:`int<class_int>` **columns** = ``1`` :ref:`🔗<class_GridContainer_property_columns>`

.. rst-class:: classref-property-setget

- |void| **set_columns**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_columns**\ (\ )

Le nombre de colonnes dans le **GridContainer**. Si modifié, **GridContainer** réarrangera ses enfants dérivés de Control suivant la nouvelle mise en page.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_GridContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_GridContainer_theme_constant_h_separation>`

La séparation horizontale des nœuds enfants.

.. rst-class:: classref-item-separator

----

.. _class_GridContainer_theme_constant_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **v_separation** = ``4`` :ref:`🔗<class_GridContainer_theme_constant_v_separation>`

La séparation verticale des nœuds enfants.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
