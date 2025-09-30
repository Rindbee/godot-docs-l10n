:github_url: hide

.. _class_Geometry2D:

Geometry2D
==========

**Hérite de :** :ref:`Object<class_Object>`

Fournit des méthodes pour certaines opérations géométriques 2D communes.

.. rst-class:: classref-introduction-group

Description
-----------

Fournit un ensemble de fonctions d'aide pour créer des formes géométriques, calculer les intersections entre les formes et traiter diverses autres opérations géométriques en 2D.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\]                     | :ref:`bresenham_line<class_Geometry2D_method_bresenham_line>`\ (\ from\: :ref:`Vector2i<class_Vector2i>`, to\: :ref:`Vector2i<class_Vector2i>`\ )                                                                                                                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`clip_polygons<class_Geometry2D_method_clip_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`clip_polyline_with_polygon<class_Geometry2D_method_clip_polyline_with_polygon>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                  |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                              | :ref:`convex_hull<class_Geometry2D_method_convex_hull>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                                 |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`decompose_polygon_in_convex<class_Geometry2D_method_decompose_polygon_in_convex>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`exclude_polygons<class_Geometry2D_method_exclude_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                    | :ref:`get_closest_point_to_segment<class_Geometry2D_method_get_closest_point_to_segment>`\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ )                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                                    | :ref:`get_closest_point_to_segment_uncapped<class_Geometry2D_method_get_closest_point_to_segment_uncapped>`\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ )                                                                            |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`                              | :ref:`get_closest_points_between_segments<class_Geometry2D_method_get_closest_points_between_segments>`\ (\ p1\: :ref:`Vector2<class_Vector2>`, q1\: :ref:`Vector2<class_Vector2>`, p2\: :ref:`Vector2<class_Vector2>`, q2\: :ref:`Vector2<class_Vector2>`\ )                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`intersect_polygons<class_Geometry2D_method_intersect_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`intersect_polyline_with_polygon<class_Geometry2D_method_intersect_polyline_with_polygon>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                        |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_point_in_circle<class_Geometry2D_method_is_point_in_circle>`\ (\ point\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ )                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_point_in_polygon<class_Geometry2D_method_is_point_in_polygon>`\ (\ point\: :ref:`Vector2<class_Vector2>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`is_polygon_clockwise<class_Geometry2D_method_is_polygon_clockwise>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                              |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                                    | :ref:`line_intersects_line<class_Geometry2D_method_line_intersects_line>`\ (\ from_a\: :ref:`Vector2<class_Vector2>`, dir_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, dir_b\: :ref:`Vector2<class_Vector2>`\ )                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>`                                              | :ref:`make_atlas<class_Geometry2D_method_make_atlas>`\ (\ sizes\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`merge_polygons<class_Geometry2D_method_merge_polygons>`\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`offset_polygon<class_Geometry2D_method_offset_polygon>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0\ )                                                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`offset_polyline<class_Geometry2D_method_offset_polyline>`\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0, end_type\: :ref:`PolyEndType<enum_Geometry2D_PolyEndType>` = 3\ ) |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`point_is_inside_triangle<class_Geometry2D_method_point_is_inside_triangle>`\ (\ point\: :ref:`Vector2<class_Vector2>`, a\: :ref:`Vector2<class_Vector2>`, b\: :ref:`Vector2<class_Vector2>`, c\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                             |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                                        | :ref:`segment_intersects_circle<class_Geometry2D_method_segment_intersects_circle>`\ (\ segment_from\: :ref:`Vector2<class_Vector2>`, segment_to\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ )                             |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                                    | :ref:`segment_intersects_segment<class_Geometry2D_method_segment_intersects_segment>`\ (\ from_a\: :ref:`Vector2<class_Vector2>`, to_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, to_b\: :ref:`Vector2<class_Vector2>`\ )                                                     |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                                  | :ref:`triangulate_delaunay<class_Geometry2D_method_triangulate_delaunay>`\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                               |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                                  | :ref:`triangulate_polygon<class_Geometry2D_method_triangulate_polygon>`\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                                                                                                                                |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Geometry2D_PolyBooleanOperation:

.. rst-class:: classref-enumeration

enum **PolyBooleanOperation**: :ref:`🔗<enum_Geometry2D_PolyBooleanOperation>`

.. _class_Geometry2D_constant_OPERATION_UNION:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_UNION** = ``0``

Crée des régions où au moins un des polygones sujets ou de découpe est rempli.

.. _class_Geometry2D_constant_OPERATION_DIFFERENCE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_DIFFERENCE** = ``1``

Crée des régions où le polygone sujet est rempli sauf la où le polygone de découpe est rempli.

.. _class_Geometry2D_constant_OPERATION_INTERSECTION:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_INTERSECTION** = ``2``

Crée des régions où les polygones sujets et de découpe sont tous les deux remplis.

.. _class_Geometry2D_constant_OPERATION_XOR:

.. rst-class:: classref-enumeration-constant

:ref:`PolyBooleanOperation<enum_Geometry2D_PolyBooleanOperation>` **OPERATION_XOR** = ``3``

Crée des régions où les polygones sujet ou de découpe sont remplis, mais pas où les deux sont remplis.

.. rst-class:: classref-item-separator

----

.. _enum_Geometry2D_PolyJoinType:

.. rst-class:: classref-enumeration

enum **PolyJoinType**: :ref:`🔗<enum_Geometry2D_PolyJoinType>`

.. _class_Geometry2D_constant_JOIN_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_SQUARE** = ``0``

Squaring is applied uniformally at all convex edge joins at ``1 * delta``.

.. _class_Geometry2D_constant_JOIN_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_ROUND** = ``1``

Bien que des chemins aplatis ne peuvent jamais parfaitement tracer un arc, ils sont approximés par une série de cordes d'arc.

.. _class_Geometry2D_constant_JOIN_MITER:

.. rst-class:: classref-enumeration-constant

:ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` **JOIN_MITER** = ``2``

There's a necessary limit to mitered joins since offsetting edges that join at very acute angles will produce excessively long and narrow "spikes". For any given edge join, when miter offsetting would exceed that maximum distance, "square" joining is applied.

.. rst-class:: classref-item-separator

----

.. _enum_Geometry2D_PolyEndType:

.. rst-class:: classref-enumeration

enum **PolyEndType**: :ref:`🔗<enum_Geometry2D_PolyEndType>`

.. _class_Geometry2D_constant_END_POLYGON:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_POLYGON** = ``0``

Les points d'extrémité sont joints en utilisant la valeur de :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` et le chemin rempli en un polygone.

.. _class_Geometry2D_constant_END_JOINED:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_JOINED** = ``1``

Les points d'extrémité sont joints en utilisant la valeur de :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` et le chemin rempli en une polyligne.

.. _class_Geometry2D_constant_END_BUTT:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_BUTT** = ``2``

Les bouts sont carrés sans être étendus.

.. _class_Geometry2D_constant_END_SQUARE:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_SQUARE** = ``3``

Les bouts seront carrés et étendus de ``delta`` unités.

.. _class_Geometry2D_constant_END_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`PolyEndType<enum_Geometry2D_PolyEndType>` **END_ROUND** = ``4``

Les bouts seront arrondis et étendus de ``delta`` unités.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Geometry2D_method_bresenham_line:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector2i<class_Vector2i>`\] **bresenham_line**\ (\ from\: :ref:`Vector2i<class_Vector2i>`, to\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Geometry2D_method_bresenham_line>`

Renvoie le `segment de Bresenham <https://fr.m.wikipedia.org/wiki/Algorithme_de_trac%C3%A9_de_segment_de_Bresenham>`__ entre les points ``from`` et ``to``. Un segmenr Bresenham est une série de pixels qui dessine un segment et est toujours de 1-pixel d'épaisseur sur chaque ligne et colonne du dessin (ni plus, ni moins).

Exemple de code pour dessiner une ligne entre deux nœuds :ref:`Marker2D<class_Marker2D>` utilisant une série d'appels à :ref:`CanvasItem.draw_rect()<class_CanvasItem_method_draw_rect>`\  :

::

    func _draw():
        for pixel in Geometry2D.bresenham_line($MarkerA.position, $MarkerB.position):
            draw_rect(Rect2(pixel, Vector2.ONE), Color.WHITE)

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_clip_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **clip_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_clip_polygons>`

Découpe le ``polygon_a`` avec le ``polygon_b`` et renvoie une tableau de polygones découpés. Cela effectue :ref:`OPERATION_DIFFERENCE<class_Geometry2D_constant_OPERATION_DIFFERENCE>` entre les polygones. Renvoie un tableau vide si ``polygon_b`` recouvre complètement ``polygon_a``.

Si ``polygon_b`` est recouvert complément par ``polygon_a``, renvoie un polygone extérieur (délimitant) et un polygone intérieur (trou) qui peuvent être distingués en appelant :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_clip_polyline_with_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **clip_polyline_with_polygon**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_clip_polyline_with_polygon>`

Découpe la polyligne ``polyline`` avec le polygone ``polygon`` et renvoie un tableau de polylignes découpées. Cela effectue :ref:`OPERATION_DIFFERENCE<class_Geometry2D_constant_OPERATION_DIFFERENCE>` entre la polyligne et le polygone. Cette opération peut être pensée comme couper une ligne avec une forme fermée.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_convex_hull:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **convex_hull**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_convex_hull>`

Selon un tableau de :ref:`Vector2<class_Vector2>`\ s donné, renvoie l'enveloppe convexe en tant que liste de points dans le sens inverse des aiguilles d'une montre. Le dernier point est le même que le premier.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_decompose_polygon_in_convex:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **decompose_polygon_in_convex**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_decompose_polygon_in_convex>`

Décompose le ``polygon`` en plusieurs enveloppes convexes et renvoie un tableau de :ref:`PackedVector2Array<class_PackedVector2Array>`\ s.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_exclude_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **exclude_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_exclude_polygons>`

Exclut mutuellement la zone commune définie par l'intersection de ``polygon_a`` et ``polygon_b`` (voir :ref:`intersect_polygons()<class_Geometry2D_method_intersect_polygons>`) et renvoie un tableau de polygones exclus. Cela interprète :ref:`OPERATION_XOR<class_Geometry2D_constant_OPERATION_XOR>` entre les polygones. En d'autres termes, renvoie tout sauf la zone commune entre les polygones.

L'opération peut se résulter en un polygone extérieur (bordure) et un polygone intérieur (trou) produits qui pourraient être distingués en appelant :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_point_to_segment:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point_to_segment**\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_point_to_segment>`

Renvoie le point 2D sur le segment 2D (``s1``, ``s2``) qui est le plus proche du ``point`` donné. Le point renvoyé sera toujours dans le segment spécifié.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_point_to_segment_uncapped:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_closest_point_to_segment_uncapped**\ (\ point\: :ref:`Vector2<class_Vector2>`, s1\: :ref:`Vector2<class_Vector2>`, s2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_point_to_segment_uncapped>`

Renvoie le point 2D sur la ligne 2D définie par (``s1``, ``s2``) qui est le plus proche du ``point`` donné. Le point renvoyé peut être à l'intérieur du segment (``s1``, ``s2``) ou à l'extérieur, c'est-à-dire quelque part sur la ligne s'étendant du segment.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_get_closest_points_between_segments:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_closest_points_between_segments**\ (\ p1\: :ref:`Vector2<class_Vector2>`, q1\: :ref:`Vector2<class_Vector2>`, p2\: :ref:`Vector2<class_Vector2>`, q2\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_get_closest_points_between_segments>`

À partir de deux segments 2D (``p1``, ``q1``) et (``p2``, ``q2``), trouve les deux points sur chaque segment qui sont les plus proches l'un de l'autre. Renvoie un :ref:`PackedVector2Array<class_PackedVector2Array>` qui contient le point sur (``p1``, ``q1``) ainsi que celui sur (``p2``, ``q2``).

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_intersect_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **intersect_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_intersect_polygons>`

Intersectes ``polygon_a`` avec ``polygon_b`` et renvoie un tableau des polygones intersectés. Cela effectue entre les polygones :ref:`OPERATION_INTERSECTION<class_Geometry2D_constant_OPERATION_INTERSECTION>`. En d'autres termes, renvoie la zone commune partagée par les polygones. Renvoie un tableau vide si aucune intersection ne se produit.

L'opération peut se résulter en un polygone extérieur (bordure) et un polygone intérieur (trou) produits qui pourraient être distingués en appelant :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_intersect_polyline_with_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **intersect_polyline_with_polygon**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_intersect_polyline_with_polygon>`

Intersecte la polyligne ``polyline`` avec le polygone ``polygon`` et renvoie un tableau de polylignes intersectées. Cela se effectue :ref:`OPERATION_INTERSECTION<class_Geometry2D_constant_OPERATION_INTERSECTION>` entre la polyligne et le polygone. Cette opération peut être considérée comme hacher une ligne avec une forme fermée.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_point_in_circle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_in_circle**\ (\ point\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry2D_method_is_point_in_circle>`

Renvoie ``true`` si ``point`` se trouve à l'intérieur du cercle ou s'il est situé exactement *sur* la limite du cercle, sinon renvoie ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_point_in_polygon:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_in_polygon**\ (\ point\: :ref:`Vector2<class_Vector2>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_is_point_in_polygon>`

Renvoie ``true`` si ``point`` est à l'intérieur du polygone ``polygon`` ou s'il est situé exactement *sur* la limite de polygone, renvoie sinon ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_is_polygon_clockwise:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_polygon_clockwise**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_is_polygon_clockwise>`

Renvoie ``true`` si les sommets du polygone ``polygon`` sont triés dans le sens des aiguilles d'une montre, sinon renvoie ``false``.

\ **Note :** Suppose un système de coordonnées cartésiennes où ``+x`` est la droite et ``+y`` est le haut. Si on utilise des coordonnées de l'écran (``+y`` est le bas), le résultat devra être inversé (c.-à-d. un résultat ``true`` indiquera le sens inverse des aiguilles d'une montre).

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_line_intersects_line:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **line_intersects_line**\ (\ from_a\: :ref:`Vector2<class_Vector2>`, dir_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, dir_b\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_line_intersects_line>`

Renvoie le point d'intersection entre les deux lignes (``from_a``, ``dir_a``) et (``from_b``, ``dir_b``). Renvoie un :ref:`Vector2<class_Vector2>`, ou ``null`` si les lignes sont parallèles.

\ ``from`` et ``dir`` ne sont *pas* des points finaux d'un segment ou d'un rayon, mais la pente (``dir``) et un point connu (``from``) sur cette ligne.


.. tabs::

 .. code-tab:: gdscript

    var from_a = Vector2.ZERO
    var dir_a = Vector2.RIGHT
    var from_b = Vector2.DOWN

    # Renvoie Vector2(1, 0)
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2(1, -1))
    # Renvoie Vector2(-1, 0)
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2(-1, -1))
    # Renvoie null
    Geometry2D.line_intersects_line(from_a, dir_a, from_b, Vector2.RIGHT)

 .. code-tab:: csharp

    var fromA = Vector2.Zero;
    var dirA = Vector2.Right;
    var fromB = Vector2.Down;

    // Renvoie new Vector2(1, 0)
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, new Vector2(1, -1));
    // Renvoie new Vector2(-1, 0)
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, new Vector2(-1, -1));
    // Renvoie null
    Geometry2D.LineIntersectsLine(fromA, dirA, fromB, Vector2.Right);



.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_make_atlas:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **make_atlas**\ (\ sizes\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_make_atlas>`

À partir d'un tableau de :ref:`Vector2<class_Vector2>` représentant des tuiles, construit un atlas. Le dictionnaire renvoyé a deux clés : ``points`` est un :ref:`PackedVector2Array<class_PackedVector2Array>` qui précise les positions de chaque tuile, et ``size`` contient la taille globale de l'atlas entier sous forme d'un :ref:`Vector2i<class_Vector2i>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_merge_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **merge_polygons**\ (\ polygon_a\: :ref:`PackedVector2Array<class_PackedVector2Array>`, polygon_b\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_merge_polygons>`

Fusionne (combine) les polygones ``polygon_a`` et ``polygon_b`` et renvoie un tableau de polygones fusionnés. Cela effectue :ref:`OPERATION_UNION<class_Geometry2D_constant_OPERATION_UNION>` entre les polygones.

L'opération peut résulter en un polygone extérieur (les bords) et plusieurs polygones internes (les trous) qui pourraient être distingués en appelant :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_offset_polygon:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **offset_polygon**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0\ ) :ref:`🔗<class_Geometry2D_method_offset_polygon>`

Gonfle ou dégonfle le polygone ``polygon`` par une quantité de ``delta`` unités (pixels). Si ``delta`` est positif, le polygone grandit vers l'extérieur. Si ``delta`` est négatif, le polygone rétrécit vers l'intérieur. Renvoie une liste de polygones parce que le gonflage/dégonflage peut produire plusieurs polygones distincts. Renvoie un tableau vide si ``delta`` est négatif et que la valeur absolue de celui-ci dépasse approximativement les dimensions du rectangle délimitant minimal du polygone.

Les sommets de chaque polygone sont arrondis suivant ``join_type``.

L'opération peut résulter un polygone extérieur (la limite extérieure) et plusieurs polygones intérieurs (représentant les trous) qui peuvent être distingués en appelant :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

\ **Note :** Pour translater les sommets du polygone spécifiquement, multipliez les par une :ref:`Transform2D<class_Transform2D>`\  :


.. tabs::

 .. code-tab:: gdscript

    var polygone = PackedVector2Array([Vector2(0, 0), Vector2(100, 0), Vector2(100, 100), Vector2(0, 100)])
    var decalage = Vector2(50, 50)
    polygone = Transform2D(0, decalage) * polygone
    print(polygone) # Affiche [(50.0, 50.0), (150.0, 50.0), (150.0, 150.0), (50.0, 150.0)]

 .. code-tab:: csharp

    var polygone = new Vector2[] { new Vector2(0, 0), new Vector2(100, 0), new Vector2(100, 100), new Vector2(0, 100)};
    var decalage = new Vector2(50, 50);
    polygone = new Transform2D(0, decalage) * polygone;
    GD.Print((Variant)polygone); // Affiche [(50, 50), (150, 50), (150, 150), (50, 150)]



.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_offset_polyline:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **offset_polyline**\ (\ polyline\: :ref:`PackedVector2Array<class_PackedVector2Array>`, delta\: :ref:`float<class_float>`, join_type\: :ref:`PolyJoinType<enum_Geometry2D_PolyJoinType>` = 0, end_type\: :ref:`PolyEndType<enum_Geometry2D_PolyEndType>` = 3\ ) :ref:`🔗<class_Geometry2D_method_offset_polyline>`

Gonfle ou dégonfle la ``polyline`` par ``delta`` unités (pixels), produisant des polygones. Si ``delta`` est positif, la polyligne grandit vers l'extérieur. Renvoie une liste de polygones car le gonflage/dégonflage peut produire plusieurs polygones distincts. Si ``delta`` est négatif, renvoie un tableau vide.

Les sommets de chaque polygone sont arrondis suivant ``join_type``.

Chaque point d'extrémité du polygone sera arrondi suivant ``end_type``.

L'opération peut se résulter en un polygone extérieur (bordure) et un polygone intérieur (trou) produits qui pourraient être distingués en appelant :ref:`is_polygon_clockwise()<class_Geometry2D_method_is_polygon_clockwise>`.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_point_is_inside_triangle:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **point_is_inside_triangle**\ (\ point\: :ref:`Vector2<class_Vector2>`, a\: :ref:`Vector2<class_Vector2>`, b\: :ref:`Vector2<class_Vector2>`, c\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Geometry2D_method_point_is_inside_triangle>`

Renvoie si ``point`` est à l'intérieur du triangle défini par les points ``a``, ``b`` et ``c``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_segment_intersects_circle:

.. rst-class:: classref-method

:ref:`float<class_float>` **segment_intersects_circle**\ (\ segment_from\: :ref:`Vector2<class_Vector2>`, segment_to\: :ref:`Vector2<class_Vector2>`, circle_position\: :ref:`Vector2<class_Vector2>`, circle_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry2D_method_segment_intersects_circle>`

Étant donné le segment 2D (``segment_from``, ``segment_to``), renvoie la position sur le segment (en tant que nombre entre 0 et 1) à laquelle le segment touche le cercle situé à la position ``circle_position`` et avec un rayon ``circle_radius``. Si le segment n'intersecte pas le cercle, -1 est renvoyé (c'est aussi le cas si la ligne prolongeant le segment intersecte le cercle, mais pas le segment).

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_segment_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **segment_intersects_segment**\ (\ from_a\: :ref:`Vector2<class_Vector2>`, to_a\: :ref:`Vector2<class_Vector2>`, from_b\: :ref:`Vector2<class_Vector2>`, to_b\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Geometry2D_method_segment_intersects_segment>`

Vérifie si les deux segments (de ``from_a`` à ``to_a``) et (de ``from_b`` à ``to_b``) s'intersectent. Si oui, renvoie le point d'intersection en un :ref:`Vector2<class_Vector2>`. Si aucune intersection n'a lieu, renvoie ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_triangulate_delaunay:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **triangulate_delaunay**\ (\ points\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_triangulate_delaunay>`

Triangule la zone spécifiée par un ensemble discret de ``points`` de sorte à ce qu'aucun point n'est à l'intérieur des cercles circonscrits de tout triangle résultant. Renvoie un :ref:`PackedInt32Array<class_PackedInt32Array>` où chaque triangle se compose de trois indices de point consécutifs dans ``points`` (c.-à-d. le tableau renvoyé aura ``n * 3`` éléments, avec ``n`` le nombre de triangles trouvés). Si la triangulation n'a pas réussi, un :ref:`PackedInt32Array<class_PackedInt32Array>` vide est renvoyé.

.. rst-class:: classref-item-separator

----

.. _class_Geometry2D_method_triangulate_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **triangulate_polygon**\ (\ polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Geometry2D_method_triangulate_polygon>`

Triangule le polygone spécifié par les points dans ``polygon``. Renvoie un :ref:`PackedInt32Array<class_PackedInt32Array>` où chaque triangle se compose de trois indices de point consécutifs de ``polygon`` (c'est-à-dire le tableau renvoyé aura ``n * 3`` éléments, avec ``n`` étant le nombre de triangles trouvés). Les triangles de sortie seront toujours dans le sens anti-horaire, et le contour sera inversé si c'est dans le sens horaire. Si la triangulation n'a pas réussi, un :ref:`PackedInt32Array<class_PackedInt32Array>` vide sera renvoyé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
