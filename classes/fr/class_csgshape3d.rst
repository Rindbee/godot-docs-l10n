:github_url: hide

.. _class_CSGShape3D:

CSGShape3D
==========

**Hérite de :** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`CSGCombiner3D<class_CSGCombiner3D>`, :ref:`CSGPrimitive3D<class_CSGPrimitive3D>`

La classe de base CSG.

.. rst-class:: classref-introduction-group

Description
-----------

C'est la classe de base CSG qui fournit le support des opérations CSG aux différents nœuds CSG dans Godot.

\ **Performance :** Les nœuds CSG ne sont destinés qu'au prototypage car ils ont un coût de performance CPU important. Envisagez de pré-calculer les résultats de l'opération CSG finale en géométrie statique qui remplace les nœuds CSG.

Les résultats de nœud racine CSG individuels peuvent être pré-calculés vers des nœuds avec des ressources statiques avec le menu de l'éditeur qui apparaît quand un nœud racine CSG est sélectionné.

Les nœuds racine CSG individuels peuvent également être pré-calculés vers des ressources statiques avec des scripts en appelant :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` pour le maillage visuel ou :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` pour la collision physique.

Des scènes entières de nœuds CSG peuvent être pré-calculées vers de la géométrie statique et exportées avec l'exporteur de scène glTF de l'éditeur : **Scène > Exporter en tant que.. > Scène glTF 2.0**

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Prototyper des niveaux avec CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`calculate_tangents<class_CSGShape3D_property_calculate_tangents>` | ``true``  |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`       | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                       | :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`         | ``1``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`collision_priority<class_CSGShape3D_property_collision_priority>` | ``1.0``   |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`Operation<enum_CSGShape3D_Operation>` | :ref:`operation<class_CSGShape3D_property_operation>`                   | ``0``     |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                   | :ref:`snap<class_CSGShape3D_property_snap>`                             |           |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                     | :ref:`use_collision<class_CSGShape3D_property_use_collision>`           | ``false`` |
   +---------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` | :ref:`bake_collision_shape<class_CSGShape3D_method_bake_collision_shape>`\ (\ )                                                                                  |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ArrayMesh<class_ArrayMesh>`                         | :ref:`bake_static_mesh<class_CSGShape3D_method_bake_static_mesh>`\ (\ )                                                                                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_layer_value<class_CSGShape3D_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`get_collision_mask_value<class_CSGShape3D_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                            |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                 | :ref:`get_meshes<class_CSGShape3D_method_get_meshes>`\ (\ ) |const|                                                                                              |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`is_root_shape<class_CSGShape3D_method_is_root_shape>`\ (\ ) |const|                                                                                        |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_layer_value<class_CSGShape3D_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                    | :ref:`set_collision_mask_value<class_CSGShape3D_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )   |
   +-----------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_CSGShape3D_Operation:

.. rst-class:: classref-enumeration

enum **Operation**: :ref:`🔗<enum_CSGShape3D_Operation>`

.. _class_CSGShape3D_constant_OPERATION_UNION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_UNION** = ``0``

La géométrie des deux primitives est fusionnée, la géométrie croisée est supprimée.

.. _class_CSGShape3D_constant_OPERATION_INTERSECTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_INTERSECTION** = ``1``

Il ne reste que la géométrie d'intersection, le reste est supprimé.

.. _class_CSGShape3D_constant_OPERATION_SUBTRACTION:

.. rst-class:: classref-enumeration-constant

:ref:`Operation<enum_CSGShape3D_Operation>` **OPERATION_SUBTRACTION** = ``2``

La deuxième forme est soustraite à la première, laissant une bosse avec sa forme.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CSGShape3D_property_calculate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **calculate_tangents** = ``true`` :ref:`🔗<class_CSGShape3D_property_calculate_tangents>`

.. rst-class:: classref-property-setget

- |void| **set_calculate_tangents**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_calculating_tangents**\ (\ )

Calculate tangents for the CSG shape which allows the use of normal and height maps. This is only applied on the root shape, this setting is ignored on any child. Setting this to ``false`` can speed up shape generation slightly.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Le calque physique de cette zone.

Les objets de collision peuvent exister dans l'un des 32 calques différentes. Ces calques fonctionnent comme un système de marquage, et ne sont pas visuels. Un objet de collision peut utiliser ces calques pour sélectionner avec quels objets il peut entrer en collision, en utilisant la propriété :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`.

Un contact est détecté si l'objet A est dans l'un des calques que l'objet B observe, ou si l'objet B est dans tous les calques observés par l'objet A. Voir `Calques et masques de collision <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ dans la documentation pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_CSGShape3D_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Les couche de physique que cette forme CSG scanne pour les collisions. Seulement effectif si :ref:`use_collision<class_CSGShape3D_property_use_collision>` vaut ``true``. Voir `Niveaux et masques de collisions <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ dans la documentation pour plus d'informations.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_CSGShape3D_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

La priorité utilisée pour résoudre la collision lors de la pénétration. Seulement effectif si :ref:`use_collision<class_CSGShape3D_property_use_collision>` vaut ``true``. Plus la priorité est élevée, plus la pénétration dans l'objet sera faible. Cela peut par exemple être utilisé pour empêcher le joueur de franchir les limites d'un niveau.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_operation:

.. rst-class:: classref-property

:ref:`Operation<enum_CSGShape3D_Operation>` **operation** = ``0`` :ref:`🔗<class_CSGShape3D_property_operation>`

.. rst-class:: classref-property-setget

- |void| **set_operation**\ (\ value\: :ref:`Operation<enum_CSGShape3D_Operation>`\ )
- :ref:`Operation<enum_CSGShape3D_Operation>` **get_operation**\ (\ )

L'opération effectuée sur cette forme. Ceci est ignoré pour le premier nœud enfant CSG puisque l'opération est entre ce nœud et l'enfant précédent de ce nœud parent.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_snap:

.. rst-class:: classref-property

:ref:`float<class_float>` **snap** :ref:`🔗<class_CSGShape3D_property_snap>`

.. rst-class:: classref-property-setget

- |void| **set_snap**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_snap**\ (\ )

**Obsolète :** The CSG library no longer uses snapping.

Cette propriété ne fait rien.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_property_use_collision:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_collision** = ``false`` :ref:`🔗<class_CSGShape3D_property_use_collision>`

.. rst-class:: classref-property-setget

- |void| **set_use_collision**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_collision**\ (\ )

Ajoute une forme de collision au moteur de physique pour notre forme CSG. Cela agira toujours comme un corps statique. Notez que la forme de collision est encore active même si la forme CSG elle-même est cachée. Voir aussi :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` et :ref:`collision_priority<class_CSGShape3D_property_collision_priority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_CSGShape3D_method_bake_collision_shape:

.. rst-class:: classref-method

:ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` **bake_collision_shape**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_collision_shape>`

Renvoie une :ref:`ConcavePolygonShape3D<class_ConcavePolygonShape3D>` physique calculée du résultat de l'opération CSG de ce nœud. Renvoie une forme vide si le nœud n'est pas un nœud racine CSG ou n'a pas de géométrie valide.

\ **Performance :** Si l'opération CSG aboutit à une géométrie très détaillée avec de nombreuses faces, les performances de la physique seront très faibles. Les formes concaves ne devraient en général être utilisées que pour la géométrie de niveau statique et non avec des objets dynamiques qui se déplacent.

\ **Note :** Les mises à jour des données de maillage CSG sont différées, ce qui signifie qu'elles sont mises à jour avec un délai d'un trame rendue. Pour éviter d'obtenir une forme vide ou des données de maillage périmées, assurez-vous d'appeler ``await get_tree().process_frame`` avant d'utiliser :ref:`bake_collision_shape()<class_CSGShape3D_method_bake_collision_shape>` dans :ref:`Node._ready()<class_Node_private_method__ready>` ou après avoir modifié des propriétés du **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_bake_static_mesh:

.. rst-class:: classref-method

:ref:`ArrayMesh<class_ArrayMesh>` **bake_static_mesh**\ (\ ) :ref:`🔗<class_CSGShape3D_method_bake_static_mesh>`

Renvoie un :ref:`ArrayMesh<class_ArrayMesh>` statique calculé du résultat de l'opération CSG de ce nœud. Les matériaux des nœuds CSG impliqués sont ajoutés en tant que surfaces de maillage supplémentaires. Renvoie un maillage vide si le nœud n'est pas un nœud racine CSG ou n'a pas de géométrie valide.

\ **Note :** Les mises à jour des données de maillage CSG sont différées, ce qui signifie qu'elles sont mises à jour avec un délai d'un trame rendue. Pour éviter d'obtenir un maillage vide ou des données de maillage périmées, assurez-vous d'appeler ``await get_tree().process_frame`` avant d'utiliser :ref:`bake_static_mesh()<class_CSGShape3D_method_bake_static_mesh>` dans :ref:`Node._ready()<class_Node_private_method__ready>` ou après avoir modifié des propriétés du **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_layer_value>`

Renvoie si la couche spécifiée du :ref:`collision_layer<class_CSGShape3D_property_collision_layer>` est activée, selon un numéro de couche ``layer_number`` entre 1 et 32 donné.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_collision_mask_value>`

Renvoie si la couche spécifiée du :ref:`collision_mask<class_CSGShape3D_property_collision_mask>` est activée, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_get_meshes>`

Renvoie un :ref:`Array<class_Array>` avec deux éléments, le premier est la :ref:`Transform3D<class_Transform3D>` de ce nœud et le second est le :ref:`Mesh<class_Mesh>` racine de ce nœud. Fonctionne seulement lorsque ce nœud est la forme racine.

\ **Note :** Les mises à jour des données de maillage CSG sont différées, ce qui signifie qu'elles sont mises à jour avec un délai d'une trame rendue. Pour éviter d'obtenir une forme vide ou des données de maillage périmées, assurez-vous d'appeler ``await get_tree().process_frame`` avant d'utiliser :ref:`get_meshes()<class_CSGShape3D_method_get_meshes>` dans :ref:`Node._ready()<class_Node_private_method__ready>` ou après avoir modifié des propriétés du **CSGShape3D**.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_is_root_shape:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_root_shape**\ (\ ) |const| :ref:`🔗<class_CSGShape3D_method_is_root_shape>`

Renvoie ``true`` s’il s’agit d’une forme racine et est donc l’objet rendu.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_layer_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le :ref:`collision_layer<class_CSGShape3D_property_collision_layer>`, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. rst-class:: classref-item-separator

----

.. _class_CSGShape3D_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_CSGShape3D_method_set_collision_mask_value>`

Selon ``value``, active ou désactive la couche spécifiée dans le :ref:`collision_mask<class_CSGShape3D_property_collision_mask>`, étant donné un numéro de couche ``layer_number`` entre 1 et 32.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
