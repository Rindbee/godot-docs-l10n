:github_url: hide

.. _class_VisibleOnScreenNotifier2D:

VisibleOnScreenNotifier2D
=========================

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`

Une région rectangulaire de l'espace 2D qui détecte s'il est visible à l'écran.

.. rst-class:: classref-introduction-group

Description
-----------

**VisibleOnScreenNotifier2D** représente une région rectangulaire de l'espace 2D qui détecte s'il est visible à l'écran. Lorsqu'une partie de cette région devient visible à l'écran ou dans un viewport, il émettra un signal :ref:`screen_entered<class_VisibleOnScreenNotifier2D_signal_screen_entered>`, et de même il émettra un signal :ref:`screen_exited<class_VisibleOnScreenNotifier2D_signal_screen_exited>` lorsqu'aucune partie de celle-ci n'est visible.

Si vous voulez qu'un nœud soit activé automatiquement lorsque cette région est visible à l'écran, utilisez :ref:`VisibleOnScreenEnabler2D<class_VisibleOnScreenEnabler2D>`.

\ **Note :** **VisibleOnScreenNotifier2D** utilise le code du render culling pour déterminer s'il est visible à l'écran, ainsi il ne fonctionnera pas sauf si :ref:`CanvasItem.visible<class_CanvasItem_property_visible>` est défini à ``true``.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo 2D « Dodge The Creeps » <https://godotengine.org/asset-library/asset/2712>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------+-----------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>`           | ``Rect2(-10, -10, 20, 20)`` |
   +---------------------------+----------------------------------------------------------------------+-----------------------------+
   | :ref:`bool<class_bool>`   | :ref:`show_rect<class_VisibleOnScreenNotifier2D_property_show_rect>` | ``true``                    |
   +---------------------------+----------------------------------------------------------------------+-----------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier2D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_VisibleOnScreenNotifier2D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier2D_signal_screen_entered>`

Émis lorsque le VisibleOnScreenNotifier2D apparaît à l'écran.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier2D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier2D_signal_screen_exited>`

Émis lorsque le VisibleOnScreenNotifier2D quitte l’écran.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisibleOnScreenNotifier2D_property_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **rect** = ``Rect2(-10, -10, 20, 20)`` :ref:`🔗<class_VisibleOnScreenNotifier2D_property_rect>`

.. rst-class:: classref-property-setget

- |void| **set_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_rect**\ (\ )

Le rectangle délimitant du VisibleOnScreenNotifier2D.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier2D_property_show_rect:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_rect** = ``true`` :ref:`🔗<class_VisibleOnScreenNotifier2D_property_show_rect>`

.. rst-class:: classref-property-setget

- |void| **set_show_rect**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_showing_rect**\ (\ )

Si ``true``, affiche la zone du rectangle de :ref:`rect<class_VisibleOnScreenNotifier2D_property_rect>` dans l'éditeur avec un remplissage magenta translucide. Contrairement à changer la visibilité du VisibleOnScreenNotifier2D, cela n'affecte pas la détection du screen culling.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_VisibleOnScreenNotifier2D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier2D_method_is_on_screen>`

If ``true``, the bounding rectangle is on the screen.

\ **Note:** It takes one frame for the **VisibleOnScreenNotifier2D**'s visibility to be determined once added to the scene tree, so this method will always return ``false`` right after it is instantiated, before the draw pass.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
