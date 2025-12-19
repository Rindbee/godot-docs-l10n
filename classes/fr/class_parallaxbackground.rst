:github_url: hide

.. _class_ParallaxBackground:

ParallaxBackground
==================

**Obsolète :** Use the :ref:`Parallax2D<class_Parallax2D>` node instead.

**Hérite de :** :ref:`CanvasLayer<class_CanvasLayer>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud utilisé pour créer un arrière-plan à défilement parallaxe.

.. rst-class:: classref-introduction-group

Description
-----------

Un ParallaxBackground utilise un ou plusieurs nœuds :ref:`ParallaxLayer<class_ParallaxLayer>` enfants pour créer un effet de parallaxe. Chaque :ref:`ParallaxLayer<class_ParallaxLayer>` peut se déplacer à une vitesse différente en utilisant :ref:`ParallaxLayer.motion_offset<class_ParallaxLayer_property_motion_offset>`. Cela crée une illusion de profondeur dans un jeu 2D. Si non utilisé avec une :ref:`Camera2D<class_Camera2D>`, vous devez calculer manuellement le :ref:`scroll_offset<class_ParallaxBackground_property_scroll_offset>`.

\ **Note :** Chaque **ParallaxBackground** est dessiné sur un :ref:`Viewport<class_Viewport>` spécifique et ne peut pas être partagé entre plusieurs :ref:`Viewport<class_Viewport>`\ s, voir :ref:`CanvasLayer.custom_viewport<class_CanvasLayer_property_custom_viewport>`. Lors de l'utilisation de plusieurs :ref:`Viewport<class_Viewport>`\ s, par exemple dans un jeu à écran séparé, vous devez créer un **ParallaxBackground** individuel pour chaque :ref:`Viewport<class_Viewport>` sur lequel vous voulez qu'il soit dessiné.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | layer                                                                                         | ``-100`` (overrides :ref:`CanvasLayer<class_CanvasLayer_property_layer>`) |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_base_offset<class_ParallaxBackground_property_scroll_base_offset>`               | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_base_scale<class_ParallaxBackground_property_scroll_base_scale>`                 | ``Vector2(1, 1)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`scroll_ignore_camera_zoom<class_ParallaxBackground_property_scroll_ignore_camera_zoom>` | ``false``                                                                 |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_limit_begin<class_ParallaxBackground_property_scroll_limit_begin>`               | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_limit_end<class_ParallaxBackground_property_scroll_limit_end>`                   | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`scroll_offset<class_ParallaxBackground_property_scroll_offset>`                         | ``Vector2(0, 0)``                                                         |
   +-------------------------------+-----------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ParallaxBackground_property_scroll_base_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_base_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_base_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_base_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_base_offset**\ (\ )

Le décalage de la position de base pour tous les enfants du :ref:`ParallaxLayer<class_ParallaxLayer>`.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_base_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_base_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_ParallaxBackground_property_scroll_base_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_base_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_base_scale**\ (\ )

L'échelle du mouvement de base pour tous les :ref:`ParallaxLayer<class_ParallaxLayer>` enfants.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_ignore_camera_zoom:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **scroll_ignore_camera_zoom** = ``false`` :ref:`🔗<class_ParallaxBackground_property_scroll_ignore_camera_zoom>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_camera_zoom**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignore_camera_zoom**\ (\ )

Si ``true``, les éléments des :ref:`ParallaxLayer<class_ParallaxLayer>` enfants ne sont pas touchés par le niveau de zoom de la caméra.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_limit_begin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_limit_begin** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_limit_begin>`

.. rst-class:: classref-property-setget

- |void| **set_limit_begin**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_begin**\ (\ )

Limites en haut à gauche pour que le défilement commence. Si la caméra est en dehors de cette limite, l'arrière-plan cesse de défiler. Doit être inférieur à :ref:`scroll_limit_end<class_ParallaxBackground_property_scroll_limit_end>` pour fonctionner.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_limit_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_limit_end** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_limit_end>`

.. rst-class:: classref-property-setget

- |void| **set_limit_end**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_end**\ (\ )

Limites en bas à droite pour que le défilement s'arrête. Si la caméra est en dehors de cette limite, l'arrière-plan cesse de défiler. Doit être supérieur à :ref:`scroll_limit_begin<class_ParallaxBackground_property_scroll_limit_begin>` pour fonctionner.

.. rst-class:: classref-item-separator

----

.. _class_ParallaxBackground_property_scroll_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_ParallaxBackground_property_scroll_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_offset**\ (\ )

La valeur de défilement du ParallaxBackground. Calculé automatiquement lors de l'utilisation d'une :ref:`Camera2D<class_Camera2D>`, mais peut être utilisé pour gérer manuellement le défilement lorsqu'aucune caméra n'est présente.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
