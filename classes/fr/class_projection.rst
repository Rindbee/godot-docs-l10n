:github_url: hide

.. _class_Projection:

Projection
==========

Une matrice 4×4 pour les transformations projectives 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Une matrice 4×4 utilisée pour les transformations projectives 3D. Elle peut représenter des transformations telles que la translation, la rotation, l'échelle, le cisaillement et la division de perspective. Elle se compose de quatre colonnes :ref:`Vector4<class_Vector4>`.

Pour des transformations purement linéaires (translation, rotation et échelle), il est recommandé d'utiliser :ref:`Transform3D<class_Transform3D>`, car il est plus performant et nécessite moins de mémoire.

Utilisé de manière interne comme matrice de projection pour :ref:`Camera3D<class_Camera3D>`.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`w<class_Projection_property_w>` | ``Vector4(0, 0, 0, 1)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`x<class_Projection_property_x>` | ``Vector4(1, 0, 0, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`y<class_Projection_property_y>` | ``Vector4(0, 1, 0, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+
   | :ref:`Vector4<class_Vector4>` | :ref:`z<class_Projection_property_z>` | ``Vector4(0, 0, 1, 0)`` |
   +-------------------------------+---------------------------------------+-------------------------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ )                                                                                                                                                                 |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ from\: :ref:`Projection<class_Projection>`\ )                                                                                                                     |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`Projection<class_Projection_constructor_Projection>`\ (\ x_axis\: :ref:`Vector4<class_Vector4>`, y_axis\: :ref:`Vector4<class_Vector4>`, z_axis\: :ref:`Vector4<class_Vector4>`, w_axis\: :ref:`Vector4<class_Vector4>`\ ) |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_depth_correction<class_Projection_method_create_depth_correction>`\ (\ flip_y\: :ref:`bool<class_bool>`\ ) |static|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_fit_aabb<class_Projection_method_create_fit_aabb>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |static|                                                                                                                                                                                                                                                                                         |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_for_hmd<class_Projection_method_create_for_hmd>`\ (\ eye\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, intraocular_dist\: :ref:`float<class_float>`, display_width\: :ref:`float<class_float>`, display_to_lens\: :ref:`float<class_float>`, oversample\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|     |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_frustum<class_Projection_method_create_frustum>`\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_frustum_aspect<class_Projection_method_create_frustum_aspect>`\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                            |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_light_atlas_rect<class_Projection_method_create_light_atlas_rect>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |static|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_orthogonal<class_Projection_method_create_orthogonal>`\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static|                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_orthogonal_aspect<class_Projection_method_create_orthogonal_aspect>`\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_perspective<class_Projection_method_create_perspective>`\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static|                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`create_perspective_hmd<class_Projection_method_create_perspective_hmd>`\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>`, eye\: :ref:`int<class_int>`, intraocular_dist\: :ref:`float<class_float>`, convergence_dist\: :ref:`float<class_float>`\ ) |static| |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Projection_method_determinant>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`flipped_y<class_Projection_method_flipped_y>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_aspect<class_Projection_method_get_aspect>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_far_plane_half_extents<class_Projection_method_get_far_plane_half_extents>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_fov<class_Projection_method_get_fov>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_fovy<class_Projection_method_get_fovy>`\ (\ fovx\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`\ ) |static|                                                                                                                                                                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_lod_multiplier<class_Projection_method_get_lod_multiplier>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`get_pixels_per_meter<class_Projection_method_get_pixels_per_meter>`\ (\ for_pixel_width\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                       |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`           | :ref:`get_projection_plane<class_Projection_method_get_projection_plane>`\ (\ plane\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                                                 |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_viewport_half_extents<class_Projection_method_get_viewport_half_extents>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_z_far<class_Projection_method_get_z_far>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                      |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_z_near<class_Projection_method_get_z_near>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                    |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`inverse<class_Projection_method_inverse>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                                          |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_orthogonal<class_Projection_method_is_orthogonal>`\ (\ ) |const|                                                                                                                                                                                                                                                                                                                              |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`jitter_offseted<class_Projection_method_jitter_offseted>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                                                                                  |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`perspective_znear_adjusted<class_Projection_method_perspective_znear_adjusted>`\ (\ new_znear\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                                                             |
   +-------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_Projection_operator_neq_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Projection<class_Projection>` | :ref:`operator *<class_Projection_operator_mul_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_Projection_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )           |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_Projection_operator_eq_Projection>`\ (\ right\: :ref:`Projection<class_Projection>`\ )  |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator []<class_Projection_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Projection_Planes:

.. rst-class:: classref-enumeration

enum **Planes**: :ref:`🔗<enum_Projection_Planes>`

.. _class_Projection_constant_PLANE_NEAR:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_NEAR** = ``0``

The index value of the projection's near clipping plane.

.. _class_Projection_constant_PLANE_FAR:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_FAR** = ``1``

The index value of the projection's far clipping plane.

.. _class_Projection_constant_PLANE_LEFT:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_LEFT** = ``2``

The index value of the projection's left clipping plane.

.. _class_Projection_constant_PLANE_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_TOP** = ``3``

The index value of the projection's top clipping plane.

.. _class_Projection_constant_PLANE_RIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_RIGHT** = ``4``

The index value of the projection's right clipping plane.

.. _class_Projection_constant_PLANE_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Planes<enum_Projection_Planes>` **PLANE_BOTTOM** = ``5``

The index value of the projection bottom clipping plane.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Projection_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Projection(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1)`` :ref:`🔗<class_Projection_constant_IDENTITY>`

A **Projection** with no transformation defined. When applied to other data structures, no transformation is performed.

.. _class_Projection_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Projection(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_Projection_constant_ZERO>`

A **Projection** with all values initialized to 0. When applied to other data structures, they will be zeroed.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Projection_property_w:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **w** = ``Vector4(0, 0, 0, 1)`` :ref:`🔗<class_Projection_property_w>`

The projection matrix's W vector (column 3). Equivalent to array index ``3``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_x:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **x** = ``Vector4(1, 0, 0, 0)`` :ref:`🔗<class_Projection_property_x>`

The projection matrix's X vector (column 0). Equivalent to array index ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_y:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **y** = ``Vector4(0, 1, 0, 0)`` :ref:`🔗<class_Projection_property_y>`

The projection matrix's Y vector (column 1). Equivalent to array index ``1``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_property_z:

.. rst-class:: classref-property

:ref:`Vector4<class_Vector4>` **z** = ``Vector4(0, 0, 1, 0)`` :ref:`🔗<class_Projection_property_z>`

The projection matrix's Z vector (column 2). Equivalent to array index ``2``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Projection_constructor_Projection:

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ ) :ref:`🔗<class_Projection_constructor_Projection>`

Construit une **Projection** initialisé par défaut à :ref:`IDENTITY<class_Projection_constant_IDENTITY>`.

\ **Note :** En C#, cela construit une **Projection** identique à :ref:`ZERO<class_Projection_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ from\: :ref:`Projection<class_Projection>`\ )

Construit une **Projection** comme une copie de la **Projection** donnée.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ from\: :ref:`Transform3D<class_Transform3D>`\ )

Construit une Projection comme une copie de la :ref:`Transform3D<class_Transform3D>` donnée.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Projection<class_Projection>` **Projection**\ (\ x_axis\: :ref:`Vector4<class_Vector4>`, y_axis\: :ref:`Vector4<class_Vector4>`, z_axis\: :ref:`Vector4<class_Vector4>`, w_axis\: :ref:`Vector4<class_Vector4>`\ )

Construit une Projection à partir de quatre valeurs :ref:`Vector4<class_Vector4>` (colonnes de la matrice).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Projection_method_create_depth_correction:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_depth_correction**\ (\ flip_y\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_Projection_method_create_depth_correction>`

Crée une nouvelle **Projection** qui projette des positions allant d'une plage de profondeur de ``-1`` à ``1`` à une plage qui va de ``0`` à ``1`` et retourne les positions projetées verticalement, selon ``flip_y``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_fit_aabb:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_fit_aabb**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |static| :ref:`🔗<class_Projection_method_create_fit_aabb>`

Creates a new **Projection** that scales a given projection to fit around a given :ref:`AABB<class_AABB>` in projection space.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_for_hmd:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_for_hmd**\ (\ eye\: :ref:`int<class_int>`, aspect\: :ref:`float<class_float>`, intraocular_dist\: :ref:`float<class_float>`, display_width\: :ref:`float<class_float>`, display_to_lens\: :ref:`float<class_float>`, oversample\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_for_hmd>`

Crée une nouvelle **Projection** pour la projection de positions sur un écran monté sur la tête (Head Mounted Display) avec le rapport d'aspect X:Y, la distance entre les yeux, la largeur de l'écran, la distance à la lentille, le facteur de suréchantillonnage et les plans de coupe de profondeur donnés.

\ ``eye`` crée la projection de l'œil gauche lorsqu'elle est fixée à 1, ou l'œil droit lorsqu'elle est fixée à 2.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_frustum:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_frustum**\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_frustum>`

Crée une nouvelle **Projection** qui projette des positions dans un frustum avec les plans de coupe donnés.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_frustum_aspect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_frustum_aspect**\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, offset\: :ref:`Vector2<class_Vector2>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_frustum_aspect>`

Crée un nouveau **Projection** qui projette des positions dans un frustum avec la taille, le rapport d'aspect X:Y, le décalage, et les plans de coupe donnés.

\ ``flip_fov`` détermine si le champ de vision de la projection est renversé sur sa diagonale.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_light_atlas_rect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_light_atlas_rect**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |static| :ref:`🔗<class_Projection_method_create_light_atlas_rect>`

Crée une nouvelle **Projection** qui projette des positions sur le :ref:`Rect2<class_Rect2>` donné.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_orthogonal:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_orthogonal**\ (\ left\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_orthogonal>`

Crée une nouvelle **Projection** qui projette des positions à l'aide d'une projection orthogonale avec les plans de coupe donnés.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_orthogonal_aspect:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_orthogonal_aspect**\ (\ size\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_orthogonal_aspect>`

Crée une nouvelle **Projection** qui projette des positions à l'aide d'une projection orthogonale avec la taille, le rapport d'aspect X:Y et les plans de coupe donnés.

\ ``flip_fov`` détermine si le champ de vision de la projection est inversé sur sa diagonale.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_perspective:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_perspective**\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Projection_method_create_perspective>`

Crée une nouvelle **Projection** qui projette des positions à l'aide d'une projection de perspective avec le champ de vision en Y (en degrés), le rapport d'aspect X:Y et les plans de coupe donnés.

\ ``flip_fov`` détermine si le champ de vision de la projection est inversé sur sa diagonale.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_create_perspective_hmd:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **create_perspective_hmd**\ (\ fovy\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`, z_near\: :ref:`float<class_float>`, z_far\: :ref:`float<class_float>`, flip_fov\: :ref:`bool<class_bool>`, eye\: :ref:`int<class_int>`, intraocular_dist\: :ref:`float<class_float>`, convergence_dist\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_create_perspective_hmd>`

Crée une nouvelle **Projection** qui projette des positions en utilisant une projection de perspective avec le champ de vision en Y (en degrés), le rapport d'aspect X:Y et les distances de coupe donnés. La projection est ajustée pour un écran monté sur la tête (Head Mounted Display) avec la distance entre les yeux et la distance à un point sur lequel se focaliser donnés.

\ ``eye`` crée la projection de l'œil gauche lorsqu'elle est fixée à 1, ou l'œil droit lorsqu'elle est fixée à 2.

\ ``flip_fov`` détermine si le champ de vision de la projection est inversé sur sa diagonale.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Projection_method_determinant>`

Renvoie une valeur scalaire qui est le facteur signé par lequel les aires sont redimensionnées par cette matrice. Si le signe est négatif, la matrice retourne l’orientation de la zone.

Le déterminant peut être utilisé pour calculer l’inversibilité d’une matrice ou pour résoudre des systèmes linéaires d'équations impliquant la matrice, ainsi que d’autres applications.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_flipped_y:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **flipped_y**\ (\ ) |const| :ref:`🔗<class_Projection_method_flipped_y>`

Renvoie une copie de cette **Projection** avec les signes des valeurs de la colonne Y retournés.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_aspect:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_aspect**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_aspect>`

Renvoie le rapport d'aspect X:Y de la vue de cette **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_far_plane_half_extents:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_far_plane_half_extents**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_far_plane_half_extents>`

Renvoie les dimensions du plan de coupe lointain de la projection, divisées par deux.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_fov:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fov**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_fov>`

Renvoie le champ de vision horizontal de la projection (en degrés).

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_fovy:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_fovy**\ (\ fovx\: :ref:`float<class_float>`, aspect\: :ref:`float<class_float>`\ ) |static| :ref:`🔗<class_Projection_method_get_fovy>`

Returns the vertical field of view of the projection (in degrees) associated with the given horizontal field of view (in degrees) and aspect ratio.

\ **Note:** Unlike most methods of **Projection**, ``aspect`` is expected to be 1 divided by the X:Y aspect ratio.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_lod_multiplier:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_lod_multiplier**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_lod_multiplier>`

Returns the factor by which the visible level of detail is scaled by this **Projection**.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_pixels_per_meter:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_pixels_per_meter**\ (\ for_pixel_width\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Projection_method_get_pixels_per_meter>`

Returns ``for_pixel_width`` divided by the viewport's width measured in meters on the near plane, after this **Projection** is applied.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_projection_plane:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **get_projection_plane**\ (\ plane\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Projection_method_get_projection_plane>`

Returns the clipping plane of this **Projection** whose index is given by ``plane``.

\ ``plane`` should be equal to one of :ref:`PLANE_NEAR<class_Projection_constant_PLANE_NEAR>`, :ref:`PLANE_FAR<class_Projection_constant_PLANE_FAR>`, :ref:`PLANE_LEFT<class_Projection_constant_PLANE_LEFT>`, :ref:`PLANE_TOP<class_Projection_constant_PLANE_TOP>`, :ref:`PLANE_RIGHT<class_Projection_constant_PLANE_RIGHT>`, or :ref:`PLANE_BOTTOM<class_Projection_constant_PLANE_BOTTOM>`.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_viewport_half_extents:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_viewport_half_extents**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_viewport_half_extents>`

Returns the dimensions of the viewport plane that this **Projection** projects positions onto, divided by two.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_z_far:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_z_far**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_z_far>`

Returns the distance for this **Projection** beyond which positions are clipped.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_get_z_near:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_z_near**\ (\ ) |const| :ref:`🔗<class_Projection_method_get_z_near>`

Returns the distance for this **Projection** before which positions are clipped.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_inverse:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **inverse**\ (\ ) |const| :ref:`🔗<class_Projection_method_inverse>`

Returns a **Projection** that performs the inverse of this **Projection**'s projective transformation.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_is_orthogonal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_orthogonal**\ (\ ) |const| :ref:`🔗<class_Projection_method_is_orthogonal>`

Returns ``true`` if this **Projection** performs an orthogonal projection.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_jitter_offseted:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **jitter_offseted**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Projection_method_jitter_offseted>`

Returns a **Projection** with the X and Y values from the given :ref:`Vector2<class_Vector2>` added to the first and second values of the final column respectively.

.. rst-class:: classref-item-separator

----

.. _class_Projection_method_perspective_znear_adjusted:

.. rst-class:: classref-method

:ref:`Projection<class_Projection>` **perspective_znear_adjusted**\ (\ new_znear\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Projection_method_perspective_znear_adjusted>`

Returns a **Projection** with the near clipping distance adjusted to be ``new_znear``.

\ **Note:** The original **Projection** must be a perspective projection.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Projection_operator_neq_Projection:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_neq_Projection>`

Returns ``true`` if the projections are not equal.

\ **Note:** Due to floating-point precision errors, this may return ``true``, even if the projections are virtually equal. An ``is_equal_approx`` method may be added in a future version of Godot.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_mul_Projection:

.. rst-class:: classref-operator

:ref:`Projection<class_Projection>` **operator ***\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_mul_Projection>`

Returns a **Projection** that applies the combined transformations of this **Projection** and ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_Projection_operator_mul_Vector4>`

Projects (multiplies) the given :ref:`Vector4<class_Vector4>` by this **Projection** matrix.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_eq_Projection:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Projection<class_Projection>`\ ) :ref:`🔗<class_Projection_operator_eq_Projection>`

Returns ``true`` if the projections are equal.

\ **Note:** Due to floating-point precision errors, this may return ``false``, even if the projections are virtually equal. An ``is_equal_approx`` method may be added in a future version of Godot.

.. rst-class:: classref-item-separator

----

.. _class_Projection_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Projection_operator_idx_int>`

Returns the column of the **Projection** with the given index.

Indices are in the following order: x, y, z, w.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
