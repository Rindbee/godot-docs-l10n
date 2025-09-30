:github_url: hide

.. _class_int:

int
===

Un type intégré pour les entiers.

.. rst-class:: classref-introduction-group

Description
-----------

Type d'entier 64 bits signé. Cela signifie qu'il peut prendre des valeurs de ``-2^63`` à ``2^63 - 1``, c'est-à-dire de ``-9223372036854775808`` à ``9223372036854775807``. Quand il dépassera ces limites, il rebouclera.

Les **int**\ s peut être automatiquement converti en :ref:`float<class_float>`\ s lorsque cela est nécessaire, par exemple lors du passage comme arguments dans des fonctions. Le :ref:`float<class_float>` sera le plus proche possible de l'entier original.

De même, les :ref:`float<class_float>`\ s peuvent être automatiquement convertis en **int**\ s. Cela tronquera le :ref:`float<class_float>`, défaussant n'importe quoi après la virgule flottante.

\ **Note :** Dans un contexte booléen, un **int** évaluera à ``false`` s'il est égal à ``0``, et à ``true`` autrement.


.. tabs::

 .. code-tab:: gdscript

    var x: int = 1 # x vaut 1
    x = 4.2 # x vaut 4, car 4.2 est tronqué
    var entier_max = 9223372036854775807 # La plus grande valeur qu'un int peut stocker
    entier_max += 1 # entier_max vaut maintenant -9223372036854775808 (la plus petite valeur), car il a rebouclé

 .. code-tab:: csharp

    int x = 1; // x vaut 1
    x = (int)4.2; // x vaut 4, car 4.2 est tronqué
    // Nous utilisons le type long ci-dessous, car le int de GDScript est sur 64 bits, alors que celui de C# est sur 32
    long longMax = 9223372036854775807; // La plus grande valeur qu'un long peut stocker
    longMax++; // longMax vaut maintenant -9223372036854775808 (la plus petite valeur), car il a rebouclé

    // Sinon avec le type int de C# sur 32 bits, qui a une plus petite valeur maximale.
    int intMax= 2147483647; // La plus grande valeur qu'un int peut stocker
    intMax++; // longMax vaut maintenant -2147483648 (la plus petite valeur), car il a rebouclé



Vous pouvez utiliser le littéral ``0b`` pour la représentation binaire, le littéral ``0x`` pour la représentation hexadécimale et le symbole ``_`` pour séparer les nombres longs et améliorer la lisibilité.


.. tabs::

 .. code-tab:: gdscript

    var x = 0b1001 # x vaut 9
    var y = 0xF5 # y vaut 245
    var z = 10_000_000 # z vaut 10000000

 .. code-tab:: csharp

    int x = 0b1001; // x vaut 9
    int y = 0xF5; // y vaut 245
    int z = 10_000_000; // z vaut 10000000



.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ )                                     |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`int<class_int>`\ )       |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`String<class_String>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`bool<class_bool>`\ )     |
   +-----------------------+---------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`int<class_int_constructor_int>`\ (\ from\: :ref:`float<class_float>`\ )   |
   +-----------------------+---------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_int_operator_neq_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_int_operator_neq_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator %<class_int_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator &<class_int_operator_bwand_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`           | :ref:`operator *<class_int_operator_mul_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_int_operator_mul_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`operator *<class_int_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`     | :ref:`operator *<class_int_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_int_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>`     | :ref:`operator *<class_int_operator_mul_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_int_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )          |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>`     | :ref:`operator *<class_int_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator *<class_int_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator *<class_int_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator **<class_int_operator_pow_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator **<class_int_operator_pow_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator +<class_int_operator_sum_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator +<class_int_operator_sum_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator -<class_int_operator_dif_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator -<class_int_operator_dif_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator /<class_int_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator /<class_int_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_int_operator_lt_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_int_operator_lt_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator \<\<<class_int_operator_bwsl_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_int_operator_lte_float>`\ (\ right\: :ref:`float<class_float>`\ )              |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_int_operator_lte_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_int_operator_eq_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_int_operator_eq_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_int_operator_gt_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_int_operator_gt_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_int_operator_gte_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_int_operator_gte_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator >><class_int_operator_bwsr_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator ^<class_int_operator_bwxor_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator unary+<class_int_operator_unplus>`\ (\ )                                                 |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator unary-<class_int_operator_unminus>`\ (\ )                                                |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator |<class_int_operator_bwor_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`               | :ref:`operator ~<class_int_operator_bwnot>`\ (\ )                                                       |
   +-------------------------------------+---------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_int_constructor_int:

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ ) :ref:`🔗<class_int_constructor_int>`

Construit un entier **int** défini à ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`int<class_int>`\ )

Construit un entier **int** comme copie de l'entier **int** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`String<class_String>`\ )

Construit un nouveau **int** à partir d'un :ref:`String<class_String>`, en suivant les mêmes règles que :ref:`String.to_int()<class_String_method_to_int>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`bool<class_bool>`\ )

Construit un nouvel entier **int** depuis un :ref:`bool<class_bool>`. ``true`` est converti en ``1``\ et ``false`` est converti en ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`int<class_int>` **int**\ (\ from\: :ref:`float<class_float>`\ )

Construit un nouveau **int** à partir d'un :ref:`String<class_String>`. Cela tronquera le :ref:`float<class_float>`, défaussant tout ce qui se trouve après la virgule flottante.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_int_operator_neq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_neq_float>`

Renvoie ``true`` si le **int** n'est pas équivalent au :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_neq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_neq_int>`

Renvoie ``true`` si les entiers **int** ne sont pas égaux.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mod_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_mod_int>`

Renvoie le reste après avoir divisé deux **int**. Utilise la division tronquée, qui renvoie un nombre négatif si le dividende est négatif. Si cela n'est pas souhaité, envisagez d'utiliser :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>`.

::

    print(6 % 2) # Affiche 0
    print(11 % 4) # Affiche 3
    print(-5 % 3) # Affiche -2

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwand_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator &**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwand_int>`

Effectue l'opération par bit ``AND``.

::

    print(0b1100 & 0b1010) # Affiche 8 (1000 en binaire)

Ceci est utile pour récupérer les drapeaux binaires d'une variable.

::

    var drapeaux = 0b101
    # Vérifier si le premier ou le second bit est actif.
    if drapeaux & 0b011:
        do_stuff() # Cette ligne va s'exécuter

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_int_operator_mul_Color>`

Multiplie chaque composante de la couleur :ref:`Color<class_Color>` par l'entier **int** donné.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_int_operator_mul_Quaternion>`

Multiplie chaque composante du :ref:`Quaternion<class_Quaternion>` par l'entier **int** donné. Cette opération ne veut rien dire seule, mais peut-être utilisée comme partie d'une plus grande expression.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_int_operator_mul_Vector2>`

Multiplie chaque composante du :ref:`Vector2<class_Vector2>` par l'entier **int** donné.

::

    print(2 * Vector2(1, 4)) # Affiche (2, 8)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2i<class_Vector2i>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_int_operator_mul_Vector2i>`

Multiplie chaque composante du :ref:`Vector2i<class_Vector2i>` par l'entier **int** donné.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_int_operator_mul_Vector3>`

Multiplie chaque composante du :ref:`Vector3<class_Vector3>` par l'entier **int** donné.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator ***\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_int_operator_mul_Vector3i>`

Multiplie chaque composante du :ref:`Vector3i<class_Vector3i>` par l'entier **int** donné.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_int_operator_mul_Vector4>`

Multiplie chaque composante du :ref:`Vector4<class_Vector4>` par l'entier **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_int_operator_mul_Vector4i>`

Multiplie chaque composante du :ref:`Vector4i<class_Vector4i>` par l'entier **int**.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_mul_float>`

Multiplie un :ref:`float<class_float>` par l'**int**. Le résultat est un :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_mul_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_mul_int>`

Multiplie les deux **int**\ s.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_pow_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ****\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_pow_float>`

Élève un **int** à la puissance d'un :ref:`float<class_float>`. Le résultat est un :ref:`float<class_float>`.

::

    print(2 ** 0.5) # Affiche 1.4142135623731

.. rst-class:: classref-item-separator

----

.. _class_int_operator_pow_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ****\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_pow_int>`

Élève un **int** de gauche à la puissance du :ref:`float<class_float>` de droite.

::

    print(3 ** 4) # Affiche 81

.. rst-class:: classref-item-separator

----

.. _class_int_operator_sum_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator +**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_sum_float>`

Ajoute le **int** et le :ref:`float<class_float>`. Le résultat est un :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_sum_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator +**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_sum_int>`

Additionne les deux **int**\ s.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_dif_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator -**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_dif_float>`

Soustrait le :ref:`float<class_float>` du **int**. Le résultat est un :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_dif_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator -**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_dif_int>`

Soustrait les deux **int**\ s.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_div_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_div_float>`

Divise le **int** par le :ref:`float<class_float>`. Le résultat est un :ref:`float<class_float>`.

::

    print(10 / 3.0) # Affiche 3.333333333333333333

.. rst-class:: classref-item-separator

----

.. _class_int_operator_div_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_div_int>`

Divise les deux **int**\ s. Le résultat est un **int**. Cela va tronquer le :ref:`float<class_float>`, défaussant tout après la virgule flottante.

::

    print(6 / 2) # Affiche 3
    print(5 / 3) # Affiche 1

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_lt_float>`

Renvoie ``true`` si l'entier **int** est inférieur au :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_lt_int>`

Renvoie ``true`` si le **int** de gauche est inférieur au **int** de droite.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwsl_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator <<**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwsl_int>`

Effectue l'opération de décalage sur la gauche par bit. Effectivement la même chose que la multiplication par une puissance de 2.

::

    print(0b1010 << 1) # Affiche 20 (10100 en binaire)
    print(0b1010 << 3) # Affiche 80 (1010000 en binaire)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_lte_float>`

Renvoie ``true`` si l'entier **int** est inférieur ou égal au :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_lte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_lte_int>`

Renvoie ``true`` si le **int** de gauche est inférieur ou égal au **int** de droite.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_eq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_eq_float>`

Renvoie ``true`` si le **int** est égal au :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_eq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_eq_int>`

Renvoie ``true`` si les entiers **int** sont égaux.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_gt_float>`

Renvoie ``true`` si le **int** est supérieur au :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_gt_int>`

Renvoie ``true`` si le **int** de gauche est supérieur au **int** de droite.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_int_operator_gte_float>`

Renvoie ``true`` si le **int** est supérieur ou égal au :ref:`float<class_float>`.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_gte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_gte_int>`

Renvoie ``true`` si le **int** de gauche est supérieur ou égal au **int** de droite.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwsr_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator >>**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwsr_int>`

Effectue l'opération de décalage à droite par bits. Effectivement la même chose que la division par une puissance de 2.

::

    print(0b1010 >> 1) # Affiche 5 (101 en binaire)
    print(0b1010 >> 2) # Affiche 2 (10 en binaire)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwxor_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ^**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwxor_int>`

Effectue l'opération ``XOR`` par bit.

::

    print(0b1100 ^ 0b1010) # Affiche 6 (0110 en binaire)

.. rst-class:: classref-item-separator

----

.. _class_int_operator_unplus:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator unary+**\ (\ ) :ref:`🔗<class_int_operator_unplus>`

Renvoie la même valeur comme si ``+`` n'était pas là. Le ``+`` unaire ne fait rien, mais peut parfois rendre votre code plus lisible.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_unminus:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator unary-**\ (\ ) :ref:`🔗<class_int_operator_unminus>`

Renvoie la valeur négative du **int**. Si positif, rend le nombre négatif. Si négatif, rend le nombre positif. Si zéro, ne fait rien.

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwor_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator |**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_int_operator_bwor_int>`

Effectue l'opération ``OR`` par bit.

::

    print(0b1100 | 0b1010) # Affiche 14 (1110 en binaire)

Ceci est utile pour stocker des drapeaux binaires dans une variable.

::

    var drapeaux = 0
    drapeaux |= 0b101 # Allume le premier et le troisième bit

.. rst-class:: classref-item-separator

----

.. _class_int_operator_bwnot:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator ~**\ (\ ) :ref:`🔗<class_int_operator_bwnot>`

Effectue l'opération ``NOT`` par bits sur l'**int**. En raison du `complément à 2 <https://fr.wikipedia.org/wiki/Compl%C3%A9ment_%C3%A0_deux>`__, c'est effectivement égal à ``-(int + 1)``.

::

    print(~4) # Affiche -5
    print(~(-7)) # Affiche 6

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
