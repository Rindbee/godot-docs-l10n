:github_url: hide

.. _class_BitMap:

BitMap
======

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Matrice booléenne.

.. rst-class:: classref-introduction-group

Description
-----------

Un tableau bidimensionnel de valeurs booléennes, peut être utilisé pour stocker efficacement une matrice binaire (chaque élément matrice ne contient qu'un bit) et faire des requêtes sur ces valeurs à l'aide de coordonnées naturelles cartésiennes.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                                                        | :ref:`convert_to_image<class_BitMap_method_convert_to_image>`\ (\ ) |const|                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`create<class_BitMap_method_create>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`create_from_image_alpha<class_BitMap_method_create_from_image_alpha>`\ (\ image\: :ref:`Image<class_Image>`, threshold\: :ref:`float<class_float>` = 0.1\ ) |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`get_bit<class_BitMap_method_get_bit>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const|                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                          | :ref:`get_bitv<class_BitMap_method_get_bitv>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`\ ) |const|                                                           |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`                                                  | :ref:`get_size<class_BitMap_method_get_size>`\ (\ ) |const|                                                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                                            | :ref:`get_true_bit_count<class_BitMap_method_get_true_bit_count>`\ (\ ) |const|                                                                                   |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`grow_mask<class_BitMap_method_grow_mask>`\ (\ pixels\: :ref:`int<class_int>`, rect\: :ref:`Rect2i<class_Rect2i>`\ )                                         |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] | :ref:`opaque_to_polygons<class_BitMap_method_opaque_to_polygons>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, epsilon\: :ref:`float<class_float>` = 2.0\ ) |const|    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`resize<class_BitMap_method_resize>`\ (\ new_size\: :ref:`Vector2i<class_Vector2i>`\ )                                                                       |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bit<class_BitMap_method_set_bit>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, bit\: :ref:`bool<class_bool>`\ )                            |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bit_rect<class_BitMap_method_set_bit_rect>`\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, bit\: :ref:`bool<class_bool>`\ )                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                           | :ref:`set_bitv<class_BitMap_method_set_bitv>`\ (\ position\: :ref:`Vector2i<class_Vector2i>`, bit\: :ref:`bool<class_bool>`\ )                                    |
   +----------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_BitMap_method_convert_to_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **convert_to_image**\ (\ ) |const| :ref:`🔗<class_BitMap_method_convert_to_image>`

Renvoie une image de la même taille que la bitmap et avec le format :ref:`Format<enum_Image_Format>` de type :ref:`Image.FORMAT_L8<class_Image_constant_FORMAT_L8>`. Les bits ``true`` de la bitmap seront converties en pixels blancs, et les bits ``false`` en noir.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_create:

.. rst-class:: classref-method

|void| **create**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_BitMap_method_create>`

Crée un bitmap de la taille spécifiée, rempli avec la valeur ``false``.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_create_from_image_alpha:

.. rst-class:: classref-method

|void| **create_from_image_alpha**\ (\ image\: :ref:`Image<class_Image>`, threshold\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_BitMap_method_create_from_image_alpha>`

Crée une bitmap qui correspond aux dimensions de l'image donnée, chaque élément de la bitmap sera défini à ``false`` si la valeur alpha de l'image à cette position est inférieure ou égale à ``threshold``, et ``true`` sinon.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_bit:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bit**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_BitMap_method_get_bit>`

Renvoie la valeur du bitmap à la position spécifiée.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_bitv:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_bitv**\ (\ position\: :ref:`Vector2i<class_Vector2i>`\ ) |const| :ref:`🔗<class_BitMap_method_get_bitv>`

Renvoie la valeur du bitmap à la position spécifiée.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_size**\ (\ ) |const| :ref:`🔗<class_BitMap_method_get_size>`

Renvoie les dimensions de bitmap.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_get_true_bit_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_true_bit_count**\ (\ ) |const| :ref:`🔗<class_BitMap_method_get_true_bit_count>`

Renvoie le nombre d'éléments de la bitmap qui sont définis à ``true``.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_grow_mask:

.. rst-class:: classref-method

|void| **grow_mask**\ (\ pixels\: :ref:`int<class_int>`, rect\: :ref:`Rect2i<class_Rect2i>`\ ) :ref:`🔗<class_BitMap_method_grow_mask>`

Applique une dilatation ou une érosion morphologique à la bitmap. Si ``pixels`` est positif, une dilatation est appliquée à la bitmap. Si ``pixels`` est négatif, une érosion est appliquée à la bitmap. ``rect`` définit la zone où l'opération morphologique est appliquée. Les pixels situés à l'extérieur du ``rect`` ne sont pas affectés par :ref:`grow_mask()<class_BitMap_method_grow_mask>`.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_opaque_to_polygons:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`PackedVector2Array<class_PackedVector2Array>`\] **opaque_to_polygons**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, epsilon\: :ref:`float<class_float>` = 2.0\ ) |const| :ref:`🔗<class_BitMap_method_opaque_to_polygons>`

Crée un :ref:`Array<class_Array>` de polygones couvrant une partie rectangulaire de la bitmap. Utilise un algorithme Marching Square, suivi de la réduction du nombre de sommets de Ramer-Douglas-Peucker (RDP). Chaque polygone est décrit en tant que :ref:`PackedVector2Array<class_PackedVector2Array>` de ses sommets.

Pour obtenir des polygones couvrant toute la bitmap, utilisez comme argument :

::

    Rect2(Vector2(), get_size())

\ ``epsilon`` est passé à RDP pour contrôler la précision des polygones recouvrant la bitmap : un ``epsilon`` inférieur correspond à plus de points dans les polygones.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_resize:

.. rst-class:: classref-method

|void| **resize**\ (\ new_size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_BitMap_method_resize>`

Redimensionne l'image à la nouvelle taille ``new_size``.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bit:

.. rst-class:: classref-method

|void| **set_bit**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bit>`

Définit l'élément du bitmap à la position donnée, avec la valeur spécifiée.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bit_rect:

.. rst-class:: classref-method

|void| **set_bit_rect**\ (\ rect\: :ref:`Rect2i<class_Rect2i>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bit_rect>`

Définit une valeur spécifique pour une portion rectangulaire du bitmap.

.. rst-class:: classref-item-separator

----

.. _class_BitMap_method_set_bitv:

.. rst-class:: classref-method

|void| **set_bitv**\ (\ position\: :ref:`Vector2i<class_Vector2i>`, bit\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_BitMap_method_set_bitv>`

Définit l'élément du bitmap à la position donnée, avec la valeur spécifiée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
