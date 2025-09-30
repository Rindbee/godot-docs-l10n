:github_url: hide

.. _class_VisualShader:

VisualShader
============

**Hérite de :** :ref:`Shader<class_Shader>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un programme de shader personnalisé dans l'éditeur visuel.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe fournit un éditeur visuel en forme de graphe pour créer un :ref:`Shader<class_Shader>`. Bien que les **VisualShader**\ s ne nécessitent pas de codage, ils partagent la même logique que les shaders en script. Ils utilisent des :ref:`VisualShaderNode<class_VisualShaderNode>`\ s qui peuvent être connectés l'un à l'autre pour contrôler le flux du shader. Le graphe de shader visuel est converti en shader en script dans les coulisses.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser VisualShaders <../tutorials/shaders/visual_shaders>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`graph_offset<class_VisualShader_property_graph_offset>` |
   +-------------------------------+---------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_node<class_VisualShader_method_add_node>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, node\: :ref:`VisualShaderNode<class_VisualShaderNode>`, position\: :ref:`Vector2<class_Vector2>`, id\: :ref:`int<class_int>`\ )                                       |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_varying<class_VisualShader_method_add_varying>`\ (\ name\: :ref:`String<class_String>`, mode\: :ref:`VaryingMode<enum_VisualShader_VaryingMode>`, type\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ )                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`attach_node_to_frame<class_VisualShader_method_attach_node_to_frame>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, frame\: :ref:`int<class_int>`\ )                                                                                  |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`can_connect_nodes<class_VisualShader_method_can_connect_nodes>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const|   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>`                            | :ref:`connect_nodes<class_VisualShader_method_connect_nodes>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ )                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`connect_nodes_forced<class_VisualShader_method_connect_nodes_forced>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ )     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`detach_node_from_frame<class_VisualShader_method_detach_node_from_frame>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ )                                                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`disconnect_nodes<class_VisualShader_method_disconnect_nodes>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ )             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`VisualShaderNode<class_VisualShaderNode>`                  | :ref:`get_node<class_VisualShader_method_get_node>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] | :ref:`get_node_connections<class_VisualShader_method_get_node_connections>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const|                                                                                                                                     |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`                  | :ref:`get_node_list<class_VisualShader_method_get_node_list>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const|                                                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                                    | :ref:`get_node_position<class_VisualShader_method_get_node_position>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const|                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_valid_node_id<class_VisualShader_method_get_valid_node_id>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const|                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_varying<class_VisualShader_method_has_varying>`\ (\ name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                               |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`is_node_connection<class_VisualShader_method_is_node_connection>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_node<class_VisualShader_method_remove_node>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ )                                                                                                                                   |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_varying<class_VisualShader_method_remove_varying>`\ (\ name\: :ref:`String<class_String>`\ )                                                                                                                                                                 |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`replace_node<class_VisualShader_method_replace_node>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, new_class\: :ref:`StringName<class_StringName>`\ )                                                                                |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_mode<class_VisualShader_method_set_mode>`\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ )                                                                                                                                                                           |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_node_position<class_VisualShader_method_set_node_position>`\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ )                                                                             |
   +------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShader_Type:

.. rst-class:: classref-enumeration

enum **Type**: :ref:`🔗<enum_VisualShader_Type>`

.. _class_VisualShader_constant_TYPE_VERTEX:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_VERTEX** = ``0``

Un shader de sommet, s'appliquant sur chacun des sommets.

.. _class_VisualShader_constant_TYPE_FRAGMENT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_FRAGMENT** = ``1``

Un shader de fragment, s'appliquant sur chacun des pixels (fragments).

.. _class_VisualShader_constant_TYPE_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_LIGHT** = ``2``

Un shader pour les calculs de lumière.

.. _class_VisualShader_constant_TYPE_START:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_START** = ``3``

Une fonction pour le stade "start" (départ) du shader de particule.

.. _class_VisualShader_constant_TYPE_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_PROCESS** = ``4``

Une fonction pour le stade "process" (traitement) du shader de particules.

.. _class_VisualShader_constant_TYPE_COLLIDE:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_COLLIDE** = ``5``

Une fonction pour le stade "collide" (gestionnaire des collisions des particules) du shader de particules.

.. _class_VisualShader_constant_TYPE_START_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_START_CUSTOM** = ``6``

Une fonction pour le stade "start" (départ) du shader de particule, avec une sortie personnalisée.

.. _class_VisualShader_constant_TYPE_PROCESS_CUSTOM:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_PROCESS_CUSTOM** = ``7``

Une fonction pour le stade "process" (traitement) du shader de particules, avec une sortie personnalisée.

.. _class_VisualShader_constant_TYPE_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_SKY** = ``8``

Un shader pour un ciel d'environnement 3D.

.. _class_VisualShader_constant_TYPE_FOG:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_FOG** = ``9``

Un shader de calcul qui s'exécute pour chaque froxel de la carte de brouillard volumétrique.

.. _class_VisualShader_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Type<enum_VisualShader_Type>` **TYPE_MAX** = ``10``

Représente la taille de l'énumération :ref:`Type<enum_VisualShader_Type>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShader_VaryingMode:

.. rst-class:: classref-enumeration

enum **VaryingMode**: :ref:`🔗<enum_VisualShader_VaryingMode>`

.. _class_VisualShader_constant_VARYING_MODE_VERTEX_TO_FRAG_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_VERTEX_TO_FRAG_LIGHT** = ``0``

Le varying est passé de la fonction ``Vertex`` aux fonctions ``Fragment`` et ``Light``.

.. _class_VisualShader_constant_VARYING_MODE_FRAG_TO_LIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_FRAG_TO_LIGHT** = ``1``

Le varying est passé de la fonction ``Fragment`` à la fonction ``Light``.

.. _class_VisualShader_constant_VARYING_MODE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingMode<enum_VisualShader_VaryingMode>` **VARYING_MODE_MAX** = ``2``

Représente la taille de l'énumération :ref:`VaryingMode<enum_VisualShader_VaryingMode>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShader_VaryingType:

.. rst-class:: classref-enumeration

enum **VaryingType**: :ref:`🔗<enum_VisualShader_VaryingType>`

.. _class_VisualShader_constant_VARYING_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_FLOAT** = ``0``

Le varying est du type :ref:`float<class_float>`.

.. _class_VisualShader_constant_VARYING_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_INT** = ``1``

Le varying est du type :ref:`int<class_int>`.

.. _class_VisualShader_constant_VARYING_TYPE_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_UINT** = ``2``

Le varying est du type :ref:`int<class_int>` non signé.

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_2D** = ``3``

Le varying est de type :ref:`Vector2<class_Vector2>`.

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_3D** = ``4``

Le varying est du type :ref:`Vector3<class_Vector3>`.

.. _class_VisualShader_constant_VARYING_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_VECTOR_4D** = ``5``

Le varying est du type :ref:`Vector4<class_Vector4>`.

.. _class_VisualShader_constant_VARYING_TYPE_BOOLEAN:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_BOOLEAN** = ``6``

Le varying est du type :ref:`bool<class_bool>`.

.. _class_VisualShader_constant_VARYING_TYPE_TRANSFORM:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_TRANSFORM** = ``7``

Le varying est du type :ref:`Transform3D<class_Transform3D>`.

.. _class_VisualShader_constant_VARYING_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`VaryingType<enum_VisualShader_VaryingType>` **VARYING_TYPE_MAX** = ``8``

Représente la taille de l'énumération :ref:`VaryingType<enum_VisualShader_VaryingType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Constantes
--------------------

.. _class_VisualShader_constant_NODE_ID_INVALID:

.. rst-class:: classref-constant

**NODE_ID_INVALID** = ``-1`` :ref:`🔗<class_VisualShader_constant_NODE_ID_INVALID>`

Indique un nœud **VisualShader** invalide.

.. _class_VisualShader_constant_NODE_ID_OUTPUT:

.. rst-class:: classref-constant

**NODE_ID_OUTPUT** = ``0`` :ref:`🔗<class_VisualShader_constant_NODE_ID_OUTPUT>`

Indique un nœud de sortie du **VisualShader**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShader_property_graph_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **graph_offset** :ref:`🔗<class_VisualShader_property_graph_offset>`

.. rst-class:: classref-property-setget

- |void| **set_graph_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_graph_offset**\ (\ )

**Obsolète :** This property does nothing and always equals to zero.

Obsolète.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_VisualShader_method_add_node:

.. rst-class:: classref-method

|void| **add_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, node\: :ref:`VisualShaderNode<class_VisualShaderNode>`, position\: :ref:`Vector2<class_Vector2>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_add_node>`

Ajoute le nœud ``node`` spécifié au shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_add_varying:

.. rst-class:: classref-method

|void| **add_varying**\ (\ name\: :ref:`String<class_String>`, mode\: :ref:`VaryingMode<enum_VisualShader_VaryingMode>`, type\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ ) :ref:`🔗<class_VisualShader_method_add_varying>`

Ajoute un nouveau nœud de valeur varying au shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_attach_node_to_frame:

.. rst-class:: classref-method

|void| **attach_node_to_frame**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, frame\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_attach_node_to_frame>`

Attache le nœud donné au cadre donné.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_can_connect_nodes:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_connect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_can_connect_nodes>`

Renvoie ``true`` si les nœuds spécifiés et les ports peuvent être connectés ensemble.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_connect_nodes:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **connect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_connect_nodes>`

Connecte les nœuds et les ports spécifiés.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_connect_nodes_forced:

.. rst-class:: classref-method

|void| **connect_nodes_forced**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_connect_nodes_forced>`

Connecte les nœuds et les ports spécifiés, même s'ils ne peuvent pas être connectés. Cette connexion est invalide et ne fonctionnera pas correctement.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_detach_node_from_frame:

.. rst-class:: classref-method

|void| **detach_node_from_frame**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_detach_node_from_frame>`

Détache le nœud donné du cadre auquel il est attaché.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_disconnect_nodes:

.. rst-class:: classref-method

|void| **disconnect_nodes**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_disconnect_nodes>`

Connecte les nœuds et les ports spécifiés.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node:

.. rst-class:: classref-method

:ref:`VisualShaderNode<class_VisualShaderNode>` **get_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node>`

Renvoie l'instance de nœud de shader avec le type ``type`` et l'identifiant ``id`` spécifiés.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_connections:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Dictionary<class_Dictionary>`\] **get_node_connections**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_connections>`

Renvoie la liste des nœuds connectés avec le type spécifié.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_list:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_node_list**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_list>`

Renvoie la liste de tous les nœuds du shader avec le type spécifié.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_node_position:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_node_position**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_node_position>`

Renvoie la position du nœud spécifié dans le graphe du shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_get_valid_node_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_valid_node_id**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`\ ) |const| :ref:`🔗<class_VisualShader_method_get_valid_node_id>`

Renvoie le prochain identifiant de nœud valide qui peut être ajouté au graphe de shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_has_varying:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_varying**\ (\ name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_VisualShader_method_has_varying>`

Renvoie ``true`` si le shader a un varying avec le nom ``name`` donné.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_is_node_connection:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_node_connection**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, from_node\: :ref:`int<class_int>`, from_port\: :ref:`int<class_int>`, to_node\: :ref:`int<class_int>`, to_port\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_VisualShader_method_is_node_connection>`

Renvoie ``true`` si le nœud et le port de connexion spécifiés existent.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_remove_node:

.. rst-class:: classref-method

|void| **remove_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_VisualShader_method_remove_node>`

Retire les nœuds spécifiés du shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_remove_varying:

.. rst-class:: classref-method

|void| **remove_varying**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_VisualShader_method_remove_varying>`

Retire un nœud de valeur de varying avec le nom ``name`` donné. Affiche une erreur si un nœud avec ce nom n'est pas trouvé.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_replace_node:

.. rst-class:: classref-method

|void| **replace_node**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, new_class\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_VisualShader_method_replace_node>`

Remplace le nœud spécifié avec un nœud du type de la nouvelle classe.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_set_mode:

.. rst-class:: classref-method

|void| **set_mode**\ (\ mode\: :ref:`Mode<enum_Shader_Mode>`\ ) :ref:`🔗<class_VisualShader_method_set_mode>`

Règle le mode de ce shader.

.. rst-class:: classref-item-separator

----

.. _class_VisualShader_method_set_node_position:

.. rst-class:: classref-method

|void| **set_node_position**\ (\ type\: :ref:`Type<enum_VisualShader_Type>`, id\: :ref:`int<class_int>`, position\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_VisualShader_method_set_node_position>`

Définit la position du nœud spécifié.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
