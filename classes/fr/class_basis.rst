:github_url: hide

.. _class_Basis:

Basis
=====

Une matrice 3×3 pour représenter une rotation et une échelle 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Le type :ref:`Variant<class_Variant>` intégré **Basis** (litt. Base) est une `matrice <https://fr.wikipedia.org/wiki/Matrice_(math%C3%A9matiques)>`__ 3×3 utilisée pour représenter une rotation, échelle et cisaillement 3D. Il est fréquemment utilisé dans un :ref:`Transform3D<class_Transform3D>`.

Une **Basis** est composé de 3 axes vectoriels, chacun représentant une colonne de la matrice : :ref:`x<class_Basis_property_x>`, :ref:`y<class_Basis_property_y>`, et :ref:`z<class_Basis_property_z>`. La longueur de chaque axe (:ref:`Vector3.length()<class_Vector3_method_length>`) influence l'échelle de base, tandis que la direction de tous les axes influence la rotation. Habituellement, ces axes sont perpendiculaires les uns aux autres. Cependant, lorsque vous tournez n'importe quel axe individuellement, la base devient cisaillée. L'application d'une base cisaillée à un modèle 3D fera apparaître le modèle comme déformé.

Une **Basis** est :

- **Orthogonale** si ses axes sont perpendiculaires les uns aux autres.

- **Normalisée** si la longueur de chaque axe vaut ``1.0``.

- **Uniforme** si tous les axes partagent la même longueur (voir :ref:`get_scale()<class_Basis_method_get_scale>`).

- **Orthonormael** si elle est à la fois orthogonale et normalisée, ce qui lui permet de ne représenter que des rotations (voir :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

- **Conforme** si elle est à la fois orthogonale et uniforme, ce qui assure qu'elle n'est pas déformée.

Pour une introduction générale, voir le tutoriel :doc:`Matrices et transformations <../tutorials/math/matrices_and_transforms>`.

\ **Note :** Godot utilise un `système de coordonnées main-droite <https://fr.wikipedia.org/wiki/R%C3%A8gle_de_la_main_droite>`__, qui est une norme habituelle. Pour les directions, la convention pour les types intégrés comme :ref:`Camera3D<class_Camera3D>` est que -Z pointe vers l'avant (+X vers la droite, +Y vers le haut, et +Z vers l'arrière). D'autres objets peuvent utiliser des conventions de direction différentes. Pour plus d'informations, voir le tutoriel `Conventions de direction de ressource 3D <../tutorials/assets_pipeline/importing_3d_scenes/model_export_considerations.html#d-asset-direction-conventions>`__.

\ **Note :** Les matrices de base sont exposées dans l'ordre `column-major <https://www.mindcontrol.org/~hplus/graphics/matrix-layout.html>`__ (par colonnes), qui est le même qu'OpenGL. Cependant, elles sont stockées en interne dans l'ordre row-major (par lignes), qui est le même que DirectX.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur les mathématiques <../tutorials/math/index>`

- :doc:`Matrices et transformations <../tutorials/math/matrices_and_transforms>`

- :doc:`Utiliser les transformations 3D <../tutorials/3d/using_transforms>`

- `Démo de transformation matricielle <https://godotengine.org/asset-library/asset/2787>`__

- `Démo de jeu de plateforme en 3D <https://godotengine.org/asset-library/asset/2748>`__

- `Démo voxel 3D <https://godotengine.org/asset-library/asset/2755>`__

- `Démo de jeu 2,5D <https://godotengine.org/asset-library/asset/2783>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`x<class_Basis_property_x>` | ``Vector3(1, 0, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`y<class_Basis_property_y>` | ``Vector3(0, 1, 0)`` |
   +-------------------------------+----------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`z<class_Basis_property_z>` | ``Vector3(0, 0, 1)`` |
   +-------------------------------+----------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ )                                                                                                                         |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Basis<class_Basis>`\ )                                                                                       |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )                                                |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )                                                                             |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>` | :ref:`Basis<class_Basis_constructor_Basis>`\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`determinant<class_Basis_method_determinant>`\ (\ ) |const|                                                                                                                                                  |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_euler<class_Basis_method_from_euler>`\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static|                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`from_scale<class_Basis_method_from_scale>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static|                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_euler<class_Basis_method_get_euler>`\ (\ order\: :ref:`int<class_int>` = 2\ ) |const|                                                                                                                   |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`get_rotation_quaternion<class_Basis_method_get_rotation_quaternion>`\ (\ ) |const|                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`get_scale<class_Basis_method_get_scale>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`inverse<class_Basis_method_inverse>`\ (\ ) |const|                                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_conformal<class_Basis_method_is_conformal>`\ (\ ) |const|                                                                                                                                                |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_equal_approx<class_Basis_method_is_equal_approx>`\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const|                                                                                                           |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`is_finite<class_Basis_method_is_finite>`\ (\ ) |const|                                                                                                                                                      |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`looking_at<class_Basis_method_looking_at>`\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`orthonormalized<class_Basis_method_orthonormalized>`\ (\ ) |const|                                                                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`rotated<class_Basis_method_rotated>`\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const|                                                                                 |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled<class_Basis_method_scaled>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`scaled_local<class_Basis_method_scaled_local>`\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                         |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`slerp<class_Basis_method_slerp>`\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const|                                                                                          |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotx<class_Basis_method_tdotx>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdoty<class_Basis_method_tdoty>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`tdotz<class_Basis_method_tdotz>`\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`           | :ref:`transposed<class_Basis_method_transposed>`\ (\ ) |const|                                                                                                                                                    |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator !=<class_Basis_operator_neq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )      |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator *<class_Basis_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator *<class_Basis_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`     | :ref:`operator /<class_Basis_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )             |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`operator ==<class_Basis_operator_eq_Basis>`\ (\ right\: :ref:`Basis<class_Basis>`\ )       |
   +-------------------------------+--------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`operator []<class_Basis_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )            |
   +-------------------------------+--------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Basis_constant_IDENTITY:

.. rst-class:: classref-constant

**IDENTITY** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_IDENTITY>`

La **Basis** identité. Il s'agit d'une base orthonormée sans rotation, sans cisaillement, et d'une échelle de :ref:`Vector3.ONE<class_Vector3_constant_ONE>`. Cela signifie également que :

- Le :ref:`x<class_Basis_property_x>` pointe vers la droite (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`);

- Le :ref:`y<class_Basis_property_y>` pointe vers le haut (:ref:`Vector3.UP<class_Vector3_constant_UP>`);

- Le :ref:`z<class_Basis_property_z>` pointe vers l'arrière (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

::

    var base = Basis.IDENTITY
    print("| X | Y | Z")
    print("| %.f | %.f | %.f" % [base.x.x, base.y.x, base.z.x])
    print("| %.f | %.f | %.f" % [base.x.y, base.y.y, base.z.y])
    print("| %.f | %.f | %.f" % [base.x.z, base.y.z, base.z.z])
    # Affiche :
    # | X | Y | Z
    # | 1 | 0 | 0
    # | 0 | 1 | 0
    # | 0 | 0 | 1

Si un :ref:`Vector3<class_Vector3>` ou une autre **Basis** est transformé (multiplié) par cette constante, aucune transformation ne se produit.

\ **Note :** En GDScript, cette constante est équivalente à la création d'un :ref:`Basis<class_Basis_constructor_Basis>` sans aucun argument. Elle peut être utilisée pour rendre votre code plus clair, et pour la cohérence avec le C#.

.. _class_Basis_constant_FLIP_X:

.. rst-class:: classref-constant

**FLIP_X** = ``Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_X>`

Lorsqu'une base est multipliée par :ref:`FLIP_X<class_Basis_constant_FLIP_X>`, cela inverse le signe toutes les composantes de l'axe :ref:`x<class_Basis_property_x>` (la colonne X).

Lorsque :ref:`FLIP_X<class_Basis_constant_FLIP_X>` est multiplié par n'importe quelle base, cela inverse le signe de la composante :ref:`Vector3.x<class_Vector3_property_x>` de tous les axes (la ligne X).

.. _class_Basis_constant_FLIP_Y:

.. rst-class:: classref-constant

**FLIP_Y** = ``Basis(1, 0, 0, 0, -1, 0, 0, 0, 1)`` :ref:`🔗<class_Basis_constant_FLIP_Y>`

Lorsqu'une base est multipliée par :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>`, cela inverse le signe toutes les composantes de l'axe :ref:`y<class_Basis_property_y>` (la colonne Y).

Lorsque :ref:`FLIP_Y<class_Basis_constant_FLIP_Y>` est multiplié par n'importe quelle base, cela inverse le signe de la composante :ref:`Vector3.y<class_Vector3_property_y>` de tous les axes (la ligne Y).

.. _class_Basis_constant_FLIP_Z:

.. rst-class:: classref-constant

**FLIP_Z** = ``Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)`` :ref:`🔗<class_Basis_constant_FLIP_Z>`

Lorsqu'une base est multipliée par :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>`, cela inverse le signe toutes les composantes de l'axe :ref:`z<class_Basis_property_z>` (la colonne Z).

Lorsque :ref:`FLIP_Z<class_Basis_constant_FLIP_Z>` est multiplié par n'importe quelle base, cela inverse le signe de la composante :ref:`Vector3.z<class_Vector3_property_z>` de tous les axes (la ligne Z).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Basis_property_x:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **x** = ``Vector3(1, 0, 0)`` :ref:`🔗<class_Basis_property_x>`

L'axe X de la base et la colonne ``0`` de la matrice.

Sur la base identité, ce vecteur pointe vers la droite (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`).

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_y:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **y** = ``Vector3(0, 1, 0)`` :ref:`🔗<class_Basis_property_y>`

L'axe Y de la base et la colonne ``1`` de la matrice.

Sur la base identité, ce vecteur pointe vers le haut (:ref:`Vector3.UP<class_Vector3_constant_UP>`).

.. rst-class:: classref-item-separator

----

.. _class_Basis_property_z:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **z** = ``Vector3(0, 0, 1)`` :ref:`🔗<class_Basis_property_z>`

L'axe Z de la base et la colonne ``2`` de la matrice.

Sur la base identité, ce vecteur pointe vers l'arrière (:ref:`Vector3.BACK<class_Vector3_constant_BACK>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Basis_constructor_Basis:

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ ) :ref:`🔗<class_Basis_constructor_Basis>`

Construit une **Basis** identique à :ref:`IDENTITY<class_Basis_constant_IDENTITY>`.

\ **Note :** En C#, cela construit une **Basis** avec tous ses composantes définies à :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Basis<class_Basis>`\ )

Construit une **Basis** en tant que copie de la **Basis** donnée.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ )

Construit une **Basis** qui ne représente qu'une rotation, tournant autour de l'axe ``axis`` d'un angle ``angle`` donné, en radians. L'axe doit être un vecteur normalisé.

\ **Note :** C'est identique à l'utilisation de :ref:`rotated()<class_Basis_method_rotated>` sur la base :ref:`IDENTITY<class_Basis_constant_IDENTITY>`. Avec plus d'un angle, considérez à la place d'utiliser :ref:`from_euler()<class_Basis_method_from_euler>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ from\: :ref:`Quaternion<class_Quaternion>`\ )

Construit une **Basis** qui ne représente seulement qu'une rotation d'un :ref:`Quaternion<class_Quaternion>` donné.

\ **Note:** Les quaternions ne stockent *seulement* que des rotations, pas d'échelle. À cause de cela, les conversions de **Basis** vers :ref:`Quaternion<class_Quaternion>` ne peuvent pas toujours être inversées.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Basis<class_Basis>` **Basis**\ (\ x_axis\: :ref:`Vector3<class_Vector3>`, y_axis\: :ref:`Vector3<class_Vector3>`, z_axis\: :ref:`Vector3<class_Vector3>`\ )

Construit une **Basis** à partir de 3 vecteurs d'axe. Ce sont les colonnes de la matrice de la base.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Basis_method_determinant:

.. rst-class:: classref-method

:ref:`float<class_float>` **determinant**\ (\ ) |const| :ref:`🔗<class_Basis_method_determinant>`

Renvoie le `déterminant <https://fr.wikipedia.org/wiki/D%C3%A9terminant_(math%C3%A9matiques)>`__ de la matrice de cette base. Pour les mathématiques avancées, ce nombre peut être utilisé pour déterminer quelques attributs :

- Si le déterminant vaut exactement ``0.0``, la base n'est pas inversible (voir :ref:`inverse()<class_Basis_method_inverse>`).

- Si le déterminant est un nombre négatif, la base représente une échelle négative.

\ **Note :** Si l'échelle de la base est la même pour chaque axe, son déterminant vaut toujours cette échelle à la puissance 3.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_euler:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_euler**\ (\ euler\: :ref:`Vector3<class_Vector3>`, order\: :ref:`int<class_int>` = 2\ ) |static| :ref:`🔗<class_Basis_method_from_euler>`

Construit une nouvelle **Basis** qui ne représente que la rotation du :ref:`Vector3<class_Vector3>` d'`angles d'Euler <https://fr.wikipedia.org/wiki/Angles_d%27Euler>`__ donnés, en radians.

- Le :ref:`Vector3.x<class_Vector3_property_x>` devrait contenir l'angle autour de l'axe :ref:`x<class_Basis_property_x>` (roulis);

- Le :ref:`Vector3.y<class_Vector3_property_y>` devrait contenir l'angle autour de l'axe :ref:`y<class_Basis_property_y>` (tangage);

- Le :ref:`Vector3.z<class_Vector3_property_z>` devrait contenir l'angle autour de l'axe :ref:`z<class_Basis_property_z>` (lacet).


.. tabs::

 .. code-tab:: gdscript

    # Crée une Basis dont l'axe z pointe vers le bas.
    var ma_base = Basis.from_euler(Vector3(TAU / 4, 0, 0))

    print(ma_base.z) # Affiche (0.0, -1.0, 0.0)

 .. code-tab:: csharp

    // Crée une Basis dont l'axe z pointe vers le bas.
    var maBase = Basis.FromEuler(new Vector3(Mathf.Tau / 4.0f, 0.0f, 0.0f));

    GD.Print(maBase.Z); // Affiche (0, -1, 0)



L'ordre de chaque rotation consécutive peut être modifié avec le paramètre ``order`` (voir les constantes :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`). Par défaut, la convention YXZ est utilisée (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`) : la base tourne d'abord autour de l'axe Y (tangage), puis X (roulis) et enfin Z (lacet). En utilisant la méthode opposée :ref:`get_euler()<class_Basis_method_get_euler>`, cet ordre est inversé.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_from_scale:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **from_scale**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |static| :ref:`🔗<class_Basis_method_from_scale>`

Construit une nouvelle **Basis** qui ne représente qu'une échelle, sans rotation ni cisaillement, depuis le vecteur ``scale`` donné.


.. tabs::

 .. code-tab:: gdscript

    var ma_base = Basis.from_scale(Vector3(2, 4, 8))

    print(ma_base.x) # Affiche (2.0, 0.0, 0.0)
    print(ma_base.y) # Affiche (0.0, 4.0, 0.0)
    print(ma_base.z) # Affiche (0.0, 0.0, 8.0)

 .. code-tab:: csharp

    var maBase = Basis.FromScale(new Vector3(2.0f, 4.0f, 8.0f));

    GD.Print(maBase.X); // Affiche (2, 0, 0)
    GD.Print(maBase.Y); // Affiche (0, 4, 0)
    GD.Print(maBase.Z); // Affiche (0, 0, 8)



\ **Note :** En algèbre linéaire, la matrice de cette base est également connue sous le nom de `matrice diagonale <https://fr.wikipedia.org/wiki/Matrice_diagonale>`__.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_euler:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_euler**\ (\ order\: :ref:`int<class_int>` = 2\ ) |const| :ref:`🔗<class_Basis_method_get_euler>`

Renvoie la rotation de cette base en tant que :ref:`Vector3<class_Vector3>` d'`angles d'Euler <https://fr.wikipedia.org/wiki/Angles_d%27Euler>`__, en radians. Pour la valeur renvoyée :

- Le :ref:`Vector3.x<class_Vector3_property_x>` contient l'angle autour de l'axe :ref:`x<class_Basis_property_x>` (roulis);

- Le :ref:`Vector3.y<class_Vector3_property_y>` contient l'angle autour de l'axe :ref:`y<class_Basis_property_y>` (tangage);

- Le :ref:`Vector3.z<class_Vector3_property_z>` contient l'angle autour de l'axe :ref:`z<class_Basis_property_z>` (lacet).

L'ordre de chaque rotation consécutive peut être modifié avec le paramètre ``order`` (voir les constantes :ref:`EulerOrder<enum_@GlobalScope_EulerOrder>`). Par défaut, la convention YXZ est utilisée (:ref:`@GlobalScope.EULER_ORDER_YXZ<class_@GlobalScope_constant_EULER_ORDER_YXZ>`) : la base tourne d'abord autour de l'axe Y (tangage), puis X (roulis) et enfin Z (lacet). En utilisant la méthode opposée :ref:`get_euler()<class_Basis_method_get_euler>`, cet ordre est inversé.

\ **Note :** Pour que cette méthode puisse renvoyer correctement, la base doit être *orthonormale* (voir :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

\ **Note :** Les angles d'Euler sont beaucoup plus intuitifs mais ne conviennent pas aux maths en 3D. Pour cette raison, envisagez d'utiliser la méthode :ref:`get_rotation_quaternion()<class_Basis_method_get_rotation_quaternion>` qui renvoie un :ref:`Quaternion<class_Quaternion>`.

\ **Note :** Dans le dock de l'inspecteur, la rotation d'une base est souvent affichée en angles d'Euler (en degrés), comme c'est le cas avec la propriété :ref:`Node3D.rotation<class_Node3D_property_rotation>`.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_rotation_quaternion:

.. rst-class:: classref-method

:ref:`Quaternion<class_Quaternion>` **get_rotation_quaternion**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_rotation_quaternion>`

Renvoie la rotation de cette base en tant que :ref:`Quaternion<class_Quaternion>`.

\ **Note :** Les quaternions sont beaucoup plus adaptés aux maths en 3D mais sont moins intuitifs. Pour les interfaces utilisateur, envisagez d'utiliser la méthode :ref:`get_euler()<class_Basis_method_get_euler>` qui renvoie des angles d'Euler.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_get_scale:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_scale**\ (\ ) |const| :ref:`🔗<class_Basis_method_get_scale>`

Renvoie la longueur de chaque axe de cette base, en tant que :ref:`Vector3<class_Vector3>`. Si la base n'est pas cisaillée, cette valeur est le facteur d'échelle. Il n'est pas affecté par la rotation.


.. tabs::

 .. code-tab:: gdscript

    var ma_base = Basis(
    Vector3(2, 0, 0),
    Vector3(0, 4, 0),
    Vector3(0, 0, 8)
    )
    # Tourner la Basis de n'importe quelle façon conserve son échelle.
    ma_base = ma_base.rotated(Vector3.UP, TAU / 2)
    ma_base = ma_base.rotated(Vector3.RIGHT, TAU / 4)

    print(my_basis.get_scale()) # Affiche (2.0, 4.0, 8.0)

 .. code-tab:: csharp

    var maBase = new Basis(
    Vector3(2.0f, 0.0f, 0.0f),
    Vector3(0.0f, 4.0f, 0.0f),
    Vector3(0.0f, 0.0f, 8.0f)
    );
    //Tourner la Basis de n'importe quelle façon conserve son échelle.
    maBase = maBase.Rotated(Vector3.Up, Mathf.Tau / 2.0f);
    maBase = maBase.Rotated(Vector3.Right, Mathf.Tau / 4.0f);

    GD.Print(maBase.Scale); // Affiche (2, 4, 8)



\ **Note :** Si la valeur renvoyée par :ref:`determinant()<class_Basis_method_determinant>` est négative, l'échelle est également négative.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_inverse:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **inverse**\ (\ ) |const| :ref:`🔗<class_Basis_method_inverse>`

Renvoie `l'inverse de la matrice <https://fr.wikipedia.org/wiki/Matrice_inversible>`__ de cette base.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_conformal:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_conformal**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_conformal>`

Renvoie ``true`` si cette base est conforme. Une base conforme est à la fois *orthogonale* (les axes sont perpendiculaires les uns aux autres) et *uniforme* (les axes partagent la même longueur). Cette méthode peut être particulièrement utile lors des calculs de physique.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ b\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_Basis_method_is_equal_approx>`

Renvoie ``true`` si cette base et ``b`` sont approximativement égales, en appelant :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` sur toutes les composantes vectorielles.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Basis_method_is_finite>`

Renvoie ``true`` si cette base est finie, en appelant :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` sur toutes les composantes vectorielles.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_looking_at:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **looking_at**\ (\ target\: :ref:`Vector3<class_Vector3>`, up\: :ref:`Vector3<class_Vector3>` = Vector3(0, 1, 0), use_model_front\: :ref:`bool<class_bool>` = false\ ) |static| :ref:`🔗<class_Basis_method_looking_at>`

Crée une nouvelle **Basis** avec une rotation telle que l'axe avant (-Z) pointe vers la position ``target``.

Par défaut, l'axe -Z (avant de la caméra) est traité comme l'avant (implique +X est la droite). Si ``use_model_front`` vaut ``true``, l'axe +Z (axe avant des ressources) est traité comme l'avant (implique +X est la gauche) et pointe vers la position ``target``.

L'axe vers le haut (+Y) pointe aussi près du vecteur ``up`` que possible tout en restant perpendiculaire à l'axe avant. La base renvoyée est orthonormalisée (voir :ref:`orthonormalized()<class_Basis_method_orthonormalized>`).

La cible ``target`` et le vecteur haut ``up`` ne peuvent être :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`, et ne devraient pas être colinéaires afin d'éviter une rotation inattendue autour de l'axe Z local.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_orthonormalized:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **orthonormalized**\ (\ ) |const| :ref:`🔗<class_Basis_method_orthonormalized>`

Renvoie la version orthonormalisée de cette base. Une base orthonormale est à la fois *orthogonale* (les axes sont perpendiculaires les uns aux autres) et *normalisée* (les axes ont une longueur de ``1.0``), ce qui signifie également qu'elle ne peut représenter qu'une rotation.

Il est souvent utile d'appeler cette méthode pour éviter les erreurs d'arrondissement sur une base tournante :


.. tabs::

 .. code-tab:: gdscript

    # Tourner ce Node3D à chaque trame.
    func _process(delta):
        base = base.rotated(Vector3.UP, TAU * delta)
        base = base.rotated(Vector3.RIGHT, TAU * delta)
        base = base.orthonormalized()

 .. code-tab:: csharp

    // Tourner ce Node3D à chaque trame.
    public override void _Process(double delta)
    {
        Base = Base.Rotated(Vector3.Up, Mathf.Tau * (float)delta)
                .Rotated(Vector3.Right, Mathf.Tau * (float)delta)
                .Orthonormalized();
    }



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_rotated:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **rotated**\ (\ axis\: :ref:`Vector3<class_Vector3>`, angle\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_rotated>`

Renvoie une copie de cette base tournée autour de l'axe ``axis`` donné de l'angle ``angle`` donné (en radians).

L'axe ``axis`` doit être un vecteur normalisé (voir :ref:`Vector3.normalized()<class_Vector3_method_normalized>`). Si ``angle`` est positif, la base est orientée dans le sens horaire inverse autour de l'axe.


.. tabs::

 .. code-tab:: gdscript

    var ma_base = Basis.IDENTITY
    var angle = TAU / 2

    ma_base = ma_base.rotated(Vector3.UP, angle) # Tourner autour de l'axe du haut (Roulis).
    ma_base = ma_base.rotated(Vector3.RIGHT, angle) # Tourner autour de l'axe de droite (Tangage).
    ma_base = ma_base.rotated(Vector3.BACK, angle) # Tourner autour de l'axe arrière (Lacet).

 .. code-tab:: csharp

    var maBase = Basis.Identity;
    var angle = Mathf.Tau / 2.0f;

    maBase = maBase.Rotated(Vector3.Up, angle); // Tourner autour de l'axe du haut (Roulis).
    maBase = maBase.Rotated(Vector3.Droit, angle); // Tourner autour de l'axe de droite (Tangage).
    maBase = maBase.Rotated(Vector3.Back, angle); // Tourner autour de l'axe arrière (Lacet).



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled>`

Renvoie cette base avec les composantes de chaque axe redimensionnés par les composantes de ``scale``.

Les lignes de la matrice de la base sont multipliées par les composants de ``scale``. Cette opération est une échelle globale (relative au parent).


.. tabs::

 .. code-tab:: gdscript

    var ma_base = Basis(
    Vector3(1, 1, 1),
    Vector3(2, 2, 2),
    Vector3(3, 3, 3)
    )
    ma_base = ma_base.scaled(Vector3(0, 2, -2))

    print(ma_base.x) # Affiche (0.0, 2.0, -2.0)
    print(ma_base.y) # Affiche (0.0, 4.0, -4.0)
    print(ma_base.z) # Affiche (0.0, 6.0, -6.0)

 .. code-tab:: csharp

    var maBase = new Basis(
    new Vector3(1.0f, 1.0f, 1.0f),
    new Vector3(2.0f, 2.0f, 2.0f),
    new Vector3(3.0f, 3.0f, 3.0f)
    );
    maBase = maBase.Scaled(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(maBase.X); // Affiche (0, 2, -2)
    GD.Print(maBase.Y); // Affiche (0, 4, -4)
    GD.Print(maBase.Z); // Affiche (0, 6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_scaled_local:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **scaled_local**\ (\ scale\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_scaled_local>`

Renvoie cette base avec les composantes de chaque axe redimensionnées par les composantes correspondantes de l'échelle ``scale`` donnée.

Les colonnes de la matrice de la base sont multipliées par les composantes de ``scale``. Cette opération est une échelle locale (relative à elle même).


.. tabs::

 .. code-tab:: gdscript

    var ma_base = Basis(
        Vector3(1, 1, 1),
        Vector3(2, 2, 2),
        Vector3(3, 3, 3)
    )
    ma_base = ma_base.scaled_local(Vector3(0, 2, -2))

    print(ma_base.x) # Affiche (0.0, 0.0, 0.0)
    print(ma_base.y) # Affiche (4.0, 4.0, 4.0)
    print(ma_base.z) # Affiche (-6.0, -6.0, -6.0)

 .. code-tab:: csharp

    var maBase = new Basis(
        new Vector3(1.0f, 1.0f, 1.0f),
        new Vector3(2.0f, 2.0f, 2.0f),
        new Vector3(3.0f, 3.0f, 3.0f)
    );
    maBase = maBase.ScaledLocal(new Vector3(0.0f, 2.0f, -2.0f));

    GD.Print(maBase.X); // Affiche (0, 0, 0)
    GD.Print(maBase.Y); // Affiche (4, 4, 4)
    GD.Print(maBase.Z); // Affiche (-6, -6, -6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_method_slerp:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **slerp**\ (\ to\: :ref:`Basis<class_Basis>`, weight\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Basis_method_slerp>`

Effectue une interpolation sphérique-linéaire avec la base ``to``, selon un poids ``weight`` donné. Cette base et ``to`` devraient tous deux représenter une rotation.

\ **Exemple :** Tourner de manière lisse un :ref:`Node3D<class_Node3D>` vers la base cible au fil du temps, avec un :ref:`Tween<class_Tween>`\  :

::

    var base_depart = Basis.IDENTITY
    var base_cible = Basis.IDENTITY.rotated(Vector3.UP, TAU / 2)

    func _ready():
        create_tween().tween_method(interpoler, 0.0, 1.0, 5.0).set_trans(Tween.TRANS_EXPO)

    func interpoler(poids):
        base = base_depart.slerp(base_cible, poids)

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotx:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotx**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotx>`

Renvoie le produit scalaire transposé entre ``with`` et l'axe :ref:`x<class_Basis_property_x>` (voir :ref:`transposed()<class_Basis_method_transposed>`).

Ceci est équivalent à ``base.x.dot(vecteur)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdoty:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdoty**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdoty>`

Renvoie le produit scalaire transposé entre ``with`` et l'axe :ref:`y<class_Basis_property_y>` (voir :ref:`transposed()<class_Basis_method_transposed>`).

Ceci est équivalent à ``base.y.dot(vecteur)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_tdotz:

.. rst-class:: classref-method

:ref:`float<class_float>` **tdotz**\ (\ with\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Basis_method_tdotz>`

Renvoie le produit scalaire transposé entre ``with`` et l'axe :ref:`z<class_Basis_property_z>` (voir :ref:`transposed()<class_Basis_method_transposed>`).

Ceci est équivalent à ``base.z.dot(vecteur)``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_method_transposed:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **transposed**\ (\ ) |const| :ref:`🔗<class_Basis_method_transposed>`

Renvoie la version transposée de cette base. Cela transforme les colonnes de la matrice de base en lignes, et ses lignes en colonnes.


.. tabs::

 .. code-tab:: gdscript

    var ma_base = Basis(
        Vector3(1, 2, 3),
        Vector3(4, 5, 6),
        Vector3(7, 8, 9)
    )
    ma_base = ma_base.transposed()

    print(ma_base.x) # Affiche (1.0, 4.0, 7.0)
    print(ma_base.y) # Affiche (2.0, 5.0, 8.0)
    print(ma_base.z) # Affiche (3.0, 6.0, 9.0)

 .. code-tab:: csharp

    var maBase = new Basis(
        new Vector3(1.0f, 2.0f, 3.0f),
        new Vector3(4.0f, 5.0f, 6.0f),
        new Vector3(7.0f, 8.0f, 9.0f)
    );
    maBase = maBase.Transposed();

    GD.Print(maBase.X); // Affiche (1, 4, 7)
    GD.Print(maBase.Y); // Affiche (2, 5, 8)
    GD.Print(maBase.Z); // Affiche (3, 6, 9)



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Basis_operator_neq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_neq_Basis>`

Renvoie ``true`` si les composantes des deux matrices **Basis** ne sont pas égales.

\ **Note :** À cause des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>` à la place, qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Basis:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_mul_Basis>`

Transforme (multiplie) la base ``right`` par cette base.

C'est l'opération effectuée entre les :ref:`Node3D<class_Node3D>` parent et enfant.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Basis_operator_mul_Vector3>`

Transforme (multiplie) le vecteur ``right`` par cette base, renvoyant un :ref:`Vector3<class_Vector3>`.


.. tabs::

 .. code-tab:: gdscript

    # Basis qui échange les axes X/Z et double l'échelle.
    var ma_base = Basis(Vector3(0, 2, 0), Vector3(2, 0, 0), Vector3(0, 0, 2))
    print(ma_base * Vector3(1, 2, 3)) # Affiche (4.0, 2.0, 6.0)

 .. code-tab:: csharp

    // Basis qui échange les axes X/Z et double l'échelle.
    var maBase = new Basis(new Vector3(0, 2, 0), new Vector3(2, 0, 0), new Vector3(0, 0, 2));
    GD.Print(maBase * new Vector3(1, 2, 3)); // Affiche (4, 2, 6)



.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_mul_float>`

Multiplie toutes les composantes de la **Basis** par le :ref:`float<class_float>` donné. Cela affecte uniformément l'échelle de la base, redimensionnant les 3 axes par la valeur ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_mul_int>`

Multiplie toutes les composantes de la **Basis** par le :ref:`int<class_int>` donné. Cela affecte uniformément l'échelle de la base, redimensionnant les 3 axes par la valeur ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_float:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Basis_operator_div_float>`

Divise toutes les composantes de la **Basis** par le :ref:`float<class_float>` donné. Cela affecte uniformément l'échelle de la base, redimensionnant les 3 axes par la valeur ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_div_int:

.. rst-class:: classref-operator

:ref:`Basis<class_Basis>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_div_int>`

Divise toutes les composantes de la **Basis** par le :ref:`int<class_int>` donné. Cela affecte uniformément l'échelle de la base, redimensionnant les 3 axes par la valeur ``right``.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_eq_Basis:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Basis<class_Basis>`\ ) :ref:`🔗<class_Basis_operator_eq_Basis>`

Renvoie ``true`` si les composantes des deux matrices **Basis** sont exactement égales.

\ **Note :** À cause des erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Basis_method_is_equal_approx>` à la place, qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Basis_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Basis_operator_idx_int>`

Accède à chaque axe (colonne) de cette base par leur index. L'index ``0`` est comme :ref:`x<class_Basis_property_x>`, l'index ``1`` est comme :ref:`y<class_Basis_property_y>`, et l'index ``2`` est le même que :ref:`z<class_Basis_property_z>`.

\ **Note :** En C++, cet opérateur accède aux lignes de la matrice de la base, *pas* les colonnes. Pour le même comportement que les languages de script, utilisez les méthodes ``set_column`` et ``get_column``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
