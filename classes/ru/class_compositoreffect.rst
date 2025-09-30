:github_url: hide

.. _class_CompositorEffect:

CompositorEffect
================

**Экспериментальное:** The implementation may change as more of the rendering internals are exposed over time.

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Этот ресурс позволяет создавать индивидуальный эффект рендеринга.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот ресурс определяет пользовательский эффект рендеринга, который может быть применен к :ref:`Viewport<class_Viewport>` через :ref:`Environment<class_Environment>` видовых экранов. Вы можете реализовать обратный вызов, который вызывается во время рендеринга на заданном этапе конвейера рендеринга и позволяет вставлять дополнительные проходы. Обратите внимание, что этот обратный вызов происходит в потоке рендеринга. CompositorEffect — это абстрактный базовый класс, который должен быть расширен для реализации определенной логики рендеринга.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Композитор <../tutorials/rendering/compositor>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`access_resolved_color<class_CompositorEffect_property_access_resolved_color>`     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`access_resolved_depth<class_CompositorEffect_property_access_resolved_depth>`     |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` | :ref:`effect_callback_type<class_CompositorEffect_property_effect_callback_type>`       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`enabled<class_CompositorEffect_property_enabled>`                                 |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`needs_motion_vectors<class_CompositorEffect_property_needs_motion_vectors>`       |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`needs_normal_roughness<class_CompositorEffect_property_needs_normal_roughness>`   |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`needs_separate_specular<class_CompositorEffect_property_needs_separate_specular>` |
   +---------------------------------------------------------------------+-----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_render_callback<class_CompositorEffect_private_method__render_callback>`\ (\ effect_callback_type\: :ref:`int<class_int>`, render_data\: :ref:`RenderData<class_RenderData>`\ ) |virtual| |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_CompositorEffect_EffectCallbackType:

.. rst-class:: classref-enumeration

enum **EffectCallbackType**: :ref:`🔗<enum_CompositorEffect_EffectCallbackType>`

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_PRE_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_PRE_OPAQUE** = ``0``

Обратный вызов выполняется перед нашим проходом рендеринга непрозрачности, но после предварительного прохода глубины (если применимо).

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_OPAQUE:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_OPAQUE** = ``1``

Обратный вызов выполняется после прохода рендеринга непрозрачности, но до рендеринга неба.

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_SKY:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_SKY** = ``2``

Обратный вызов вызывается после того, как наше небо отрисовано, но до создания наших обратных буферов (и, если они включены, до подповерхностного рассеивания и/или отражений в пространстве экрана).

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT** = ``3``

Обратный вызов выполняется до прохода прозрачного рендеринга, но после того, как небо отрисовано и мы создали обратные буферы.

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_POST_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_POST_TRANSPARENT** = ``4``

Обратный вызов выполняется после прохода прозрачного рендеринга, но до любых встроенных эффектов постобработки и вывода на нашу цель рендеринга.

.. _class_CompositorEffect_constant_EFFECT_CALLBACK_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **EFFECT_CALLBACK_TYPE_MAX** = ``5``

Представляет размер перечисления :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CompositorEffect_property_access_resolved_color:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **access_resolved_color** :ref:`🔗<class_CompositorEffect_property_access_resolved_color>`

.. rst-class:: classref-property-setget

- |void| **set_access_resolved_color**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_access_resolved_color**\ (\ )

Если ``true`` и MSAA включен, это вызовет разрешение буфера цвета перед запуском эффекта.

\ **Примечание:** В :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>` для доступа к разрешенному буферу используйте:

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var color_buffer = render_scene_buffers.get_texture("render_buffers", "color")

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_access_resolved_depth:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **access_resolved_depth** :ref:`🔗<class_CompositorEffect_property_access_resolved_depth>`

.. rst-class:: classref-property-setget

- |void| **set_access_resolved_depth**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_access_resolved_depth**\ (\ )

Если ``true`` и MSAA включен, это запустит разрешение буфера глубины перед запуском эффекта.

\ **Примечание:** В :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>` для доступа к разрешенному буферу используйте:

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var depth_buffer = render_scene_buffers.get_texture("render_buffers", "depth")

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_effect_callback_type:

.. rst-class:: classref-property

:ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **effect_callback_type** :ref:`🔗<class_CompositorEffect_property_effect_callback_type>`

.. rst-class:: classref-property-setget

- |void| **set_effect_callback_type**\ (\ value\: :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>`\ )
- :ref:`EffectCallbackType<enum_CompositorEffect_EffectCallbackType>` **get_effect_callback_type**\ (\ )

Тип реализуемого эффекта определяет, на каком этапе рендеринга будет вызван обратный вызов.

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** :ref:`🔗<class_CompositorEffect_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enabled**\ (\ )

Если ``true``, этот эффект рендеринга применяется к любой области просмотра, к которой он добавлен.

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_needs_motion_vectors:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **needs_motion_vectors** :ref:`🔗<class_CompositorEffect_property_needs_motion_vectors>`

.. rst-class:: classref-property-setget

- |void| **set_needs_motion_vectors**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_needs_motion_vectors**\ (\ )

Если ``true``, это запускает вычисление векторов движения во время непрозрачного состояния рендеринга.

\ **Примечание:** В :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>` для доступа к буферу векторов движения используйте:

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var motion_buffer = render_scene_buffers.get_velocity_texture()

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_needs_normal_roughness:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **needs_normal_roughness** :ref:`🔗<class_CompositorEffect_property_needs_normal_roughness>`

.. rst-class:: classref-property-setget

- |void| **set_needs_normal_roughness**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_needs_normal_roughness**\ (\ )

Если ``true``, это запускает вывод данных нормали и шероховатости во время нашего предварительного прохода глубины, применимо только для рендерера Forward+.

\ **Примечание:** В :ref:`_render_callback()<class_CompositorEffect_private_method__render_callback>` для доступа к буферу шероховатости используйте:

::

    var render_scene_buffers = render_data.get_render_scene_buffers()
    var roughness_buffer = render_scene_buffers.get_texture("forward_clustered", "normal_roughness")

Необработанный буфер нормалей и шероховатости хранится в оптимизированном формате, отличном от того, который доступен в пространственных шейдерах. При сэмплировании буфера необходимо применить функцию преобразования. Используйте эту функцию, скопированную от `сюда <https://github.com/godotengine/godot/blob/da5f39889f155658cef7f7ec3cc1abb94e17d815/servers/rendering/renderer_rd/shaders/forward_clustered/scene_forward_clustered_inc.glsl#L334-L341>`__:

::

    vec4 normal_roughness_compatibility(vec4 p_normal_roughness) {
        float roughness = p_normal_roughness.w;
        if (roughness > 0.5) {
            roughness = 1.0 - roughness;
        }
        roughness /= (127.0 / 255.0);
        return vec4(normalize(p_normal_roughness.xyz * 2.0 - 1.0) * 0.5 + 0.5, roughness);
    }

.. rst-class:: classref-item-separator

----

.. _class_CompositorEffect_property_needs_separate_specular:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **needs_separate_specular** :ref:`🔗<class_CompositorEffect_property_needs_separate_specular>`

.. rst-class:: classref-property-setget

- |void| **set_needs_separate_specular**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_needs_separate_specular**\ (\ )

Если ``true``, это запускает рендеринг зеркальных данных в отдельный буфер и их объединение после применения эффектов, применимо только для рендерера Forward+.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_CompositorEffect_private_method__render_callback:

.. rst-class:: classref-method

|void| **_render_callback**\ (\ effect_callback_type\: :ref:`int<class_int>`, render_data\: :ref:`RenderData<class_RenderData>`\ ) |virtual| :ref:`🔗<class_CompositorEffect_private_method__render_callback>`

Реализуйте эту функцию с помощью своего пользовательского кода рендеринга. ``effect_callback_type`` всегда должен соответствовать типу обратного вызова эффекта, указанному вами в :ref:`effect_callback_type<class_CompositorEffect_property_effect_callback_type>`. ``render_data`` предоставляет доступ к состоянию рендеринга, он действителен только во время рендеринга и не должен сохраняться.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
