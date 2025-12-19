:github_url: hide

.. _class_NavigationPathQueryResult3D:

NavigationPathQueryResult3D
===========================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Représente le résultat d'une requête de recherche de chemin 3D.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe stocke le résultat d'une requête de recherche de chemin 3D du :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation de NavigationPathQueryObjects <../tutorials/navigation/navigation_using_navigationpathqueryobjects>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`path<class_NavigationPathQueryResult3D_property_path>`                     | ``PackedVector3Array()`` |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`float<class_float>`                           | :ref:`path_length<class_NavigationPathQueryResult3D_property_path_length>`       | ``0.0``                  |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`path_owner_ids<class_NavigationPathQueryResult3D_property_path_owner_ids>` | ``PackedInt64Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]  | :ref:`path_rids<class_NavigationPathQueryResult3D_property_path_rids>`           | ``[]``                   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`path_types<class_NavigationPathQueryResult3D_property_path_types>`         | ``PackedInt32Array()``   |
   +-----------------------------------------------------+----------------------------------------------------------------------------------+--------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------+
   | |void| | :ref:`reset<class_NavigationPathQueryResult3D_method_reset>`\ (\ ) |
   +--------+--------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_NavigationPathQueryResult3D_PathSegmentType:

.. rst-class:: classref-enumeration

enum **PathSegmentType**: :ref:`🔗<enum_NavigationPathQueryResult3D_PathSegmentType>`

.. _class_NavigationPathQueryResult3D_constant_PATH_SEGMENT_TYPE_REGION:

.. rst-class:: classref-enumeration-constant

:ref:`PathSegmentType<enum_NavigationPathQueryResult3D_PathSegmentType>` **PATH_SEGMENT_TYPE_REGION** = ``0``

Ce segment du chemin traverse une région.

.. _class_NavigationPathQueryResult3D_constant_PATH_SEGMENT_TYPE_LINK:

.. rst-class:: classref-enumeration-constant

:ref:`PathSegmentType<enum_NavigationPathQueryResult3D_PathSegmentType>` **PATH_SEGMENT_TYPE_LINK** = ``1``

Ce segment du chemin traverse un lien.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_NavigationPathQueryResult3D_property_path:

.. rst-class:: classref-property

:ref:`PackedVector3Array<class_PackedVector3Array>` **path** = ``PackedVector3Array()`` :ref:`🔗<class_NavigationPathQueryResult3D_property_path>`

.. rst-class:: classref-property-setget

- |void| **set_path**\ (\ value\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )
- :ref:`PackedVector3Array<class_PackedVector3Array>` **get_path**\ (\ )

Le tableau du chemin résultant de la requête de navigation. Toutes les positions du tableau du chemin sont dans les coordonnées globales. Sans paramètres de requête personnalisés, il s'agit du même chemin que celui renvoyé par :ref:`NavigationServer3D.map_get_path()<class_NavigationServer3D_method_map_get_path>`.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector3Array<class_PackedVector3Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult3D_property_path_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_length** = ``0.0`` :ref:`🔗<class_NavigationPathQueryResult3D_property_path_length>`

.. rst-class:: classref-property-setget

- |void| **set_path_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_length**\ (\ )

Renvoie la longueur du chemin.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult3D_property_path_owner_ids:

.. rst-class:: classref-property

:ref:`PackedInt64Array<class_PackedInt64Array>` **path_owner_ids** = ``PackedInt64Array()`` :ref:`🔗<class_NavigationPathQueryResult3D_property_path_owner_ids>`

.. rst-class:: classref-property-setget

- |void| **set_path_owner_ids**\ (\ value\: :ref:`PackedInt64Array<class_PackedInt64Array>`\ )
- :ref:`PackedInt64Array<class_PackedInt64Array>` **get_path_owner_ids**\ (\ )

Les ``ObjectID``\ s des :ref:`Object<class_Object>`\ s qui gèrent les régions et les liens de chaque point que le chemin traverse.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt64Array<class_PackedInt64Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult3D_property_path_rids:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **path_rids** = ``[]`` :ref:`🔗<class_NavigationPathQueryResult3D_property_path_rids>`

.. rst-class:: classref-property-setget

- |void| **set_path_rids**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_path_rids**\ (\ )

Les :ref:`RID<class_RID>`\ s des régions et des liens de chaque point que le chemin traverse.

.. rst-class:: classref-item-separator

----

.. _class_NavigationPathQueryResult3D_property_path_types:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **path_types** = ``PackedInt32Array()`` :ref:`🔗<class_NavigationPathQueryResult3D_property_path_types>`

.. rst-class:: classref-property-setget

- |void| **set_path_types**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_path_types**\ (\ )

Le type de primitive de navigation (région ou lien) que chaque point du chemin traverse.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_NavigationPathQueryResult3D_method_reset:

.. rst-class:: classref-method

|void| **reset**\ (\ ) :ref:`🔗<class_NavigationPathQueryResult3D_method_reset>`

Réinitialise l'objet résultat à son état initial. Ceci est utile pour réutiliser l'objet dans plusieurs requêtes.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
