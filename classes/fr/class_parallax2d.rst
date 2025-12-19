:github_url: hide

.. _class_Parallax2D:

Parallax2D
==========

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud utilisé pour créer un arrière-plan à défilement parallaxe.

.. rst-class:: classref-introduction-group

Description
-----------

Un **Parallax2D** est utilisé pour créer un effet de parallaxe. Il peut se déplacer à une vitesse différente par rapport au mouvement de la caméra en utilisant :ref:`scroll_scale<class_Parallax2D_property_scroll_scale>`. Cela crée une illusion de profondeur dans un jeu 2D. Si du défilement manuel est souhaité, la position de la :ref:`Camera2D<class_Camera2D>` peut être ignorée avec :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>`.

\ **Note :** Tout changement à la position de ce nœud effectué après son entrée dans l'arbre de scène sera redéfini si :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` vaut ``false`` ou que :ref:`screen_offset<class_Parallax2D_property_screen_offset>` est modifié.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Parallaxe 2D <../tutorials/2d/2d_parallax>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`autoscroll<class_Parallax2D_property_autoscroll>`                     | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`follow_viewport<class_Parallax2D_property_follow_viewport>`           | ``true``                                                                      |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` | ``false``                                                                     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`limit_begin<class_Parallax2D_property_limit_begin>`                   | ``Vector2(-10000000, -10000000)``                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`limit_end<class_Parallax2D_property_limit_end>`                       | ``Vector2(10000000, 10000000)``                                               |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`PhysicsInterpolationMode<enum_Node_PhysicsInterpolationMode>` | physics_interpolation_mode                                                  | ``2`` (overrides :ref:`Node<class_Node_property_physics_interpolation_mode>`) |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`repeat_size<class_Parallax2D_property_repeat_size>`                   | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`repeat_times<class_Parallax2D_property_repeat_times>`                 | ``1``                                                                         |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`screen_offset<class_Parallax2D_property_screen_offset>`               | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`scroll_offset<class_Parallax2D_property_scroll_offset>`               | ``Vector2(0, 0)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`scroll_scale<class_Parallax2D_property_scroll_scale>`                 | ``Vector2(1, 1)``                                                             |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------+-------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Parallax2D_property_autoscroll:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **autoscroll** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_autoscroll>`

.. rst-class:: classref-property-setget

- |void| **set_autoscroll**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_autoscroll**\ (\ )

Vélocité à laquelle le décalage défile automatiquement, en pixels par seconde.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_follow_viewport:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **follow_viewport** = ``true`` :ref:`🔗<class_Parallax2D_property_follow_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_follow_viewport**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_follow_viewport**\ (\ )

Si ``true``, ce **Parallax2D** est décalé par la position actuelle de la caméra. Si le **Parallax2D** se trouve dans un :ref:`CanvasLayer<class_CanvasLayer>` séparé de la caméra actuelle, il peut être souhaité de faire correspondre la valeur avec :ref:`CanvasLayer.follow_viewport_enabled<class_CanvasLayer_property_follow_viewport_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_ignore_camera_scroll:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_camera_scroll** = ``false`` :ref:`🔗<class_Parallax2D_property_ignore_camera_scroll>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_camera_scroll**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignore_camera_scroll**\ (\ )

Si ``true``, la position de **Parallax2D** n'est pas affectée par la position de la caméra.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_limit_begin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **limit_begin** = ``Vector2(-10000000, -10000000)`` :ref:`🔗<class_Parallax2D_property_limit_begin>`

.. rst-class:: classref-property-setget

- |void| **set_limit_begin**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_begin**\ (\ )

Limites en haut à gauche pour que le défilement commence. Si la caméra est en dehors de cette limite, le **Parallax2D** cesse de défiler. Doit être inférieur à :ref:`limit_end<class_Parallax2D_property_limit_end>` moins la taille du viewport pour fonctionner.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_limit_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **limit_end** = ``Vector2(10000000, 10000000)`` :ref:`🔗<class_Parallax2D_property_limit_end>`

.. rst-class:: classref-property-setget

- |void| **set_limit_end**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_limit_end**\ (\ )

Limites en bas à droite pour que le défilement s'arrête. Si la caméra est en dehors de cette limite, le **Parallax2D** cesse de défiler. Doit être supérieur à :ref:`limit_begin<class_Parallax2D_property_limit_begin>` plus la taille du viewport pour fonctionner.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_repeat_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **repeat_size** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_repeat_size>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_repeat_size**\ (\ )

Répète la :ref:`Texture2D<class_Texture2D>` de chacun des enfants de ce nœud et les décale de cette valeur. Lors du défilement, la position du nœud boucle, donnant l'illusion d'un arrière-plan défilant de manière infinie si les valeurs sont plus grandes que la taille de l'écran. Si un axe est défini à ``0``, la :ref:`Texture2D<class_Texture2D>` ne sera pas répétée.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_repeat_times:

.. rst-class:: classref-property

:ref:`int<class_int>` **repeat_times** = ``1`` :ref:`🔗<class_Parallax2D_property_repeat_times>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_times**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_repeat_times**\ (\ )

Redéfinit le nombre de fois que la texture répète. Chaque copie de la texture s'écarte uniformément de l'original de :ref:`repeat_size<class_Parallax2D_property_repeat_size>`. Utile pour dézoomer avec une caméra.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_screen_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **screen_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_screen_offset>`

.. rst-class:: classref-property-setget

- |void| **set_screen_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_screen_offset**\ (\ )

Décalage utilisé pour défiler ce **Parallax2D**. Cette valeur est mise à jour automatiquement sauf si :ref:`ignore_camera_scroll<class_Parallax2D_property_ignore_camera_scroll>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_scroll_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Parallax2D_property_scroll_offset>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_offset**\ (\ )

Le décalage du **Parallax2D**. Similaire à :ref:`screen_offset<class_Parallax2D_property_screen_offset>` et :ref:`Node2D.position<class_Node2D_property_position>`, mais ne sera pas redéfini.

\ **Note :** Les valeurs vont boucler si :ref:`repeat_size<class_Parallax2D_property_repeat_size>` est défini supérieur à ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Parallax2D_property_scroll_scale:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **scroll_scale** = ``Vector2(1, 1)`` :ref:`🔗<class_Parallax2D_property_scroll_scale>`

.. rst-class:: classref-property-setget

- |void| **set_scroll_scale**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_scroll_scale**\ (\ )

Multiplicateur du décalage final du **Parallax2D**. Peut être utilisé pour simuler de la distance à la caméra.

Par exemple, une valeur de ``1`` défile à la même vitesse que la caméra. Une valeur supérieure à ``1`` défile plus vite, faisant apparaître les objets comme plus proches. Une valeur inférieure à ``1`` défile plus lentement, faisant apparaître les objets comme plus lointains, et une valeur de ``0`` arrête complètement les objets.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
