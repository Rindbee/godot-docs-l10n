:github_url: hide

.. meta::
	:keywords: padding

.. _class_MarginContainer:

MarginContainer
===============

**Hérite de :** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`EditorDock<class_EditorDock>`

Un conteneur qui garde une marge autour de ses contrôles enfants.

.. rst-class:: classref-introduction-group

Description
-----------

**MarginContainer** ajoute une marge réglable de chaque côté de ses contrôles enfants. Les marges sont ajoutées autour de tous les enfants, pas autour de chacun individuellement. Pour contrôler les marges du **MarginContainer**, utilisez les propriétés de thème ``margin_*`` énumérées ci-dessous.

\ **Note :** Les tailles des marge sont des redéfinitions du thème, pas des propriétés normales. Voilà un exemple de comment les modifier dans le code :


.. tabs::

 .. code-tab:: gdscript

    # Cet échantillon de code suppose que le script actuel étend MarginContainer.
    var valeur_marge = 100
    add_theme_constant_override("margin_top", valeur_marge)
    add_theme_constant_override("margin_left", valeur_marge)
    add_theme_constant_override("margin_bottom", valeur_marge)
    add_theme_constant_override("margin_right", valeur_marge)

 .. code-tab:: csharp

    // Cet échantillon de code suppose que le script actuel étend MarginContainer.
    int valeurMarge = 100;
    AddThemeConstantOverride("margin_top", valeurMarge);
    AddThemeConstantOverride("margin_left", valeurMarge);
    AddThemeConstantOverride("margin_bottom", valeurMarge);
    AddThemeConstantOverride("margin_right", valeurMarge);



.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation des conteneurs <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`margin_bottom<class_MarginContainer_theme_constant_margin_bottom>` | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`margin_left<class_MarginContainer_theme_constant_margin_left>`     | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`margin_right<class_MarginContainer_theme_constant_margin_right>`   | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`margin_top<class_MarginContainer_theme_constant_margin_top>`       | ``0`` |
   +-----------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_MarginContainer_theme_constant_margin_bottom:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_bottom** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_bottom>`

Décale vers l'intérieur les enfants directs du conteneur par cette quantité de pixels depuis le bas.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_left:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_left** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_left>`

Décale vers l'intérieur les enfants directs du conteneur par cette quantité de pixels depuis la gauche.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_right:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_right** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_right>`

Décale vers l'intérieur les enfants directs du conteneur par cette quantité de pixels depuis la droite.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_top:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_top** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_top>`

Décale vers l'intérieur les enfants directs du conteneur par cette quantité de pixels depuis le haut.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
