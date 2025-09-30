:github_url: hide

.. _class_GLTFLight:

GLTFLight
=========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Представляет собой свет glTF.

.. rst-class:: classref-introduction-group

Описание
----------------

Представляет собой источник света, определенный расширением ``KHR_lights_punctual`` glTF.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Загрузка и сохранение файла времени выполнения <../tutorials/io/runtime_file_loading_and_saving>`

- `Спецификация расширения KHR_lights_punctual glTF <https://github.com/KhronosGroup/glTF/blob/main/extensions/2.0/Khronos/KHR_lights_punctual>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`   | :ref:`color<class_GLTFLight_property_color>`                       | ``Color(1, 1, 1, 1)`` |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`inner_cone_angle<class_GLTFLight_property_inner_cone_angle>` | ``0.0``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`intensity<class_GLTFLight_property_intensity>`               | ``1.0``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`String<class_String>` | :ref:`light_type<class_GLTFLight_property_light_type>`             | ``""``                |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`outer_cone_angle<class_GLTFLight_property_outer_cone_angle>` | ``0.7853982``         |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`   | :ref:`range<class_GLTFLight_property_range>`                       | ``inf``               |
   +-----------------------------+--------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFLight<class_GLTFLight>`   | :ref:`from_dictionary<class_GLTFLight_method_from_dictionary>`\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static|                                                     |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`GLTFLight<class_GLTFLight>`   | :ref:`from_node<class_GLTFLight_method_from_node>`\ (\ light_node\: :ref:`Light3D<class_Light3D>`\ ) |static|                                                                       |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`       | :ref:`get_additional_data<class_GLTFLight_method_get_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`\ )                                                  |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_additional_data<class_GLTFLight_method_set_additional_data>`\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`to_dictionary<class_GLTFLight_method_to_dictionary>`\ (\ ) |const|                                                                                                            |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Light3D<class_Light3D>`       | :ref:`to_node<class_GLTFLight_method_to_node>`\ (\ ) |const|                                                                                                                        |
   +-------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GLTFLight_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_GLTFLight_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

:ref:`Color<class_Color>` света в линейном пространстве. По умолчанию белый. Черный цвет приводит к тому, что свет не оказывает никакого эффекта.

Это значение линейно для соответствия glTF, но будет преобразовано в нелинейное sRGB при создании узла Godot :ref:`Light3D<class_Light3D>` при импорте или преобразовано в линейное при экспорте Godot :ref:`Light3D<class_Light3D>` в glTF.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_inner_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **inner_cone_angle** = ``0.0`` :ref:`🔗<class_GLTFLight_property_inner_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_inner_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_inner_cone_angle**\ (\ )

Внутренний угол конуса в прожекторе. Должен быть меньше или равен внешнему углу конуса.

В пределах этого угла свет имеет полную яркость. Между внутренним и внешним углами конуса происходит переход от полной яркости к нулевой яркости. При создании Godot :ref:`SpotLight3D<class_SpotLight3D>` соотношение между внутренним и внешним углами конуса используется для расчета затухания света.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **intensity** = ``1.0`` :ref:`🔗<class_GLTFLight_property_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_intensity**\ (\ )

Интенсивность света. Выражается в канделах (люменах на стерадиан) для точечных и прожекторных источников света и в люксах (люменах на м²) для направленных источников света. При создании света Godot это значение преобразуется в безразмерный множитель.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_light_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **light_type** = ``""`` :ref:`🔗<class_GLTFLight_property_light_type>`

.. rst-class:: classref-property-setget

- |void| **set_light_type**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_light_type**\ (\ )

Тип света. Значения, принимаемые Godot, — «point», «spot» и «directional», что соответствует :ref:`OmniLight3D<class_OmniLight3D>`, :ref:`SpotLight3D<class_SpotLight3D>` и :ref:`DirectionalLight3D<class_DirectionalLight3D>` Godot соответственно.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_outer_cone_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **outer_cone_angle** = ``0.7853982`` :ref:`🔗<class_GLTFLight_property_outer_cone_angle>`

.. rst-class:: classref-property-setget

- |void| **set_outer_cone_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_outer_cone_angle**\ (\ )

Внешний угол конуса в прожекторе. Должен быть больше или равен внутреннему углу.

Под этим углом свет падает до нулевой яркости. Между внутренним и внешним углами конуса происходит переход от полной яркости к нулевой яркости. Если этот угол равен половине оборота, то прожектор излучает во всех направлениях. При создании Godot :ref:`SpotLight3D<class_SpotLight3D>` внешний угол конуса используется как угол прожектора.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_property_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **range** = ``inf`` :ref:`🔗<class_GLTFLight_property_range>`

.. rst-class:: classref-property-setget

- |void| **set_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_range**\ (\ )

Диапазон света, за пределами которого свет не оказывает никакого эффекта. Светильники glTF без определенного диапазона ведут себя как физические светильники (имеющие бесконечный диапазон). При создании света Godot диапазон ограничивается до ``4096.0``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GLTFLight_method_from_dictionary:

.. rst-class:: classref-method

:ref:`GLTFLight<class_GLTFLight>` **from_dictionary**\ (\ dictionary\: :ref:`Dictionary<class_Dictionary>`\ ) |static| :ref:`🔗<class_GLTFLight_method_from_dictionary>`

Создает новый экземпляр GLTFLight путем анализа указанного :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_from_node:

.. rst-class:: classref-method

:ref:`GLTFLight<class_GLTFLight>` **from_node**\ (\ light_node\: :ref:`Light3D<class_Light3D>`\ ) |static| :ref:`🔗<class_GLTFLight_method_from_node>`

Создайте новый экземпляр GLTFLight из заданного узла Godot :ref:`Light3D<class_Light3D>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_get_additional_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`\ ) :ref:`🔗<class_GLTFLight_method_get_additional_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_set_additional_data:

.. rst-class:: classref-method

|void| **set_additional_data**\ (\ extension_name\: :ref:`StringName<class_StringName>`, additional_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GLTFLight_method_set_additional_data>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_to_dictionary:

.. rst-class:: classref-method

:ref:`Dictionary<class_Dictionary>` **to_dictionary**\ (\ ) |const| :ref:`🔗<class_GLTFLight_method_to_dictionary>`

Сериализует этот экземпляр GLTFLight в :ref:`Dictionary<class_Dictionary>`.

.. rst-class:: classref-item-separator

----

.. _class_GLTFLight_method_to_node:

.. rst-class:: classref-method

:ref:`Light3D<class_Light3D>` **to_node**\ (\ ) |const| :ref:`🔗<class_GLTFLight_method_to_node>`

Преобразует этот экземпляр GLTFLight в узел Godot :ref:`Light3D<class_Light3D>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
