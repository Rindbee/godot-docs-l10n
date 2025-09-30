:github_url: hide

.. _class_Material:

Material
========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`CanvasItemMaterial<class_CanvasItemMaterial>`, :ref:`FogMaterial<class_FogMaterial>`, :ref:`PanoramaSkyMaterial<class_PanoramaSkyMaterial>`, :ref:`ParticleProcessMaterial<class_ParticleProcessMaterial>`, :ref:`PhysicalSkyMaterial<class_PhysicalSkyMaterial>`, :ref:`PlaceholderMaterial<class_PlaceholderMaterial>`, :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, :ref:`ShaderMaterial<class_ShaderMaterial>`

Виртуальный базовый класс для применения визуальных свойств к объекту, таких как цвет и шероховатость.

.. rst-class:: classref-introduction-group

Описание
----------------

**Material** — это базовый ресурс, используемый для раскрашивания и затенения геометрии. Все материалы наследуются от него, и почти все производные узлы :ref:`VisualInstance3D<class_VisualInstance3D>` содержат **Material**. Несколько флагов и параметров являются общими для всех типов материалов и настраиваются здесь.

Важно, что вы можете наследовать от **Material**, чтобы создать свой собственный тип материала в скрипте или в GDExtension.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация 3D-испытателей материалов <https://godotengine.org/asset-library/asset/2742>`__

- `Демонстрация шутера от третьего лица (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------+
   | :ref:`Material<class_Material>` | :ref:`next_pass<class_Material_property_next_pass>`             |
   +---------------------------------+-----------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`render_priority<class_Material_property_render_priority>` |
   +---------------------------------+-----------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_can_do_next_pass<class_Material_private_method__can_do_next_pass>`\ (\ ) |virtual| |const|               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`_can_use_render_priority<class_Material_private_method__can_use_render_priority>`\ (\ ) |virtual| |const| |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Mode<enum_Shader_Mode>`   | :ref:`_get_shader_mode<class_Material_private_method__get_shader_mode>`\ (\ ) |virtual| |required| |const|      |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`           | :ref:`_get_shader_rid<class_Material_private_method__get_shader_rid>`\ (\ ) |virtual| |required| |const|        |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>` | :ref:`create_placeholder<class_Material_method_create_placeholder>`\ (\ ) |const|                               |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`inspect_native_shader_code<class_Material_method_inspect_native_shader_code>`\ (\ )                       |
   +---------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_Material_constant_RENDER_PRIORITY_MAX:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MAX** = ``127`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MAX>`

Максимальное значение параметра :ref:`render_priority<class_Material_property_render_priority>`.

.. _class_Material_constant_RENDER_PRIORITY_MIN:

.. rst-class:: classref-constant

**RENDER_PRIORITY_MIN** = ``-128`` :ref:`🔗<class_Material_constant_RENDER_PRIORITY_MIN>`

Минимальное значение параметра :ref:`render_priority<class_Material_property_render_priority>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Material_property_next_pass:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **next_pass** :ref:`🔗<class_Material_property_next_pass>`

.. rst-class:: classref-property-setget

- |void| **set_next_pass**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_next_pass**\ (\ )

Устанавливает **Material**, который будет использоваться для следующего прохода. Это снова визуализирует объект с использованием другого материала.

\ **Примечание:** Материалы :ref:`next_pass<class_Material_property_next_pass>` не обязательно отрисовываются сразу после исходного **Material**. Порядок отрисовки определяется свойствами материала, :ref:`render_priority<class_Material_property_render_priority>` и расстоянием до камеры.

\ **Примечание:** Это применимо только к :ref:`StandardMaterial3D<class_StandardMaterial3D>` и :ref:`ShaderMaterial<class_ShaderMaterial>` с типом «Spatial».

.. rst-class:: classref-item-separator

----

.. _class_Material_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** :ref:`🔗<class_Material_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Устанавливает приоритет рендеринга для объектов в 3D-сценах. Объекты с более высоким приоритетом будут отсортированы перед объектами с более низким приоритетом. Другими словами, все объекты с :ref:`render_priority<class_Material_property_render_priority>` ``1`` будут отрисовываться поверх всех объектов с :ref:`render_priority<class_Material_property_render_priority>` ``0``.

\ **Примечание:** Это применимо только к :ref:`StandardMaterial3D<class_StandardMaterial3D>` и :ref:`ShaderMaterial<class_ShaderMaterial>` с типом "Spatial".

\ **Примечание:** Это не повлияет на то, как прозрачные объекты сортируются относительно непрозрачных объектов или как динамические сетки будут сортироваться относительно других непрозрачных сеток. Это связано с тем, что все прозрачные объекты отрисовываются после всех непрозрачных объектов, а все динамические непрозрачные сетки отрисовываются до других непрозрачных сеток.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Material_private_method__can_do_next_pass:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_do_next_pass**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_do_next_pass>`

Выводится только с целью переопределения. Эту функцию нельзя вызвать напрямую. Используется внутренне для определения, следует ли показывать :ref:`next_pass<class_Material_property_next_pass>` в редакторе или нет.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__can_use_render_priority:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_can_use_render_priority**\ (\ ) |virtual| |const| :ref:`🔗<class_Material_private_method__can_use_render_priority>`

Выводится только с целью переопределения. Эту функцию нельзя вызвать напрямую. Используется внутренне для определения того, следует ли показывать :ref:`render_priority<class_Material_property_render_priority>` в редакторе или нет.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_mode:

.. rst-class:: classref-method

:ref:`Mode<enum_Shader_Mode>` **_get_shader_mode**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_mode>`

Только для целей переопределения. Эту функцию нельзя вызвать напрямую. Используется внутри различными инструментами редактора.

.. rst-class:: classref-item-separator

----

.. _class_Material_private_method__get_shader_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_shader_rid**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Material_private_method__get_shader_rid>`

Открывается только для переопределения. Эту функцию нельзя вызвать напрямую. Используется внутри различными инструментами редактора. Используется для доступа к RID :ref:`Shader<class_Shader>` **Material**.

.. rst-class:: classref-item-separator

----

.. _class_Material_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Material_method_create_placeholder>`

Создает версию-заполнитель этого ресурса (:ref:`PlaceholderMaterial<class_PlaceholderMaterial>`).

.. rst-class:: classref-item-separator

----

.. _class_Material_method_inspect_native_shader_code:

.. rst-class:: classref-method

|void| **inspect_native_shader_code**\ (\ ) :ref:`🔗<class_Material_method_inspect_native_shader_code>`

Доступно только при запуске в редакторе. Открывает всплывающее окно, визуализирующее сгенерированный код шейдера, включая все варианты и внутренний код шейдера. См. также :ref:`Shader.inspect_native_shader_code()<class_Shader_method_inspect_native_shader_code>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
