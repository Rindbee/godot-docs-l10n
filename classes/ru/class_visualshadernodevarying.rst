:github_url: hide

.. _class_VisualShaderNodeVarying:

VisualShaderNodeVarying
=======================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VisualShaderNodeVaryingGetter<class_VisualShaderNodeVaryingGetter>`, :ref:`VisualShaderNodeVaryingSetter<class_VisualShaderNodeVaryingSetter>`

Узел визуального шейдера, представляющий «переменное» значение шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Переменные значения — это переменные шейдера, которые могут передаваться между функциями шейдера, например, из вершинного шейдера во фрагментный шейдер.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+
   | :ref:`String<class_String>`                       | :ref:`varying_name<class_VisualShaderNodeVarying_property_varying_name>` | ``"[None]"`` |
   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+
   | :ref:`VaryingType<enum_VisualShader_VaryingType>` | :ref:`varying_type<class_VisualShaderNodeVarying_property_varying_type>` | ``0``        |
   +---------------------------------------------------+--------------------------------------------------------------------------+--------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeVarying_property_varying_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **varying_name** = ``"[None]"`` :ref:`🔗<class_VisualShaderNodeVarying_property_varying_name>`

.. rst-class:: classref-property-setget

- |void| **set_varying_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_varying_name**\ (\ )

Имя переменной. Должно быть уникальным.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeVarying_property_varying_type:

.. rst-class:: classref-property

:ref:`VaryingType<enum_VisualShader_VaryingType>` **varying_type** = ``0`` :ref:`🔗<class_VisualShaderNodeVarying_property_varying_type>`

.. rst-class:: classref-property-setget

- |void| **set_varying_type**\ (\ value\: :ref:`VaryingType<enum_VisualShader_VaryingType>`\ )
- :ref:`VaryingType<enum_VisualShader_VaryingType>` **get_varying_type**\ (\ )

Тип переменной. Определяет, где можно получить доступ к переменной.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
