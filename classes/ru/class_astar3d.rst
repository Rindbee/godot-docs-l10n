:github_url: hide

.. _class_AStar3D:

AStar3D
=======

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Реализация A\* для поиска кратчайшего пути между двумя вершинами связного графа в трехмерном пространстве.

.. rst-class:: classref-introduction-group

Описание
----------------

A\* (звезда) — это компьютерный алгоритм, используемый в поиске пути и обходе графа, процессе построения коротких путей между вершинами (точками), проходящих через заданный набор ребер (сегментов). Он широко используется благодаря своей производительности и точности. Реализация Godot's A\* по умолчанию использует точки в трехмерном пространстве и евклидовы расстояния.

Вы должны вручную добавлять точки с помощью :ref:`add_point()<class_AStar3D_method_add_point>` и вручную создавать сегменты с помощью :ref:`connect_points()<class_AStar3D_method_connect_points>`. После этого вы можете проверить, есть ли путь между двумя точками, с помощью функции :ref:`are_points_connected()<class_AStar3D_method_are_points_connected>`, получить путь, содержащий индексы, с помощью :ref:`get_id_path()<class_AStar3D_method_get_id_path>` или путь, содержащий фактические координаты, с помощью :ref:`get_point_path()<class_AStar3D_method_get_point_path>`.

Также возможно использовать неевклидовы расстояния. Для этого создайте скрипт, который расширяет **AStar3D** и переопределяет методы :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` и :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>`. Оба должны принимать два идентификатора точек и возвращать расстояние между соответствующими точками.

\ **Пример:** Используйте Манхэттенское (Manhattan) расстояние вместо евклидова расстояния:


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
    public partial class MyAStar3D : AStar3D
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



\ :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` должен возвращать нижнюю границу расстояния, т. е. ``_estimate_cost(u, v) <= _compute_cost(u, v)``. Это служит подсказкой для алгоритма, поскольку пользовательский :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` может быть вычислительно интенсивным. Если это не так, заставьте :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` возвращать то же значение, что и :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>`, чтобы предоставить алгоритму наиболее точную информацию.

Если используются методы по умолчанию :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` и :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` или если предоставленный метод :ref:`_estimate_cost()<class_AStar3D_private_method__estimate_cost>` возвращает нижнюю границу стоимости, то пути, возвращаемые A\*, будут путями с наименьшей стоимостью. Здесь стоимость пути равна сумме результатов :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` всех сегментов в пути, умноженных на ``weight_scale``\ s конечных точек соответствующих сегментов. Если используются методы по умолчанию и ``weight_scale``\ s всех точек установлены на ``1.0``, то это равно сумме евклидовых расстояний всех сегментов в пути.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`neighbor_filter_enabled<class_AStar3D_property_neighbor_filter_enabled>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Методы
------------

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

Описания свойств
--------------------------------

.. _class_AStar3D_property_neighbor_filter_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **neighbor_filter_enabled** = ``false`` :ref:`🔗<class_AStar3D_property_neighbor_filter_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_neighbor_filter_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_neighbor_filter_enabled**\ (\ )

Если ``true``, то включается фильтрация соседей через :ref:`_filter_neighbor()<class_AStar3D_private_method__filter_neighbor>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AStar3D_private_method__compute_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_compute_cost**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar3D_private_method__compute_cost>`

Вызывается при вычислении стоимости между двумя соединенными точками.

Обратите внимание, что эта функция скрыта в классе по умолчанию **AStar3D**.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_private_method__estimate_cost:

.. rst-class:: classref-method

:ref:`float<class_float>` **_estimate_cost**\ (\ from_id\: :ref:`int<class_int>`, end_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar3D_private_method__estimate_cost>`

Вызывается при оценке стоимости между точкой и конечной точкой пути.

Обратите внимание, что эта функция скрыта в классе по умолчанию **AStar3D**.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_private_method__filter_neighbor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_filter_neighbor**\ (\ from_id\: :ref:`int<class_int>`, neighbor_id\: :ref:`int<class_int>`\ ) |virtual| |const| :ref:`🔗<class_AStar3D_private_method__filter_neighbor>`

Вызывается, когда соседняя точка входит в обработку и если :ref:`neighbor_filter_enabled<class_AStar3D_property_neighbor_filter_enabled>` имеет значение ``true``. Если возвращается значение ``true``, точка не будет обработана.

Обратите внимание, что эта функция скрыта в классе **AStar3D** по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_add_point:

.. rst-class:: classref-method

|void| **add_point**\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`, weight_scale\: :ref:`float<class_float>` = 1.0\ ) :ref:`🔗<class_AStar3D_method_add_point>`

Добавляет новую точку в указанной позиции с указанным идентификатором. ``id`` должен быть 0 или больше, а ``weight_scale`` должен быть 0.0 или больше.

\ ``weight_scale`` умножается на результат :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` при определении общей стоимости перемещения по сегменту от соседней точки до этой точки. Таким образом, при прочих равных условиях алгоритм предпочитает точки с меньшими ``weight_scale`` для формирования пути.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(1, 0, 0), 4) # Adds the point (1, 0, 0) with weight_scale 4 and id 1

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(1, 0, 0), 4); // Adds the point (1, 0, 0) with weight_scale 4 and id 1



Если точка для указанного ``id`` уже существует, ее положение и шкала веса обновляются до указанных значений.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_are_points_connected:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **are_points_connected**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_AStar3D_method_are_points_connected>`

Возвращает, соединены ли две заданные точки напрямую сегментом. Если ``bidirectional`` равен ``false``, возвращает, возможно ли движение из ``id`` в ``to_id`` через этот сегмент.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_AStar3D_method_clear>`

Очищает все точки и сегменты.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_connect_points:

.. rst-class:: classref-method

|void| **connect_points**\ (\ id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, bidirectional\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar3D_method_connect_points>`

Создает сегмент между заданными точками. Если ``bidirectional`` равен ``false``, разрешено только движение от ``id`` до ``to_id``, но не в обратном направлении.


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

Удаляет сегмент между заданными точками. Если ``bidirectional`` равен ``false``, предотвращается только движение от ``id`` до ``to_id``, и возможно остается однонаправленный сегмент.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_available_point_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_available_point_id**\ (\ ) |const| :ref:`🔗<class_AStar3D_method_get_available_point_id>`

Возвращает следующий доступный идентификатор точки без связанной с ним точки.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_closest_point:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_closest_point**\ (\ to_position\: :ref:`Vector3<class_Vector3>`, include_disabled\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_AStar3D_method_get_closest_point>`

Возвращает идентификатор ближайшей точки к ``to_position``, при необходимости принимая во внимание отключенные точки. Возвращает ``-1``, если в пуле точек нет точек.

\ **Примечание:** Если несколько точек являются ближайшими к ``to_position``, будет возвращена точка с наименьшим идентификатором, что гарантирует детерминированный результат.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_closest_position_in_segment:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_position_in_segment**\ (\ to_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AStar3D_method_get_closest_position_in_segment>`

Возвращает ближайшую позицию к ``to_position``, которая находится внутри сегмента между двумя соединенными точками.


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



Результат находится в сегменте, который идет от ``y = 0`` до ``y = 5``. Это ближайшая позиция в сегменте к заданной точке.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_id_path:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_id_path**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStar3D_method_get_id_path>`

Возвращает массив с идентификаторами точек, которые формируют путь, найденный AStar3D между заданными точками. Массив упорядочен от начальной точки до конечной точки пути.

Если допустимого пути к цели нет, а ``allow_partial_path`` равен ``true``, возвращает путь к ближайшей к цели точке, до которой можно добраться.

\ **Примечание:** Когда ``allow_partial_path`` равен ``true``, а ``to_id`` отключен, поиск может занять необычно много времени для завершения.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(0, 0, 0))
    astar.add_point(2, Vector3(0, 1, 0), 1) # Вес по умолчанию: 1
    astar.add_point(3, Vector3(1, 1, 0))
    astar.add_point(4, Vector3(2, 0, 0))

    astar.connect_points(1, 2, false)
    astar.connect_points(2, 3, false)
    astar.connect_points(4, 3, false)
    astar.connect_points(1, 4, false)

    var res = astar.get_id_path(1, 3) # Returns [1, 2, 3]

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(0, 0, 0));
    astar.AddPoint(2, new Vector3(0, 1, 0), 1); // Вес по умолчанию: 1
    astar.AddPoint(3, new Vector3(1, 1, 0));
    astar.AddPoint(4, new Vector3(2, 0, 0));
    astar.ConnectPoints(1, 2, false);
    astar.ConnectPoints(2, 3, false);
    astar.ConnectPoints(4, 3, false);
    astar.ConnectPoints(1, 4, false);
    long[] res = astar.GetIdPath(1, 3); // Returns [1, 2, 3]



Если изменить вес 2-й точки на 3, то результатом будет ``[1, 4, 3]``, потому что теперь, несмотря на то, что расстояние больше, пройти через точку 4 «легче», чем через точку 2.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_capacity:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_capacity**\ (\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_capacity>`

Возвращает емкость структуры, поддерживающей точки, полезно в сочетании с :ref:`reserve_space()<class_AStar3D_method_reserve_space>`.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_connections:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_point_connections**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar3D_method_get_point_connections>`

Возвращает массив с идентификаторами точек, образующих соединение с заданной точкой.


.. tabs::

 .. code-tab:: gdscript

    var astar = AStar3D.new()
    astar.add_point(1, Vector3(0, 0, 0))
    astar.add_point(2, Vector3(0, 1, 0))
    astar.add_point(3, Vector3(1, 1, 0))
    astar.add_point(4, Vector3(2, 0, 0))

    astar.connect_points(1, 2, true)
    astar.connect_points(1, 3, true)

    var neighbors = astar.get_point_connections(1) # Returns [2, 3]

 .. code-tab:: csharp

    var astar = new AStar3D();
    astar.AddPoint(1, new Vector3(0, 0, 0));
    astar.AddPoint(2, new Vector3(0, 1, 0));
    astar.AddPoint(3, new Vector3(1, 1, 0));
    astar.AddPoint(4, new Vector3(2, 0, 0));
    astar.ConnectPoints(1, 2, true);
    astar.ConnectPoints(1, 3, true);

    long[] neighbors = astar.GetPointConnections(1); // Returns [2, 3]



.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_point_count**\ (\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_count>`

Возвращает текущее количество баллов в пуле баллов.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_ids:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_point_ids**\ (\ ) :ref:`🔗<class_AStar3D_method_get_point_ids>`

Возвращает массив всех идентификаторов точек.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_path:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_point_path**\ (\ from_id\: :ref:`int<class_int>`, to_id\: :ref:`int<class_int>`, allow_partial_path\: :ref:`bool<class_bool>` = false\ ) :ref:`🔗<class_AStar3D_method_get_point_path>`

Возвращает массив точек, находящихся на пути, найденном AStar3D между заданными точками. Массив упорядочен от начальной до конечной точки пути.

Если допустимого пути к цели нет, а ``allow_partial_path`` равен ``true``, возвращает путь к ближайшей к цели точке, до которой можно дойти.

\ **Примечание:** Этот метод не является потокобезопасным; его можно использовать только из одного :ref:`Thread<class_Thread>` в данный момент времени. Рассмотрите возможность использования :ref:`Mutex<class_Mutex>` для обеспечения исключительного доступа к одному потоку и предотвращения состояния гонки.

Кроме того, если ``allow_partial_path`` равен ``true``, а ``to_id`` отключен, поиск может занять необычно много времени.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_position:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_point_position**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_position>`

Возвращает положение точки, связанной с указанным ``id``.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_get_point_weight_scale:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_point_weight_scale**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_get_point_weight_scale>`

Возвращает весовую шкалу точки, связанной с указанным ``id``.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_has_point>`

Возвращает, существует ли точка, связанная с указанным ``id``.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_is_point_disabled:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_disabled**\ (\ id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AStar3D_method_is_point_disabled>`

Возвращает, отключена ли точка для поиска пути. По умолчанию все точки включены.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_remove_point:

.. rst-class:: classref-method

|void| **remove_point**\ (\ id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar3D_method_remove_point>`

Удаляет точку, связанную с указанным ``id``, из пула точек.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_reserve_space:

.. rst-class:: classref-method

|void| **reserve_space**\ (\ num_nodes\: :ref:`int<class_int>`\ ) :ref:`🔗<class_AStar3D_method_reserve_space>`

Резервирует внутреннее пространство для точек ``num_nodes``. Полезно, если вы добавляете известное большое количество точек одновременно, например, точек на сетке.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_set_point_disabled:

.. rst-class:: classref-method

|void| **set_point_disabled**\ (\ id\: :ref:`int<class_int>`, disabled\: :ref:`bool<class_bool>` = true\ ) :ref:`🔗<class_AStar3D_method_set_point_disabled>`

Отключает или включает указанную точку для поиска пути. Полезно для создания временного препятствия.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_set_point_position:

.. rst-class:: classref-method

|void| **set_point_position**\ (\ id\: :ref:`int<class_int>`, position\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_AStar3D_method_set_point_position>`

Устанавливает ``position`` для точки с указанным ``id``.

.. rst-class:: classref-item-separator

----

.. _class_AStar3D_method_set_point_weight_scale:

.. rst-class:: classref-method

|void| **set_point_weight_scale**\ (\ id\: :ref:`int<class_int>`, weight_scale\: :ref:`float<class_float>`\ ) :ref:`🔗<class_AStar3D_method_set_point_weight_scale>`

Устанавливает ``weight_scale`` для точки с заданным ``id``. ``weight_scale`` умножается на результат :ref:`_compute_cost()<class_AStar3D_private_method__compute_cost>` при определении общей стоимости перемещения по сегменту от соседней точки до этой точки.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
