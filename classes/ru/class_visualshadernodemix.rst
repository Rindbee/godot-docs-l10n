:github_url: hide

.. _class_VisualShaderNodeMix:

VisualShaderNodeMix
===================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Линейно интерполирует между двумя значениями в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Переводится как ``mix(a, b, weight)`` на языке шейдеров.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeMix_OpType>` | :ref:`op_type<class_VisualShaderNodeMix_property_op_type>` | ``0`` |
   +------------------------------------------------+------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeMix_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeMix_OpType>`

.. _class_VisualShaderNodeMix_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_SCALAR** = ``0``

Скаляр с плавающей запятой.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

Тип 2D-вектора.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_2D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_2D_SCALAR** = ``2``

Порты ``a`` и ``b`` используют тип 2D-вектора. Порт ``weight`` использует тип скаляра.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_3D** = ``3``

Тип 3D-вектора.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_3D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_3D_SCALAR** = ``4``

Порты ``a`` и ``b`` используют тип 3D-вектора. Порт ``weight`` использует тип скаляра.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Тип 4D-вектора.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_4D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_4D_SCALAR** = ``6``

Порты ``a`` и ``b`` используют векторный тип 4D. Порт ``weight`` использует скалярный тип.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_MAX** = ``7``

Представляет размер перечисления :ref:`OpType<enum_VisualShaderNodeMix_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeMix_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeMix_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeMix_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeMix_OpType>` **get_op_type**\ (\ )

Тип операндов и возвращаемого значения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
