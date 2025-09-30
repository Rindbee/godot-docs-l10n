:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/Decal.xml.

.. _class_Decal:

Decal
=====

**Наследует:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, который проецирует текстуру на :ref:`MeshInstance3D<class_MeshInstance3D>`.

.. rst-class:: classref-introduction-group

Описание
----------------

``Decals``-ы используются для проецирования текстуры на :ref:`Mesh<class_Mesh>` в сцене. Используйте Decals, чтобы добавить детали к сцене, не затрагивая базовую :ref:`Mesh<class_Mesh>`. Они часто используются для добавления выветривания к зданию, добавления грязи или ила на землю или добавления разнообразия к реквизиту. Decals можно перемещать в любое время, что делает их подходящими для таких вещей, как тени-капли или точки лазерного прицела.

Они сделаны из :ref:`AABB<class_AABB>` и группы :ref:`Texture2D<class_Texture2D>`, определяющих :ref:`Color<class_Color>`, normal, ORM (окклюзия окружения, шероховатость, металлик) и излучение. Декали проецируются в пределах их :ref:`AABB<class_AABB>`, поэтому изменение ориентации декали влияет на направление, в котором они проецируются. По умолчанию декали проецируются вниз (т. е. от положительного Y к отрицательному Y).

\ :ref:`Texture2D<class_Texture2D>`-ы, связанные с Decal, автоматически сохраняются в атласе текстур, который используется для рисования декалей, чтобы все декали можно было нарисовать одновременно. Godot использует кластеризованные декали, то есть они хранятся в кластерных данных и рисуются при рисовании сетки, а не рисуются как эффект постобработки после.

\ **Примечание:** Декали не могут влиять на прозрачность базового материала, независимо от его режима прозрачности (альфа-смешивание, альфа-ножницы, альфа-хеш, непрозрачный предварительный проход). Это означает, что полупрозрачные или прозрачные области материала останутся полупрозрачными или прозрачными, даже если на них нанесена непрозрачная декаль.

\ **Примечание:** Декали поддерживаются только в методах рендеринга Forward+ и Mobile, а не Compatibility. При использовании метода рендеринга Mobile на каждом ресурсе сетки может отображаться только 8 декалей. Попытка отобразить более 8 декалей на одном ресурсе сетки приведет к мерцанию декалей при движении камеры.

\ **Примечание:** При использовании метода рендеринга Mobile декали будут правильно влиять только на сетки, видимость AABB которых пересекается с AABB декали. Если используется шейдер для деформации сетки таким образом, что она выходит за пределы AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` должен быть увеличен на сетке. В противном случае декаль может быть не видна на сетке.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`albedo_mix<class_Decal_property_albedo_mix>`                       | ``1.0``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`cull_mask<class_Decal_property_cull_mask>`                         | ``1048575``           |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>`     | ``40.0``              |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`distance_fade_enabled<class_Decal_property_distance_fade_enabled>` | ``false``             |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`distance_fade_length<class_Decal_property_distance_fade_length>`   | ``10.0``              |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`emission_energy<class_Decal_property_emission_energy>`             | ``1.0``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`lower_fade<class_Decal_property_lower_fade>`                       | ``0.3``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`modulate<class_Decal_property_modulate>`                           | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`normal_fade<class_Decal_property_normal_fade>`                     | ``0.0``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector3<class_Vector3>`     | :ref:`size<class_Decal_property_size>`                                   | ``Vector3(2, 2, 2)``  |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_albedo<class_Decal_property_texture_albedo>`               |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_emission<class_Decal_property_texture_emission>`           |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_normal<class_Decal_property_texture_normal>`               |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture_orm<class_Decal_property_texture_orm>`                     |                       |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`upper_fade<class_Decal_property_upper_fade>`                       | ``0.3``               |
   +-----------------------------------+--------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`get_texture<class_Decal_method_get_texture>`\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|                                      |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                            | :ref:`set_texture<class_Decal_method_set_texture>`\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) |
   +-----------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Decal_DecalTexture:

.. rst-class:: classref-enumeration

enum **DecalTexture**: :ref:`🔗<enum_Decal_DecalTexture>`

.. _class_Decal_constant_TEXTURE_ALBEDO:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ALBEDO** = ``0``

:ref:`Texture2D<class_Texture2D>` соответствует :ref:`texture_albedo<class_Decal_property_texture_albedo>`.

.. _class_Decal_constant_TEXTURE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_NORMAL** = ``1``

:ref:`Texture2D<class_Texture2D>` соответствует :ref:`texture_normal<class_Decal_property_texture_normal>`.

.. _class_Decal_constant_TEXTURE_ORM:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ORM** = ``2``

:ref:`Texture2D<class_Texture2D>` соответствует :ref:`texture_orm<class_Decal_property_texture_orm>`.

.. _class_Decal_constant_TEXTURE_EMISSION:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_EMISSION** = ``3``

:ref:`Texture2D<class_Texture2D>` соответствует :ref:`texture_emission<class_Decal_property_texture_emission>`.

.. _class_Decal_constant_TEXTURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_MAX** = ``4``

Максимальный размер перечисления :ref:`DecalTexture<enum_Decal_DecalTexture>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Decal_property_albedo_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **albedo_mix** = ``1.0`` :ref:`🔗<class_Decal_property_albedo_mix>`

.. rst-class:: classref-property-setget

- |void| **set_albedo_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_albedo_mix**\ (\ )

Смешивает альбедо :ref:`Color<class_Color>` декали с альбедо :ref:`Color<class_Color>` базовой сетки. Это можно установить на ``0.0``, чтобы создать декаль, которая влияет только на нормаль или ORM. В этом случае текстура альбедо все еще требуется, так как ее альфа-канал определит, где будут переопределены нормаль и ORM. См. также :ref:`modulate<class_Decal_property_modulate>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Decal_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Указывает, на какой :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` будет проецироваться эта декаль. По умолчанию Decals влияет на все слои. Это используется, чтобы вы могли указать, какие типы объектов получают Decal, а какие нет. Это особенно полезно, чтобы вы могли гарантировать, что динамические объекты случайно не получат Decal, предназначенный для ландшафта под ними.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Decal_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

Расстояние от камеры, на котором декаль начинает исчезать (в 3D-единицах).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Decal_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

Если ``true``, декали будут плавно исчезать при удалении от активной :ref:`Camera3D<class_Camera3D>`, начиная с :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>`. Декаль будет исчезать через :ref:`distance_fade_begin<class_Decal_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Decal_property_distance_fade_length>`, после чего она будет отбракована и вообще не отправлена в шейдер. Используйте это, чтобы уменьшить количество активных декалей в сцене и тем самым повысить производительность.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Decal_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

Расстояние, на котором декаль исчезает (в 3D-единицах). Декаль постепенно становится более прозрачной на этом расстоянии и полностью невидимой в конце. Более высокие значения приводят к более плавному переходу затухания, что больше подходит для случаев, когда камера движется быстро.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_emission_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_energy** = ``1.0`` :ref:`🔗<class_Decal_property_emission_energy>`

.. rst-class:: classref-property-setget

- |void| **set_emission_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_energy**\ (\ )

Множитель энергии для текстуры излучения. Это заставит декаль излучать свет с большей или меньшей интенсивностью, независимо от цвета альбедо. См. также :ref:`modulate<class_Decal_property_modulate>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_lower_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_fade** = ``0.3`` :ref:`🔗<class_Decal_property_lower_fade>`

.. rst-class:: classref-property-setget

- |void| **set_lower_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_fade**\ (\ )

Устанавливает кривую, по которой декаль будет исчезать по мере удаления поверхности от центра :ref:`AABB<class_AABB>`. Допустимы только положительные значения (отрицательные значения будут ограничены ``0.0``). См. также :ref:`upper_fade<class_Decal_property_upper_fade>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Decal_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Изменяет :ref:`Color<class_Color>` декали, умножая цвета альбедо и излучения на это значение. Альфа-компонент учитывается только при умножении цвета альбедо, а не цвета излучения. См. также :ref:`emission_energy<class_Decal_property_emission_energy>` и :ref:`albedo_mix<class_Decal_property_albedo_mix>`, чтобы изменить интенсивность излучения и альбедо независимо друг от друга.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_normal_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_fade** = ``0.0`` :ref:`🔗<class_Decal_property_normal_fade>`

.. rst-class:: classref-property-setget

- |void| **set_normal_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_fade**\ (\ )

Затемняет декаль, если угол между :ref:`AABB<class_AABB>` декали и целевой поверхностью становится слишком большим. Значение ``0`` проецирует декаль независимо от угла, значение ``1`` ограничивает декаль поверхностями, которые почти перпендикулярны.

\ **Примечание:** Установка :ref:`normal_fade<class_Decal_property_normal_fade>` на значение больше ``0.0`` имеет небольшие затраты производительности из-за дополнительных вычислений угла нормали.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_Decal_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Устанавливает размер :ref:`AABB<class_AABB>`, используемый наклейкой. Все размеры должны быть установлены на значение больше нуля (они будут ограничены ``0.001``, если это не так). AABB изменяется от ``-size/2`` до ``size/2``.

\ **Примечание:** Чтобы повысить эффективность отбраковки наклеек «твердой поверхности», установите их :ref:`upper_fade<class_Decal_property_upper_fade>` и :ref:`lower_fade<class_Decal_property_lower_fade>` на ``0.0`` и установите компонент Y :ref:`size<class_Decal_property_size>` как можно ниже. Это уменьшит размер AABB наклеек, не влияя на их внешний вид.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_albedo:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_albedo** :ref:`🔗<class_Decal_property_texture_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` с базовым :ref:`Color<class_Color>` Decal. Либо это, либо :ref:`texture_emission<class_Decal_property_texture_emission>` должно быть установлено, чтобы Decal был видимым. Используйте альфа-канал как маску, чтобы плавно смешать края decal с базовым объектом.

\ **Примечание:** В отличие от :ref:`BaseMaterial3D<class_BaseMaterial3D>`, режим фильтра которого можно настраивать для каждого материала, режим фильтра для текстур **Decal** устанавливается глобально с помощью :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_emission:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_emission** :ref:`🔗<class_Decal_property_texture_emission>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` с излучением :ref:`Color<class_Color>` Decal. Либо это, либо :ref:`texture_albedo<class_Decal_property_texture_albedo>` должно быть установлено, чтобы Decal был видимым. Используйте альфа-канал как маску, чтобы плавно смешать края decal с нижележащим объектом.

\ **Примечание:** В отличие от :ref:`BaseMaterial3D<class_BaseMaterial3D>`, режим фильтра которого можно настраивать для каждого материала, режим фильтра для текстур **Decal** устанавливается глобально с помощью :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_Decal_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` с попиксельной картой нормалей для декали. Используйте это, чтобы добавить дополнительную детализацию к декалям.

\ **Примечание:** В отличие от :ref:`BaseMaterial3D<class_BaseMaterial3D>`, режим фильтра которого можно настраивать для каждого материала, режим фильтра для текстур **Decal** устанавливается глобально с помощью :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

\ **Примечание:** Установка только этой текстуры не приведет к появлению видимой декали, так как :ref:`texture_albedo<class_Decal_property_texture_albedo>` также должен быть установлен. Чтобы создать декаль только для нормалей, загрузите текстуру альбедо в :ref:`texture_albedo<class_Decal_property_texture_albedo>` и установите :ref:`albedo_mix<class_Decal_property_albedo_mix>` на ``0.0``. Альфа-канал текстуры альбедо будет использоваться для определения того, где должна быть переопределена карта нормалей базовой поверхности (и ее интенсивность).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_orm:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_orm** :ref:`🔗<class_Decal_property_texture_orm>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` сохраняет окружающее затенение, шероховатость и металл для декали. Используйте это, чтобы добавить дополнительную детализацию к декалям.

\ **Примечание:** В отличие от :ref:`BaseMaterial3D<class_BaseMaterial3D>`, режим фильтра которого можно настраивать для каждого материала, режим фильтра для текстур **Decal** устанавливается глобально с помощью :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

\ **Примечание:** Установка только этой текстуры не приведет к появлению видимой декали, так как :ref:`texture_albedo<class_Decal_property_texture_albedo>` также должен быть установлен. Чтобы создать декаль только для ORM, загрузите текстуру альбедо в :ref:`texture_albedo<class_Decal_property_texture_albedo>` и установите :ref:`albedo_mix<class_Decal_property_albedo_mix>` на ``0.0``. Альфа-канал текстуры альбедо будет использоваться для определения того, где должна быть переопределена карта ORM подстилающей поверхности (и ее интенсивность).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_upper_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **upper_fade** = ``0.3`` :ref:`🔗<class_Decal_property_upper_fade>`

.. rst-class:: classref-property-setget

- |void| **set_upper_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_upper_fade**\ (\ )

Устанавливает кривую, по которой декаль будет исчезать по мере удаления поверхности от центра :ref:`AABB<class_AABB>`. Допустимы только положительные значения (отрицательные значения будут ограничены ``0.0``). См. также :ref:`lower_fade<class_Decal_property_lower_fade>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Decal_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const| :ref:`🔗<class_Decal_method_get_texture>`

Возвращает :ref:`Texture2D<class_Texture2D>`, связанный с указанным :ref:`DecalTexture<enum_Decal_DecalTexture>`. Это удобный метод, в большинстве случаев вам следует обращаться к текстуре напрямую.

Например, вместо ``albedo_tex = $Decal.get_texture(Decal.TEXTURE_ALBEDO)``, используйте ``albedo_tex = $Decal.texture_albedo``.

Один случай, когда это лучше, чем прямой доступ к текстуре, — это когда вы хотите скопировать текстуры одной Decal в другую. Например:


.. tabs::

 .. code-tab:: gdscript

    for i in Decal.TEXTURE_MAX:
        $NewDecal.set_texture(i, $OldDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
    {
        GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
    }



.. rst-class:: classref-item-separator

----

.. _class_Decal_method_set_texture:

.. rst-class:: classref-method

|void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_Decal_method_set_texture>`

Устанавливает :ref:`Texture2D<class_Texture2D>`, связанный с указанным :ref:`DecalTexture<enum_Decal_DecalTexture>`. Это удобный метод, в большинстве случаев вам следует обращаться к текстуре напрямую.

Например, вместо ``$Decal.set_texture(Decal.TEXTURE_ALBEDO, albedo_tex)``, используйте ``$Decal.texture_albedo = albedo_tex``.

Один случай, когда это лучше, чем прямой доступ к текстуре, — это когда вы хотите скопировать текстуры одной Decal в другую. Например:


.. tabs::

 .. code-tab:: gdscript

    for i in Decal.TEXTURE_MAX:
        $NewDecal.set_texture(i, $OldDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)
    {
        GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
    }



.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
