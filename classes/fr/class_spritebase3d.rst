:github_url: hide

.. _class_SpriteBase3D:

SpriteBase3D
============

**Hérite de :** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`AnimatedSprite3D<class_AnimatedSprite3D>`, :ref:`Sprite3D<class_Sprite3D>`

Nœud sprite 2D dans l’environnement 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Un nœud qui affiche des informations de texture 2D dans un environnement 3D. Voir aussi :ref:`Sprite3D<class_Sprite3D>` où de nombreuses autres propriétés sont définies.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_antialiasing_edge<class_SpriteBase3D_property_alpha_antialiasing_edge>` | ``0.0``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` | :ref:`alpha_antialiasing_mode<class_SpriteBase3D_property_alpha_antialiasing_mode>` | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>`             | :ref:`alpha_cut<class_SpriteBase3D_property_alpha_cut>`                             | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_hash_scale<class_SpriteBase3D_property_alpha_hash_scale>`               | ``1.0``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_scissor_threshold<class_SpriteBase3D_property_alpha_scissor_threshold>` | ``0.5``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                  | :ref:`axis<class_SpriteBase3D_property_axis>`                                       | ``2``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`         | :ref:`billboard<class_SpriteBase3D_property_billboard>`                             | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`centered<class_SpriteBase3D_property_centered>`                               | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`double_sided<class_SpriteBase3D_property_double_sided>`                       | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`fixed_size<class_SpriteBase3D_property_fixed_size>`                           | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`flip_h<class_SpriteBase3D_property_flip_h>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`flip_v<class_SpriteBase3D_property_flip_v>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                       | :ref:`modulate<class_SpriteBase3D_property_modulate>`                               | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`no_depth_test<class_SpriteBase3D_property_no_depth_test>`                     | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                                   | :ref:`offset<class_SpriteBase3D_property_offset>`                                   | ``Vector2(0, 0)``     |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`pixel_size<class_SpriteBase3D_property_pixel_size>`                           | ``0.01``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                           | :ref:`render_priority<class_SpriteBase3D_property_render_priority>`                 | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`shaded<class_SpriteBase3D_property_shaded>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`         | :ref:`texture_filter<class_SpriteBase3D_property_texture_filter>`                   | ``3``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`transparent<class_SpriteBase3D_property_transparent>`                         | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>` | :ref:`generate_triangle_mesh<class_SpriteBase3D_method_generate_triangle_mesh>`\ (\ ) |const|                                                                |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                 | :ref:`get_draw_flag<class_SpriteBase3D_method_get_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|                            |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`               | :ref:`get_item_rect<class_SpriteBase3D_method_get_item_rect>`\ (\ ) |const|                                                                                  |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_draw_flag<class_SpriteBase3D_method_set_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_SpriteBase3D_DrawFlags:

.. rst-class:: classref-enumeration

enum **DrawFlags**: :ref:`🔗<enum_SpriteBase3D_DrawFlags>`

.. _class_SpriteBase3D_constant_FLAG_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_TRANSPARENT** = ``0``

Si elle est définie, la transparence de la texture et l'opacité sont utilisées pour rendre invisibles ces parties du sprite.

.. _class_SpriteBase3D_constant_FLAG_SHADED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_SHADED** = ``1``

Si définies, les lumières dans l'environnement affecte le sprite.

.. _class_SpriteBase3D_constant_FLAG_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_DOUBLE_SIDED** = ``2``

Si défini, le texture sera aussi visible de derrière. Sinon, la texture sera invisible en regardant par derrière.

.. _class_SpriteBase3D_constant_FLAG_DISABLE_DEPTH_TEST:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_DISABLE_DEPTH_TEST** = ``3``

Désactive le test de profondeur, de sorte que cet objet sera dessiné devant tous les autres. Cependant, les objets dessinés après lui dans l'ordre d'affichage peuvent être devant.

.. _class_SpriteBase3D_constant_FLAG_FIXED_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_FIXED_SIZE** = ``4``

L'étiquette est mise à l'échelle suivant la distance pour qu'elle apparaisse toujours à la même taille à l'écran.

.. _class_SpriteBase3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_MAX** = ``5``

Représente la taille de l'énumération :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`.

.. rst-class:: classref-item-separator

----

.. _enum_SpriteBase3D_AlphaCutMode:

.. rst-class:: classref-enumeration

enum **AlphaCutMode**: :ref:`🔗<enum_SpriteBase3D_AlphaCutMode>`

.. _class_SpriteBase3D_constant_ALPHA_CUT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_DISABLED** = ``0``

Ce mode réalise un mélange l'opacité standard. Il peut afficher des zones translucides, mais des problèmes de tri selon la transparence peuvent être visibles lorsque plusieurs matériaux transparents se chevauchent.

.. _class_SpriteBase3D_constant_ALPHA_CUT_DISCARD:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_DISCARD** = ``1``

Ce mode n'autorise uniquement que les pixels entièrement transparents ou entièrement opaques. Des bords nets seront visibles à moins qu'une certaine forme d'anti-crénelage dans l'espace-écran ne soit activée (voir :ref:`ProjectSettings.rendering/anti_aliasing/quality/screen_space_aa<class_ProjectSettings_property_rendering/anti_aliasing/quality/screen_space_aa>`). Ce mode a cependant l'avantage de ne pas souffrir de problèmes de tri de transparence lorsque plusieurs matériaux transparents se chevauchent. Ce mode est également connu sous le nom d'*alpha testing* ou *1-bit transparency*.

.. _class_SpriteBase3D_constant_ALPHA_CUT_OPAQUE_PREPASS:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_OPAQUE_PREPASS** = ``2``

Ce mode dessine des pixels entièrement opaques lors de la pré-passe de profondeur. Ceci est plus lent que :ref:`ALPHA_CUT_DISABLED<class_SpriteBase3D_constant_ALPHA_CUT_DISABLED>` ou :ref:`ALPHA_CUT_DISCARD<class_SpriteBase3D_constant_ALPHA_CUT_DISCARD>`, mais il permet d'afficher des zones translucides et des bords lisses tout en utilisant un tri approprié.

.. _class_SpriteBase3D_constant_ALPHA_CUT_HASH:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_HASH** = ``3``

Ce mode coupe toutes les valeurs en dessous d'un seuil dépendant de la position, le reste restera opaque.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_SpriteBase3D_property_alpha_antialiasing_edge:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_antialiasing_edge** = ``0.0`` :ref:`🔗<class_SpriteBase3D_property_alpha_antialiasing_edge>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing_edge**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_antialiasing_edge**\ (\ )

Le seuil à partir duquel l'anticrénalage sera appliqué sur le canal alpha.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_antialiasing_mode:

.. rst-class:: classref-property

:ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **alpha_antialiasing_mode** = ``0`` :ref:`🔗<class_SpriteBase3D_property_alpha_antialiasing_mode>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing**\ (\ value\: :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`\ )
- :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **get_alpha_antialiasing**\ (\ )

Le type d’anticrénelage alpha à appliquer.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_cut:

.. rst-class:: classref-property

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **alpha_cut** = ``0`` :ref:`🔗<class_SpriteBase3D_property_alpha_cut>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_cut_mode**\ (\ value\: :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>`\ )
- :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **get_alpha_cut_mode**\ (\ )

The alpha cutting mode to use for the sprite.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_hash_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_hash_scale** = ``1.0`` :ref:`🔗<class_SpriteBase3D_property_alpha_hash_scale>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_hash_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_hash_scale**\ (\ )

L'échelle de hachage pour Alpha Hash. Valeurs recommandées entre ``0`` et ``2``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_scissor_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_scissor_threshold** = ``0.5`` :ref:`🔗<class_SpriteBase3D_property_alpha_scissor_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_scissor_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_scissor_threshold**\ (\ )

Le seuil à partir duquel le ciseau alpha ignorera les valeurs.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_axis:

.. rst-class:: classref-property

:ref:`Axis<enum_Vector3_Axis>` **axis** = ``2`` :ref:`🔗<class_SpriteBase3D_property_axis>`

.. rst-class:: classref-property-setget

- |void| **set_axis**\ (\ value\: :ref:`Axis<enum_Vector3_Axis>`\ )
- :ref:`Axis<enum_Vector3_Axis>` **get_axis**\ (\ )

La direction que pointe la face avant de cette texture.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_billboard:

.. rst-class:: classref-property

:ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **billboard** = ``0`` :ref:`🔗<class_SpriteBase3D_property_billboard>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_mode**\ (\ value\: :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`\ )
- :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **get_billboard_mode**\ (\ )

Le mode de billboard à utiliser pour le sprite.

\ **Note :** Lorsque la mode de billboard est activé et que le matériau projette également des ombres, les billboards feront face à **la** caméra dans la scène lors du rendu des ombres. Dans les scènes avec plusieurs caméras, l'ombre prévue ne peut pas être déterminée et cela résultera en un comportement indéfini. Voir la `Pull Request GitHub #72638 <https://github.com/godotengine/godot/pull/72638>`__ pour plus de détails.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_SpriteBase3D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

Si ``true``, la texture sera centrée.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_double_sided:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_sided** = ``true`` :ref:`🔗<class_SpriteBase3D_property_double_sided>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Si ``true``, la texture est aussi affichée de dos, si ``false``, elle est invisible de dos.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_fixed_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fixed_size** = ``false`` :ref:`🔗<class_SpriteBase3D_property_fixed_size>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Si ``true``, la texture est rendue à la même taille indépendamment de la distance. La taille de la texture à l'écran est la même que si la caméra était à ``1.0`` unités de l'origine de la texture, peu importe la distance réelle à la caméra. Le champ de vision de la :ref:`Camera3D<class_Camera3D>` (ou :ref:`Camera3D.size<class_Camera3D_property_size>` en mode orthogonal/frustum) affecte toujours la taille à laquelle le sprite est dessiné.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_SpriteBase3D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Si ``true``, la texture est inversée horizontalement.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_SpriteBase3D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Si ``true``, la texture est inversée verticalement.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SpriteBase3D_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Une valeur de couleur utilisée pour *multiplier* les couleurs de la texture. Peut être utilisé pour la coloration d'ambiance ou pour simuler la couleur de la lumière ambiante.

\ **Note :** Contrairement à :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>` pour 2D, les couleurs avec des valeurs supérieures à ``1.0`` (overbright) ne sont pas supportées.

\ **Note :** Si un :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>` est défini sur le **SpriteBase3D**, la redéfinition du matériau doit être configurée pour prendre en compte les couleurs des sommets pour l'albédo. Sinon, la couleur définie dans :ref:`modulate<class_SpriteBase3D_property_modulate>` sera ignorée. Pour un :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` doit valoir ``true``. Pour un :ref:`ShaderMaterial<class_ShaderMaterial>`, ``ALBEDO *= COLOR.rgb;`` doit être inséré dans la fonction ``fragment()`` du shader.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_no_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **no_depth_test** = ``false`` :ref:`🔗<class_SpriteBase3D_property_no_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Si ``true``, les tests de profondeur sont désactivés et l'objet sera dessiné suivant son ordre de rendu et non suivant sa distance.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_SpriteBase3D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Le décalage du dessin de la texture.

\ **Note :** Lorsque vous augmentez :ref:`offset<class_SpriteBase3D_property_offset>`.y dans Sprite3D, le sprite se déplace vers le haut dans l'espace global (c.-à-d. +Y est le haut).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.01`` :ref:`🔗<class_SpriteBase3D_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

La taille d'un des pixels de la sprite pour définir sa taille en 3D.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** = ``0`` :ref:`🔗<class_SpriteBase3D_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Définit la priorité de rendu pour le texte. Les objets plus prioritaires seront affichés par-dessus les objets les moins prioritaites.

\ **Note :** Cela ne s'applique que si :ref:`alpha_cut<class_SpriteBase3D_property_alpha_cut>` est défini à :ref:`ALPHA_CUT_DISABLED<class_SpriteBase3D_constant_ALPHA_CUT_DISABLED>` (c'est la valeur par défaut).

\ **Note :** Cela ne s'applique qu'au tri des objets transparents. Cela n'affectera pas la façon dont les objets transparents sont triés par rapport aux objets opaques. C'est parce que les objets opaques ne sont pas triés, alors que les objets transparents sont triés de l'arrière vers l'avant (et suivant leur priorité).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_shaded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shaded** = ``false`` :ref:`🔗<class_SpriteBase3D_property_shaded>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Si ``true``, la :ref:`Light3D<class_Light3D>` dans l':ref:`Environment<class_Environment>` a un effet sur le sprite.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **texture_filter** = ``3`` :ref:`🔗<class_SpriteBase3D_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`\ )
- :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **get_texture_filter**\ (\ )

Drapeaux de filtrage pour la texture.

\ **Note :** Le filtrage linéaire peut provoquer des artéfacts autour des bords, qui sont particulièrement visibles sur les textures opaques. Pour éviter cela, utilisez des textures avec des couleurs transparentes ou identiques autour des bords.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_transparent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transparent** = ``true`` :ref:`🔗<class_SpriteBase3D_property_transparent>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Si ``true``, la transparence et l'opacité des textures sont utilisées pour rendre invisibles ces parties du sprite.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SpriteBase3D_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_SpriteBase3D_method_generate_triangle_mesh>`

Renvoie un :ref:`TriangleMesh<class_TriangleMesh>` avec les sommets du sprite suivant sa configuration actuelle (comme :ref:`axis<class_SpriteBase3D_property_axis>` et :ref:`pixel_size<class_SpriteBase3D_property_pixel_size>`).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_get_draw_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const| :ref:`🔗<class_SpriteBase3D_method_get_draw_flag>`

Renvoie la valeur de l'option donnée.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_get_item_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_item_rect**\ (\ ) |const| :ref:`🔗<class_SpriteBase3D_method_get_item_rect>`

Renvoie le rectangle représentant ce sprite.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_set_draw_flag:

.. rst-class:: classref-method

|void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpriteBase3D_method_set_draw_flag>`

Si ``true``, le drapeau spécifié sera activé.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
