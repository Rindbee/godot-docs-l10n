:github_url: hide

.. _class_Performance:

Performance
===========

**Наследует:** :ref:`Object<class_Object>`

Раскрытие данных о производительности.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс предоставляет доступ к ряду различных мониторов, связанных с производительностью, таких как использование памяти, вызовы отрисовки и FPS. Они совпадают со значениями, отображаемыми на вкладке **Монитор** на панели **Отладчик** редактора. Используя метод :ref:`get_monitor()<class_Performance_method_get_monitor>` этого класса, вы можете получить доступ к этим данным из своего кода.

Вы можете добавлять пользовательские мониторы с помощью метода :ref:`add_custom_monitor()<class_Performance_method_add_custom_monitor>`. Пользовательские мониторы доступны на вкладке **Монитор** на панели **Отладчик** редактора вместе со встроенными мониторами.

\ **Примечание:** Некоторые встроенные мониторы доступны только в режиме отладки и всегда возвращают ``0`` при использовании в проекте, экспортированном в режиме выпуска.

\ **Примечание:** Некоторые встроенные мониторы не обновляются в режиме реального времени по соображениям производительности, поэтому между изменениями может быть задержка до 1 секунды.

\ **Примечание:** Пользовательские мониторы не поддерживают отрицательные значения. Отрицательные значения ограничиваются 0.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`add_custom_monitor<class_Performance_method_add_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, arguments\: :ref:`Array<class_Array>` = []\ ) |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                    | :ref:`get_custom_monitor<class_Performance_method_get_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`\ )                                                                                         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_custom_monitor_names<class_Performance_method_get_custom_monitor_names>`\ (\ )                                                                                                                       |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                                        | :ref:`get_monitor<class_Performance_method_get_monitor>`\ (\ monitor\: :ref:`Monitor<enum_Performance_Monitor>`\ ) |const|                                                                                     |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                            | :ref:`get_monitor_modification_time<class_Performance_method_get_monitor_modification_time>`\ (\ )                                                                                                             |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                          | :ref:`has_custom_monitor<class_Performance_method_has_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`\ )                                                                                         |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`remove_custom_monitor<class_Performance_method_remove_custom_monitor>`\ (\ id\: :ref:`StringName<class_StringName>`\ )                                                                                   |
   +------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Performance_Monitor:

.. rst-class:: classref-enumeration

enum **Monitor**: :ref:`🔗<enum_Performance_Monitor>`

.. _class_Performance_constant_TIME_FPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_FPS** = ``0``

Количество кадров, отрисованных за последнюю секунду. Эта метрика обновляется только один раз в секунду, даже если запрашивается чаще. *Чем выше, тем лучше.*

.. _class_Performance_constant_TIME_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PROCESS** = ``1``

Время, необходимое для завершения одного кадра, в секундах. *Чем меньше, тем лучше.*

.. _class_Performance_constant_TIME_PHYSICS_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_PHYSICS_PROCESS** = ``2``

Время, необходимое для завершения одного физического кадра, в секундах. *Чем меньше, тем лучше.*

.. _class_Performance_constant_TIME_NAVIGATION_PROCESS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **TIME_NAVIGATION_PROCESS** = ``3``

Время, необходимое для завершения одного шага навигации, в секундах. Сюда входят обновления навигационной карты, а также расчеты избегания агента. *Чем меньше, тем лучше.*

.. _class_Performance_constant_MEMORY_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC** = ``4``

Статическая память, используемая в настоящее время, в байтах. Недоступно в сборках релиза. *Чем меньше, тем лучше.*

.. _class_Performance_constant_MEMORY_STATIC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_STATIC_MAX** = ``5``

Доступная статическая память. Недоступно в релизных сборках. *Чем меньше, тем лучше.*

.. _class_Performance_constant_MEMORY_MESSAGE_BUFFER_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MEMORY_MESSAGE_BUFFER_MAX** = ``6``

Наибольший объем памяти, который буфер очереди сообщений использовал, в байтах. Очередь сообщений используется для отложенных вызовов функций и уведомлений. *Чем меньше, тем лучше.*

.. _class_Performance_constant_OBJECT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_COUNT** = ``7``

Количество объектов, экземпляры которых в данный момент созданы (включая узлы). *Чем меньше, тем лучше.*

.. _class_Performance_constant_OBJECT_RESOURCE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_RESOURCE_COUNT** = ``8``

Количество используемых в данный момент ресурсов. *Чем меньше, тем лучше.*

.. _class_Performance_constant_OBJECT_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_NODE_COUNT** = ``9``

Количество узлов, которые в данный момент инстанцированы в дереве сцены. Сюда также входит корневой узел. *Чем меньше, тем лучше.*

.. _class_Performance_constant_OBJECT_ORPHAN_NODE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **OBJECT_ORPHAN_NODE_COUNT** = ``10``

Количество узлов-сирот, т.е. узлов, которые не являются родительскими по отношению к узлу дерева сцены. *Чем меньше, тем лучше.*

.. _class_Performance_constant_RENDER_TOTAL_OBJECTS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_OBJECTS_IN_FRAME** = ``11``

Общее количество объектов в последнем отрисованном кадре. Эта метрика не включает отбракованные объекты (через скрытие узлов, отбраковку по усеченной области или отбраковку по окклюзии). *Чем меньше, тем лучше.*

.. _class_Performance_constant_RENDER_TOTAL_PRIMITIVES_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_PRIMITIVES_IN_FRAME** = ``12``

Общее количество вершин или индексов, отрендеренных в последнем отрендеренном кадре. Эта метрика не включает примитивы из отбракованных объектов (через скрытие узлов, отбраковку по усеченной пирамиде или отбраковку по окклюзии). Из-за предварительного прохода глубины и проходов теней количество примитивов всегда больше фактического количества вершин в сцене (обычно вдвое или втрое больше исходного количества вершин). *Чем меньше, тем лучше.*

.. _class_Performance_constant_RENDER_TOTAL_DRAW_CALLS_IN_FRAME:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TOTAL_DRAW_CALLS_IN_FRAME** = ``13``

Общее количество вызовов отрисовки, выполненных в последнем отрендеренном кадре. Эта метрика не включает отбракованные объекты (через скрытие узлов, отбраковку по усеченной пирамиде или отбраковку по окклюзии), поскольку они не приводят к вызовам отрисовки. *Чем ниже, тем лучше.*

.. _class_Performance_constant_RENDER_VIDEO_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_VIDEO_MEM_USED** = ``14``

Объем используемой видеопамяти (объединенная память текстур и вершин, в байтах). Поскольку эта метрика также включает в себя различные выделения, это значение всегда больше суммы :ref:`RENDER_TEXTURE_MEM_USED<class_Performance_constant_RENDER_TEXTURE_MEM_USED>` и :ref:`RENDER_BUFFER_MEM_USED<class_Performance_constant_RENDER_BUFFER_MEM_USED>`. *Чем меньше, тем лучше.*

.. _class_Performance_constant_RENDER_TEXTURE_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_TEXTURE_MEM_USED** = ``15``

Объем используемой памяти текстур (в байтах). *Чем меньше, тем лучше.*

.. _class_Performance_constant_RENDER_BUFFER_MEM_USED:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **RENDER_BUFFER_MEM_USED** = ``16``

Объем используемой памяти буфера рендеринга (в байтах). *Чем меньше, тем лучше.*

.. _class_Performance_constant_PHYSICS_2D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ACTIVE_OBJECTS** = ``17``

Количество активных узлов :ref:`RigidBody2D<class_RigidBody2D>` в игре. *Чем меньше, тем лучше.*

.. _class_Performance_constant_PHYSICS_2D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_COLLISION_PAIRS** = ``18``

Количество пар столкновений в 2D физическом движке. *Чем меньше, тем лучше.*

.. _class_Performance_constant_PHYSICS_2D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_2D_ISLAND_COUNT** = ``19``

Количество островов в 2D физическом движке. *Чем меньше, тем лучше.*

.. _class_Performance_constant_PHYSICS_3D_ACTIVE_OBJECTS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ACTIVE_OBJECTS** = ``20``

Количество активных узлов :ref:`RigidBody3D<class_RigidBody3D>` и :ref:`VehicleBody3D<class_VehicleBody3D>` в игре. *Чем меньше, тем лучше.*

.. _class_Performance_constant_PHYSICS_3D_COLLISION_PAIRS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_COLLISION_PAIRS** = ``21``

Количество пар столкновений в 3D физическом движке. *Чем меньше, тем лучше.*

.. _class_Performance_constant_PHYSICS_3D_ISLAND_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PHYSICS_3D_ISLAND_COUNT** = ``22``

Количество островов в 3D физическом движке. *Чем меньше, тем лучше.*

.. _class_Performance_constant_AUDIO_OUTPUT_LATENCY:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **AUDIO_OUTPUT_LATENCY** = ``23``

Задержка вывода :ref:`AudioServer<class_AudioServer>`. Эквивалентно вызову :ref:`AudioServer.get_output_latency()<class_AudioServer_method_get_output_latency>`, не рекомендуется вызывать его каждый кадр.

.. _class_Performance_constant_NAVIGATION_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_ACTIVE_MAPS** = ``24``

Количество активных навигационных карт в :ref:`NavigationServer2D<class_NavigationServer2D>` и :ref:`NavigationServer3D<class_NavigationServer3D>`. Сюда также входят две пустые навигационные карты по умолчанию, созданные World2D и World3D.

.. _class_Performance_constant_NAVIGATION_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_REGION_COUNT** = ``25``

Количество активных навигационных регионов в :ref:`NavigationServer2D<class_NavigationServer2D>` и :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_AGENT_COUNT** = ``26``

Количество активных навигационных агентов, обрабатывающих избегание в :ref:`NavigationServer2D<class_NavigationServer2D>` и :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_LINK_COUNT** = ``27``

Количество активных навигационных ссылок (link) в :ref:`NavigationServer2D<class_NavigationServer2D>` и :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_POLYGON_COUNT** = ``28``

Количество полигонов навигационной сетки в :ref:`NavigationServer2D<class_NavigationServer2D>` и :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_COUNT** = ``29``

Количество ребер полигонов навигационной сетки в :ref:`NavigationServer2D<class_NavigationServer2D>` и :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_MERGE_COUNT** = ``30``

Количество ребер полигонов навигационной сетки, которые были объединены из-за перекрытия ключей ребер в :ref:`NavigationServer2D<class_NavigationServer2D>` и :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_CONNECTION_COUNT** = ``31``

Количество ребер полигона, которые считаются соединенными по близости ребер :ref:`NavigationServer2D<class_NavigationServer2D>` и :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_EDGE_FREE_COUNT** = ``32``

Количество ребер полигонов навигационной сетки, которые не удалось объединить в :ref:`NavigationServer2D<class_NavigationServer2D>` и :ref:`NavigationServer3D<class_NavigationServer3D>`. Ребра по-прежнему могут быть соединены близостью ребер или связями (Link).

.. _class_Performance_constant_NAVIGATION_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_OBSTACLE_COUNT** = ``33``

Количество активных навигационных препятствий в :ref:`NavigationServer2D<class_NavigationServer2D>` и :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_CANVAS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_CANVAS** = ``34``

Количество компиляций конвейера, которые были запущены рендерером 2D Canvas.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_MESH:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_MESH** = ``35``

Количество компиляций конвейера, которые были вызваны загрузкой сеток. Эти компиляции будут отображаться как более длительное время загрузки при первом запуске игры пользователем, и конвейер требуется.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_SURFACE:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_SURFACE** = ``36``

Количество компиляций конвейера, запущенных при создании кэша поверхности перед рендерингом сцены. Эти компиляции будут проявляться в виде подтормаживаний при загрузке сцены при первом запуске игры пользователем, когда требуется конвейер.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_DRAW:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_DRAW** = ``37``

Количество компиляций конвейера, которые были запущены при отрисовке сцены. Эти компиляции будут отображаться как подтормаживания во время игрового процесса, когда пользователь впервые запускает игру и требуется конвейер.

.. _class_Performance_constant_PIPELINE_COMPILATIONS_SPECIALIZATION:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **PIPELINE_COMPILATIONS_SPECIALIZATION** = ``38``

Количество компиляций конвейера, которые были запущены для оптимизации текущей сцены. Эти компиляции выполняются в фоновом режиме и не должны вызывать никаких задержек.

.. _class_Performance_constant_NAVIGATION_2D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_ACTIVE_MAPS** = ``39``

Количество активных навигационных карт в :ref:`NavigationServer2D<class_NavigationServer2D>`. Сюда также входят две пустые навигационные карты по умолчанию, созданные World2D.

.. _class_Performance_constant_NAVIGATION_2D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_REGION_COUNT** = ``40``

Количество активных навигационных регионов в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_AGENT_COUNT** = ``41``

Количество активных навигационных агентов, обрабатывающих избегание в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_LINK_COUNT** = ``42``

Количество активных навигационных ссылок в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_POLYGON_COUNT** = ``43``

Количество полигонов навигационной сетки в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_COUNT** = ``44``

Количество ребер полигонов навигационной сетки в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_MERGE_COUNT** = ``45``

Количество ребер полигонов навигационной сетки, которые были объединены из-за перекрытия ключей ребер в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_CONNECTION_COUNT** = ``46``

Количество ребер полигона, которые считаются соединенными по близости ребер :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_2D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_EDGE_FREE_COUNT** = ``47``

Количество ребер полигонов навигационной сетки, которые не удалось объединить в :ref:`NavigationServer2D<class_NavigationServer2D>`. Ребра по-прежнему могут быть соединены близостью ребер или ссылками.

.. _class_Performance_constant_NAVIGATION_2D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_2D_OBSTACLE_COUNT** = ``48``

Количество активных навигационных препятствий в :ref:`NavigationServer2D<class_NavigationServer2D>`.

.. _class_Performance_constant_NAVIGATION_3D_ACTIVE_MAPS:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_ACTIVE_MAPS** = ``49``

Количество активных навигационных карт в :ref:`NavigationServer3D<class_NavigationServer3D>`. Сюда также входят две пустые навигационные карты по умолчанию, созданные World3D.

.. _class_Performance_constant_NAVIGATION_3D_REGION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_REGION_COUNT** = ``50``

Количество активных навигационных регионов в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_AGENT_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_AGENT_COUNT** = ``51``

Количество активных навигационных агентов, обрабатывающих избегание в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_LINK_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_LINK_COUNT** = ``52``

Количество активных навигационных ссылок в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_POLYGON_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_POLYGON_COUNT** = ``53``

Количество полигонов навигационной сетки в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_COUNT** = ``54``

Количество ребер полигонов навигационной сетки в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_MERGE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_MERGE_COUNT** = ``55``

Количество ребер полигонов навигационной сетки, которые были объединены из-за перекрытия ключей ребер в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_CONNECTION_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_CONNECTION_COUNT** = ``56``

Количество ребер полигона, которые считаются соединенными по близости ребер :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_NAVIGATION_3D_EDGE_FREE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_EDGE_FREE_COUNT** = ``57``

Количество ребер полигонов навигационной сетки, которые не удалось объединить в :ref:`NavigationServer3D<class_NavigationServer3D>`. Ребра по-прежнему могут быть соединены близостью ребер или связями.

.. _class_Performance_constant_NAVIGATION_3D_OBSTACLE_COUNT:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **NAVIGATION_3D_OBSTACLE_COUNT** = ``58``

Количество активных навигационных препятствий в :ref:`NavigationServer3D<class_NavigationServer3D>`.

.. _class_Performance_constant_MONITOR_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Monitor<enum_Performance_Monitor>` **MONITOR_MAX** = ``59``

Представляет размер перечисления :ref:`Monitor<enum_Performance_Monitor>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Performance_method_add_custom_monitor:

.. rst-class:: classref-method

|void| **add_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`, callable\: :ref:`Callable<class_Callable>`, arguments\: :ref:`Array<class_Array>` = []\ ) :ref:`🔗<class_Performance_method_add_custom_monitor>`

Добавляет пользовательский монитор с именем ``id``. Вы можете указать категорию монитора, используя разделители косой черты в ``id`` (например: ``"Game/NumberOfNPCs"``). Если есть более одного разделителя косой черты, то используется категория по умолчанию. Категория по умолчанию - ``"Custom"``. Выводит ошибку, если указанный ``id`` уже присутствует.


.. tabs::

 .. code-tab:: gdscript

    func _ready():
        var monitor_value = Callable(self, "get_monitor_value")

        # Добавляет монитор с именем "MyName" в категорию "MyCategory".
        Performance.add_custom_monitor("MyCategory/MyMonitor", monitor_value)

        # Добавляет монитор с именем "MyName" в категорию "Custom".
        # Примечание: "MyCategory/MyMonitor" и "MyMonitor" имеют одинаковое имя, но разные идентификаторы, поэтому код действителен.
        Performance.add_custom_monitor("MyMonitor", monitor_value)

        #Добавляет монитор с именем "MyName" в категорию "Custom".
        # Примечание: "MyMonitor"и "Custom/MyMonitor" имеют одинаковое имя и одну и ту же категорию, но разные идентификаторы, поэтому код действителен.
        Performance.add_custom_monitor("Custom/MyMonitor", monitor_value)

        # Добавляет монитор с именем "MyCategoryOne/MyCategoryTwo/MyMonitor" в категорию "Custom".
        Performance.add_custom_monitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitor_value)

    func get_monitor_value():
        return randi() % 25

 .. code-tab:: csharp

    public override void _Ready()
    {
        var monitorValue = new Callable(this, MethodName.GetMonitorValue);

        //Добавляет монитор с именем "MyName" в категорию "MyCategory".
        Performance.AddCustomMonitor("MyCategory/MyMonitor", monitorValue);
        // Добавляет монитор с именем "MyName" в категорию "Custom".
        // Примечание: "MyCategory/MyMonitor" и "MyMonitor" имеют одинаковое имя, но разные идентификаторы, поэтому код действителен.
        Performance.AddCustomMonitor("MyMonitor", monitorValue);

        // Добавляет монитор с именем "MyName" в категорию "Custom".
        // Примечание: "MyMonitor"и "Custom/MyMonitor" имеют одинаковое имя и одну и ту же категорию, но разные идентификаторы, поэтому код действителен.
        Performance.AddCustomMonitor("Custom/MyMonitor", monitorValue);

        // Добавляет монитор с именем "MyCategoryOne/MyCategoryTwo/MyMonitor" в категорию "Custom".
        Performance.AddCustomMonitor("MyCategoryOne/MyCategoryTwo/MyMonitor", monitorValue);
    }

    public int GetMonitorValue()
    {
        return GD.Randi() % 25;
    }



Отладчик вызывает вызываемый объект, чтобы получить значение пользовательского монитора. Вызываемый объект должен возвращать ноль или положительное целое число или число с плавающей точкой. 

Вызываемые объекты вызываются с аргументами, указанными в массиве аргументов.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_get_custom_monitor>`

Возвращает значение пользовательского монитора с заданным ``id``. Вызываемый объект вызывается для получения значения пользовательского монитора. Смотрите также :ref:`has_custom_monitor()<class_Performance_method_has_custom_monitor>`. Выводит сообщение об ошибке, если заданный ``id`` отсутствует.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_custom_monitor_names:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_custom_monitor_names**\ (\ ) :ref:`🔗<class_Performance_method_get_custom_monitor_names>`

Возвращает имена активных пользовательских мониторов в :ref:`Array<class_Array>`.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_monitor**\ (\ monitor\: :ref:`Monitor<enum_Performance_Monitor>`\ ) |const| :ref:`🔗<class_Performance_method_get_monitor>`

Возвращает значение одного из доступных встроенных мониторов. В качестве аргумента следует указать одну из констант :ref:`Monitor<enum_Performance_Monitor>`, например, такую:


.. tabs::

 .. code-tab:: gdscript

    print(Performance.get_monitor(Performance.TIME_FPS)) # Выводит значение FPS на консоль.

 .. code-tab:: csharp

    GD.Print(Производительность.Получить монитор(Performance.Monitor.TimeFps)); // Выводит значение FPS на консоль.



Смотрите :ref:`get_custom_monitor()<class_Performance_method_get_custom_monitor>` для запроса значений пользовательских мониторов производительности.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_get_monitor_modification_time:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_monitor_modification_time**\ (\ ) :ref:`🔗<class_Performance_method_get_monitor_modification_time>`

Возвращает последний тик, в течение которого пользовательский монитор был добавлен/удален (в микросекундах с момента запуска движка). При обновлении монитора устанавливается значение :ref:`Time.get_ticks_usec()<class_Time_method_get_ticks_usec>`.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_has_custom_monitor:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_has_custom_monitor>`

Возвращает ``true``, если присутствует пользовательский монитор с указанным ``id``, в противном случае — ``false``.

.. rst-class:: classref-item-separator

----

.. _class_Performance_method_remove_custom_monitor:

.. rst-class:: classref-method

|void| **remove_custom_monitor**\ (\ id\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_Performance_method_remove_custom_monitor>`

Удаляет пользовательский монитор с указанным ``id``. Выводит ошибку, если указанный ``id`` уже отсутствует.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
