:github_url: hide

.. _class_Transform2D:

Transform2D
===========

Une matrice 2×3 représentant une transformation 2D.

.. rst-class:: classref-introduction-group

Description
-----------

Le type :ref:`Variant<class_Variant>` intégré **Transform2D** est une `matrice <https://fr.wikipedia.org/wiki/Matrice_(math%C3%A9matiques)>`__ 2×3 représentant une transformation de l'espace 2D. Il contient trois valeurs :ref:`Vector2<class_Vector2>`\  : :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>`, et :ref:`origin<class_Transform2D_property_origin>`. Ensemble, ils peuvent représenter la translation, la rotation, l'échelle et le cisaillement.

Les axes :ref:`x<class_Transform2D_property_x>` et :ref:`y<class_Transform2D_property_y>` forment une matrice 2×2, connue sous le nom de **base** de la transformation. La longueur de chaque axe (:ref:`Vector2.length()<class_Vector2_method_length>`) influence l'échelle de la transformation, tandis que la direction de tous les axes influence la rotation. Habituellement, les deux axes sont perpendiculaires l'un avec l'autre. Cependant, lorsque vous tournez un axe individuellement, la transformation devient cisaillée. L'application d'une transformation cisaillée sur un sprite 2D fera apparaître le sprite comme déformé.

Pour une introduction générale, voir le tutoriel :doc:`Matrices et transformations <../tutorials/math/matrices_and_transforms>`.

\ **Note :** Contrairement à :ref:`Transform3D<class_Transform3D>`, il n'y a pas d'équivalent 2D du type :ref:`Basis<class_Basis>`. Toutes les mentions de "base" renvoient aux composants :ref:`x<class_Transform2D_property_x>` et :ref:`y<class_Transform2D_property_y>` de **Transform2D**.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur les mathématiques <../tutorials/math/index>`

- :doc:`Matrices et transformations <../tutorials/math/matrices_and_transforms>`

- `Démo de transformation matricielle <https://godotengine.org/asset-library/asset/2787>`__

- `Démo de jeu 2,5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`origin<class_Transform2D_property_origin>` | ``Vector2(0, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`x<class_Transform2D_property_x>`           | ``Vector2(1, 0)`` |
   +-------------------------------+--------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`y<class_Transform2D_property_y>`           | ``Vector2(0, 1)`` |
   +-------------------------------+--------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ )                                                                                                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )                                                                                                            |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                          |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ ) |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`Transform2D<class_Transform2D_constructor_Transform2D>`\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +---------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`affine_inverse<class_Transform2D_method_affine_inverse>`\ (\ ) |const|                                                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform<class_Transform2D_method_basis_xform>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                           |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`basis_xform_inv<class_Transform2D_method_basis_xform_inv>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`determinant<class_Transform2D_method_determinant>`\ (\ ) |const|                                                                                              |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_origin<class_Transform2D_method_get_origin>`\ (\ ) |const|                                                                                                |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_rotation<class_Transform2D_method_get_rotation>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`         | :ref:`get_scale<class_Transform2D_method_get_scale>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`             | :ref:`get_skew<class_Transform2D_method_get_skew>`\ (\ ) |const|                                                                                                    |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`interpolate_with<class_Transform2D_method_interpolate_with>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`inverse<class_Transform2D_method_inverse>`\ (\ ) |const|                                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_conformal<class_Transform2D_method_is_conformal>`\ (\ ) |const|                                                                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_equal_approx<class_Transform2D_method_is_equal_approx>`\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const|                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`is_finite<class_Transform2D_method_is_finite>`\ (\ ) |const|                                                                                                  |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`looking_at<class_Transform2D_method_looking_at>`\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const|                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`orthonormalized<class_Transform2D_method_orthonormalized>`\ (\ ) |const|                                                                                      |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated<class_Transform2D_method_rotated>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                                   |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`rotated_local<class_Transform2D_method_rotated_local>`\ (\ angle\: :ref:`float<class_float>`\ ) |const|                                                       |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled<class_Transform2D_method_scaled>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                 |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`scaled_local<class_Transform2D_method_scaled_local>`\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                     |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated<class_Transform2D_method_translated>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                        |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`translated_local<class_Transform2D_method_translated_local>`\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const|                                            |
   +---------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator !=<class_Transform2D_operator_neq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`operator *<class_Transform2D_operator_mul_PackedVector2Array>`\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                           | :ref:`operator *<class_Transform2D_operator_mul_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator *<class_Transform2D_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator *<class_Transform2D_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                                        |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Transform2D<class_Transform2D>`               | :ref:`operator /<class_Transform2D_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`operator ==<class_Transform2D_operator_eq_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ )                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`operator []<class_Transform2D_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Transform2D_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Transform2D(1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_IDENTITY>`

La **Transform2D** identité. Il s'agit d'une transformation sans translation, sans rotation, et d'une échelle de :ref:`Vector2.ONE<class_Vector2_constant_ONE>`. Cela signifie également que :

- Le :ref:`x<class_Transform2D_property_x>` pointe vers la droite (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`);

- Le :ref:`y<class_Transform2D_property_y>` pointe vers le bas (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`);

::

    var transformation = Transform2D.IDENTITY
    print("| X | Y | Origin")
    print("| %.f | %.f | %.f" % [transformation.x.x, transformation.y.x, transformation.origin.x])
    print("| %.f | %.f | %.f" % [transformation.x.y, transformation.y.y, transformation.origin.y])
    # Affiche :
    # | X | Y | Origine
    # | 1 | 0 | 0
    # | 0 | 1 | 0

Si un :ref:`Vector2<class_Vector2>`, un :ref:`Rect2<class_Rect2>`, un :ref:`PackedVector2Array<class_PackedVector2Array>`, ou une autre **Transform2D** est transformé (multiplié) par cette constante, aucune transformation ne se produit.

\ **Note :** En GDScript, cette constante est équivalente à la création d'une :ref:`Transform2D<class_Transform2D_constructor_Transform2D>` sans aucun argument. Elle peut être utilisée pour rendre votre code plus clair, et pour la cohérence avec le C#.

.. _class_Transform2D_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Transform2D(-1, 0, 0, 1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_X>`

Lorsqu'une transformation est multipliée par :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>`, cela inverse le signe toutes les composantes de l'axe :ref:`x<class_Transform2D_property_x>` (la colonne X).

Lorsque :ref:`FLIP_X<class_Transform2D_constant_FLIP_X>` est multiplié par n'importe quelle base, cela inverse le signe de la composante :ref:`Vector2.x<class_Vector2_property_x>` de tous les axes (la ligne X).

.. _class_Transform2D_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Transform2D(1, 0, 0, -1, 0, 0)`` :ref:`🔗<class_Transform2D_constant_FLIP_Y>`

Lorsqu'une transformation est multipliée par :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>`, cela inverse le signe toutes les composantes de l'axe :ref:`y<class_Transform2D_property_y>` (la colonne Y).

Lorsque :ref:`FLIP_Y<class_Transform2D_constant_FLIP_Y>` est multiplié par n'importe quelle base, cela inverse le signe de la composante :ref:`Vector2.y<class_Vector2_property_y>` de tous les axes (la ligne Y).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Transform2D_property_origin:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **origin** = ``Vector2(0, 0)`` :ref:`🔗<class_Transform2D_property_origin>`

Le décalage de translation de cette transformation, et la colonne ``2`` de la matrice. Dans l'espace 2D, cela peut être considéré comme la position.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_x:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **x** = ``Vector2(1, 0)`` :ref:`🔗<class_Transform2D_property_x>`

L'axe X de la base de la transformation et la colonne ``0`` de la matrice. Combiné à :ref:`y<class_Transform2D_property_y>`, cela représente la rotation, l'échelle et le cisaillement de la transformation.

Sur la transformation identité, ce vecteur pointe vers la droite (:ref:`Vector2.RIGHT<class_Vector2_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_property_y:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **y** = ``Vector2(0, 1)`` :ref:`🔗<class_Transform2D_property_y>`

L'axe Y de la base de la transformation et la colonne ``1`` de la matrice. Combiné à :ref:`x<class_Transform2D_property_x>`, cela représente la rotation, l'échelle et le cisaillement de la transformation.

Sur la transformation identité, ce vecteur pointe vers le bas (:ref:`Vector2.DOWN<class_Vector2_constant_DOWN>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Transform2D_constructor_Transform2D:

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ ) :ref:`🔗<class_Transform2D_constructor_Transform2D>`

Construit une **Transform2D** identique à :ref:`IDENTITY<class_Transform2D_constant_IDENTITY>`.

\ **Note :** En C#, cela construit une **Transform2D** avec tous ses composantes définies à :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ from\: :ref:`Transform2D<class_Transform2D>`\ )

Construit une **Transform2D** comme copie de la **Transform2D** donnée.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Construit une **Transform2D** à partir d’un angle (en radians) et d’une position donnés.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ rotation\: :ref:`float<class_float>`, scale\: :ref:`Vector2<class_Vector2>`, skew\: :ref:`float<class_float>`, position\: :ref:`Vector2<class_Vector2>`\ )

Construit une **Transform2D** à partir d’un angle (en radians), d’une échelle, d’un cisaillement (en radians) et d’une position donnés.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Transform2D<class_Transform2D>` **Transform2D**\ (\ x_axis\: :ref:`Vector2<class_Vector2>`, y_axis\: :ref:`Vector2<class_Vector2>`, origin\: :ref:`Vector2<class_Vector2>`\ )

Construit une **Transform2D** avec 3 valeurs de :ref:`Vector2<class_Vector2>` représentant :ref:`x<class_Transform2D_property_x>`, :ref:`y<class_Transform2D_property_y>` et l'origine :ref:`origin<class_Transform2D_property_origin>` (les trois colonnes de la matrice).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Transform2D_method_affine_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **affine_inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_affine_inverse>`

Renvoie la version inversée de cette transformation. Contrairement à :ref:`inverse()<class_Transform2D_method_inverse>`, cette méthode fonctionne avec presque n'importe quelle base, y compris les non-uniformes, mais est plus lent.

\ **Note :** Pour que cette méthode puisse se finir correctement, la base de la transformation doit avoir un déterminant qui ne vaut pas exactement ``0.0`` (voir :ref:`determinant()<class_Transform2D_method_determinant>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform>`

Renvoie une copie du vecteur ``v``, transformé (multiplié) par la matrice de la base de la transformation. Contrairement à l'opérateur de multiplication (``*``), cette méthode ignore l'origine :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_basis_xform_inv:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **basis_xform_inv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_basis_xform_inv>`

Renvoie une copie du vecteur ``v``, transformé (multiplié) par la matrice de la base de la transformation inverse. Cette méthode ignore l'origine :ref:`origin<class_Transform2D_property_origin>`.

\ **Note :** Cette méthode suppose que la base de cette transformation est *orthonormée* (voir :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). Si la base n'est pas orthonormée, ``transformation.affine_inverse().basis_xform(vecteur)`` devrait être utilisé à la place (voir :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_determinant>`

Renvoie le `determinant <https://en.wikipedia.org/wiki/Determinant>`__ de la matrice de la base de cette transformation. Pour les mathématiques avancées, ce nombre peut être utilisé pour déterminer quelques attributs :

- Si le déterminant vaut exactement ``0.0``, la base n'est pas inversible (voir :ref:`inverse()<class_Transform2D_method_inverse>`).

- Si le déterminant est un nombre négatif, la base représente une échelle négative.

\ **Note :** Si l'échelle de la base est la même pour chaque axe, son déterminant vaut toujours cette échelle à la puissance 2.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_origin:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_origin**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_origin>`

Renvoie la translation de cette transformation. Équivalent à :ref:`origin<class_Transform2D_property_origin>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_rotation:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_rotation**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_rotation>`

Renvoie la rotation de cette transformation (en radians). Cela est équivalent à l’angle de :ref:`x<class_Transform2D_property_x>` (voir :ref:`Vector2.angle()<class_Vector2_method_angle>`).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_scale>`

Renvoie la longueur de :ref:`x<class_Transform2D_property_x>` et :ref:`y<class_Transform2D_property_y>`, en tant que :ref:`Vector2<class_Vector2>`. Si la base de cette transformation n'est pas cisaillée, cette valeur est le facteur d'échelle. Il n'est pas affecté par la rotation.


.. tabs::

 .. code-tab:: gdscript

    var ma_transformation = Transform2D(
        Vector2(2, 0),
        Vector2(0, 4),
        Vector2(0, 0)
    )
    # Tourner la Transform2D de n'importe quelle manière conserve son échelle.
    ma_transformation = ma_transformation.rotated(TAU / 2)

    print(ma_transformation.get_scale()) # Affiche (2.0, 4.0)

 .. code-tab:: csharp

    var maTransformation = new Transform2D(
        Vector3(2.0f, 0.0f),
        Vector3(0.0f, 4.0f),
        Vector3(0.0f, 0.0f)
    );
    // Tourner la Transform2D de n'importe quelle manière conserve son échelle.
    maTransformation = maTransformation.Rotated(Mathf.Tau / 2.0f);

    GD.Print(maTransformation.GetScale()); // Affiche (2, 4)



\ **Note :** Si la valeur renvoyée par :ref:`determinant()<class_Transform2D_method_determinant>` est négative, l'échelle est aussi négative.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_get_skew:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_skew**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_get_skew>`

Renvoie le cisaillement de cette transformation (en radians).

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_interpolate_with:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **interpolate_with**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_interpolate_with>`

Renvoie le résultat de l'interpolation linéaire entre cette transformation et ``xform`` selon le poids ``weight`` donné.

Le poids ``weight`` devrait être compris entre ``0.0`` et ``1.0`` (inclusifs). Les valeurs en dehors de cette plage sont permises et peuvent être utilisées pour effectuer à la place une *extrapolation*.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_inverse:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **inverse**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_inverse>`

Renvoie la `version inversée de cette transformation <https://fr.wikipedia.org/wiki/Matrice_inversible>`__.

\ **Note :** Pour que cette méthode puisse se finir correctement, la base de la transformation doit être *orthonormée* (voir :ref:`orthonormalized()<class_Transform2D_method_orthonormalized>`). Cela signifie que la base ne devrait représenter qu'une rotation. Si ce n'est pas le cas, utilisez plutôt :ref:`affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_conformal>`

Renvoie ``true`` si cette base de cette transformation est conforme. Une base conforme est à la fois *orthogonale* (les axes sont perpendiculaires les uns aux autres) et *uniforme* (les axes partagent la même longueur). Cette méthode peut être particulièrement utile lors des calculs de physique.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ xform\: :ref:`Transform2D<class_Transform2D>`\ ) |const| :ref:`🔗<class_Transform2D_method_is_equal_approx>`

Renvoie ``true`` si cette transformation et ``xform`` sont approximativement égales, en utilisant :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_is_finite>`

Renvoie ``true`` si cette transformation est finie, en appelant :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_looking_at:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **looking_at**\ (\ target\: :ref:`Vector2<class_Vector2>` = Vector2(0, 0)\ ) |const| :ref:`🔗<class_Transform2D_method_looking_at>`

Renvoie une copie de la transformation tournée de telle sorte que l'axe X tourné pointe vers la position cible ``target``, dans l'espace global.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Transform2D_method_orthonormalized>`

Renvoie une copie de cette transformation avec sa base orthonormalisée. Une base orthonormale est à la fois *orthogonale* (les axes sont perpendiculaires les uns aux autres) et *normalisée* (les axes ont une longueur de ``1.0``), ce qui signifie également qu'elle ne peut représenter qu'une rotation.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated>`

Renvoie une copie de cette transformation tournée d'un angle ``angle`` donné (en radians).

Si ``angle`` est positif, la transformation est tournée dans le sens horaire..

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation de rotation ``R`` correspondante sur la gauche, c'est-à-dire ``R * X``.

Cela peut être considéré comme une transformation par rapport au repère global/parent.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_rotated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **rotated_local**\ (\ angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Transform2D_method_rotated_local>`

Renvoie une copie de cette transformation tournée d'un angle ``angle`` donné (en radians).

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation de rotation ``R`` correspondante sur la droite, c'est-à-dire ``X * R``.

Cela peut être considéré comme une transformation par rapport au repère local.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled>`

Renvoie une copie de cette transformation redimensionnée d'un facteur ``scale`` donné.

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation d'échelle ``S`` correspondante sur la gauche, c'est-à-dire ``S * X``.

Cela peut être considéré comme une transformation par rapport au repère global/parent.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_scaled_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **scaled_local**\ (\ scale\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_scaled_local>`

Renvoie une copie de cette transformation redimensionnée d'un facteur ``scale`` donné.

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation d'échelle ``S`` correspondante sur la droite, c'est-à-dire ``X * S``.

Cela peut être considéré comme une transformation par rapport au repère local.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated>`

Renvoie une copie de cette transformation translatée d'un décalage ``offset`` donné.

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation de translation ``T`` correspondante sur la gauche, c'est-à-dire ``T * X``.

Cela peut être considéré comme une transformation par rapport au repère global/parent.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_method_translated_local:

.. rst-class:: classref-method

:ref:`Transform2D<class_Transform2D>` **translated_local**\ (\ offset\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Transform2D_method_translated_local>`

Renvoie une copie de cette transformation translatée d'un décalage ``offset`` donné.

Cette méthode est une version optimisée de la multiplication de la transformation ``X`` donnée avec une transformation de translation ``T`` correspondante sur la droite, c'est-à-dire ``X* T``.

Cela peut être considéré comme une transformation par rapport au repère local.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Transform2D_operator_neq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_neq_Transform2D>`

Renvoie ``true`` si les composantes des deux transformations ne sont pas égales.

\ **Note :** En raison des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>` qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_PackedVector2Array:

.. rst-class:: classref-operator

:ref:`PackedVector2Array<class_PackedVector2Array>` **operator ***\ (\ right\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_Transform2D_operator_mul_PackedVector2Array>`

Transforme (multiplie) chaque élément :ref:`Vector2<class_Vector2>` du :ref:`PackedVector2Array<class_PackedVector2Array>` donné par cette matrice de transformation.

Sur de plus grands tableaux, cette opération est beaucoup plus rapide que de transformer chaque :ref:`Vector2<class_Vector2>` individuellement.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Rect2:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Rect2>`

Transforme (multiplie) ce :ref:`Rect2<class_Rect2>` par cette matrice de transformation.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Transform2D>`

Transforme (multiplie) cette transformation par la transformation ``right``.

C'est l'opération effectuée entre les nœuds :ref:`CanvasItem<class_CanvasItem>` parent et enfant.

\ **Note :** Si vous devez seulement modifier un attribut de cette transformation, envisagez d'utiliser l'une des méthodes suivantes, à la place :

- Pour la translation, voir :ref:`translated()<class_Transform2D_method_translated>` ou :ref:`translated_local()<class_Transform2D_method_translated_local>`.

- Pour la rotation, voir :ref:`rotated()<class_Transform2D_method_rotated>` ou :ref:`rotated_local()<class_Transform2D_method_rotated_local>`.

- Pour l'échelle, voir :ref:`scaled()<class_Transform2D_method_scaled>` ou :ref:`scaled_local()<class_Transform2D_method_scaled_local>`.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_Transform2D_operator_mul_Vector2>`

Transforme (multiplie) le :ref:`Vector2<class_Vector2>` par cette matrice de transformation.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_mul_float>`

Multiplie toutes les composantes de la **Transform2D** par le flottant :ref:`float<class_float>` donné, y compris l'origine :ref:`origin<class_Transform2D_property_origin>`. Cela affecte uniformément l'échelle de la transformation.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_mul_int>`

Multiplie toutes les composantes de la **Transform2D** par l'entier :ref:`int<class_int>` donné, y compris l'origine :ref:`origin<class_Transform2D_property_origin>`. Cela affecte uniformément l'échelle de la transformation.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_float:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Transform2D_operator_div_float>`

Divise toutes les composantes de la **Transform2D** par le flottant :ref:`float<class_float>` donné, y compris l'origine :ref:`origin<class_Transform2D_property_origin>`. Cela affecte uniformément l'échelle de la transformation.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_div_int:

.. rst-class:: classref-operator

:ref:`Transform2D<class_Transform2D>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_div_int>`

Divise toutes les composantes de la **Transform2D** par l'entier :ref:`int<class_int>` donné, y compris l'origine :ref:`origin<class_Transform2D_property_origin>`. Cela affecte uniformément l'échelle de la transformation.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_eq_Transform2D:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Transform2D_operator_eq_Transform2D>`

Renvoie ``true`` si les composantes des deux transformations sont exactement égales.

\ **Note :** En raison des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Transform2D_method_is_equal_approx>` qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Transform2D_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Transform2D_operator_idx_int>`

Accède à chaque axe (colonne) de cette transformation par son index. L'index ``0`` est identique à :ref:`x<class_Transform2D_property_x>`, l'index ``1`` est identique à :ref:`y<class_Transform2D_property_y>`, et l'index ``2`` est identique à :ref:`origin<class_Transform2D_property_origin>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
