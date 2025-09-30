:github_url: hide

.. _class_Plane:

Plane
=====

Un plan en form normale de Hesse.

.. rst-class:: classref-introduction-group

Description
-----------

Représente une équation du plan normalisé. :ref:`normal<class_Plane_property_normal>` est la normale au plan (a, b, c normalisés), et :ref:`d<class_Plane_property_d>` est la distance de l'origine au plan (dans la direction de « normal »). "Au-dessus" ou "Sur" le plan est considéré comme le côté du plan vers où la normale pointe.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur les mathématiques <../tutorials/math/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`d<class_Plane_property_d>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`normal<class_Plane_property_normal>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`x<class_Plane_property_x>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`y<class_Plane_property_y>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`z<class_Plane_property_z>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ )                                                                                                                             |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ from\: :ref:`Plane<class_Plane>`\ )                                                                                           |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ a\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, c\: :ref:`float<class_float>`, d\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )                                                                                     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`, d\: :ref:`float<class_float>`\ )                                                      |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`, point\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ point1\: :ref:`Vector3<class_Vector3>`, point2\: :ref:`Vector3<class_Vector3>`, point3\: :ref:`Vector3<class_Vector3>`\ )     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`distance_to<class_Plane_method_distance_to>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_Plane_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Plane_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`, tolerance\: :ref:`float<class_float>` = 1e-05\ ) |const|       |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersect_3<class_Plane_method_intersect_3>`\ (\ b\: :ref:`Plane<class_Plane>`, c\: :ref:`Plane<class_Plane>`\ ) |const|                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_Plane_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_Plane_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Plane_method_is_equal_approx>`\ (\ to_plane\: :ref:`Plane<class_Plane>`\ ) |const|                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Plane_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_point_over<class_Plane_method_is_point_over>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`     | :ref:`normalized<class_Plane_method_normalized>`\ (\ ) |const|                                                                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`project<class_Plane_method_project>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                          |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Plane_operator_neq_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator *<class_Plane_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Plane_operator_eq_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator unary+<class_Plane_operator_unplus>`\ (\ )                                                    |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator unary-<class_Plane_operator_unminus>`\ (\ )                                                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Plane_constant_PLANE_YZ:

.. rst-class:: classref-constant

**PLANE_YZ** = ``Plane(1, 0, 0, 0)`` :ref:`🔗<class_Plane_constant_PLANE_YZ>`

Un plan qui s'étend aux axes Y et Z (le vecteur normal pointe vers +X).

.. _class_Plane_constant_PLANE_XZ:

.. rst-class:: classref-constant

**PLANE_XZ** = ``Plane(0, 1, 0, 0)`` :ref:`🔗<class_Plane_constant_PLANE_XZ>`

Un plan qui s'étend aux axes X et Z (le vecteur normal pointe vers +Y).

.. _class_Plane_constant_PLANE_XY:

.. rst-class:: classref-constant

**PLANE_XY** = ``Plane(0, 0, 1, 0)`` :ref:`🔗<class_Plane_constant_PLANE_XY>`

Un plan qui s'étend aux axes X et Y (le vecteur normal pointe vers +Z).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Plane_property_d:

.. rst-class:: classref-property

:ref:`float<class_float>` **d** = ``0.0`` :ref:`🔗<class_Plane_property_d>`

La distance entre l'origine et le plan, exprimée en termes de :ref:`normal<class_Plane_property_normal>` (selon sa direction et son longueur). La distance absolue réelle entre l'origine et le plan peut être calculée avec ``abs(d) / normal.length()`` (si :ref:`normal<class_Plane_property_normal>` a une longueur de zéro alors ce **Plane** ne représente pas un plan valide).

Dans l'équation scalaire du plan ``ax + by + cz = d``, il s’agit de ``d``, tandis que les coordonnées ``(a, b, c)`` sont représentées par la propriété :ref:`normal<class_Plane_property_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_normal:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **normal** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Plane_property_normal>`

La normale au plan, généralement un vecteur unitaire. Ne devrait pas être un vecteur zéro car un **Plane** avec un tel vecteur :ref:`normal<class_Plane_property_normal>` ne représente pas un plan valide.

Dans l'équation scalaire du plan ``ax + by + cz = d``, c'est le vecteur ``(a, b, c)``, où ``d`` est la propriété :ref:`d<class_Plane_property_d>`.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_x:

.. rst-class:: classref-property

:ref:`float<class_float>` **x** = ``0.0`` :ref:`🔗<class_Plane_property_x>`

Le composant X du vecteur de la :ref:`normal<class_Plane_property_normal>` du plan.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_y:

.. rst-class:: classref-property

:ref:`float<class_float>` **y** = ``0.0`` :ref:`🔗<class_Plane_property_y>`

Le composant Y du vecteur de la :ref:`normal<class_Plane_property_normal>` du plan.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_z:

.. rst-class:: classref-property

:ref:`float<class_float>` **z** = ``0.0`` :ref:`🔗<class_Plane_property_z>`

Le composant Z du vecteur de la :ref:`normal<class_Plane_property_normal>` du plan.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Plane_constructor_Plane:

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ ) :ref:`🔗<class_Plane_constructor_Plane>`

Construit un **Plane** initialisé par défaut, avec toutes ses composantes définies à ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ from\: :ref:`Plane<class_Plane>`\ )

Construit un **Plane** comme une copie du **Plane** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ a\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, c\: :ref:`float<class_float>`, d\: :ref:`float<class_float>`\ )

Crée un plan à partir des quatre paramètres. Les trois composantes du vecteur :ref:`normal<class_Plane_property_normal>` du plan résultant sont ``a``, ``b`` et ``c``, et le plan est à une distance ``d`` de l'origine.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )

Crée un plan depuis le vecteur normal. Le plan intersectera l'origine.

Le vecteur ``normal`` du plan doit être un vecteur unitaire.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`, d\: :ref:`float<class_float>`\ )

Crée un plan depuis le vecteur normal et la distance du plan à l'origine.

Le vecteur ``normal`` du plan doit être un vecteur unitaire.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`, point\: :ref:`Vector3<class_Vector3>`\ )

Crée un plan depuis le vecteur normal et un point du plan.

Le vecteur ``normal`` du plan doit être un vecteur unitaire.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ point1\: :ref:`Vector3<class_Vector3>`, point2\: :ref:`Vector3<class_Vector3>`, point3\: :ref:`Vector3<class_Vector3>`\ )

Crée un plan à partir de trois points, spécifiés dans le sens horaire.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Plane_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_distance_to>`

Renvoie la plus courte distance entre le plan et la position ``point``. Si le point est au-dessus du plan, la distance sera positive. S'il est ci-dessous, la distance sera négative.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_Plane_method_get_center>`

Renvoie le centre du plan.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`, tolerance\: :ref:`float<class_float>` = 1e-05\ ) |const| :ref:`🔗<class_Plane_method_has_point>`

Renvoie ``true`` si le ``point`` est à l'intérieur du plan. La comparaison utilise un seuil minimal de ``tolerance`` personnalisé.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersect_3:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersect_3**\ (\ b\: :ref:`Plane<class_Plane>`, c\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_Plane_method_intersect_3>`

Renvoie le point d'intersection des trois plans ``b``, ``c`` et ce plan. Si aucune intersection n'est trouvée, ``null`` est renvoyé.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_intersects_ray>`

Renvoie le point d'intersection d'un rayon composé de la position ``from`` et de la direction normale ``dir`` avec ce plan. Si aucune intersection n'est trouvée, ``null`` est renvoyé.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_intersects_segment>`

Renvoie le point d'intersection d'un segment de la position ``from`` à la position ``to`` avec ce plan. Si aucune intersection n'est trouvée, ``null`` est renvoyé.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to_plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_Plane_method_is_equal_approx>`

Renvoie ``true`` si ce plan et ``to_plane`` sont approximativement égaux, en exécutant :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Plane_method_is_finite>`

Renvoie ``true`` si ce plan est fini, en appelant :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_point_over:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_over**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_is_point_over>`

Renvoie ``true`` si ``point`` est situé au-dessus du plan.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_normalized:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **normalized**\ (\ ) |const| :ref:`🔗<class_Plane_method_normalized>`

Renvoie une copie du plan, avec le vecteur :ref:`normal<class_Plane_property_normal>` normalisé (c'est donc un vecteur unitaire). Renvoie ``Plane(0, 0, 0, 0)`` si :ref:`normal<class_Plane_property_normal>` ne peut être normalisé (il a une longueur de zéro).

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_project:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_project>`

Renvoie la projection orthogonale de ``point`` sur un point du plan.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Plane_operator_neq_Plane:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Plane_operator_neq_Plane>`

Renvoie ``true`` si les plans ne sont pas égaux.

\ **Note :** En raison d'erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Plane_method_is_equal_approx>` qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Plane_operator_mul_Transform3D>`

Transforme (multiplie) de manière inverse le **Plane** par la matrice de transformation :ref:`Transform3D<class_Transform3D>` donnée.

\ ``plane * transform`` est équivalent à ``transform.affine_inverse() * plane``. Voir :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_eq_Plane:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Plane_operator_eq_Plane>`

Renvoie ``true`` si les plans sont exactement égaux.

\ **Note:** En raison d'erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Plane_method_is_equal_approx>` qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_unplus:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator unary+**\ (\ ) :ref:`🔗<class_Plane_operator_unplus>`

Renvoie la même valeur comme si ``+`` n'était pas là. Le ``+`` unaire ne fait rien, mais peut parfois rendre votre code plus lisible.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_unminus:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator unary-**\ (\ ) :ref:`🔗<class_Plane_operator_unminus>`

Renvoie la valeur négative du **Plane**. Cela revient à écrire ``Plane(-p.normal, -p.d)``. Cette opération retourne la direction du vecteur normal et retourne également la valeur de distance, résultant en un plan qui est au même endroit, mais fait face à la direction opposée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
