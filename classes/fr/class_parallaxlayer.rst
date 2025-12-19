:github_url: hide

.. _class_ParallaxLayer:

ParallaxLayer
=============

**Obsolète :** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Une couche de défilement parallaxe à utiliser avec :ref:`ParallaxBackground<class_ParallaxBackground>`.

.. rst-class:: classref-introduction-group

Description
-----------

Un ParallaxLayer doit être l'enfant d'un nœud :ref:`ParallaxBackground<class_ParallaxBackground>`. Chaque ParallaxLayer peut être défini pour se déplacer à différentes vitesses par rapport au mouvement de la caméra ou à la valeur de :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>`.

Les enfants de ce nœud seront affectés par son décalage de défilement.

\ **Note :** Tout changement de position et d'échelle de ce nœud effectué après son entrée dans la scène sera ignoré.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_mirroring<class_ParallaxLayer_property_motion_mirroring>` | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_offset<class_ParallaxLayer_property_motion_offset>`       | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`motion_scale<class_ParallaxLayer_property_motion_scale>`         | ``Vector2(1, 1)``                                                             |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                             | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ParallaxLayer_property_motion_mirroring:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_mirroring** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_mirroring>`

.. rst-class:: classref-property-setget

- |void| **set_mirroring**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_mirroring**\ (\ )

L'intervalle, en pixels, auquel le **ParallaxLayer** est dessiné à plusieurs reprises. Utile pour créer un fond défilant de manière infinie. Si un axe est fixé à ``0``, le **ParallaxLayer** ne sera tracé qu'une fois le long de cette direction.

\ **Note :** Si vous voulez que la répétition corresponde au pixel près à une :ref:`Texture2D<class_Texture2D>` affiché par un nœud enfant, vous devez tenir compte de toute échelle appliquée à la texture lors de la définition de cet intervalle. Par exemple, si vous utilisez un enfant :ref:`Sprite2D<class_Sprite2D>` à l'échelle ``0.5`` pour afficher une texture 600x600, et que vous voulez que ce sprite soit répété en continu horizontalement, vous devez configurer cette valeur en ``Vector2(300, 0)``.

\ **Note :** Si la longueur de l'axe du viewport est supérieure à deux fois la taille de l'axe répétée, elle ne se répétera pas infiniment, car le calque du parallaxe ne dessine que 2 instances du calque à un moment donné. La fenêtre de visibilité est calculée à partir de la position du :ref:`ParallaxBackground<class_ParallaxBackground>` parent, et non de sa propre position. Donc, si vous utilisez le mirroring, **ne changez pas** la position du **ParallaxLayer** par rapport à son parent. Au lieu de cela, si vous devez ajuster la position de l'arrière-plan, définissez la propriété :ref:`CanvasLayer.offset<class_CanvasLayer_property_offset>` dans le :ref:`ParallaxBackground<class_ParallaxBackground>` parent.

\ **Note :** Malgré le nom, le calque ne sera pas mis en miroir, il ne sera que répété.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxLayer_property_motion_offset>`

.. rst-class:: classref-property-setget

- |void| **set_motion_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_offset**\ (\ )

Le décalage du ParallaxLayer par rapport au décalage de défilement :ref:`ParallaxBackground.scroll_offset<class_ParallaxBackground_property_scroll_offset>` du ParallaxBackground parent.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxLayer_property_motion_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **motion_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxLayer_property_motion_scale>`

.. rst-class:: classref-property-setget

- |void| **set_motion_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_motion_scale**\ (\ )

Multiplie le mouvement du ParallaxLayer. Si un axe est défini à ``0``, il ne défilera pas.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
