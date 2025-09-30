:github_url: hide

.. _class_VisualShaderNodeGlobalExpression:

VisualShaderNodeGlobalExpression
================================

**Наследует:** :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>` **<** :ref:`VisualShaderNodeGroupBase<class_VisualShaderNodeGroupBase>` **<** :ref:`VisualShaderNodeResizableBase<class_VisualShaderNodeResizableBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Пользовательское выражение графа глобального визуального шейдера, написанное на языке шейдеров Godot.

.. rst-class:: classref-introduction-group

Описание
----------------

Пользовательское выражение Godot Shader Language, которое размещается поверх сгенерированного шейдера. Вы можете разместить различные определения функций внутри для последующего вызова в :ref:`VisualShaderNodeExpression<class_VisualShaderNodeExpression>`\ s (которые внедряются в основные функции шейдера). Вы также можете объявлять variationings, uniforms и глобальные константы.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
