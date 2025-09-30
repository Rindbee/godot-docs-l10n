:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/MarginContainer.xml.

.. _class_MarginContainer:

MarginContainer
===============

**Hérite de :** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un conteneur qui garde une marge autour de ses contrôles enfants.

.. rst-class:: classref-introduction-group

Description
-----------

**MarginContainer** adds an adjustable margin on each side of its child controls. The margins are added around all children, not around each individual one. To control the **MarginContainer**'s margins, use the ``margin_*`` theme properties listed below.

\ **Note:** The margin sizes are theme overrides, not normal properties. This is an example of how to change them in code:


.. tabs::

 .. code-tab:: gdscript

    # This code sample assumes the current script is extending MarginContainer.
    var margin_value = 100
    add_theme_constant_override("margin_top", margin_value)
    add_theme_constant_override("margin_left", margin_value)
    add_theme_constant_override("margin_bottom", margin_value)
    add_theme_constant_override("margin_right", margin_value)

 .. code-tab:: csharp

    // This code sample assumes the current script is extending MarginContainer.
    int marginValue = 100;
    AddThemeConstantOverride("margin_top", marginValue);
    AddThemeConstantOverride("margin_left", marginValue);
    AddThemeConstantOverride("margin_bottom", marginValue);
    AddThemeConstantOverride("margin_right", marginValue);



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

Offsets towards the inside direct children of the container by this amount of pixels from the bottom.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_left:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_left** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_left>`

Offsets towards the inside direct children of the container by this amount of pixels from the left.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_right:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_right** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_right>`

Offsets towards the inside direct children of the container by this amount of pixels from the right.

.. rst-class:: classref-item-separator

----

.. _class_MarginContainer_theme_constant_margin_top:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **margin_top** = ``0`` :ref:`🔗<class_MarginContainer_theme_constant_margin_top>`

Offsets towards the inside direct children of the container by this amount of pixels from the top.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
