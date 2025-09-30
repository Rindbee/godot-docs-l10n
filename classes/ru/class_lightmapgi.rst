:github_url: hide

.. _class_LightmapGI:

LightmapGI
==========

**Наследует:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вычисляет и сохраняет запеченные карты освещения для быстрого глобального освещения.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел **LightmapGI** используется для вычисления и хранения запеченных карт освещения. Карты освещения используются для обеспечения высококачественного непрямого освещения с очень малой утечкой света. **LightmapGI** также может обеспечивать грубые отражения с использованием сферических гармоник, если включен :ref:`directional<class_LightmapGI_property_directional>`. Динамические объекты могут получать непрямое освещение благодаря *световым зондам*, которые можно автоматически размещать, устанавливая :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` на значение, отличное от :ref:`GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>`. Дополнительные зонды световых карт также можно добавлять, создавая узлы :ref:`LightmapProbe<class_LightmapProbe>`. Недостатком является то, что световые карты полностью статичны и не могут быть запечены в экспортированном проекте. Запекание узла **LightmapGI** также медленнее по сравнению с :ref:`VoxelGI<class_VoxelGI>`.

\ **Процедурная генерация:** Функциональность запекания световых карт доступна только в редакторе. Это означает, что **LightmapGI** не подходит для процедурно сгенерированных или созданных пользователем уровней. Для процедурно сгенерированных или созданных пользователем уровней используйте :ref:`VoxelGI<class_VoxelGI>` или SDFGI (см. :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Производительность:** **LightmapGI** обеспечивает наилучшую возможную производительность во время выполнения для глобального освещения. Подходит для аппаратного обеспечения низкого уровня, включая интегрированную графику и мобильные устройства.

\ **Примечание:** Из-за особенностей работы карт освещения большинство свойств имеют видимый эффект только после повторного запекания карт освещения.

\ **Примечание:** Запекание карт освещения на :ref:`CSGShape3D<class_CSGShape3D>` и :ref:`PrimitiveMesh<class_PrimitiveMesh>` не поддерживается, так как они не могут хранить данные UV2, необходимые для запекания.

\ **Примечание:** Если не установлены пользовательские карты освещения, **LightmapGI** можно запекать только с устройств, поддерживающих рендереры Forward+ или Mobile.

\ **Примечание:** Узел **LightmapGI** запекает только данные освещения для дочерних узлов своего родителя. Узлы, расположенные выше по иерархии сцены, не будут запекаться.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование глобального освещения Lightmap <../tutorials/3d/global_illumination/using_lightmap_gi>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`bias<class_LightmapGI_property_bias>`                                           | ``0.0005``            |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>`       | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`bounces<class_LightmapGI_property_bounces>`                                     | ``3``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>`           | :ref:`camera_attributes<class_LightmapGI_property_camera_attributes>`                 |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`denoiser_range<class_LightmapGI_property_denoiser_range>`                       | ``10``                |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`denoiser_strength<class_LightmapGI_property_denoiser_strength>`                 | ``0.1``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`directional<class_LightmapGI_property_directional>`                             | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                 | :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>`   | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>` | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Sky<class_Sky>`                                     | :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>`       |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`   | :ref:`environment_mode<class_LightmapGI_property_environment_mode>`                   | ``1``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`     | :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`       | ``2``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`interior<class_LightmapGI_property_interior>`                                   | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`LightmapGIData<class_LightmapGIData>`               | :ref:`light_data<class_LightmapGI_property_light_data>`                               |                       |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                     | :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>`                   | ``16384``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`           | :ref:`quality<class_LightmapGI_property_quality>`                                     | ``1``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` | :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>`                     | ``0``                 |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`supersampling<class_LightmapGI_property_supersampling>`                         | ``false``             |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>`           | ``2.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                 | :ref:`texel_scale<class_LightmapGI_property_texel_scale>`                             | ``1.0``               |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>`                           | ``true``              |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                   | :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>`     | ``true``              |
   +-----------------------------------------------------------+---------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_LightmapGI_BakeQuality:

.. rst-class:: classref-enumeration

enum **BakeQuality**: :ref:`🔗<enum_LightmapGI_BakeQuality>`

.. _class_LightmapGI_constant_BAKE_QUALITY_LOW:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_LOW** = ``0``

Низкое качество запекания (самое быстрое время запекания). Качество этого пресета можно настроить, изменив :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_ray_count>` и :ref:`ProjectSettings.rendering/lightmapping/bake_quality/low_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/low_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_MEDIUM:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_MEDIUM** = ``1``

Среднее качество запекания (быстрое время запекания). Качество этого пресета можно настроить, изменив :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_ray_count>` и :ref:`ProjectSettings.rendering/lightmapping/bake_quality/medium_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/medium_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_HIGH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_HIGH** = ``2``

Высокое качество запекания (медленное время запекания). Качество этого пресета можно настроить, изменив :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_ray_count>` и :ref:`ProjectSettings.rendering/lightmapping/bake_quality/high_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/high_quality_probe_ray_count>`.

.. _class_LightmapGI_constant_BAKE_QUALITY_ULTRA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **BAKE_QUALITY_ULTRA** = ``3``

Высочайшее качество запекания (самое медленное время запекания). Качество этого пресета можно настроить, изменив :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_ray_count>` и :ref:`ProjectSettings.rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count<class_ProjectSettings_property_rendering/lightmapping/bake_quality/ultra_quality_probe_ray_count>`.

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_GenerateProbes:

.. rst-class:: classref-enumeration

enum **GenerateProbes**: :ref:`🔗<enum_LightmapGI_GenerateProbes>`

.. _class_LightmapGI_constant_GENERATE_PROBES_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_DISABLED** = ``0``

Не создавайте зонды карты освещения для освещения динамических объектов.

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_4:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_4** = ``1``

Самый низкий уровень подразделения (самое быстрое время запекания, наименьшие размеры файлов).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_8:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_8** = ``2``

Низкий уровень подразделения (быстрое время запекания, небольшой размер файлов).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_16:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_16** = ``3``

Высокий уровень разбиения (медленное время запекания, большие размеры файлов).

.. _class_LightmapGI_constant_GENERATE_PROBES_SUBDIV_32:

.. rst-class:: classref-enumeration-constant

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **GENERATE_PROBES_SUBDIV_32** = ``4``

Самый высокий уровень подразделения (самое медленное время запекания, самые большие размеры файлов).

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_BakeError:

.. rst-class:: classref-enumeration

enum **BakeError**: :ref:`🔗<enum_LightmapGI_BakeError>`

.. _class_LightmapGI_constant_BAKE_ERROR_OK:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_OK** = ``0``

Запекание карты освещения прошло успешно.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SCENE_ROOT:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SCENE_ROOT** = ``1``

Запекание карты освещения не удалось, поскольку не удалось получить доступ к корневому узлу редактируемой сцены.

.. _class_LightmapGI_constant_BAKE_ERROR_FOREIGN_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_FOREIGN_DATA** = ``2``

Запекание карты освещения не удалось, так как ресурс данных карты освещения встроен в сторонний ресурс.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_LIGHTMAPPER:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_LIGHTMAPPER** = ``3``

Запекание карты освещения не удалось, так как в этой сборке Godot отсутствует модуль карты освещения.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_SAVE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_SAVE_PATH** = ``4``

Не удалось выполнить запекание карты освещения, так как путь сохранения :ref:`LightmapGIData<class_LightmapGIData>` не настроен в ресурсе.

.. _class_LightmapGI_constant_BAKE_ERROR_NO_MESHES:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_NO_MESHES** = ``5``

Запекание карты освещения не удалось, так как нет сеток, у которых :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` является :ref:`GeometryInstance3D.GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>` и с допустимым отображением UV2 в текущей сцене. Возможно, вам придется выбрать 3D-сцены в доке импорта и изменить их глобальный режим освещения соответствующим образом.

.. _class_LightmapGI_constant_BAKE_ERROR_MESHES_INVALID:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_MESHES_INVALID** = ``6``

Запекание карты освещения не удалось, так как средство создания карты освещения не смогло проанализировать некоторые сетки, отмеченные как статические для запекания.

.. _class_LightmapGI_constant_BAKE_ERROR_CANT_CREATE_IMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_CANT_CREATE_IMAGE** = ``7``

Запекание карты освещения не удалось, поскольку полученное изображение не удалось сохранить или импортировать в Godot после сохранения.

.. _class_LightmapGI_constant_BAKE_ERROR_USER_ABORTED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_USER_ABORTED** = ``8``

Пользователь прервал операцию запекания карты освещения (обычно нажав кнопку **Отмена** в диалоговом окне хода выполнения).

.. _class_LightmapGI_constant_BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL** = ``9``

Запекание карты освещения не удалось, так как максимальный размер текстуры слишком мал для некоторых сеток, отмеченных для запекания.

.. _class_LightmapGI_constant_BAKE_ERROR_LIGHTMAP_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_LIGHTMAP_TOO_SMALL** = ``10``

Запекание карты освещения не удалось, так как карта освещения слишком мала.

.. _class_LightmapGI_constant_BAKE_ERROR_ATLAS_TOO_SMALL:

.. rst-class:: classref-enumeration-constant

:ref:`BakeError<enum_LightmapGI_BakeError>` **BAKE_ERROR_ATLAS_TOO_SMALL** = ``11``

Запекание карты освещения не удалось, поскольку карта освещения не смогла поместиться в атлас.

.. rst-class:: classref-item-separator

----

.. _enum_LightmapGI_EnvironmentMode:

.. rst-class:: classref-enumeration

enum **EnvironmentMode**: :ref:`🔗<enum_LightmapGI_EnvironmentMode>`

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_DISABLED** = ``0``

Игнорируйте окружающее освещение при запекании световых карт.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_SCENE:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_SCENE** = ``1``

Используйте освещение среды сцены при запекании карт освещения.

\ **Примечание:** Если запекать карты освещения в сцене без узла :ref:`WorldEnvironment<class_WorldEnvironment>`, это будет действовать как :ref:`ENVIRONMENT_MODE_DISABLED<class_LightmapGI_constant_ENVIRONMENT_MODE_DISABLED>`. Предварительный просмотр неба и солнца редактора *не* учитывается **LightmapGI** при запекании карт освещения.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_SKY** = ``2``

Используйте :ref:`environment_custom_sky<class_LightmapGI_property_environment_custom_sky>` в качестве источника освещения окружающей среды при запекании карт освещения.

.. _class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **ENVIRONMENT_MODE_CUSTOM_COLOR** = ``3``

Используйте :ref:`environment_custom_color<class_LightmapGI_property_environment_custom_color>`, умноженный на :ref:`environment_custom_energy<class_LightmapGI_property_environment_custom_energy>`, в качестве постоянного источника освещения окружающей среды при запекании карт освещения.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_LightmapGI_property_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **bias** = ``0.0005`` :ref:`🔗<class_LightmapGI_property_bias>`

.. rst-class:: classref-property-setget

- |void| **set_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bias**\ (\ )

Смещение, используемое при вычислении теней. Увеличение :ref:`bias<class_LightmapGI_property_bias>` может исправить теневые угри на результирующей запеченной карте освещения, но может привести к появлению Peter-Panning (тени, не соединяющиеся с их источниками). На тени :ref:`Light3D<class_Light3D>` в реальном времени это свойство :ref:`bias<class_LightmapGI_property_bias>` не влияет.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounce_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce_indirect_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_bounce_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_bounce_indirect_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce_indirect_energy**\ (\ )

Множитель энергии для каждого отскока. Более высокие значения сделают непрямое освещение ярче. Значение ``1.0`` представляет физически точное поведение, но более высокие значения можно использовать, чтобы сделать непрямое освещение более заметным при использовании небольшого количества отскоков. Это можно использовать для ускорения времени запекания, уменьшив количество :ref:`bounces<class_LightmapGI_property_bounces>`, а затем увеличив :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>`.

\ **Примечание:** :ref:`bounce_indirect_energy<class_LightmapGI_property_bounce_indirect_energy>` имеет эффект только в том случае, если для :ref:`bounces<class_LightmapGI_property_bounces>` задано значение большее или равное ``1``.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_bounces:

.. rst-class:: classref-property

:ref:`int<class_int>` **bounces** = ``3`` :ref:`🔗<class_LightmapGI_property_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_bounces**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_bounces**\ (\ )

Количество отражений света, которые учитываются при запекании. Более высокие значения дают более яркое, реалистичное освещение за счет более длительного времени запекания. Если установлено значение ``0``, запекается только окружающее освещение, прямой свет и испускаемое освещение.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_LightmapGI_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

Ресурс :ref:`CameraAttributes<class_CameraAttributes>`, который определяет уровни экспозиции для запекания. Свойства автоматической экспозиции и отсутствия экспозиции будут игнорироваться. Настройки экспозиции следует использовать для уменьшения динамического диапазона, присутствующего при запекании. Если экспозиция слишком высокая, **LightmapGI** будет иметь артефакты полос или может иметь артефакты переэкспонирования.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_range:

.. rst-class:: classref-property

:ref:`int<class_int>` **denoiser_range** = ``10`` :ref:`🔗<class_LightmapGI_property_denoiser_range>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_range**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_denoiser_range**\ (\ )

Расстояние в пикселях, с которого берется образец шумоподавителя. Более низкие значения сохраняют больше деталей, но могут давать неоднородные результаты, если качество карты освещения недостаточно высокое. Эффективно только если :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` равно ``true`` и :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` установлено в JNLM.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_denoiser_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **denoiser_strength** = ``0.1`` :ref:`🔗<class_LightmapGI_property_denoiser_strength>`

.. rst-class:: classref-property-setget

- |void| **set_denoiser_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_denoiser_strength**\ (\ )

Сила шага шумоподавления, применяемого к сгенерированным картам освещения. Действует только если :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` имеет значение ``true`` и :ref:`ProjectSettings.rendering/lightmapping/denoising/denoiser<class_ProjectSettings_property_rendering/lightmapping/denoising/denoiser>` имеет значение JNLM.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_directional:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **directional** = ``false`` :ref:`🔗<class_LightmapGI_property_directional>`

.. rst-class:: classref-property-setget

- |void| **set_directional**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_directional**\ (\ )

Если ``true``, запекает карты освещения, чтобы они содержали информацию о направлении в виде сферических гармоник. Это приводит к более реалистичному внешнему виду освещения, особенно с материалами с картами нормалей и для источников света, у которых запечен прямой свет (:ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>` установлен на :ref:`Light3D.BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>` и с :ref:`Light3D.editor_only<class_Light3D_property_editor_only>` установлен на ``false``). Информация о направлении также используется для предоставления грубых отражений для статических и динамических объектов. Это имеет небольшие затраты производительности во время выполнения, так как шейдеру приходится выполнять больше работы для интерпретации информации о направлении из карты освещения. Направленные карты освещения также дольше запекаются и приводят к большему размеру файла.

\ **Примечание:** Имя свойства не имеет отношения к :ref:`DirectionalLight3D<class_DirectionalLight3D>`. :ref:`directional<class_LightmapGI_property_directional>` работает со всеми типами освещения.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **environment_custom_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_LightmapGI_property_environment_custom_color>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_environment_custom_color**\ (\ )

Цвет, используемый для освещения окружающей среды. Действует только если :ref:`environment_mode<class_LightmapGI_property_environment_mode>` — :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **environment_custom_energy** = ``1.0`` :ref:`🔗<class_LightmapGI_property_environment_custom_energy>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_environment_custom_energy**\ (\ )

Множитель цвета для использования в освещении окружающей среды. Действует только если :ref:`environment_mode<class_LightmapGI_property_environment_mode>` имеет значение :ref:`ENVIRONMENT_MODE_CUSTOM_COLOR<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_custom_sky:

.. rst-class:: classref-property

:ref:`Sky<class_Sky>` **environment_custom_sky** :ref:`🔗<class_LightmapGI_property_environment_custom_sky>`

.. rst-class:: classref-property-setget

- |void| **set_environment_custom_sky**\ (\ value\: :ref:`Sky<class_Sky>`\ )
- :ref:`Sky<class_Sky>` **get_environment_custom_sky**\ (\ )

Небо, используемое как источник освещения среды. Действует только если :ref:`environment_mode<class_LightmapGI_property_environment_mode>` имеет значение :ref:`ENVIRONMENT_MODE_CUSTOM_SKY<class_LightmapGI_constant_ENVIRONMENT_MODE_CUSTOM_SKY>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_environment_mode:

.. rst-class:: classref-property

:ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **environment_mode** = ``1`` :ref:`🔗<class_LightmapGI_property_environment_mode>`

.. rst-class:: classref-property-setget

- |void| **set_environment_mode**\ (\ value\: :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>`\ )
- :ref:`EnvironmentMode<enum_LightmapGI_EnvironmentMode>` **get_environment_mode**\ (\ )

Режим среды, используемый при запекании карт освещения.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_generate_probes_subdiv:

.. rst-class:: classref-property

:ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **generate_probes_subdiv** = ``2`` :ref:`🔗<class_LightmapGI_property_generate_probes_subdiv>`

.. rst-class:: classref-property-setget

- |void| **set_generate_probes**\ (\ value\: :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>`\ )
- :ref:`GenerateProbes<enum_LightmapGI_GenerateProbes>` **get_generate_probes**\ (\ )

Уровень подразделения, используемый при автоматической генерации :ref:`LightmapProbe<class_LightmapProbe>` для динамического освещения объектов. Более высокие значения приводят к более точному непрямому освещению динамических объектов за счет более длительного времени запекания и большего размера файла.

\ **Примечание:** Автоматически сгенерированные :ref:`LightmapProbe<class_LightmapProbe>` не отображаются как узлы в доке дерева сцены и не могут быть изменены таким образом после генерации.

\ **Примечание:** Независимо от :ref:`generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>`, прямое освещение динамических объектов всегда применяется с использованием узлов :ref:`Light3D<class_Light3D>` в реальном времени.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_LightmapGI_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_interior**\ (\ )

Если ``true``, игнорировать окружающее освещение при запекании карт освещения.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_light_data:

.. rst-class:: classref-property

:ref:`LightmapGIData<class_LightmapGIData>` **light_data** :ref:`🔗<class_LightmapGI_property_light_data>`

.. rst-class:: classref-property-setget

- |void| **set_light_data**\ (\ value\: :ref:`LightmapGIData<class_LightmapGIData>`\ )
- :ref:`LightmapGIData<class_LightmapGIData>` **get_light_data**\ (\ )

:ref:`LightmapGIData<class_LightmapGIData>`, связанный с этим узлом **LightmapGI**. Этот ресурс автоматически создается после запекания и не предназначен для создания вручную.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_max_texture_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_texture_size** = ``16384`` :ref:`🔗<class_LightmapGI_property_max_texture_size>`

.. rst-class:: classref-property-setget

- |void| **set_max_texture_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_texture_size**\ (\ )

Максимальный размер текстуры для сгенерированного атласа текстур. Более высокие значения приведут к генерации меньшего количества срезов, но могут не работать на всех аппаратных средствах из-за аппаратных ограничений на размеры текстур. Оставьте :ref:`max_texture_size<class_LightmapGI_property_max_texture_size>` в значении по умолчанию ``16384``, если не уверены.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_quality:

.. rst-class:: classref-property

:ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **quality** = ``1`` :ref:`🔗<class_LightmapGI_property_quality>`

.. rst-class:: classref-property-setget

- |void| **set_bake_quality**\ (\ value\: :ref:`BakeQuality<enum_LightmapGI_BakeQuality>`\ )
- :ref:`BakeQuality<enum_LightmapGI_BakeQuality>` **get_bake_quality**\ (\ )

Предустановка качества для использования при запекании карт освещения. Это влияет на время запекания, но размеры выходных файлов остаются в основном одинаковыми на всех уровнях качества.

Чтобы еще больше ускорить время запекания, уменьшите :ref:`bounces<class_LightmapGI_property_bounces>`, отключите :ref:`use_denoiser<class_LightmapGI_property_use_denoiser>` и/или уменьшите :ref:`texel_scale<class_LightmapGI_property_texel_scale>`.

Чтобы еще больше повысить качество, включите :ref:`supersampling<class_LightmapGI_property_supersampling>` и/или увеличьте :ref:`texel_scale<class_LightmapGI_property_texel_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_shadowmask_mode:

.. rst-class:: classref-property

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **shadowmask_mode** = ``0`` :ref:`🔗<class_LightmapGI_property_shadowmask_mode>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_mode**\ (\ value\: :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>`\ )
- :ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **get_shadowmask_mode**\ (\ )

**Экспериментальное:** Это свойство может быть изменено или удалено в будущих версиях.

Политика маскировки теней, используемая для направленных теней на статических объектах, запеченных с этим экземпляром **LightmapGI**.

Маскировка теней позволяет узлам :ref:`DirectionalLight3D<class_DirectionalLight3D>` отбрасывать тени даже за пределами диапазона, определенного их свойством :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`. Это делается путем запекания текстуры, содержащей карту теней для направленного света, а затем использования этой текстуры в соответствии с текущим режимом маски теней.

\ **Примечание:** Текстура маски теней создается только в том случае, если :ref:`shadowmask_mode<class_LightmapGI_property_shadowmask_mode>` не является :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>`. Чтобы увидеть разницу, вам нужно снова запечь карты освещения после переключения с :ref:`LightmapGIData.SHADOWMASK_MODE_NONE<class_LightmapGIData_constant_SHADOWMASK_MODE_NONE>` на любой другой режим.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **supersampling** = ``false`` :ref:`🔗<class_LightmapGI_property_supersampling>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_supersampling_enabled**\ (\ )

Если ``true``, карты освещения запекаются с масштабом текселя, умноженным на :ref:`supersampling_factor<class_LightmapGI_property_supersampling_factor>`, и подвергаются пониженной выборке перед сохранением карты освещения (поэтому эффективная плотность текселя идентична отключенной суперсэмплировке).

Суперсэмплировка обеспечивает повышенное качество карты освещения с меньшим шумом, более плавными тенями и лучшим затенением мелкомасштабных особенностей объектов. Однако это может привести к значительному увеличению времени запекания и использования памяти при запекании карт освещения. Заполнение автоматически регулируется, чтобы избежать увеличения утечки света.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_supersampling_factor:

.. rst-class:: classref-property

:ref:`float<class_float>` **supersampling_factor** = ``2.0`` :ref:`🔗<class_LightmapGI_property_supersampling_factor>`

.. rst-class:: classref-property-setget

- |void| **set_supersampling_factor**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_supersampling_factor**\ (\ )

Коэффициент, на который умножается плотность текселей )texel( для суперсэмплинга )supersampling(. Для достижения наилучших результатов используйте целочисленное значение. Хотя дробные значения допускаются, они могут привести к увеличению утечки света и размытости карты освещения.

Более высокие значения могут привести к лучшему качеству, но также увеличивают время запекания и использование памяти при запекании.

См. :ref:`supersampling<class_LightmapGI_property_supersampling>` для получения дополнительной информации.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **texel_scale** = ``1.0`` :ref:`🔗<class_LightmapGI_property_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texel_scale**\ (\ )

Масштабирует плотность текселей карты освещения всех сеток для текущего запекания. Это множитель, который строится на существующем размере текселей карты освещения, определенном в каждой импортированной 3D-сцене, вместе с множителем плотности для каждой сетки (который предназначен для использования, когда одна и та же сетка используется в разных масштабах). Более низкие значения приведут к более быстрому времени запекания.

Например, удвоение :ref:`texel_scale<class_LightmapGI_property_texel_scale>` удваивает разрешение текстуры карты освещения для всех объектов *на каждой оси*, поэтому это *учетверит* количество текселей.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_denoiser:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_denoiser** = ``true`` :ref:`🔗<class_LightmapGI_property_use_denoiser>`

.. rst-class:: classref-property-setget

- |void| **set_use_denoiser**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_denoiser**\ (\ )

Если ``true``, используется алгоритм шумоподавления на основе графического процессора на сгенерированной карте освещения. Это устраняет большую часть шума в сгенерированной карте освещения за счет более длительного времени запекания. Размеры файлов, как правило, не сильно зависят от использования шумоподавителя, хотя сжатие без потерь может лучше сжимать изображение с шумоподавлением.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGI_property_use_texture_for_bounces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_texture_for_bounces** = ``true`` :ref:`🔗<class_LightmapGI_property_use_texture_for_bounces>`

.. rst-class:: classref-property-setget

- |void| **set_use_texture_for_bounces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_texture_for_bounces**\ (\ )

Если ``true``, текстура с информацией об освещении будет сгенерирована для ускорения генерации непрямого освещения за счет некоторой потери точности. Геометрия может демонстрировать дополнительные артефакты утечки света при использовании карт освещения с низким разрешением или UV, которые значительно растягивают карту освещения по поверхностям. Оставьте :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` со значением по умолчанию ``true``, если не уверены.

\ **Примечание:** :ref:`use_texture_for_bounces<class_LightmapGI_property_use_texture_for_bounces>` имеет эффект только в том случае, если :ref:`bounces<class_LightmapGI_property_bounces>` установлен на значение большее или равное ``1``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
