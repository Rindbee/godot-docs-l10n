:github_url: hide

.. _class_PackedColorArray:

PackedColorArray
================

Un tableau compacté de couleurs :ref:`Color<class_Color>`.

.. rst-class:: classref-introduction-group

Description
-----------

An array specifically designed to hold :ref:`Color<class_Color>`. Packs data tightly, so it saves memory for large array sizes.

\ **Differences between packed arrays, typed arrays, and untyped arrays:** Packed arrays are generally faster to iterate on and modify compared to a typed array of the same type (e.g. **PackedColorArray** versus ``Array[Color]``). Also, packed arrays consume less memory. As a downside, packed arrays are less flexible as they don't offer as many convenience methods such as :ref:`Array.map()<class_Array_method_map>`. Typed arrays are in turn faster to iterate on and modify than untyped arrays.

\ **Note:** Packed arrays are always passed by reference. To get a copy of an array that can be modified independently of the original array, use :ref:`duplicate()<class_PackedColorArray_method_duplicate>`. This is *not* the case for built-in properties and methods. In these cases the returned packed array is a copy, and changing it will *not* affect the original value. To update a built-in property of this type, modify the returned array and then assign it to the property again.

.. note::

	Il y a des différences notables dans l'utilisation de cette API en C#. Voir :ref:`doc_c_sharp_differences` pour plus d'informations.

.. rst-class:: classref-reftable-group

Constructeurs
--------------------------

.. table::
   :widths: auto

   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`PackedColorArray<class_PackedColorArray_constructor_PackedColorArray>`\ (\ )                                                         |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`PackedColorArray<class_PackedColorArray_constructor_PackedColorArray>`\ (\ from\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`PackedColorArray<class_PackedColorArray_constructor_PackedColorArray>`\ (\ from\: :ref:`Array<class_Array>`\ )                       |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`append<class_PackedColorArray_method_append>`\ (\ value\: :ref:`Color<class_Color>`\ )                                             |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`append_array<class_PackedColorArray_method_append_array>`\ (\ array\: :ref:`PackedColorArray<class_PackedColorArray>`\ )           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`bsearch<class_PackedColorArray_method_bsearch>`\ (\ value\: :ref:`Color<class_Color>`, before\: :ref:`bool<class_bool>` = true\ )  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`clear<class_PackedColorArray_method_clear>`\ (\ )                                                                                  |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`count<class_PackedColorArray_method_count>`\ (\ value\: :ref:`Color<class_Color>`\ ) |const|                                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`duplicate<class_PackedColorArray_method_duplicate>`\ (\ )                                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`erase<class_PackedColorArray_method_erase>`\ (\ value\: :ref:`Color<class_Color>`\ )                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`fill<class_PackedColorArray_method_fill>`\ (\ value\: :ref:`Color<class_Color>`\ )                                                 |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`find<class_PackedColorArray_method_find>`\ (\ value\: :ref:`Color<class_Color>`, from\: :ref:`int<class_int>` = 0\ ) |const|       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                       | :ref:`get<class_PackedColorArray_method_get>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                               |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`has<class_PackedColorArray_method_has>`\ (\ value\: :ref:`Color<class_Color>`\ ) |const|                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`insert<class_PackedColorArray_method_insert>`\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Color<class_Color>`\ )           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`is_empty<class_PackedColorArray_method_is_empty>`\ (\ ) |const|                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`push_back<class_PackedColorArray_method_push_back>`\ (\ value\: :ref:`Color<class_Color>`\ )                                       |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`remove_at<class_PackedColorArray_method_remove_at>`\ (\ index\: :ref:`int<class_int>`\ )                                           |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`resize<class_PackedColorArray_method_resize>`\ (\ new_size\: :ref:`int<class_int>`\ )                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`reverse<class_PackedColorArray_method_reverse>`\ (\ )                                                                              |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`rfind<class_PackedColorArray_method_rfind>`\ (\ value\: :ref:`Color<class_Color>`, from\: :ref:`int<class_int>` = -1\ ) |const|    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`set<class_PackedColorArray_method_set>`\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Color<class_Color>`\ )                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                           | :ref:`size<class_PackedColorArray_method_size>`\ (\ ) |const|                                                                            |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`slice<class_PackedColorArray_method_slice>`\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                          | :ref:`sort<class_PackedColorArray_method_sort>`\ (\ )                                                                                    |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedByteArray<class_PackedByteArray>`   | :ref:`to_byte_array<class_PackedColorArray_method_to_byte_array>`\ (\ ) |const|                                                          |
   +-------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Opérateurs
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator !=<class_PackedColorArray_operator_neq_PackedColorArray>`\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedColorArray<class_PackedColorArray>` | :ref:`operator +<class_PackedColorArray_operator_sum_PackedColorArray>`\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                         | :ref:`operator ==<class_PackedColorArray_operator_eq_PackedColorArray>`\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ )  |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`                       | :ref:`operator []<class_PackedColorArray_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                                        |
   +-------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des constructeurs
------------------------------------------------------------

.. _class_PackedColorArray_constructor_PackedColorArray:

.. rst-class:: classref-constructor

:ref:`PackedColorArray<class_PackedColorArray>` **PackedColorArray**\ (\ ) :ref:`🔗<class_PackedColorArray_constructor_PackedColorArray>`

Construit un **PackedColorArray** vide.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedColorArray<class_PackedColorArray>` **PackedColorArray**\ (\ from\: :ref:`PackedColorArray<class_PackedColorArray>`\ )

Construit un **PackedColorArray** comme une copie du **PackedColorArray** donné.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`PackedColorArray<class_PackedColorArray>` **PackedColorArray**\ (\ from\: :ref:`Array<class_Array>`\ )

Construit un nouveau **PackedColorArray**. Optionnellement, vous pouvez passer un tableau :ref:`Array<class_Array>` générique qui sera converti.

\ **Note :** Lors de l'initialisation d'un **PackedColorArray** avec des éléments, il doit être initialisé avec un :ref:`Array<class_Array>` de valeurs de :ref:`Color<class_Color>`\  :

::

    var tableau = PackedColorArray([Color(0.1, 0.2, 0.3), Color(0.4, 0.5, 0.6)]

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_PackedColorArray_method_append:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **append**\ (\ value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_append>`

Ajoute un élément à la fin du tableau (c'est un raccourci vers :ref:`push_back()<class_PackedColorArray_method_push_back>`).

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_append_array:

.. rst-class:: classref-method

|void| **append_array**\ (\ array\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) :ref:`🔗<class_PackedColorArray_method_append_array>`

Ajoute un **PackedColorArray** à la fin de ce tableau.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_bsearch:

.. rst-class:: classref-method

:ref:`int<class_int>` **bsearch**\ (\ value\: :ref:`Color<class_Color>`, before\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_PackedColorArray_method_bsearch>`

Cherche l'index d'une valeur existante (ou l'index d'insertion qui maintient l'ordre de tri, si la valeur n'est pas encore présente dans le tableau) en utilisant la recherche binaire. Optionnellement, un spécificateur ``before`` peut être passé. Si ``false``, l'index renvoyé vient après toutes les entrées existantes de la valeur dans le tableau.

\ **Note :** Appeler :ref:`bsearch()<class_PackedColorArray_method_bsearch>` sur un tableau non trié résulte en un comportement inattendu.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_PackedColorArray_method_clear>`

Efface le contenu du tableau. C'est équivalent à :ref:`resize()<class_PackedColorArray_method_resize>` avec une taille de ``0``.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **count**\ (\ value\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_PackedColorArray_method_count>`

Renvoie le nombre de fois qu'un élément apparaît dans le tableau.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_duplicate:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **duplicate**\ (\ ) :ref:`🔗<class_PackedColorArray_method_duplicate>`

Crée une copie du tableau, et le renvoie.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_erase:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **erase**\ (\ value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_erase>`

Retire la première occurrence d'une valeur du tableau et renvoie ``true``. Si la valeur n'existe pas dans le tableau, rien ne se passe et ``false`` est renvoyé. Pour supprimer un élément par index, utilisez :ref:`remove_at()<class_PackedColorArray_method_remove_at>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_fill:

.. rst-class:: classref-method

|void| **fill**\ (\ value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_fill>`

Attribue la valeur donnée à tous les éléments du tableau. Cela peut généralement être utilisé avec :ref:`resize()<class_PackedColorArray_method_resize>` pour créer un tableau avec une taille donnée et des éléments initialisés.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_find:

.. rst-class:: classref-method

:ref:`int<class_int>` **find**\ (\ value\: :ref:`Color<class_Color>`, from\: :ref:`int<class_int>` = 0\ ) |const| :ref:`🔗<class_PackedColorArray_method_find>`

Recherche dans le tableau pour une valeur et renvoie son index ou ``-1`` si elle n'est pas trouvée. Optionnellement, l'index de recherche initial peut être passé.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_get:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_PackedColorArray_method_get>`

Returns the :ref:`Color<class_Color>` at the given ``index`` in the array. If ``index`` out-of-bounds or negative, this method fails and returns ``Color(0, 0, 0, 1)``.

This method is similar (but not identical) to the ``[]`` operator. Most notably, when this method fails, it doesn't pause project execution if run from the editor.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_has:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has**\ (\ value\: :ref:`Color<class_Color>`\ ) |const| :ref:`🔗<class_PackedColorArray_method_has>`

Renvoie ``true`` si le tableau contient ``value``.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_insert:

.. rst-class:: classref-method

:ref:`int<class_int>` **insert**\ (\ at_index\: :ref:`int<class_int>`, value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_insert>`

Insérer un nouvel élément à une position donnée dans le tableau. La position doit être valide, ou à la fin du tableau (``idx == size()``).

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_is_empty:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_empty**\ (\ ) |const| :ref:`🔗<class_PackedColorArray_method_is_empty>`

Renvoie ``true`` si le tableau est vide.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_push_back:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_back**\ (\ value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_push_back>`

Ajoute une valeur à la fin du tableau.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_remove_at:

.. rst-class:: classref-method

|void| **remove_at**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedColorArray_method_remove_at>`

Retire l'élément du tableau à l'index donné.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_resize:

.. rst-class:: classref-method

:ref:`int<class_int>` **resize**\ (\ new_size\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedColorArray_method_resize>`

Définit la taille du tableau. Si le tableau est agrandi, réserve des éléments à la fin du tableau. Si le tableau est rétrécit, tronque le tableau à la nouvelle taille. Appeler :ref:`resize()<class_PackedColorArray_method_resize>` une fois et attribuer les nouvelles valeurs est plus rapide que l'ajout de nouveaux éléments un par un.

Renvoie :ref:`@GlobalScope.OK<class_@GlobalScope_constant_OK>` sur le succès, ou une des constantes :ref:`Error<enum_@GlobalScope_Error>` suivantes si cette méthode échoue : :ref:`@GlobalScope.ERR_INVALID_PARAMETER<class_@GlobalScope_constant_ERR_INVALID_PARAMETER>` si la taille est négative, ou :ref:`@GlobalScope.ERR_OUT_OF_MEMORY<class_@GlobalScope_constant_ERR_OUT_OF_MEMORY>` si les allocations échouent. Utilisez :ref:`size()<class_PackedColorArray_method_size>` pour trouver la taille réelle du tableau après le redimensionnement.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_reverse:

.. rst-class:: classref-method

|void| **reverse**\ (\ ) :ref:`🔗<class_PackedColorArray_method_reverse>`

Inverse l'ordre des éléments du tableau.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_rfind:

.. rst-class:: classref-method

:ref:`int<class_int>` **rfind**\ (\ value\: :ref:`Color<class_Color>`, from\: :ref:`int<class_int>` = -1\ ) |const| :ref:`🔗<class_PackedColorArray_method_rfind>`

Cherche le tableau en ordre inverse. Optionnellement, un index de démarrage de recherche peut être passé. Si négatif, l'indice de démarrage est considéré par rapport à la fin du tableau.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_set:

.. rst-class:: classref-method

|void| **set**\ (\ index\: :ref:`int<class_int>`, value\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_PackedColorArray_method_set>`

Change la :ref:`Color<class_Color>` à la position donnée.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_size:

.. rst-class:: classref-method

:ref:`int<class_int>` **size**\ (\ ) |const| :ref:`🔗<class_PackedColorArray_method_size>`

Renvoie le nombre d'éléments dans le tableau.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_slice:

.. rst-class:: classref-method

:ref:`PackedColorArray<class_PackedColorArray>` **slice**\ (\ begin\: :ref:`int<class_int>`, end\: :ref:`int<class_int>` = 2147483647\ ) |const| :ref:`🔗<class_PackedColorArray_method_slice>`

Renvoie la tranche du **PackedColorArray**, de ``begin`` (inclusive) à ``end`` (exclusive), en tant que nouveau **PackedColorArray**.

La valeur absolue de ``begin`` et ``end`` sera bornée à la taille du tableau, de sorte que la valeur par défaut pour ``end`` le fait trancher à la taille du tableau par défaut (c.a.d. ``arr.slice(1)`` est un raccourci pour ``arr.slice(1, arr.size())``).

Si ``begin`` ou ``end`` sont négatifs, ils seront par rapport à la fin du tableau (c.a.d. ``arr.slice(0, -2)`` est un raccourci pour ``arr.slice(0, arr.size() - 2)``).

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_sort:

.. rst-class:: classref-method

|void| **sort**\ (\ ) :ref:`🔗<class_PackedColorArray_method_sort>`

Tris les éléments du tableau dans l'ordre croissant.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_method_to_byte_array:

.. rst-class:: classref-method

:ref:`PackedByteArray<class_PackedByteArray>` **to_byte_array**\ (\ ) |const| :ref:`🔗<class_PackedColorArray_method_to_byte_array>`

Renvoie un :ref:`PackedByteArray<class_PackedByteArray>` avec chaque couleur encodée en octets.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des opérateurs
------------------------------------------------------

.. _class_PackedColorArray_operator_neq_PackedColorArray:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) :ref:`🔗<class_PackedColorArray_operator_neq_PackedColorArray>`

Renvoie ``true`` si le contenu des tableaux diffère.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_operator_sum_PackedColorArray:

.. rst-class:: classref-operator

:ref:`PackedColorArray<class_PackedColorArray>` **operator +**\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) :ref:`🔗<class_PackedColorArray_operator_sum_PackedColorArray>`

Renvoie un nouveau **PackedColorArray** avec le contenu de ``right`` ajouté à la fin de ce tableau. Pour une meilleure performance, envisagez d'utiliser :ref:`append_array()<class_PackedColorArray_method_append_array>` à la place.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_operator_eq_PackedColorArray:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`PackedColorArray<class_PackedColorArray>`\ ) :ref:`🔗<class_PackedColorArray_operator_eq_PackedColorArray>`

Renvoie ``true`` si le contenu des deux tableaux est le même, c'est-à-dire qu'ils sont toutes leurs couleurs :ref:`Color<class_Color>` égales aux indices correspondants.

.. rst-class:: classref-item-separator

----

.. _class_PackedColorArray_operator_idx_int:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PackedColorArray_operator_idx_int>`

Renvoie la :ref:`Color<class_Color>` à la position ``index``. Les indices négatifs peuvent être utilisés pour accéder aux éléments à partir de la fin. L'utilisation d'un index hors des limites du tableau entraînera une erreur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
