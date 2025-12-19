:github_url: hide

.. _class_Vector2i:

Vector2i
========

Un vecteur 2D utilisant des coordonnées entières.

.. rst-class:: classref-introduction-group

Description
-----------

Une structure de 2 éléments qui peut être utilisée pour représenter les coordonnées d'une grille 2D ou toute autre paire d'entiers.

Il utilise des coordonnées entières et est donc préférable à :ref:`Vector2<class_Vector2>` lorsque la précision exacte est requise. Notez que les valeurs sont limitées à 32 bits, et contrairement à :ref:`Vector2<class_Vector2>` cela ne peut pas être configuré avec une option de compilation du moteur. Utilisez :ref:`int<class_int>` ou :ref:`PackedInt64Array<class_PackedInt64Array>` si des valeurs 64 bits sont nécessaires.

\ **Note :** Dans un contexte booléen, un Vector2i évaluera ``false`` si elle est égale à ``Vector2i(0, 0)``. Sinon, un Vector2i évaluera toujours ``true``.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur les mathématiques <../tutorials/math/index>`

- :doc:`Mathématiques des vecteurs <../tutorials/math/vector_math>`

- `3Blue1Brown Essence of Linear Algebra <https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector2i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector2i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ )                                                       |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ from\: :ref:`Vector2i<class_Vector2i>`\ )               |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ from\: :ref:`Vector2<class_Vector2>`\ )                 |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`Vector2i<class_Vector2i_constructor_Vector2i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`abs<class_Vector2i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`aspect<class_Vector2i_method_aspect>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`clamp<class_Vector2i_method_clamp>`\ (\ min\: :ref:`Vector2i<class_Vector2i>`, max\: :ref:`Vector2i<class_Vector2i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`clampi<class_Vector2i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector2i_method_distance_squared_to>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector2i_method_distance_to>`\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector2i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector2i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`max<class_Vector2i_method_max>`\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector2i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`maxi<class_Vector2i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`min<class_Vector2i_method_min>`\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector2i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`mini<class_Vector2i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`sign<class_Vector2i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`snapped<class_Vector2i_method_snapped>`\ (\ step\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`snappedi<class_Vector2i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector2i_operator_neq_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator %<class_Vector2i_operator_mod_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator %<class_Vector2i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator *<class_Vector2i_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`operator *<class_Vector2i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator *<class_Vector2i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator +<class_Vector2i_operator_sum_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator -<class_Vector2i_operator_dif_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator /<class_Vector2i_operator_div_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`   | :ref:`operator /<class_Vector2i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator /<class_Vector2i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector2i_operator_lt_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector2i_operator_lte_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector2i_operator_eq_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector2i_operator_gt_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector2i_operator_gte_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector2i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator unary+<class_Vector2i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`operator unary-<class_Vector2i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Vector2i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector2i_Axis>`

.. _class_Vector2i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector2i_Axis>` **AXIS_X** = ``0``

La valeur de l'énumération pour l'axe X. Renvoyé par :ref:`max_axis_index()<class_Vector2i_method_max_axis_index>` et :ref:`min_axis_index()<class_Vector2i_method_min_axis_index>`.

.. _class_Vector2i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector2i_Axis>` **AXIS_Y** = ``1``

La valeur de l'énumération pour l'axe Y. Retourné par :ref:`max_axis_index()<class_Vector2i_method_max_axis_index>` et :ref:`min_axis_index()<class_Vector2i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_Vector2i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector2i(0, 0)`` :ref:`🔗<class_Vector2i_constant_ZERO>`

Le vecteur zéro, un vecteur avec tous ses composants définis ``0``.

.. _class_Vector2i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector2i(1, 1)`` :ref:`🔗<class_Vector2i_constant_ONE>`

Le vecteur unitaire, un vecteur avec tous ses composants définis à ``1``.

.. _class_Vector2i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector2i(-2147483648, -2147483648)`` :ref:`🔗<class_Vector2i_constant_MIN>`

Vecteur minimum, un vecteur avec toutes ses composantes égales à ``INT32_MIN``. Peut être utilisé comme un équivalent entier négatif de :ref:`Vector2.INF<class_Vector2_constant_INF>`.

.. _class_Vector2i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector2i(2147483647, 2147483647)`` :ref:`🔗<class_Vector2i_constant_MAX>`

Vecteur maximum, un vecteur avec toutes ses composantes égales à ``INT32_MAX``. Peut être utilisé comme un équivalent entier de :ref:`Vector2.INF<class_Vector2_constant_INF>`.

.. _class_Vector2i_constant_LEFT:

.. rst-class:: classref-constant

**LEFT** = ``Vector2i(-1, 0)`` :ref:`🔗<class_Vector2i_constant_LEFT>`

Le vecteur unitaire gauche. Représente la direction vers la gauche.

.. _class_Vector2i_constant_RIGHT:

.. rst-class:: classref-constant

**RIGHT** = ``Vector2i(1, 0)`` :ref:`🔗<class_Vector2i_constant_RIGHT>`

Le vecteur unitaire droit. Représente la direction vers la droite.

.. _class_Vector2i_constant_UP:

.. rst-class:: classref-constant

**UP** = ``Vector2i(0, -1)`` :ref:`🔗<class_Vector2i_constant_UP>`

Le vecteur unitaire vers le haut. Y représente le bas en 2D, donc ce vecteur pointe vers -Y.

.. _class_Vector2i_constant_DOWN:

.. rst-class:: classref-constant

**DOWN** = ``Vector2i(0, 1)`` :ref:`🔗<class_Vector2i_constant_DOWN>`

Le vecteur unitaire vers le bas. Y représente le bas en 2D, donc ce vecteur pointe vers +Y.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Vector2i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector2i_property_x>`

La composante vectorielle X. Également accessible en utilisant le code de position index ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector2i_property_y>`

La composante vectorielle X. Également accessible en utilisant le code de position index ``[1]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_Vector2i_constructor_Vector2i:

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ ) :ref:`🔗<class_Vector2i_constructor_Vector2i>`

Construit un **Vector2i** initialisé par défaut avec toutes les composantes définies à ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ from\: :ref:`Vector2i<class_Vector2i>`\ )

Construit un **Vector2i** comme copie du **Vector2i** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ from\: :ref:`Vector2<class_Vector2>`\ )

Construit un nouveau **Vector2i** depuis le :ref:`Vector2<class_Vector2>` donné en tronquant les parties fractionnelles des composantes (arrondissant vers 0). Pour un comportement différent, envisagez de passer le résultat de :ref:`Vector2.ceil()<class_Vector2_method_ceil>`, :ref:`Vector2.floor()<class_Vector2_method_floor>` ou :ref:`Vector2.round()<class_Vector2_method_round>` à ce constructeur à la place.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector2i<class_Vector2i>` **Vector2i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ )

Construit un nouveau **Vector2i** depuis les ``x`` et ``y`` donnés.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Vector2i_method_abs:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_abs>`

Renvoie un nouveau vecteur avec tous ses composantes en valeurs absolues (c'est-à-dire toujours positives).

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_aspect:

.. rst-class:: classref-method

:ref:`float<class_float>` **aspect**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_aspect>`

Renvoie le ratio d'aspect de ce vecteur, soit :ref:`x<class_Vector2i_property_x>` divisé par :ref:`y<class_Vector2i_property_y>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **clamp**\ (\ min\: :ref:`Vector2i<class_Vector2i>`, max\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_clamp>`

Renvoie un nouveau vecteur avec toutes les composantes bornées entre les composantes de ``min`` et ``max``, en exécutant :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_clampi>`

Renvoie un nouveau vecteur avec toutes les composantes bornées entre ``min`` et ``max``, en exécutant :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_distance_squared_to>`

Renvoie la distance au carré entre ce vecteur et ``to``.

Cette méthode est plus rapide que :ref:`distance_to()<class_Vector2i_method_distance_to>`, alors préfèrez-la si vous avez besoin de comparer des vecteurs ou besoin de la distance carrée pour une formule.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_distance_to>`

Renvoie la distance entre ce vecteur et ``to``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_length>`

Renvoie la longueur (magnitude) de ce vecteur.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_length_squared>`

Renvoie la longeur (magnitude) au carré de ce vecteur.

Cette méthode est plus rapide que :ref:`length()<class_Vector2i_method_length>` donc préférez-le si vous devez comparer des vecteurs ou avoir besoin de la distance carrée pour certaines formules.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_max:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **max**\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_max>`

Renvoie le maximum par composante de ceci et ``with``, équivalent à ``Vector2i(maxf(x, with.x), maxf(y, with.y))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_max_axis_index>`

Renvoie l'axe de la valeur la plus importante du vecteur. Voir les constantes\ ``AXIS_*``. Si tous les composants sont égaux, cette méthode renvoie :ref:`AXIS_X<class_Vector2i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_maxi>`

Renvoie le maximum par composante de ceci et ``with``, équivalent à ``Vector2i(maxf(x, with), maxf(y, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_min:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **min**\ (\ with\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_min>`

Renvoie le minimum par composante de ceci et ``with``, équivalent à ``Vector2i(minf(x, with.x), minf(y, with.y))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_min_axis_index>`

Renvoie l'axe de la valeur la moins importante du vecteur. Voir les constantes\ ``AXIS_*``. Si tous les composants sont égaux, cette méthode renvoie :ref:`AXIS_Y<class_Vector2i_constant_AXIS_Y>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_mini:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_mini>`

Renvoie le minimum par composante de ceci et ``with``, équivalent à ``Vector2i(minf(x, with), minf(y, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_sign:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector2i_method_sign>`

Renvoie un nouveau vecteur avec chaque composante définie à ``1`` si elle est positive, ``-1`` si elle est négative, et ``0`` si elle est nulle. Le résultat est identique à celui d'appeler :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` sur chaque composante.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **snapped**\ (\ step\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_Vector2i_method_snapped>`

Renvoie un nouveau vecteur avec chaque composante arrondie au multiple le plus proche de la composante correspondante dans ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector2i_method_snappedi>`

Renvoie un nouveau vecteur avec chaque composante arrondie au multiple le plus proche de ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_Vector2i_operator_neq_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_neq_Vector2i>`

Renvoie ``true`` si les vecteurs ne sont pas égaux.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mod_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator %**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_mod_Vector2i>`

Obtient le reste de la division euclidienne de chaque composante du **Vector2i** par les composantes du **Vector2i** donné. Cette opération utilise une division tronquée, qui n'est souvent pas souhaité car elle ne fonctionne pas bien avec des nombres négatifs. Considérez utiliser :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` plutôt si vous voulez gérer les nombres négatifs.

::

    print(Vector2i(10, -20) % Vector2i(7, 8) # Affiche (3, -4)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_mod_int>`

Obtient le reste de la division euclidienne de chaque composante du **Vector2i** par l'entier :ref:`int<class_int>` donné. Cette opération utilise une division tronquée, qui n'est souvent pas souhaité car elle ne fonctionne pas bien avec des nombres négatifs. Considérez utiliser :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` plutôt si vous voulez gérer les nombres négatifs.

::

    print(Vector2i(10, -20) % 7) # Affiche (3, -6)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_mul_Vector2i>`

Multiple chaque composante du **Vector2i** par les composantes du **Vector2i** donné.

::

    print(Vector2i(10, 20) * Vector2i(3, 4)) # Affiche (30, 80)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector2i_operator_mul_float>`

Multiple chaque composante du **Vector2i** par le flottant :ref:`float<class_float>` donné. Renvoie un :ref:`Vector2<class_Vector2>`\ 

::

    print(Vector2i(10, 15) * 0.9) # Affiche (9.0, 13.5)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_mul_int>`

Multiple chaque composante du **Vector2i** par l'entier :ref:`int<class_int>` donné.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_sum_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator +**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_sum_Vector2i>`

Ajoute chaque composante du **Vector2i** aux composantes du **Vector2i** donné.

::

    print(Vector2i(10, 20) + Vector2i(3, 4)) # Affiche (13, 24)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_dif_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator -**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_dif_Vector2i>`

Soustrait chaque composante du **Vector2i** par les composantes du **Vector2i** donné.

::

    print(Vector2i(10, 20) - Vector2i(3, 4)) # Affiche (7, 16)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator /**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_div_Vector2i>`

Divise chaque composante du **Vector2i** par les composantes du **Vector2i** donné.

::

    print(Vector2i(10, 20) / Vector2i(2, 5)) # Affiche (5, 4)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector2i_operator_div_float>`

Divides each component of the **Vector2i** by the given :ref:`float<class_float>`. Returns a :ref:`Vector2<class_Vector2>`.

::

    print(Vector2i(1, 2) / 2.5) # Prints (0.4, 0.8)

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_div_int>`

Divise chaque composante du **Vector2i** par l'entier :ref:`int<class_int>` donné.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_lt_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_lt_Vector2i>`

Compare deux **Vector2i** en vérifiant en premier si la valeur en X du vecteur de gauche est inférieure à la valeur en X du vecteur ``right``. Si les deux valeurs en X sont exactement égales, alors il répète la vérification sur les valeurs en Y des deux vecteurs. Cet opérateur est utile pour trier des vecteurs.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_lte_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_lte_Vector2i>`

Compare deux **Vector2i** en vérifiant en premier si la valeur en X du vecteur de gauche est inférieure ou égale à la valeur en X du vecteur ``right``. Si les deux valeurs en X sont exactement égales, alors il répète la vérification sur les valeurs en Y des deux vecteurs. Cet opérateur est utile pour trier des vecteurs.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_eq_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_eq_Vector2i>`

Renvoie ``true`` si les vecteurs sont égaux.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_gt_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_gt_Vector2i>`

Compare deux **Vector2i** en vérifiant en premier si la valeur en X du vecteur de gauche est supérieure à la valeur en X du vecteur ``right``. Si les deux valeurs en X sont exactement égales, alors il répète la vérification sur les valeurs en Y des deux vecteurs. Cet opérateur est utilise pour trier des vecteurs.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_gte_Vector2i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_Vector2i_operator_gte_Vector2i>`

Compare deux **Vector2i** en vérifiant en premier si la valeur en X du vecteur de gauche est supérieure ou égale à la valeur en X du vecteur ``right``. Si les deux valeurs en X sont exactement égales, alors il répète la vérification sur les valeurs en Y des deux vecteurs. Cet opérateur est utile pour trier des vecteurs.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector2i_operator_idx_int>`

Accède aux composantes du vecteur par leur ``index``. ``v[0]`` est équivalent à ``v.x`` et ``v[1]`` est équivalent à ``v.y``.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector2i_operator_unplus>`

Renvoie la même valeur comme si ``+`` n'était pas là. Le ``+`` unaire ne fait rien, mais peut parfois rendre votre code plus lisible.

.. rst-class:: classref-item-separator

----

.. _class_Vector2i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector2i_operator_unminus>`

Renvoie la valeur négative du **Vector2i**. Revient à écrire ``Vector2i(-v.x, -v.y)``. Cette opération retourne la direction du vecteur tout en gardant la même magnitude.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
