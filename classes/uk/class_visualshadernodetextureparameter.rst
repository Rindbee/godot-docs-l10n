:github_url: hide

.. _class_VisualShaderNodeTextureParameter:

VisualShaderNodeTextureParameter
================================

**Успадковує:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`VisualShaderNodeCubemapParameter<class_VisualShaderNodeCubemapParameter>`, :ref:`VisualShaderNodeTexture2DArrayParameter<class_VisualShaderNodeTexture2DArrayParameter>`, :ref:`VisualShaderNodeTexture2DParameter<class_VisualShaderNodeTexture2DParameter>`, :ref:`VisualShaderNodeTexture3DParameter<class_VisualShaderNodeTexture3DParameter>`, :ref:`VisualShaderNodeTextureParameterTriplanar<class_VisualShaderNodeTextureParameterTriplanar>`

Виконує рівномірний фактурний вигляд в графі візуального відтінку.

.. rst-class:: classref-introduction-group

Опис
--------

Виконує роботу зовнішнього вигляду на фактурі, що надається як форма для шейдера.

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>`   | :ref:`color_default<class_VisualShaderNodeTextureParameter_property_color_default>`   | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` | :ref:`texture_filter<class_VisualShaderNodeTextureParameter_property_texture_filter>` | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` | :ref:`texture_repeat<class_VisualShaderNodeTextureParameter_property_texture_repeat>` | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` | :ref:`texture_source<class_VisualShaderNodeTextureParameter_property_texture_source>` | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>`     | :ref:`texture_type<class_VisualShaderNodeTextureParameter_property_texture_type>`     | ``0`` |
   +---------------------------------------------------------------------------+---------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_VisualShaderNodeTextureParameter_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureType>`

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_DATA** = ``0``

Немає натяків додається до однорідної декларації.

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_COLOR** = ``1``

Додавання ``source_color`` як підказка на рівномірну декларацію для належного sRGB до лінійного перетворення.

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_NORMAL_MAP** = ``2``

Додавання ``hint_normal`` як натяка на рівномірну декларацію, яка внутрішньо перетворює фактуру для належного використання як нормальну карту.

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_ANISOTROPY:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_ANISOTROPY** = ``3``

Додавання ``hint_anisotropy`` як натяка на рівномірну декларацію для використання для карти потоку.

.. _class_VisualShaderNodeTextureParameter_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **TYPE_MAX** = ``4``

Представляємо розмір :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_ColorDefault:

.. rst-class:: classref-enumeration

enum **ColorDefault**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_ColorDefault>`

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_WHITE:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_WHITE** = ``0``

За замовчуванням до повноти білого кольору.

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_BLACK:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_BLACK** = ``1``

За замовчуванням повністю непрозорий чорний колір.

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_TRANSPARENT** = ``2``

За замовчуванням для повного прозорого чорного кольору.

.. _class_VisualShaderNodeTextureParameter_constant_COLOR_DEFAULT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **COLOR_DEFAULT_MAX** = ``3``

Представляє розмір :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureFilter:

.. rst-class:: classref-enumeration

enum **TextureFilter**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureFilter>`

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_DEFAULT** = ``0``

Зразок текстури за допомогою фільтра, визначеного вершиною, цей відтінок прикріплюється до.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST** = ``1``

Фільтр текстур читає лише з найближчого пікселя. Це робить текстуру піксельною зблизька та зернистою на відстані (через те, що MIP-карти не вибираються).

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR** = ``2``

Фільтр текстури змішується між найближчими 4 пікселями. Це робить текстуру гладкою зблизька та зернистою на відстані (через те, що MIP-карти не вибираються).

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST_MIPMAP** = ``3``

Фільтр текстур зчитує з найближчого пікселя та змішує між двома найближчими картами mipmap (або використовує найближчу карту mipmap, якщо :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` має значення ``true``). Це робить текстуру піксельною зблизька та гладкою на відстані.

Використовуйте це для непіксельних текстур, які можна переглядати в низькому масштабі (наприклад, через масштабування :ref:`Camera2D<class_Camera2D>` або масштабування спрайтів), оскільки міп-мапи важливі для згладжування пікселів, які менші за пікселі на екрані.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR_MIPMAP** = ``4``

Фільтр текстур змішує найближчі 4 пікселі з найближчими 2 картами mipmap (або використовує найближчу карту mipmap, якщо :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` має значення ``true``). Це робить текстуру гладкою зблизька та гладкою на відстані.

Використовуйте це для непіксельних текстур, які можна переглядати в низькому масштабі (наприклад, через масштабування :ref:`Camera2D<class_Camera2D>` або масштабування спрайтів), оскільки міп-мапи важливі для згладжування пікселів, які менші за пікселі на екрані.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIPMAP_ANISOTROPIC:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_NEAREST_MIPMAP_ANISOTROPIC** = ``5``

Текстурний фільтр зчитує дані з найближчого пікселя та змішує їх між двома міп-картами (або використовує найближчу міп-карту, якщо :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` має значення ``true``) на основі кута між поверхнею та полем зору камери. Це робить текстуру пікселізованою зблизька та гладкою здалеку. Анізотропна фільтрація покращує якість текстури на поверхнях, які майже розташовані на одній лінії з камерою, але трохи повільніша. Рівень анізотропної фільтрації можна змінити, налаштувавши :ref:`ProjectSettings.rendering/textures/default_filters/anisotropic_filtering_level<class_ProjectSettings_property_rendering/textures/default_filters/anisotropic_filtering_level>`.

\ **Примітка:** Цей текстурний фільтр рідко корисний у 2D-проектах. У цьому випадку зазвичай доречніше значення :ref:`FILTER_NEAREST_MIMPAP<class_VisualShaderNodeTextureParameter_constant_FILTER_NEAREST_MIMPAP>`.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIPMAP_ANISOTROPIC:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_LINEAR_MIPMAP_ANISOTROPIC** = ``6``

Текстурний фільтр змішує найближчі 4 пікселі та змішує 2 міп-карти (або використовує найближчу міп-карту, якщо :ref:`ProjectSettings.rendering/textures/default_filters/use_nearest_mipmap_filter<class_ProjectSettings_property_rendering/textures/default_filters/use_nearest_mipmap_filter>` має значення ``true``) на основі кута між поверхнею та полем зору камери. Це робить текстуру гладкою зблизька та гладкою здалеку. Анізотропна фільтрація покращує якість текстури на поверхнях, які майже розташовані на одній лінії з камерою, але трохи повільніша. Рівень анізотропної фільтрації можна змінити, налаштувавши :ref:`ProjectSettings.rendering/textures/default_filters/anisotropic_filtering_level<class_ProjectSettings_property_rendering/textures/default_filters/anisotropic_filtering_level>`.

\ **Примітка:** Цей текстурний фільтр рідко корисний у 2D-проектах. У цьому випадку зазвичай доречніше значення :ref:`FILTER_LINEAR_MIMPAP<class_VisualShaderNodeTextureParameter_constant_FILTER_LINEAR_MIMPAP>`.

.. _class_VisualShaderNodeTextureParameter_constant_FILTER_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **FILTER_MAX** = ``7``

Представляє розмір переліку :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureRepeat:

.. rst-class:: classref-enumeration

enum **TextureRepeat**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureRepeat>`

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_DEFAULT:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_DEFAULT** = ``0``

Зразок текстури за допомогою повторного режиму, визначеного вершиною, цей відтінок прикріплюється до.

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_ENABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_ENABLED** = ``1``

Текстура повторюватиметься нормально.

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_DISABLED** = ``2``

Текстура не повториться.

.. _class_VisualShaderNodeTextureParameter_constant_REPEAT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **REPEAT_MAX** = ``3``

Представляє розмір переліку :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTextureParameter_TextureSource:

.. rst-class:: classref-enumeration

enum **TextureSource**: :ref:`🔗<enum_VisualShaderNodeTextureParameter_TextureSource>`

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_NONE** = ``0``

Текстове джерело не вказане в тіні.

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_SCREEN** = ``1``

Текстове джерело є текстурою екрану, яка захоплює всі об'єкти непрозорого зображення, намальовані цією рамою.

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_DEPTH** = ``2``

Текстове джерело є глибиною текстури з глибини проходу.

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_NORMAL_ROUGHNESS:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_NORMAL_ROUGHNESS** = ``3``

Текстове джерело є нормальним буфером від глибини.

.. _class_VisualShaderNodeTextureParameter_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **SOURCE_MAX** = ``4``

Представляємо розмір :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_VisualShaderNodeTextureParameter_property_color_default:

.. rst-class:: classref-property

:ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **color_default** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_color_default>`

.. rst-class:: classref-property-setget

- |void| **set_color_default**\ (\ value\: :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>`\ )
- :ref:`ColorDefault<enum_VisualShaderNodeTextureParameter_ColorDefault>` **get_color_default**\ (\ )

Встановлює колір за замовчуванням, якщо жодна текстура не призначена для однорідності.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **texture_filter** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>`\ )
- :ref:`TextureFilter<enum_VisualShaderNodeTextureParameter_TextureFilter>` **get_texture_filter**\ (\ )

Встановлює режим фільтрації текстур.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_repeat:

.. rst-class:: classref-property

:ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **texture_repeat** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_repeat>`

.. rst-class:: classref-property-setget

- |void| **set_texture_repeat**\ (\ value\: :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>`\ )
- :ref:`TextureRepeat<enum_VisualShaderNodeTextureParameter_TextureRepeat>` **get_texture_repeat**\ (\ )

Встановлює режим повторення текстури.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_source:

.. rst-class:: classref-property

:ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **texture_source** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_source>`

.. rst-class:: classref-property-setget

- |void| **set_texture_source**\ (\ value\: :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>`\ )
- :ref:`TextureSource<enum_VisualShaderNodeTextureParameter_TextureSource>` **get_texture_source**\ (\ )

Встановлює режим джерела текстури. Використовується для зчитування з екрана, глибини або текстури normal_roughness.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTextureParameter_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeTextureParameter_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeTextureParameter_TextureType>` **get_texture_type**\ (\ )

Визначає тип даних, що надаються вихідною текстурою.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
