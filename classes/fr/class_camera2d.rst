:github_url: hide

.. _class_Camera2D:

Camera2D
========

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nœud de caméra pour les scènes en 2D.

.. rst-class:: classref-introduction-group

Description
-----------

Nœud de caméra pour des scènes 2D. Il force l'écran (couche actuelle) à défiler en suivant ce nœud. Cela rend plus facile (et plus rapide) de programmer des scènes défilantes que de changer manuellement la position des nœuds basés sur :ref:`CanvasItem<class_CanvasItem>`.

Les caméras s'auto-enregistrent dans le nœud :ref:`Viewport<class_Viewport>` le plus proche (en montant dans l'arbre). Une seule caméra peut être active par fenêtre d'affichage. Si aucune fenêtre n'est disponible en montant de l'arbre, la caméra s'enregistrera dans la fenêtre globale.

Ce nœud est destiné à être un simple assistant pour commencer à développer rapidement, mais plus de fonctionnalités peuvent être désirées pour changer la façon dont la caméra fonctionne. Pour faire votre propre nœud de caméra personnalisé, héritez-le de :ref:`Node2D<class_Node2D>` et modifiez la transformation du canevas en définissant :ref:`Viewport.canvas_transform<class_Viewport_property_canvas_transform>` dans :ref:`Viewport<class_Viewport>` (vous pouvez obtenir le :ref:`Viewport<class_Viewport>` actuel en utilisant :ref:`Node.get_viewport()<class_Node_method_get_viewport>`).

Notez que la position globale (:ref:`Node2D.global_position<class_Node2D_property_global_position>`) du nœud **Camera2D** ne représente pas la position actuelle de l'écran, qui peut différer en raison du lissage appliqué ou des limites. Vous pouvez utiliser :ref:`get_screen_center_position()<class_Camera2D_method_get_screen_center_position>` pour obtenir la position réelle. Même chose pour la rotation globale (:ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>`) qui peut être différente en raison du lissage de rotation appliqué. Vous pouvez utiliser :ref:`get_screen_rotation()<class_Camera2D_method_get_screen_rotation>` pour obtenir la rotation actuelle de l'écran.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- `Démo de jeu de plateforme en 2D <https://godotengine.org/asset-library/asset/2727>`__

- `Démo 2D isométrique <https://godotengine.org/asset-library/asset/2718>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`AnchorMode<enum_Camera2D_AnchorMode>`                           | :ref:`anchor_mode<class_Camera2D_property_anchor_mode>`                               | ``1``             |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Node<class_Node>`                                               | :ref:`custom_viewport<class_Camera2D_property_custom_viewport>`                       |                   |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`                 | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`drag_horizontal_enabled<class_Camera2D_property_drag_horizontal_enabled>`       | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_horizontal_offset<class_Camera2D_property_drag_horizontal_offset>`         | ``0.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>`                     | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`                   | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`                       | ``0.2``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`drag_vertical_enabled<class_Camera2D_property_drag_vertical_enabled>`           | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`drag_vertical_offset<class_Camera2D_property_drag_vertical_offset>`             | ``0.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`editor_draw_drag_margin<class_Camera2D_property_editor_draw_drag_margin>`       | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`editor_draw_limits<class_Camera2D_property_editor_draw_limits>`                 | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`editor_draw_screen<class_Camera2D_property_editor_draw_screen>`                 | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`enabled<class_Camera2D_property_enabled>`                                       | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`ignore_rotation<class_Camera2D_property_ignore_rotation>`                       | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`                             | ``10000000``      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`limit_enabled<class_Camera2D_property_limit_enabled>`                           | ``true``          |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_left<class_Camera2D_property_limit_left>`                                 | ``-10000000``     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_right<class_Camera2D_property_limit_right>`                               | ``10000000``      |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`limit_smoothed<class_Camera2D_property_limit_smoothed>`                         | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                                 | :ref:`limit_top<class_Camera2D_property_limit_top>`                                   | ``-10000000``     |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                         | :ref:`offset<class_Camera2D_property_offset>`                                         | ``Vector2(0, 0)`` |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`position_smoothing_speed<class_Camera2D_property_position_smoothing_speed>`     | ``5.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` | :ref:`process_callback<class_Camera2D_property_process_callback>`                     | ``1``             |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`bool<class_bool>`                                               | :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>` | ``false``         |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`float<class_float>`                                             | :ref:`rotation_smoothing_speed<class_Camera2D_property_rotation_smoothing_speed>`     | ``5.0``           |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                         | :ref:`zoom<class_Camera2D_property_zoom>`                                             | ``Vector2(1, 1)`` |
   +-----------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`align<class_Camera2D_method_align>`\ (\ )                                                                                                            |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`force_update_scroll<class_Camera2D_method_force_update_scroll>`\ (\ )                                                                                |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_drag_margin<class_Camera2D_method_get_drag_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                  |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_limit<class_Camera2D_method_get_limit>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                              |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_screen_center_position<class_Camera2D_method_get_screen_center_position>`\ (\ ) |const|                                                          |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_screen_rotation<class_Camera2D_method_get_screen_rotation>`\ (\ ) |const|                                                                        |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_target_position<class_Camera2D_method_get_target_position>`\ (\ ) |const|                                                                        |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_current<class_Camera2D_method_is_current>`\ (\ ) |const|                                                                                          |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`make_current<class_Camera2D_method_make_current>`\ (\ )                                                                                              |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`reset_smoothing<class_Camera2D_method_reset_smoothing>`\ (\ )                                                                                        |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_drag_margin<class_Camera2D_method_set_drag_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ ) |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_limit<class_Camera2D_method_set_limit>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )                       |
   +-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Camera2D_AnchorMode:

.. rst-class:: classref-enumeration

enum **AnchorMode**: :ref:`🔗<enum_Camera2D_AnchorMode>`

.. _class_Camera2D_constant_ANCHOR_MODE_FIXED_TOP_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **ANCHOR_MODE_FIXED_TOP_LEFT** = ``0``

La position de la caméra est fixe de telle sorte que le coin supérieur gauche soit toujours à l'origine.

.. _class_Camera2D_constant_ANCHOR_MODE_DRAG_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **ANCHOR_MODE_DRAG_CENTER** = ``1``

La position de la caméra prend en compte le décalage vertical et horizontal, et la taille de l'écran.

.. rst-class:: classref-item-separator

----

.. _enum_Camera2D_Camera2DProcessCallback:

.. rst-class:: classref-enumeration

enum **Camera2DProcessCallback**: :ref:`🔗<enum_Camera2D_Camera2DProcessCallback>`

.. _class_Camera2D_constant_CAMERA2D_PROCESS_PHYSICS:

.. rst-class:: classref-enumeration-constant

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **CAMERA2D_PROCESS_PHYSICS** = ``0``

La caméra se met à jour pendant les trames de physique (voir :ref:`Node.NOTIFICATION_INTERNAL_PHYSICS_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PHYSICS_PROCESS>`).

.. _class_Camera2D_constant_CAMERA2D_PROCESS_IDLE:

.. rst-class:: classref-enumeration-constant

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **CAMERA2D_PROCESS_IDLE** = ``1``

La caméra se met à jour pendant les trames de traitement (voir :ref:`Node.NOTIFICATION_INTERNAL_PROCESS<class_Node_constant_NOTIFICATION_INTERNAL_PROCESS>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Camera2D_property_anchor_mode:

.. rst-class:: classref-property

:ref:`AnchorMode<enum_Camera2D_AnchorMode>` **anchor_mode** = ``1`` :ref:`🔗<class_Camera2D_property_anchor_mode>`

.. rst-class:: classref-property-setget

- |void| **set_anchor_mode**\ (\ value\: :ref:`AnchorMode<enum_Camera2D_AnchorMode>`\ )
- :ref:`AnchorMode<enum_Camera2D_AnchorMode>` **get_anchor_mode**\ (\ )

Le point d'ancrage de la caméra2D.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_custom_viewport:

.. rst-class:: classref-property

:ref:`Node<class_Node>` **custom_viewport** :ref:`🔗<class_Camera2D_property_custom_viewport>`

.. rst-class:: classref-property-setget

- |void| **set_custom_viewport**\ (\ value\: :ref:`Node<class_Node>`\ )
- :ref:`Node<class_Node>` **get_custom_viewport**\ (\ )

Le nœud :ref:`Viewport<class_Viewport>` personnalisé attaché à la **Camera2D**. Si ``null`` ou que ça n'est pas un :ref:`Viewport<class_Viewport>`, ça utilise la fenêtre d'affichage par défaut à la place.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_bottom_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_bottom_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_bottom_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Bottom margin needed to drag the camera. A value of ``1`` makes the camera move only when reaching the bottom edge of the screen.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_horizontal_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_horizontal_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_drag_horizontal_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_horizontal_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_horizontal_enabled**\ (\ )

If ``true``, the camera only moves when reaching the horizontal (left and right) drag margins. If ``false``, the camera moves horizontally regardless of margins.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_horizontal_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_horizontal_offset** = ``0.0`` :ref:`🔗<class_Camera2D_property_drag_horizontal_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_horizontal_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_horizontal_offset**\ (\ )

The relative horizontal drag offset of the camera between the right (``-1``) and left (``1``) drag margins.

\ **Note:** Used to set the initial horizontal drag offset; determine the current offset; or force the current offset. It's not automatically updated when :ref:`drag_horizontal_enabled<class_Camera2D_property_drag_horizontal_enabled>` is ``true`` or the drag margins are changed.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_left_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_left_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_left_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Left margin needed to drag the camera. A value of ``1`` makes the camera move only when reaching the left edge of the screen.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_right_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_right_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_right_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Right margin needed to drag the camera. A value of ``1`` makes the camera move only when reaching the right edge of the screen.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_top_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_top_margin** = ``0.2`` :ref:`🔗<class_Camera2D_property_drag_top_margin>`

.. rst-class:: classref-property-setget

- |void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Top margin needed to drag the camera. A value of ``1`` makes the camera move only when reaching the top edge of the screen.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_vertical_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **drag_vertical_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_drag_vertical_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_drag_vertical_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_drag_vertical_enabled**\ (\ )

If ``true``, the camera only moves when reaching the vertical (top and bottom) drag margins. If ``false``, the camera moves vertically regardless of the drag margins.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_drag_vertical_offset:

.. rst-class:: classref-property

:ref:`float<class_float>` **drag_vertical_offset** = ``0.0`` :ref:`🔗<class_Camera2D_property_drag_vertical_offset>`

.. rst-class:: classref-property-setget

- |void| **set_drag_vertical_offset**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_drag_vertical_offset**\ (\ )

The relative vertical drag offset of the camera between the bottom (``-1``) and top (``1``) drag margins.

\ **Note:** Used to set the initial vertical drag offset; determine the current offset; or force the current offset. It's not automatically updated when :ref:`drag_vertical_enabled<class_Camera2D_property_drag_vertical_enabled>` is ``true`` or the drag margins are changed.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_drag_margin:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_drag_margin** = ``false`` :ref:`🔗<class_Camera2D_property_editor_draw_drag_margin>`

.. rst-class:: classref-property-setget

- |void| **set_margin_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_margin_drawing_enabled**\ (\ )

Si ``true``, dessine le rectangle de la marge de glissage de la caméra activée dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_limits:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_limits** = ``false`` :ref:`🔗<class_Camera2D_property_editor_draw_limits>`

.. rst-class:: classref-property-setget

- |void| **set_limit_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_drawing_enabled**\ (\ )

Si ``true``, dessine le rectangle des limites de la caméra activée dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_editor_draw_screen:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_draw_screen** = ``true`` :ref:`🔗<class_Camera2D_property_editor_draw_screen>`

.. rst-class:: classref-property-setget

- |void| **set_screen_drawing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_screen_drawing_enabled**\ (\ )

Si ``true``, affiche le rectangle de la caméra dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_Camera2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Contrôle si la caméra peut être active ou non. Si ``true``, la **Camera2D** deviendra la caméra principale lorsqu'elle entre dans l’arborescence de scène et il n'y a pas de caméra active actuellement (voir :ref:`Viewport.get_camera_2d()<class_Viewport_method_get_camera_2d>`).

Lorsque la caméra est actuellement active et :ref:`enabled<class_Camera2D_property_enabled>` est défini à ``false``, la **Camera2D** suivante avec cette propriété activée dans l'arbre de scène deviendra la caméra principale.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_ignore_rotation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_rotation** = ``true`` :ref:`🔗<class_Camera2D_property_ignore_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_rotation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_rotation**\ (\ )

Si ``true``, la vue rendue de la caméra n'est pas affectée par :ref:`Node2D.rotation<class_Node2D_property_rotation>` et :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_bottom** = ``10000000`` :ref:`🔗<class_Camera2D_property_limit_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La limite basse de défilement en pixels. La caméra s'arrête quand elle atteint cette valeur, mais :ref:`offset<class_Camera2D_property_offset>` peut pousser la vue au-delà de cette limite.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **limit_enabled** = ``true`` :ref:`🔗<class_Camera2D_property_limit_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_limit_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_enabled**\ (\ )

Si ``true``, les limites seront activées. Désactiver ceci permettra à la caméra de se focaliser n'importe où, car les quatre propriétés ``limit_*`` ne fonctionneront pas.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_left** = ``-10000000`` :ref:`🔗<class_Camera2D_property_limit_left>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La limite gauche de défilement en pixels. La caméra s'arrête quand elle atteint cette valeur, mais :ref:`offset<class_Camera2D_property_offset>` peut pousser la vue au-delà de cette limite.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_right** = ``10000000`` :ref:`🔗<class_Camera2D_property_limit_right>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La limite droite de défilement en pixels. La caméra s'arrête quand elle atteint cette valeur, mais :ref:`offset<class_Camera2D_property_offset>` peut pousser la vue au-delà de cette limite.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_smoothed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **limit_smoothed** = ``false`` :ref:`🔗<class_Camera2D_property_limit_smoothed>`

.. rst-class:: classref-property-setget

- |void| **set_limit_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_limit_smoothing_enabled**\ (\ )

Si ``true``, la caméra s'arrête en douceur quand elle atteint ses limites.

Cette propriété n'a aucun effet si :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` vaut ``false``.

\ **Note :** Pour mettre immédiatement à jour la position de la caméra pour être dans les limites sans ralenti, même avec ce réglage activé, appelez :ref:`reset_smoothing()<class_Camera2D_method_reset_smoothing>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_limit_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **limit_top** = ``-10000000`` :ref:`🔗<class_Camera2D_property_limit_top>`

.. rst-class:: classref-property-setget

- |void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La limite haute de défilement en pixels. La caméra s'arrête quand elle atteint cette valeur, mais :ref:`offset<class_Camera2D_property_offset>` peut pousser la vue au-delà de cette limite.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_Camera2D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Le décalage relatif de la caméra. Utile pour regarder autour ou des animations de vibrations de la caméra. Le décalage de la caméra peut dépasser les limites définies dans :ref:`limit_top<class_Camera2D_property_limit_top>`, :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`, :ref:`limit_left<class_Camera2D_property_limit_left>` et :ref:`limit_right<class_Camera2D_property_limit_right>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_position_smoothing_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **position_smoothing_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_position_smoothing_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_position_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_position_smoothing_enabled**\ (\ )

Si ``true``, la vue de la caméra se déplace de manière lisse vers sa position cible à la vitesse :ref:`position_smoothing_speed<class_Camera2D_property_position_smoothing_speed>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_position_smoothing_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **position_smoothing_speed** = ``5.0`` :ref:`🔗<class_Camera2D_property_position_smoothing_speed>`

.. rst-class:: classref-property-setget

- |void| **set_position_smoothing_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_position_smoothing_speed**\ (\ )

La vitesse en pixels par seconde de l'effet de lissage de la caméra quand :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_process_callback:

.. rst-class:: classref-property

:ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **process_callback** = ``1`` :ref:`🔗<class_Camera2D_property_process_callback>`

.. rst-class:: classref-property-setget

- |void| **set_process_callback**\ (\ value\: :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>`\ )
- :ref:`Camera2DProcessCallback<enum_Camera2D_Camera2DProcessCallback>` **get_process_callback**\ (\ )

Le callback de traitement de la caméra.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_rotation_smoothing_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rotation_smoothing_enabled** = ``false`` :ref:`🔗<class_Camera2D_property_rotation_smoothing_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_smoothing_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rotation_smoothing_enabled**\ (\ )

Si ``true``, la vue de la caméra tourne de manière lisse, via un lissage asymptotique, pour s'aligner avec sa rotation cible à la vitesse :ref:`rotation_smoothing_speed<class_Camera2D_property_rotation_smoothing_speed>`.

\ **Note :** Cette propriété n'a aucun effet si :ref:`ignore_rotation<class_Camera2D_property_ignore_rotation>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_rotation_smoothing_speed:

.. rst-class:: classref-property

:ref:`float<class_float>` **rotation_smoothing_speed** = ``5.0`` :ref:`🔗<class_Camera2D_property_rotation_smoothing_speed>`

.. rst-class:: classref-property-setget

- |void| **set_rotation_smoothing_speed**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rotation_smoothing_speed**\ (\ )

La vitesse angulaire et asymptotique de l'effet de lissage de rotation de la caméra lorsque :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_property_zoom:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **zoom** = ``Vector2(1, 1)`` :ref:`🔗<class_Camera2D_property_zoom>`

.. rst-class:: classref-property-setget

- |void| **set_zoom**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_zoom**\ (\ )

Le zoom de la caméra. Les valeurs plus élevées sont plus zoomées. Par exemple, un zoom de ``Vector2(2.0, 2.0)`` sera deux fois plus zoomé sur chaque axe (la vue couvre une zone quatre fois plus petite). Par contre, un zoom de ``Vector2(0.5, 0.5)`` sera deux fois moins zoomé sur chaque axe (la vue couvre une zone quatre fois plus grande). Les composantes X et Y doivent généralement être définies à la même valeur, sauf si vous souhaitez étirer la vue de la caméra.

\ **Note :** :ref:`FontFile.oversampling<class_FontFile_property_oversampling>` ne prend *pas* le zoom de **Camera2D** en compte. Cela signifie que zoomer/dézoomer causera les polices bitmap et les polices dynamiques rasterisées (non CDSM) d'apparaître floues ou pixelisées à moins que la police fasse partie d'un :ref:`CanvasLayer<class_CanvasLayer>` qui la fait ignorer le zoom de la caméra. Pour garantir que le texte reste net peu importe le zoom, vous pouvez activer le rendu de police CDSM en activant :ref:`ProjectSettings.gui/theme/default_font_multichannel_signed_distance_field<class_ProjectSettings_property_gui/theme/default_font_multichannel_signed_distance_field>` (s'applique uniquement à la police du projet par défaut), ou en activant **Champ de Distance Signé Multicanal** dans les options d'importation d'une DynamicFont pour les polices personnalisées. Sur les polices système, :ref:`SystemFont.multichannel_signed_distance_field<class_SystemFont_property_multichannel_signed_distance_field>` peut être activé dans l'inspecteur.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Camera2D_method_align:

.. rst-class:: classref-method

|void| **align**\ (\ ) :ref:`🔗<class_Camera2D_method_align>`

Aligne la caméra sur le nœud suivi.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_force_update_scroll:

.. rst-class:: classref-method

|void| **force_update_scroll**\ (\ ) :ref:`🔗<class_Camera2D_method_force_update_scroll>`

Force la caméra à mettre à jour le défilement immédiatement.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_drag_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Camera2D_method_get_drag_margin>`

Renvoie la marge du côté :ref:`Side<enum_@GlobalScope_Side>` spécifié. Voir aussi :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`, :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`, :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>`, et :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_limit:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_Camera2D_method_get_limit>`

Renvoie la limite de la caméra pour le côté :ref:`Side<enum_@GlobalScope_Side>` spécifié. Voir aussi :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`, :ref:`limit_top<class_Camera2D_property_limit_top>`, :ref:`limit_left<class_Camera2D_property_limit_left>`, et :ref:`limit_right<class_Camera2D_property_limit_right>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_screen_center_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_screen_center_position**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_screen_center_position>`

Renvoie le centre de l'écran du point de vue de cette caméra, dans les coordonnées globales.

\ **Note :** La position ciblée exacte de la caméra peut être différente. Voir :ref:`get_target_position()<class_Camera2D_method_get_target_position>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_screen_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_screen_rotation**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_screen_rotation>`

Renvoie la rotation actuelle de l'écran du point de vue de cette caméra.

\ **Note :** La rotation de l'écran peut être différente de :ref:`Node2D.global_rotation<class_Node2D_property_global_rotation>` si la caméra tourne de manière lisse à cause de :ref:`rotation_smoothing_enabled<class_Camera2D_property_rotation_smoothing_enabled>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_get_target_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_target_position**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_get_target_position>`

Returns this camera's target position, in global coordinates.

\ **Note:** The returned value is not the same as :ref:`Node2D.global_position<class_Node2D_property_global_position>`, as it is affected by the drag properties. It is also not the same as the current position if :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` is ``true`` (see :ref:`get_screen_center_position()<class_Camera2D_method_get_screen_center_position>`).

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_is_current:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_current**\ (\ ) |const| :ref:`🔗<class_Camera2D_method_is_current>`

Renvoie ``true`` si cette **Camera2D** est la caméra active (voir :ref:`Viewport.get_camera_2d()<class_Viewport_method_get_camera_2d>`).

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_make_current:

.. rst-class:: classref-method

|void| **make_current**\ (\ ) :ref:`🔗<class_Camera2D_method_make_current>`

Force cette **Camera2D** à devenir la caméra active courante. :ref:`enabled<class_Camera2D_property_enabled>` doit valoir ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_reset_smoothing:

.. rst-class:: classref-method

|void| **reset_smoothing**\ (\ ) :ref:`🔗<class_Camera2D_method_reset_smoothing>`

Définit la position de la caméra immédiatement à sa destination de lissage actuelle.

Cette méthode n'a aucun effet si :ref:`position_smoothing_enabled<class_Camera2D_property_position_smoothing_enabled>` vaut ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_set_drag_margin:

.. rst-class:: classref-method

|void| **set_drag_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, drag_margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Camera2D_method_set_drag_margin>`

Définit la marge du côté :ref:`Side<enum_@GlobalScope_Side>` spécifié. Voir aussi :ref:`drag_bottom_margin<class_Camera2D_property_drag_bottom_margin>`, :ref:`drag_top_margin<class_Camera2D_property_drag_top_margin>`, :ref:`drag_left_margin<class_Camera2D_property_drag_left_margin>`, et :ref:`drag_right_margin<class_Camera2D_property_drag_right_margin>`.

.. rst-class:: classref-item-separator

----

.. _class_Camera2D_method_set_limit:

.. rst-class:: classref-method

|void| **set_limit**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, limit\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Camera2D_method_set_limit>`

Définit la limite de la caméra pour le côté :ref:`Side<enum_@GlobalScope_Side>` spécifié. Voir aussi :ref:`limit_bottom<class_Camera2D_property_limit_bottom>`, :ref:`limit_top<class_Camera2D_property_limit_top>`, :ref:`limit_left<class_Camera2D_property_limit_left>`, et :ref:`limit_right<class_Camera2D_property_limit_right>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
