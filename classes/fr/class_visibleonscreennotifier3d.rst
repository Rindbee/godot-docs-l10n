:github_url: hide

.. _class_VisibleOnScreenNotifier3D:

VisibleOnScreenNotifier3D
=========================

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`

Une région en forme de boîte de l'espace 3D qui détecte s'il est visible à l'écran.

.. rst-class:: classref-introduction-group

Description
-----------

**VisibleOnScreenNotifier3D** représente une région en forme de boîte de l'espace 3D. Lorsqu'une partie de cette région devient visible à l'écran ou dans la vue d'une :ref:`Camera3D<class_Camera3D>`, il émettra un signal :ref:`screen_entered<class_VisibleOnScreenNotifier3D_signal_screen_entered>`, et de même il émettra un signal :ref:`screen_exited<class_VisibleOnScreenNotifier3D_signal_screen_exited>` lorsqu'aucune partie de celle-ci n'est visible.

Si vous voulez qu'un nœud soit activé automatiquement lorsque cette région est visible à l'écran, utilisez :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`.

\ **Note :** **VisibleOnScreenNotifier3D** utilise une heuristique approximative qui ne prend pas en compte les murs et les autres occlusions, à moins que l'occlusion culling ne soit utilisé. Aussi, elle ne fonctionnera pas à moins que :ref:`Node3D.visible<class_Node3D_property_visible>` ne soit défini à ``true``.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`aabb<class_VisibleOnScreenNotifier3D_property_aabb>` | ``AABB(-1, -1, -1, 2, 2, 2)`` |
   +-------------------------+------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier3D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_VisibleOnScreenNotifier3D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_entered>`

Émis lorsque le **VisibleOnScreenNotifier3D** entre dans l'écran.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier3D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_exited>`

Émis lorsque le **VisibleOnScreenNotifier3D** quitte l’écran.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisibleOnScreenNotifier3D_property_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **aabb** = ``AABB(-1, -1, -1, 2, 2, 2)`` :ref:`🔗<class_VisibleOnScreenNotifier3D_property_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_aabb**\ (\ )

La boîte délimitante du **VisibleOnScreenNotifier3D**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_VisibleOnScreenNotifier3D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier3D_method_is_on_screen>`

Returns ``true`` if the bounding box is on the screen.

\ **Note:** It takes one frame for the **VisibleOnScreenNotifier3D**'s visibility to be assessed once added to the scene tree, so this method will always return ``false`` right after it is instantiated.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
