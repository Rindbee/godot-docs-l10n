:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/CheckButton.xml.

.. _class_CheckButton:

CheckButton
===========

**Hérite de :** :ref:`Button<class_Button>` **<** :ref:`BaseButton<class_BaseButton>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un bouton qui représente un choix binaire.

.. rst-class:: classref-introduction-group

Description
-----------

**CheckButton** est un bouton à bascule affiché avec une case à cocher. Il est semblable à :ref:`CheckBox<class_CheckBox>` dans ses fonctionnalités, mais son apparence est différente. Pour suivre les modèles UX établis, il est recommandé d'utiliser **CheckButton** quand l'activer a un effet **immédiat** sur quelque chose. Par exemple, il devrait être utilisé si le basculement affiche ou cache des paramètres avancés, sans demander à ce que l'utilisateur confirme cette action.

Voir aussi :ref:`BaseButton<class_BaseButton>` qui contient des propriétés et des méthodes communes associées à ce nœud.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` | alignment   | ``0`` (overrides :ref:`Button<class_Button_property_alignment>`)              |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                           | toggle_mode | ``true`` (overrides :ref:`BaseButton<class_BaseButton_property_toggle_mode>`) |
   +-------------------------------------------------------------------+-------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`button_checked_color<class_CheckButton_theme_color_button_checked_color>`              | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`button_unchecked_color<class_CheckButton_theme_color_button_unchecked_color>`          | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`check_v_offset<class_CheckButton_theme_constant_check_v_offset>`                       | ``0``                 |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked<class_CheckButton_theme_icon_checked>`                                         |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled<class_CheckButton_theme_icon_checked_disabled>`                       |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_disabled_mirrored<class_CheckButton_theme_icon_checked_disabled_mirrored>`     |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`checked_mirrored<class_CheckButton_theme_icon_checked_mirrored>`                       |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked<class_CheckButton_theme_icon_unchecked>`                                     |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled<class_CheckButton_theme_icon_unchecked_disabled>`                   |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_disabled_mirrored<class_CheckButton_theme_icon_unchecked_disabled_mirrored>` |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`unchecked_mirrored<class_CheckButton_theme_icon_unchecked_mirrored>`                   |                       |
   +-----------------------------------+----------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_CheckButton_theme_color_button_checked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **button_checked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckButton_theme_color_button_checked_color>`

La couleur de l'icône de coche lorsque la case à cocher est cochée.

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_color_button_unchecked_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **button_unchecked_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_CheckButton_theme_color_button_unchecked_color>`

La couleur de l'icône de coche lorsque la case à cocher n'est pas cochée.

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_constant_check_v_offset:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **check_v_offset** = ``0`` :ref:`🔗<class_CheckButton_theme_constant_check_v_offset>`

Le décalage vertical utilisé lors du rendu des icônes de basculement (en pixels).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked** :ref:`🔗<class_CheckButton_theme_icon_checked>`

L'icône à afficher quand le **CheckButton** est coché (pour les mises en page gauche vers droite).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled** :ref:`🔗<class_CheckButton_theme_icon_checked_disabled>`

L'icône à afficher quand le **CheckButton** est coché et désactivé (pour les mises en page gauche vers droite).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_disabled_mirrored** :ref:`🔗<class_CheckButton_theme_icon_checked_disabled_mirrored>`

L'icône à afficher quand le **CheckButton** est coché et désactivé (pour les mises en page droite vers gauche).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_checked_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **checked_mirrored** :ref:`🔗<class_CheckButton_theme_icon_checked_mirrored>`

L'icône à afficher quand le **CheckButton** est coché (pour les mises en page droite vers gauche).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked** :ref:`🔗<class_CheckButton_theme_icon_unchecked>`

L'icône à afficher quand le **CheckButton** est décoché (pour les mises en page gauche vers droite).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_disabled:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled** :ref:`🔗<class_CheckButton_theme_icon_unchecked_disabled>`

L'icône à afficher quand le **CheckButton** est décoché et désactivé (pour les mises en page gauche vers droite).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_disabled_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_disabled_mirrored** :ref:`🔗<class_CheckButton_theme_icon_unchecked_disabled_mirrored>`

L'icône à afficher quand le **CheckButton** est décoché et désactivé (pour les mises en page droite vers gauche).

.. rst-class:: classref-item-separator

----

.. _class_CheckButton_theme_icon_unchecked_mirrored:

.. rst-class:: classref-themeproperty

:ref:`Texture2D<class_Texture2D>` **unchecked_mirrored** :ref:`🔗<class_CheckButton_theme_icon_unchecked_mirrored>`

L'icône à afficher quand le **CheckButton** est décoché (pour les mises en page droite vers gauche).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
