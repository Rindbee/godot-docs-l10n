:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/ReflectionProbe.xml.

.. _class_ReflectionProbe:

ReflectionProbe
===============

**Наследует:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Фиксирует окружающую обстановку для создания быстрых и точных отражений из заданной точки.

.. rst-class:: classref-introduction-group

Описание
----------------

Захватывает свое окружение в виде кубической карты и сохраняет ее версии с увеличивающимися уровнями размытия для имитации различных шероховатостей материалов.

\ **ReflectionProbe** используется для создания высококачественных отражений при низких затратах производительности (когда :ref:`update_mode<class_ReflectionProbe_property_update_mode>` равно :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`). **ReflectionProbe**-ы можно плавно смешивать друг с другом и с остальной частью сцены. **ReflectionProbe**-ы также могут комбинироваться с :ref:`VoxelGI<class_VoxelGI>`, SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`) и отражениями в экранном пространстве (:ref:`Environment.ssr_enabled<class_Environment_property_ssr_enabled>`) для получения более точных отражений в определенных областях. **ReflectionProbe**-ы визуализируют все объекты в пределах :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`, поэтому их обновление может быть довольно затратным. Лучше всего обновить их один раз, добавив важные статические объекты, и больше не трогать.

\ **Примечание:** В отличие от :ref:`VoxelGI<class_VoxelGI>` и SDFGI, **ReflectionProbe** получают свою среду только из узла :ref:`WorldEnvironment<class_WorldEnvironment>`. Если указать ресурс :ref:`Environment<class_Environment>` в узле :ref:`Camera3D<class_Camera3D>`, он будет проигнорирован **ReflectionProbe**. Это может привести к неправильному освещению внутри **ReflectionProbe**.

\ **Примечание:** При использовании метода Mobile рендеринга на каждом ресурсе сетки могут отображаться только ``8`` reflection отражения, тогда как метод Compatibility рендеринга поддерживает только до ``2`` Reflection Probe на каждой сетке. Попытка отобразить более ``8`` reflection отражения на одном ресурсе сетки с помощью Mobile рендеринга приведет к мерцанию зондов отражения при движении камеры, в то время как Compatibility рендеринга не будет отображать никаких дополнительных зондов, если используется более ``2`` Reflection Probe.

\ **Примечание:** При использовании метода Mobile рендеринга Reflection Probe будут правильно воздействовать только на те сетки, видимость AABB которых пересекается с AABB Reflection Probe. При использовании шейдера для деформации сетки, выходящей за пределы AABB, необходимо увеличить :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` сетки. В противном случае Reflection Probe может быть не виден на сетке.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Датчики отражения <../tutorials/3d/global_illumination/reflection_probes>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`                            | :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>`               | ``Color(0, 0, 0, 1)``   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>` | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` | :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>`                 | ``1``                   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`blend_distance<class_ReflectionProbe_property_blend_distance>`             | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`box_projection<class_ReflectionProbe_property_box_projection>`             | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                | :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`                       | ``1048575``             |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`enable_shadows<class_ReflectionProbe_property_enable_shadows>`             | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`intensity<class_ReflectionProbe_property_intensity>`                       | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`interior<class_ReflectionProbe_property_interior>`                         | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`max_distance<class_ReflectionProbe_property_max_distance>`                 | ``0.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>`     | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                        | :ref:`origin_offset<class_ReflectionProbe_property_origin_offset>`               | ``Vector3(0, 0, 0)``    |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                | :ref:`reflection_mask<class_ReflectionProbe_property_reflection_mask>`           | ``1048575``             |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                        | :ref:`size<class_ReflectionProbe_property_size>`                                 | ``Vector3(20, 20, 20)`` |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`   | :ref:`update_mode<class_ReflectionProbe_property_update_mode>`                   | ``0``                   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_ReflectionProbe_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_ReflectionProbe_UpdateMode>`

.. _class_ReflectionProbe_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ONCE** = ``0``

Обновите зонд один раз в следующем кадре (рекомендуется для большинства объектов). Соответствующая карта яркости будет сгенерирована в течение следующих шести кадров. Это занимает больше времени для обновления, чем :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>`, но имеет меньшие затраты производительности и может привести к более качественным отражениям. ReflectionProbe обновляется, когда изменяется его преобразование, но не когда изменяется близлежащая геометрия. Вы можете принудительно обновить **ReflectionProbe**, слегка переместив **ReflectionProbe** в любом направлении.

.. _class_ReflectionProbe_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ALWAYS** = ``1``

Обновлять зонд каждый кадр. Это обеспечивает лучшие результаты для быстро движущихся динамических объектов (например, автомобилей). Однако это имеет значительные затраты производительности. Из-за затрат рекомендуется использовать только один ReflectionProbe с :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` максимум на сцену. Для всех других случаев использования используйте :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`.

.. rst-class:: classref-item-separator

----

.. _enum_ReflectionProbe_AmbientMode:

.. rst-class:: classref-enumeration

enum **AmbientMode**: :ref:`🔗<enum_ReflectionProbe_AmbientMode>`

.. _class_ReflectionProbe_constant_AMBIENT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_DISABLED** = ``0``

Не применяйте никакого окружающего освещения внутри поля **ReflectionProbe**, определенного его :ref:`size<class_ReflectionProbe_property_size>`.

.. _class_ReflectionProbe_constant_AMBIENT_ENVIRONMENT:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_ENVIRONMENT** = ``1``

Применить автоматически генерируемое окружающее освещение внутри поля **ReflectionProbe**, определяемого его :ref:`size<class_ReflectionProbe_property_size>`.

.. _class_ReflectionProbe_constant_AMBIENT_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_COLOR** = ``2``

Применить пользовательское окружающее освещение внутри поля **ReflectionProbe**, определяемого его :ref:`size<class_ReflectionProbe_property_size>`. См. :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>` и :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_ReflectionProbe_property_ambient_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ambient_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ReflectionProbe_property_ambient_color>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ambient_color**\ (\ )

Пользовательский цвет окружения для использования в поле **ReflectionProbe**, определенном его :ref:`size<class_ReflectionProbe_property_size>`. Действует только если :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` — :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_color_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **ambient_color_energy** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_ambient_color_energy>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ambient_color_energy**\ (\ )

Пользовательская энергия окружающего цвета для использования в поле **ReflectionProbe**, определенном его :ref:`size<class_ReflectionProbe_property_size>`. Действует только если :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` равно :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_mode:

.. rst-class:: classref-property

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **ambient_mode** = ``1`` :ref:`🔗<class_ReflectionProbe_property_ambient_mode>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_mode**\ (\ value\: :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>`\ )
- :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **get_ambient_mode**\ (\ )

Цвет окружающего пространства для использования в поле **ReflectionProbe**, определенном его :ref:`size<class_ReflectionProbe_property_size>`. Цвет окружающего пространства будет плавно смешиваться с другими **ReflectionProbe** и остальной частью сцены (за пределами поля **ReflectionProbe**, определенного его :ref:`size<class_ReflectionProbe_property_size>`).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_blend_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **blend_distance** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_blend_distance>`

.. rst-class:: classref-property-setget

- |void| **set_blend_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_blend_distance**\ (\ )

Определяет расстояние в метрах, на котором зонд сливается с сценой.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_box_projection:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **box_projection** = ``false`` :ref:`🔗<class_ReflectionProbe_property_box_projection>`

.. rst-class:: classref-property-setget

- |void| **set_enable_box_projection**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_box_projection_enabled**\ (\ )

Если ``true``, включает проекцию коробки. Это делает отражения более правильными в прямоугольных комнатах, смещая центр отражения в зависимости от расположения камеры.

\ **Примечание:** Чтобы лучше подогнать прямоугольные комнаты, которые не выровнены по сетке, можно повернуть узел **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Устанавливает маску отбраковки, которая определяет, какие объекты рисуются этим зондом. Каждый :ref:`VisualInstance3D<class_VisualInstance3D>` со слоем, включенным в эту маску отбраковки, будет визуализирован зондом. Лучше всего включать только крупные объекты, которые, вероятно, займут много места в отражении, чтобы сэкономить на стоимости рендеринга.

Это также можно использовать для предотвращения отражения объекта от самого себя (например, **ReflectionProbe**, центрированный на транспортном средстве).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_enable_shadows:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_shadows** = ``false`` :ref:`🔗<class_ReflectionProbe_property_enable_shadows>`

.. rst-class:: classref-property-setget

- |void| **set_enable_shadows**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_shadows_enabled**\ (\ )

Если ``true``, вычисляет тени в зонде отражения. Это замедляет рендеринг зонда отражения; вы можете отключить это, если используете :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **intensity** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_intensity**\ (\ )

Определяет интенсивность отражения. Интенсивность модулирует силу отражения.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_ReflectionProbe_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_as_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_interior**\ (\ )

Если ``true``, отражения будут игнорировать влияние неба.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``0.0`` :ref:`🔗<class_ReflectionProbe_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

Максимальное расстояние от **ReflectionProbe**, на котором может находиться объект, прежде чем он будет отсечен. Уменьшите это значение, чтобы улучшить производительность, особенно при использовании :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

\ **Примечание:** Максимальное расстояние отражения всегда по крайней мере равно протяженности зонда. Это означает, что уменьшение :ref:`max_distance<class_ReflectionProbe_property_max_distance>` не всегда будет отсеивать объекты из отражений, особенно если область зонда отражения, определяемая его :ref:`size<class_ReflectionProbe_property_size>`, уже велика.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_mesh_lod_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **mesh_lod_threshold** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_mesh_lod_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_lod_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mesh_lod_threshold**\ (\ )

Автоматическое смещение LOD для использования сеток, визуализируемых в **ReflectionProbe** (это аналог :ref:`Viewport.mesh_lod_threshold<class_Viewport_property_mesh_lod_threshold>`). Более высокие значения будут использовать менее подробные версии сеток, которые имеют сгенерированные вариации LOD. Если установлено значение ``0.0``, автоматический LOD отключен. Увеличьте :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>`, чтобы улучшить производительность за счет детализации геометрии, особенно при использовании :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

\ **Примечание:** :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` не влияет на диапазоны видимости :ref:`GeometryInstance3D<class_GeometryInstance3D>` (также известные как «ручной» LOD или иерархический LOD).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_origin_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ReflectionProbe_property_origin_offset>`

.. rst-class:: classref-property-setget

- |void| **set_origin_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_origin_offset**\ (\ )

Устанавливает смещение начала координат, которое будет использоваться, когда этот **ReflectionProbe** находится в режиме :ref:`box_projection<class_ReflectionProbe_property_box_projection>`. Это может быть установлено на ненулевое значение, чтобы гарантировать, что отражение вписывается в прямоугольную комнату, одновременно уменьшая количество объектов, которые «мешают» отражению.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_reflection_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **reflection_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_reflection_mask>`

.. rst-class:: classref-property-setget

- |void| **set_reflection_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_reflection_mask**\ (\ )

Устанавливает маску отражения, которая определяет, какие объекты имеют отражения, примененные этим зондом. Каждый :ref:`VisualInstance3D<class_VisualInstance3D>` со слоем, включенным в эту маску отражения, будет иметь отражения, примененные этим зондом. См. также :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`, который можно использовать для исключения объектов из отражения, при этом оставляя их под воздействием **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_ReflectionProbe_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Размер зонда отражения. Чем больше размер, тем больше пространства охватывает зонд, что снижает воспринимаемое разрешение. Лучше всего сохранять размер только настолько большим, насколько это необходимо.

\ **Примечание:** Чтобы лучше подогнать области, которые не выровнены по сетке, можно вращать узел **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **update_mode** = ``0`` :ref:`🔗<class_ReflectionProbe_property_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`\ )
- :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **get_update_mode**\ (\ )

Устанавливает частоту обновления **ReflectionProbe**. Может быть :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>` или :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
