:github_url: hide

.. _class_AStar3D:

AStar3D
=======

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une implémentation de A\* pour trouver le chemin le plus court entre deux sommets d'une graphe connecté de l'espace 3D.

.. rst-class:: classref-introduction-group

Description
-----------

A\* (A star) est un algorithme informatique qui est largement utilisé dans le cheminement et la traversée de graphe, le processus de traçage des chemins courts parmi les sommets (points) passant par un ensemble donné d’arêtes (segments). Il est souvent utilisé en raison de sa performance et de sa précision. L'implémentation dans Godot de A\* utilise par défaut des points dans un espace tridimensionnel et des distances euclidiennes.

Vous devez ajouter des points manuellement avec :ref:`add_point()<class_AStar3D_method_add_point>` et créer des segments manuellement avec :ref:`connect_points()<class_AStar3D_method_connect_points>`. Ensuite, vous pouvez tester s'il y a un chemin entre deux points avec la fonction :ref:`are_points_connected()<class_AStar3D_method_are_points_connected>`, obtenir un chemin contenant des indices par :ref:`get_id_path()<class_AStar3D_method_get_id_path>`, ou un contenant des coordonnées réelles avec :ref:`get_point_path()<class_AStar3D_method_get_point_path>`.

Il est également possible d'utiliser des distances non euclidiennes. Pour ce faire, créez une classe qui hérite de **AStar3D** et surchargez les méthodes :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` et :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>`. Les deux doivent prendre deux identifiants de points et renvoyer la longueur entre les points correspondants.

\ **Exemple :** Utiliser la distance de Manhattan au lieu de la distance euclidienne.


.. tabs::

 .. code-tab:: gdscript

    class_name MyAStar3D
    extends AStar3D

    func _compute_cost(u, v):
        var u_pos = get_point_position(u)
        var v_pos = get_point_position(v)
        return abs(u_pos.x - v_pos.x) + abs(u_pos.y - v_pos.y) + abs(u_pos.z - v_pos.z)

    func _estimate_cost(u, v):
        var u_pos = get_point_position(u)
        var v_pos = get_point_position(v)
        return abs(u_pos.x - v_pos.x) + abs(u_pos.y - v_pos.y) + abs(u_pos.z - v_pos.z)

 .. code-tab:: csharp

    using Godot;

    [GlobalClass]
    public partial class MyAStar3D : AStar3D
    {
        public override float _ComputeCost(long fromId, long toId)
        {
            Vector3 fromPoint = GetPointPosition(fromId);
            Vector3 toPoint = GetPointPosition(toId);

            return Mathf.Abs(fromPoint.X - toPoint.X) + Mathf.Abs(fromPoint.Y - toPoint.Y) + Mathf.Abs(fromPoint.Z - toPoint.Z);
        }

        public override float _EstimateCost(long fromId, long toId)
        {
            Vector3 fromPoint = GetPointPosition(fromId);
            Vector3 toPoint = GetPointPosition(toId);
            return Mathf.Abs(fromPoint.X - toPoint.X) + Mathf.Abs(fromPoint.Y - toPoint.Y) + Mathf.Abs(fromPoint.Z - toPoint.Z);
        }
    }



\ :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` doit renvoyer une borne inférieure de la distance, c.a.d. ``_estimate_cost(u, v) <= _compute_cost(u, v)``. Cela sert d'indice pour l'algorithme car la méthode :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` personnalisée peut être longue à calculer. Si ce n'est pas le cas, utilisez :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` pour renvoyer la même valeur que :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` pour fournir à l'algorithme les informations les plus précises.

Si les méthodes par défaut :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` et :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` sont utilisées, ou si la méthode :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` fournie renvoie une borne inférieure du coût du chemin, les chemins renvoyés par A\* seront les chemins les moins coûteux. Ici, le coût d'un chemin correspond à la somme des résultats de :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` de tous les segments dans le chemin multiplié par le ``weight_scale`` des points finaux des segments respectifs. Si les méthodes par défaut sont utilisées et que le ``weight_scale`` de tous les points vaut ``1.0``, cela correspond à la somme des distances euclidiennes de tous les segments du chemin.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`neighbor_filter_enabled<class_AStar3D_property_neighbor_filter_enabled>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`_compute_cost<class_AStar3D_private_method__compute_cost>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`_estimate_cost<class_AStar3D_private_method__estimate_cost>`\ (\ from_id\: :ref:`int<class_int>`, end_id\: :ref:`int<class_int>`\ ) |virtual| |const|                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_filter_neighbor<class_AStar3D_private_method__filter_neighbor>`\ (\ from_id\: :ref:`int<class_int>`, neighbor_id\: :ref:`int<class_int>`\ ) |virtual| |const|                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_point<class_AStar3D_method_add_point>`\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`, weight_scale\: :ref:`float<class_float>` = 1.0\ )                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`are_points_connected<class_AStar3D_method_are_points_connected>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_AStar3D_method_clear>`\ (\ )                                                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`connect_points<class_AStar3D_method_connect_points>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ )                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`disconnect_points<class_AStar3D_method_disconnect_points>`\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ )               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_available_point_id<class_AStar3D_method_get_available_point_id>`\ (\ ) |const|                                                                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_closest_point<class_AStar3D_method_get_closest_point>`\ (\ to_position\: :ref:`Vector3<class_Vector3>`, include_disabled\: :ref:`bool<class_bool>` = false\ ) |const|                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_closest_position_in_segment<class_AStar3D_method_get_closest_position_in_segment>`\ (\ to_position\: :ref:`Vector3<class_Vector3>`\ ) |const|                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_id_path<class_AStar3D_method_get_id_path>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_point_capacity<class_AStar3D_method_get_point_capacity>`\ (\ ) |const|                                                                                                                |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_point_connections<class_AStar3D_method_get_point_connections>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_point_count<class_AStar3D_method_get_point_count>`\ (\ ) |const|                                                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>`     | :ref:`get_point_ids<class_AStar3D_method_get_point_ids>`\ (\ )                                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_point_path<class_AStar3D_method_get_point_path>`\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ )          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                       | :ref:`get_point_position<class_AStar3D_method_get_point_position>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_point_weight_scale<class_AStar3D_method_get_point_weight_scale>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_point<class_AStar3D_method_has_point>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_point_disabled<class_AStar3D_method_is_point_disabled>`\ (\ id\: :ref:`int<class_int>`\ ) |const|                                                                                      |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_point<class_AStar3D_method_remove_point>`\ (\ id\: :ref:`int<class_int>`\ )                                                                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`reserve_space<class_AStar3D_method_reserve_space>`\ (\ num_nodes\: :ref:`int<class_int>`\ )                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_disabled<class_AStar3D_method_set_point_disabled>`\ (\ id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>` = true\ )                                                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_position<class_AStar3D_method_set_point_position>`\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ )                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_point_weight_scale<class_AStar3D_method_set_point_weight_scale>`\ (\ id\: :ref:`int<class_int>`, weight_scale\: :ref:`float<class_float>`\ )                                          |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AStar3D_property_neighbor_filter_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **neighbor_filter_enabled** = ``false`` :ref:`🔗<class_AStar3D_property_neighbor_filter_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_filter_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_neighbor_filter_enabled**\ (\ )

Si ``true``, active le filtrage des voisins via :ref:`_filter_neighbor()<class_AStar3D_private_method__filter_neighbor>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_AStar3D_private_method__compute_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_compute_cost**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar3D_private_method__compute_cost>`

Appelée lors du calcul du coût entre deux points connectés.

À noter que cette fonction est cachée dans la classe **AStar3D** par défaut.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_private_method__estimate_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_estimate_cost**\ (\ from_id\: :ref:`int<class_int>`, end_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar3D_private_method__estimate_cost>`

Appelée lors du calcul du coût entre un point et le dernier point du chemin.

À noter que cette fonction est cachée dans la classe **AStar3D** par défaut.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_private_method__filter_neighbor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_filter_neighbor**\ (\ from_id\: :ref:`int<class_int>`, neighbor_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar3D_private_method__filter_neighbor>`

Appelée lorsque le point voisin commence à être traité et si :ref:`neighbor_filter_enabled<class_AStar3D_property_neighbor_filter_enabled>` vaut ``true``. Si ``true`` est renvoyé, le point ne sera pas traité.

Notez que cette fonction est cachée dans la classe **AStar3D** par défaut.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`, weight_scale\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_AStar3D_method_add_point>`

Ajoute un nouveau point à la position donnée avec l'identifiant donné. L'identifiant ``id`` doit être de 0 ou plus, et le facteur de poids ``weight_scale`` doit être de 0,0 ou plus.

Le facteur de poids ``weight_scale`` est multiplié par le résultat de :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` pour déterminer le coût global de voyage à travers un segment d'un point voisin à ce point. Ainsi, tous les autres étant égaux, l'algorithme préfère les points avec des facteurs ``weight_scale`` inférieurs pour former un chemin.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(1, 0, 0), 4) # Ajoute le point (1,0,0) avec weight_scale 4 et id 1

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, nouveau Vector3(1, 0, 0), 4); // Ajoute le point (1,0,0) avec weight_scale 4 et id 1



S'il existe déjà un point pour l'``id`` donné, sa position et son facteur de poids sont mises à jour aux valeurs données.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_are_points_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **are_points_connected**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_AStar3D_method_are_points_connected>`

Renvoie si les deux points donnés sont directement reliés par un segment. Si ``bidirectional`` vaut ``false``, renvoie si le déplacement du point ``id`` au point ``to_id`` est possible à travers ce segment.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_AStar3D_method_clear>`

Retire tous les points et segments.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_connect_points:

.. rst-class:: classref-method

|void| **connect_points**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar3D_method_connect_points>`

Crée un segment entre les points donnés. Si ``bidirectional`` vaut ``false``, seul le mouvement du point ``id`` au point ``to_id`` sera autorisé, et non le sens inverse.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(1, 1, 0))
    astar.add_point(2, Vector3(0, 5, 0))
    astar.connect_points(1, 2, false)

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(1, 1, 0));
    astar.AddPoint(2, new Vector3(0, 5, 0));
    astar.ConnectPoints(1, 2, false);



.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_disconnect_points:

.. rst-class:: classref-method

|void| **disconnect_points**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar3D_method_disconnect_points>`

Supprime le segment entre les points donnés. Si ``bidirectional`` vaut ``false``, seul le mouvement de l'identifiant ``id`` vers l'autre identifiant ``to_id`` est empêché, et un segment unidirectionnel peut rester.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_available_point_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_point_id**\ (\ ) |const| :ref:`🔗<class_AStar3D_method_get_available_point_id>`

Renvoie l'identifiant du point disponible suivant avec aucun point lui étant associé.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_closest_point**\ (\ to_position\: :ref:`Vector3<class_Vector3>`, include_disabled\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_AStar3D_method_get_closest_point>`

Renvoie l'identifiant du point le plus proche de ``to_position``, en prenant en compte les points désactivés en option. Renvoie ``-1`` s'il n'y a pas de points dans l'ensemble de points.

\ **Note :** Si plusieurs points sont proches de ``to_position``, celui avec le plus petit identifiant sera renvoyé, permettant d'obtenir un résultat déterministe.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_closest_position_in_segment:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_position_in_segment**\ (\ to_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AStar3D_method_get_closest_position_in_segment>`

Renvoie la position la plus proche de ``to_position`` qui est à l'intérieur du segment entre deux points connectés.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(0, 0, 0))
    astar.add_point(2, Vector3(0, 5, 0))
    astar.connect_points(1, 2)
    var res = astar.get_closest_position_in_segment(Vector3(3, 3, 0)) # Returns (0, 3, 0)

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(0, 0, 0));
    astar.AddPoint(2, new Vector3(0, 5, 0));
    astar.ConnectPoints(1, 2);
    Vector3 res = astar.GetClosestPositionInSegment(new Vector3(3, 3, 0)); // Returns (0, 3, 0)



Le résultat est dans le segment qui va de ``y = 0`` à ``y = 5``. C'est la position la plus proche dans le segment du point donné.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_id_path:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_id_path**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStar3D_method_get_id_path>`

Renvoie un tableau avec les identifiants des points qui forment le chemin trouvé par AStar entre les points donnés. Le tableau est dans l'ordre du point de départ de celui de l'arrivée.

S'il n'y a pas de chemin valide vers la cible, et ``allow_partial_path`` vaut ``true``, renvoie un chemin vers le point le plus proche de la cible qui peut être atteinte.

\ **Note :** Lorsque ``allow_partial_path`` vaut ``true`` et ``to_id`` est désactivé, la recherche peut prendre un temps inhabituel à se terminer.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar.new()
    astar.add_point(1, Vector3(0, 0, 0))
    astar.add_point(2, Vector3(0, 1, 0), 1) # Le poids par défaut est 1
    astar.add_point(3, Vector3(1, 1, 0))
    astar.add_point(4, Vector3(2, 0, 0))

    astar.connect_points(1, 2, false)
    astar.connect_points(2, 3, false)
    astar.connect_points(4, 3, false)
    astar.connect_points(1, 4, false)

    var res = astar.get_id_path(1, 3) # Renvoie [1, 2, 3]

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(0, 0, 0));
    astar.AddPoint(2, new Vector3(0, 1, 0), 1); // Le poids par défaut est 1
    astar.AddPoint(3, new Vector3(1, 1, 0));
    astar.AddPoint(4, new Vector3(2, 0, 0));
    astar.ConnectPoints(1, 2, false);
    astar.ConnectPoints(2, 3, false);
    astar.ConnectPoints(4, 3, false);
    astar.ConnectPoints(1, 4, false);
    long[] res = astar.GetIdPath(1, 3); // Renvoie [1, 2, 3]



Si vous changez le poids du deuxième point à 3, alors le résultat sera ``[1, 4, 3]`` à la place, parce que même si la distance est plus grande, c'est plus "facile" d'aller en passant par le point 4 que le point 2.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_capacity:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_capacity**\ (\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_capacity>`

Renvoie la capacité de la structure qui garde les points en cache, utile avec :ref:`reserve_space()<class_AStar3D_method_reserve_space>`.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_connections:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_point_connections**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar3D_method_get_point_connections>`

Renvoie un tableau avec les identifiants des points qui forment une connexion avec le point donné.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar.new()
    astar.add_point(1, Vector3(0, 0, 0))
    astar.add_point(2, Vector3(0, 1, 0))
    astar.add_point(3, Vector3(1, 1, 0))
    astar.add_point(4, Vector3(2, 0, 0))

    astar.connect_points(1, 2, true)
    astar.connect_points(1, 3, true)

    var voisins = astar.get_point_connections(1) # Renvoie [2, 3]

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(0, 0, 0));
    astar.AddPoint(2, new Vector3(0, 1, 0));
    astar.AddPoint(3, new Vector3(1, 1, 0));
    astar.AddPoint(4, new Vector3(2, 0, 0));
    astar.ConnectPoints(1, 2, true);
    astar.ConnectPoints(1, 3, true);

    long[] voisins = astar.GetPointConnections(1); // Renvoie [2, 3]



.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_count>`

Renvoie le nombre de points actuellement dans le pool de points.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_ids:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_point_ids**\ (\ ) :ref:`🔗<class_AStar3D_method_get_point_ids>`

Renvoie un tableau de tous les identifiants des points.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_path:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_point_path**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStar3D_method_get_point_path>`

Renvoie un tableau avec les points qui sont dans le chemin trouvé par AStar3D entre les points donnés. Le tableau est trié du point de départ au point final du chemin.

S'il n'y a pas de chemin valide vers la cible, et ``allow_partial_path`` vaut ``true``, renvoie un chemin vers le point le plus proche de la cible qui peut être atteinte.

\ **Note :** Cette méthode n'est pas thread-safe, elle ne peut être appelée que depuis un seul :ref:`Thread<class_Thread>` à un instant donné. Envisagez d'utiliser des :ref:`Mutex<class_Mutex>` pour vous assurer de l'accès exclusif à un thread pour éviter des accès concurrents.

De plus, lorsque ``allow_partial_path`` vaut ``true`` et ``to_id`` est désactivé, la recherche peut prendre un temps inhabituellement long pour se terminer.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_position**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_position>`

Renvoie la position du point associé à l'identifiant ``id`` donné.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_weight_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_weight_scale**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_weight_scale>`

Renvoie le facteur de poids du point associé à l'identifiant ``id`` donné.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_has_point>`

Renvoie si un point associé à l'identifiant ``id`` donné existe.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_is_point_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_disabled**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_is_point_disabled>`

Renvoie si un point est désactivé ou non pour le calcul du chemin. Par défaut, tous les points sont activés.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar3D_method_remove_point>`

Retire le point associé à l'``id`` donné du pool des points.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_reserve_space:

.. rst-class:: classref-method

|void| **reserve_space**\ (\ num_nodes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar3D_method_reserve_space>`

Réserve l'espace interne pour ``num_nodes`` points. Utile si vous voulez ajouter un grand nombre de points à la fois, pour une grille par exemple.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_set_point_disabled:

.. rst-class:: classref-method

|void| **set_point_disabled**\ (\ id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar3D_method_set_point_disabled>`

Désactive ou active le point spécifié pour le pathfinding. Utile pour faire des obstacles temporaires.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_AStar3D_method_set_point_position>`

Définit la ``position`` du point avec l'identifiant ``id`` donné.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_set_point_weight_scale:

.. rst-class:: classref-method

|void| **set_point_weight_scale**\ (\ id\: :ref:`int<class_int>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStar3D_method_set_point_weight_scale>`

Définit le facteur de poids ``weight_scale`` pour le point avec l'identifiant ``id`` donné. Le facteur de poids ``weight_scale`` est multiplié par le résultat de :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` pour déterminer le coût global de voyage le long d'un segment d'un point voisin à ce point.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
