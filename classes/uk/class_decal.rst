:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/Decal.xml.

.. _class_Decal:

Decal
=====

**Успадковує:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Node, яка продає текстуру на :ref:`MeshInstance3D<class_MeshInstance3D>`.

.. rst-class:: classref-introduction-group

Опис
--------

**Decal** використовується для проекту текстури на :ref:`Mesh<class_Mesh>` на сцені. Використовуйте пропозиції, щоб додати деталі до сцени, не впливаючи на основу :ref:`Mesh<class_Mesh>`. Вони часто використовуються, щоб додати погодні споруди, додати бруд або грязь на землю, або додати різноманітні пропси. Декалі можна переміщати в будь-який час, роблячи їх придатними для речей, таких як тіні бобові або лазерні точки зору.

Вони виготовляються з :ref:`AABB<class_AABB>` і групи :ref:`Texture2D<class_Texture2D>`, вказавши :ref:`Color<class_Color>`, нормальний, ORM (універсальна оклюзія, грубість, металік), і емісія. Декаль продаються в межах їх :ref:`AABB<class_AABB>`, тому змінюючи спрямованість Декаль впливає на напрямок, в якому вони продаються. За промовчанням, пропозиції продаються вниз (тобто від позитиву Y до негативного Y).

\ :ref:`Texture2D<class_Texture2D>`, пов'язані з Decal, автоматично зберігаються в текстурі атласу, який використовується для малювання декалі, так що всі декалі можуть бути зроблені одночасно. Godot використовує кластерні декалі, що означає, що вони зберігаються в кластерних даних і намальовані при намальовуванні сітки, вони не намальовані як після обробки.

\ **Примітка:** Опитування не може впливати на прозорість основного матеріалу, незалежно від його режиму прозорості (альфа-змішувач, альфа-ссісар, альфа-холе, передчасний прохід). Це означає напівпрозорі або прозорі ділянки матеріалу залишаються непрозорими або прозорими, навіть якщо на них наноситься непрозора декаль.

\ **Примітка:** Ознаки підтримуються лише в методах переадресації + та мобільних рендерингів, не сумісності. При використанні методу мобільного рендерингу можна відобразити лише 8 декалі. Припустимо, щоб відобразити більше 8 декальцій на одному сітчастому ресурсі призведе до декалі, що мерехтять і виходиться в якості камери.

\ **Примітка:** При використанні методу мобільного рендерингу, декалі будуть тільки коректно впливати на сітки, видимість AABB взаємозаражує з AABB. При використанні шейдера для деформування сітки таким чином, що робить його поза її AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` необхідно збільшити на сітці. В іншому випадку на сітці не видно декаль.

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Переліки
----------------

.. _enum_Decal_DecalTexture:

.. rst-class:: classref-enumeration

enum **DecalTexture**: :ref:`🔗<enum_Decal_DecalTexture>`

.. _class_Decal_constant_TEXTURE_ALBEDO:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ALBEDO** = ``0``

:ref:`Texture2D<class_Texture2D>`, що відповідає :ref:`texture_albedo<class_Decal_property_texture_albedo>`.

.. _class_Decal_constant_TEXTURE_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_NORMAL** = ``1``

:ref:`Texture2D<class_Texture2D>`, що відповідає :ref:`texture_normal<class_Decal_property_texture_normal>`.

.. _class_Decal_constant_TEXTURE_ORM:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_ORM** = ``2``

:ref:`Texture2D<class_Texture2D>`, що відповідає :ref:`texture_orm<class_Decal_property_texture_orm>`.

.. _class_Decal_constant_TEXTURE_EMISSION:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_EMISSION** = ``3``

:ref:`Texture2D<class_Texture2D>`, що відповідає :ref:`texture_emission<class_Decal_property_texture_emission>`.

.. _class_Decal_constant_TEXTURE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DecalTexture<enum_Decal_DecalTexture>` **TEXTURE_MAX** = ``4``

Макс. розмір :ref:`DecalTexture<enum_Decal_DecalTexture>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Decal_property_albedo_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **albedo_mix** = ``1.0`` :ref:`🔗<class_Decal_property_albedo_mix>`

.. rst-class:: classref-property-setget

- |void| **set_albedo_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_albedo_mix**\ (\ )

Підходить альбедо :ref:`Color<class_Color>` декаль з альбедо :ref:`Color<class_Color>` базової сітки. Це можна встановити до ``0.0`` для створення декаль, який тільки впливає на нормальну або ORM. У цьому випадку текстура альбедо все ще потрібна як його альфа-канал буде визначати, де нормаль і ORM буде передаватися. Дивись також :ref:`modulate<class_Decal_property_modulate>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_Decal_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Визначає, що :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>` цей декаль буде проектуватися. За замовчуванням, пропозиції впливають на всі шари. Це використовується так, що ви можете вказати, які види об'єктів отримують Декаль і які не є. Це особливо корисно для того, щоб динамічні об'єкти не випадково отримували Декаль, призначений для місцевості під ними.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Decal_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

Відстань від камери, при якому Декаль починає відторгуватися (в 3D-пакетах).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Decal_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

Якщо ``true``, декаль плавно згорнеться, коли далеко від активних :ref:`Camera3D<class_Camera3D>`, починаючи з ``відстань_fade_begin``. Декаль з'явиться над :ref:`відстань_fade_begin<class_Decal_property_відстань_fade_begin>` + :ref:`відстань_fade_довжина<class_Decal_property_відстань_fade_довжина>`, після чого він буде культивований і не відправлений на шейкер на всіх. Використовуйте це, щоб зменшити кількість Активних Декальцій на сцені та підвищити продуктивність.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Decal_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

Відстань від якого відхиляється декаль (в 3D одиниці). Декаль стає повільним більш прозорим над цією дистанцією і повністю непомітним на кінці. Більшість значень призводить до плавлення виходу з ладу, який більш підходить, коли камера рухається швидко.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_emission_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **emission_energy** = ``1.0`` :ref:`🔗<class_Decal_property_emission_energy>`

.. rst-class:: classref-property-setget

- |void| **set_emission_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_emission_energy**\ (\ )

Мультиплікатор енергії для текстури емісії. Це зробить декаль випромінювати світло на більш високій або меншій інтенсивності, незалежно від кольору альбедо. Дивись також :ref:`modulate<class_Decal_property_modulate>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_lower_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_fade** = ``0.3`` :ref:`🔗<class_Decal_property_lower_fade>`

.. rst-class:: classref-property-setget

- |void| **set_lower_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_fade**\ (\ )

Налаштовує криву, над якою декаль буде вигорнути, як поверхня отримує далі від центру :ref:`AABB<class_AABB>`. Тільки позитивні значення дійсні (негативні значення будуть зафіксовані до ``0.0``). Дивись також :ref:`upper_fade<class_Decal_property_upper_fade>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Decal_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Змінює :ref:`Color<class_Color>` Декаль шляхом розмноження альбедо і емісійних кольорів з цим значенням. alpha компонент враховується тільки при розмноженні альбедо кольору, а не кольору емісії. Дивись також :ref:`emission_energy<class_Decal_property_emission_energy>` і :ref:`albedo_mix<class_Decal_property_albedo_mix>` для зміни емісії та інтенсивності альбедо незалежно від одного.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_normal_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **normal_fade** = ``0.0`` :ref:`🔗<class_Decal_property_normal_fade>`

.. rst-class:: classref-property-setget

- |void| **set_normal_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_normal_fade**\ (\ )

Відкриває декаль, якщо кут між Декаль :ref:`AABB<class_AABB>` і цільовою поверхнею стає занадто великим. Значення ``0`` проектів Декаль незалежно від кута, значення ``1`` обмежує Декаль на поверхні, які майже перпендикулярні.

\ **Примітка:** Встановлення :ref:`normal_fade<class_Decal_property_normal_fade>` до значення більше, ніж ``0.0`` має невелику вартість виконання через додані нормальні обчислення кута.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_Decal_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

Задає розмір :ref:`AABB<class_AABB>`, який буде використовуватися міткою. Всі розміри повинні бути встановлені на значення більше нуля (якщо це не так, вони будуть затиснуті до ``0.001``). AABB змінюється від ``-розмір/2`` до ``розмір/2``.

\ **Примітка:** Щоб покращити ефективність відсіювання міток з "твердою поверхнею", встановіть для них :ref:`upper_fade<class_Decal_property_upper_fade>` і :ref:`lower_fade<class_Decal_property_lower_fade>` значення ``0.0`` і встановіть Y-компонент :ref:`size<class_Decal_property_size>` якомога нижчим. Це зменшить розмір AABB міток, не впливаючи на їхній зовнішній вигляд.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_albedo:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_albedo** :ref:`🔗<class_Decal_property_texture_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` з основою :ref:`Color<class_Color>` мітки. Для того, щоб наклейку було видно, необхідно встановити або цей параметр, або :ref:`texture_emission<class_Decal_property_texture_emission>`. Використовуйте альфа-канал як маску, щоб плавно змішати краї наклейки з основним об'єктом.

\ **Примітка:** На відміну від :ref:`BaseMaterial3D<class_BaseMaterial3D>`, режим фільтрації якого можна налаштувати для кожного матеріалу, режим фільтрації для текстур **Decal** задається глобально за допомогою :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_emission:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_emission** :ref:`🔗<class_Decal_property_texture_emission>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` з випромінюванням :ref:`Color<class_Color>` мітки. Для того, щоб наклейку було видно, потрібно встановити або цей параметр, або :ref:`texture_albedo<class_Decal_property_texture_albedo>`. Використовуйте альфа-канал як маску, щоб плавно змішати краї наклейки з основним об'єктом.

\ **Примітка:** На відміну від :ref:`BaseMaterial3D<class_BaseMaterial3D>`, режим фільтрації якого можна налаштувати для кожного матеріалу, режим фільтрації для текстур **Decal** задається глобально за допомогою :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_normal:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_normal** :ref:`🔗<class_Decal_property_texture_normal>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` з попіксельною картою нормалей для наклейки. Використовуйте його, щоб додати додаткову деталізацію до етикеток.

\ **Примітка:** На відміну від :ref:`BaseMaterial3D<class_BaseMaterial3D>`, режим фільтрації якого можна налаштувати для кожного окремого матеріалу, режим фільтрації для текстур **Decal** задається глобально за допомогою :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

\ **Примітка:** Встановлення лише цієї текстури не призведе до створення видимої наклейки, оскільки також має бути встановлено :ref:`texture_albedo<class_Decal_property_texture_albedo>`. Щоб створити лише звичайну наліпку, завантажте альбедо-текстуру до :ref:`texture_albedo<class_Decal_property_texture_albedo>` і встановіть :ref:`albedo_mix<class_Decal_property_albedo_mix>` на ``0.0``. Альфа-канал альбедо-текстури буде використано для визначення місця перевизначення карти нормалей базової поверхні (та її інтенсивності).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_texture_orm:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture_orm** :ref:`🔗<class_Decal_property_texture_orm>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const|

:ref:`Texture2D<class_Texture2D>` зберігає оклюзію навколишнього середовища, шорсткість і металік для наклейки. Використовуйте його, щоб додати додаткову деталізацію до наклейок.

\ **Примітка:** На відміну від :ref:`BaseMaterial3D<class_BaseMaterial3D>`, режим фільтрації якого можна налаштувати для кожного окремого матеріалу, режим фільтрації для текстур **Decal** задається глобально за допомогою :ref:`ProjectSettings.rendering/textures/decals/filter<class_ProjectSettings_property_rendering/textures/decals/filter>`.

\ **Примітка:** Встановлення лише цієї текстури не призведе до створення видимої наклейки, оскільки слід також встановити :ref:`texture_albedo<class_Decal_property_texture_albedo>`. Щоб створити лише ORM-мітку, завантажте альбедо-текстуру до :ref:`texture_albedo<class_Decal_property_texture_albedo>` і встановіть :ref:`albedo_mix<class_Decal_property_albedo_mix>` на ``0.0``. Альфа-канал альбедо-текстури використовуватиметься для визначення місця заміщення карти ORM базової поверхні (та її інтенсивності).

.. rst-class:: classref-item-separator

----

.. _class_Decal_property_upper_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **upper_fade** = ``0.3`` :ref:`🔗<class_Decal_property_upper_fade>`

.. rst-class:: classref-property-setget

- |void| **set_upper_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_upper_fade**\ (\ )

Задає криву, за якою мітка буде зникати по мірі віддалення поверхні від центру :ref:`AABB<class_AABB>`. Допустимі лише додатні значення (від'ємні значення будуть затиснуті до ``0.0``). Дивіться також :ref:`lower_fade<class_Decal_property_lower_fade>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_Decal_method_get_texture:

.. rst-class:: classref-method

:ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`\ ) |const| :ref:`🔗<class_Decal_method_get_texture>`

Повертає :ref:`Texture2D<class_Texture2D>`, пов'язаний з вказаною :ref:`DecalTexture<enum_Decal_DecalTexture>`. Це зручний спосіб, в більшості випадків ви повинні отримати доступ до текстури безпосередньо.

Наприклад, замість ``albedo_tex = $Decal.get_texture(Decal.TEXTURE_ALBEDO)``, використання ``albedo_tex = $Decal.texture_albedo``.

Один випадок, де це краще, ніж доступ до текстури безпосередньо, коли ви хочете скопіювати текстуру одного Декала до іншого. Наприклад:


.. tabs::

 .. code-tab:: gdscript

    for i in Decal. TEXTURE_MAX:
    $NewDecal.set_texture(i, $СтарийDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)

    GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
    Про нас



.. rst-class:: classref-item-separator

----

.. _class_Decal_method_set_texture:

.. rst-class:: classref-method

|void| **set_texture**\ (\ type\: :ref:`DecalTexture<enum_Decal_DecalTexture>`, texture\: :ref:`Texture2D<class_Texture2D>`\ ) :ref:`🔗<class_Decal_method_set_texture>`

Налаштовує :ref:`Texture2D<class_Texture2D>`, пов'язану з вказаною :ref:`DecalTexture<enum_Decal_DecalTexture>`. Це зручний спосіб, в більшості випадків ви повинні отримати доступ до текстури безпосередньо.

Наприклад, замість ``$ Декаль.set_texture(Decal.TEXTURE_ALBEDO, albedo_tex)``, використання ``$Decal.texture_albedo = albedo_tex``.

Один випадок, де це краще, ніж доступ до текстури безпосередньо, коли ви хочете скопіювати текстуру одного Декала до іншого. Наприклад:


.. tabs::

 .. code-tab:: gdscript

    for i in Deca. TEXTURE_MAX:
    $NewDecal.set_texture(i, $СтарийDecal.get_texture(i))

 .. code-tab:: csharp

    for (int i = 0; i < (int)Decal.DecalTexture.Max; i++)

    GetNode<Decal>("NewDecal").SetTexture(i, GetNode<Decal>("OldDecal").GetTexture(i));
    Про нас



.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
