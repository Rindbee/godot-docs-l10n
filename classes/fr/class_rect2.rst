:github_url: hide

.. _class_Rect2:

Rect2
=====

Une boîte délimitante 2D alignée sur les axes utilisant des coordonnées à virgule flottante.

.. rst-class:: classref-introduction-group

Description
-----------

Le type :ref:`Variant<class_Variant>` intégré **Rect2** représente un rectangle aligné sur les axes dans un espace 2D. Il est défini par sa position :ref:`position<class_Rect2_property_position>` et sa taille :ref:`size<class_Rect2_property_size>`, qui sont des :ref:`Vector2<class_Vector2>`. Il est fréquemment utilisé pour les tests de superposition rapide (voir :ref:`intersects()<class_Rect2_method_intersects>`). Bien que **Rect2** lui-même soit aligné sur les axes, il peut être combiné avec :ref:`Transform2D<class_Transform2D>` pour représenter un rectangle tourné ou cisaillé.

Pour des coordonnées entières, utilisez :ref:`Rect2i<class_Rect2i>`. L'équivalent 3D de **Rect2** est :ref:`AABB<class_AABB>`.

\ **Note :** Les valeurs négatives pour :ref:`size<class_Rect2_property_size>` ne sont pas supportées. Avec une taille négative, la plupart des méthodes de **Rect2** ne fonctionnent pas correctement. Utilisez :ref:`abs()<class_Rect2_method_abs>` pour obtenir un **Rect2** équivalent avec une taille non négative.

\ **Note :** Dans un contexte booléen, un **Rect2** évalue à ``false`` si les deux valeurs :ref:`position<class_Rect2_property_position>` et :ref:`size<class_Rect2_property_size>` sont nulles (équivalent à :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`). Sinon, il évalue toujours à ``true``.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur les mathématiques <../tutorials/math/index>`

- :doc:`Mathématiques des vecteurs <../tutorials/math/vector_math>`

- :doc:`Mathématiques avancées des vecteurs <../tutorials/math/vectors_advanced>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`end<class_Rect2_property_end>`           | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_Rect2_property_position>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_Rect2_property_size>`         | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ )                                                                                                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`abs<class_Rect2_method_abs>`\ (\ ) |const|                                                                                                                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_Rect2_method_encloses>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`expand<class_Rect2_method_expand>`\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_area<class_Rect2_method_get_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_center<class_Rect2_method_get_center>`\ (\ ) |const|                                                                                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_support<class_Rect2_method_get_support>`\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow<class_Rect2_method_grow>`\ (\ amount\: :ref:`float<class_float>`\ ) |const|                                                                                                                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_individual<class_Rect2_method_grow_individual>`\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_side<class_Rect2_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const|                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_area<class_Rect2_method_has_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Rect2_method_has_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`intersection<class_Rect2_method_intersection>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_Rect2_method_intersects>`\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Rect2_method_is_equal_approx>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Rect2_method_is_finite>`\ (\ ) |const|                                                                                                                                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`merge<class_Rect2_method_merge>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Rect2_operator_neq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`operator *<class_Rect2_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Rect2_operator_eq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Rect2_property_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **end** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_end>`

Le point de fin. Il s'agit généralement du coin inférieur droit du rectangle, et est équivalent à ``position + taille``. Définir ce point affecte la taille :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_position>`

Le point d'origine. Il s'agit généralement du coin supérieur gauche du rectangle.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_size>`

La largeur et la hauteur du rectangle, à partir du point :ref:`position<class_Rect2_property_position>`. Définir cette valeur affecte également le point :ref:`end<class_Rect2_property_end>`.

\ **Note :** Il est recommandé de fixer la largeur et la hauteur à des valeurs non négatives, car la plupart des méthodes de Godot supposent que :ref:`position<class_Rect2_property_position>` est le coin supérieur gauche, et :ref:`end<class_Rect2_property_end>` le coin inférieur droit. Pour obtenir un rectangle équivalent avec une taille non négative, utilisez :ref:`abs()<class_Rect2_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Rect2_constructor_Rect2:

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ ) :ref:`🔗<class_Rect2_constructor_Rect2>`

Construit un **Rect2** avec sa position :ref:`position<class_Rect2_property_position>` et sa taille :ref:`size<class_Rect2_property_size>` définies à :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

Construit un **Rect2** comme une copie du **Rect2** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

Construit un **Rect2** à partir d'un :ref:`Rect2i<class_Rect2i>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )

Construit un **Rect2** avec sa position ``position`` et sa taille ``size``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ )

Construit un **Rect2** en définissant sa :ref:`position<class_Rect2_property_position>` à (``x``, ``y``), et sa taille :ref:`size<class_Rect2_property_size>` à (``width``, ``height``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Rect2_method_abs:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2_method_abs>`

Renvoie un **Rect2** équivalent à ce rectangle, avec sa largeur et sa hauteur modifiées pour être des valeurs non négatives, et avec sa :ref:`position<class_Rect2_property_position>` étant dans le coin supérieur gauche du rectangle.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(25, 25, -100, -50)
    var absolue = rect.abs() # absolue est Rect2(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2(25, 25, -100, -50);
    var absolue = rect.Abs(); // absolue est Rect2(-75, -25, 100, 50)



\ **Note :** Il est recommandé d'utiliser cette méthode lorsque :ref:`size<class_Rect2_property_size>` est négatif, car la plupart des autres méthodes de Godot supposent que la :ref:`position<class_Rect2_property_position>` est dans le coin supérieur gauche, et :ref:`end<class_Rect2_property_end>` est le coin inférieur droit.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_encloses>`

Renvoie ``true`` si ce rectangle entoure *complètement* le rectangle ``b``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_expand:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **expand**\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_expand>`

Renvoie une copie de ce rectangle étendu pour aligner les bords avec le point ``to`` donné, si nécessaire.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(0, 0, 5, 2)

    rect = rect.expand(Vector2(10, 0)) # rect vaut Rect2(0, 0, 10, 2)
    rect = rect.expand(Vector2(-5, 5)) # rect vaut Rect2(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2(0, 0, 5, 2);

    rect = rect.Expand(new Vector2(10, 0)); // rect vaut Rect2(0, 0, 10, 2)
    rect = rect.Expand(new Vector2(-5, 5)); // rect vaut Rect2(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_area:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_area>`

Renvoie l'aire du rectangle. Ceci est équivalent à ``size.x * size.y``. Voir aussi :ref:`has_area()<class_Rect2_method_has_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_center>`

Renvoie le point central du rectangle. Cela revient à ``position + (size / 2.0)``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_support:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_support**\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_get_support>`

Renvoie la position du sommet de ce rectangle qui est le plus loin dans la direction donnée. Ce point est communément appelé le point de support dans les algorithmes de détection de collision.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow>`

Renvoie une copie de ce rectangle étendu sur tous les côtés par le montant ``amount`` donné. Une quantité négative pour ``amount`` rétrécit le rectangle à la place. Voir aussi :ref:`grow_individual()<class_Rect2_method_grow_individual>` et :ref:`grow_side()<class_Rect2_method_grow_side>`.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2(4, 4, 8, 8).grow(4) # a vaut Rect2(0, 0, 16, 16)
    var b = Rect2(0, 0, 8, 4).grow(2) # b vaut Rect2(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2(4, 4, 8, 8).Grow(4); // a vaut Rect2(0, 0, 16, 16)
    var b = new Rect2(0, 0, 8, 4).Grow(2); // b vaut Rect2(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_individual**\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_individual>`

Renvoie une copie de ce rectangle avec ses côtés haut, bas, gauche droite étendus par les montants respectifs ``left``, ``top``, ``right`` et ``bottom`` donnés. Les valeurs négatives réduisent les côtés à la place. Voir aussi :ref:`grow()<class_Rect2_method_grow>` et :ref:`grow_side()<class_Rect2_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_side>`

Renvoie une copie de ce rectangle avec le côté ``side`` étendus par les le montant ``amount`` donné (voir les constantes :ref:`Side<enum_@GlobalScope_Side>`). Une valeur ``amount`` négative rétrécit le rectangle à la place. Voir aussi :ref:`grow()<class_Rect2_method_grow>` et :ref:`grow_side()<class_Rect2_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_has_area>`

Renvoie ``true`` si ce rectangle a une largeur et une hauteur positives. Voir aussi :ref:`get_area()<class_Rect2_method_get_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_has_point>`

Renvoie ``true`` si le rectangle contient le point ``point`` donné. Par convention, les points sur les bords droit et bas **ne** sont **pas** inclus.

\ **Note :** Cette méthode n'est pas fiable pour des **Rect2** avec une taille :ref:`size<class_Rect2_property_size>` *négative* . Utilisez :ref:`abs()<class_Rect2_method_abs>` d'abord pour obtenir un rectangle valide.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **intersection**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_intersection>`

Renvoie l'intersection entre ce rectangle et ``b``. Si les rectangles ne se croisent pas, renvoie un **Rect2** vide.


.. tabs::

 .. code-tab:: gdscript

    var rect1 = Rect2(0, 0, 5, 10)
    var rect2 = Rect2(2, 0, 8, 4)

    var a = rect1.intersection(rect2) # a vaut Rect2(2, 0, 3, 4)

 .. code-tab:: csharp

    var rect1 = nouveau Rect2(0, 0, 5, 10);
    var rect2 = nouveau Rect2(2, 0, 8, 4);

    var a = rect1.Intersection(rect2); // a vaut Rect2(2, 0, 3, 4)



\ **Note :** Si vous souhaiter seulement savoir si les deux rectangles se superposent, utilisez :ref:`intersects()<class_Rect2_method_intersects>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Rect2_method_intersects>`

Renvoie ``true`` si ce rectangle se superpose avec le rectangle ``b``. Les bords des deux rectangles sont exclus, sauf si ``include_borders`` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_is_equal_approx>`

Renvoie ``true`` si ce rectangle et ``rect`` sont approximativement égaux, en appelant :ref:`Vector2.is_equal_approx()<class_Vector2_method_is_equal_approx>` sur :ref:`position<class_Rect2_property_position>` et :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Rect2_method_is_finite>`

Renvoie ``true`` si les valeurs de ce rectangle sont finies, en appelant :ref:`Vector2.is_finite()<class_Vector2_method_is_finite>` sur :ref:`position<class_Rect2_property_position>` et :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_merge:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **merge**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_merge>`

Renvoie un **Rect2** qui encadre à la fois ce rectangle et ``b`` autour des bords. Voir aussi :ref:`encloses()<class_Rect2_method_encloses>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Rect2_operator_neq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_neq_Rect2>`

Renvoie ``true`` si :ref:`position<class_Rect2_property_position>` ou :ref:`size<class_Rect2_property_size>` des deux rectangles n'est pas égaux.

\ **Note :** En raison d'erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>` qui est plus fiable.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Rect2_operator_mul_Transform2D>`

Transforme (multiplie) de manière inverse le **Rect2** par la matrice de transformation :ref:`Transform2D<class_Transform2D>` donnée, avec la supposition que la base de la transformation est orthonormée (c.a.d. une rotation/réflexion est OK, une échelle/un cisaillement ne l'est pas).

\ ``rect * transform`` est équivalent à ``transform.inverse() * rect``. Voir :ref:`Transform2D.inverse()<class_Transform2D_method_inverse>`.

Pour transformer par l'inverse d'une transformation affine (par ex. avec une mise à l'échelle), ``transform.affine_inverse() * rect`` peut être utilisé à la place. Voir :ref:`Transform2D.affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_eq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_eq_Rect2>`

Renvoie ``true`` si les :ref:`position<class_Rect2_property_position>` et :ref:`size<class_Rect2_property_size>` des rectangles sont tous les deux exactement égaux, respectivement.

\ **Note :** En raison d'erreurs de précision des flottants, envisagez d'utiliser :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>` qui est plus fiable.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
