:github_url: hide

.. _class_VisualShaderNodeParticleEmitter:

VisualShaderNodeParticleEmitter
===============================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VisualShaderNodeParticleBoxEmitter<class_VisualShaderNodeParticleBoxEmitter>`, :ref:`VisualShaderNodeParticleMeshEmitter<class_VisualShaderNodeParticleMeshEmitter>`, :ref:`VisualShaderNodeParticleRingEmitter<class_VisualShaderNodeParticleRingEmitter>`, :ref:`VisualShaderNodeParticleSphereEmitter<class_VisualShaderNodeParticleSphereEmitter>`

Базовый класс для излучателей частиц.

.. rst-class:: classref-introduction-group

Описание
----------------

Узлы-излучатели частиц могут использоваться на этапе "старта" шейдеров частиц, и они определяют начальную позицию частиц. Подключите их к выходному порту Position.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`mode_2d<class_VisualShaderNodeParticleEmitter_property_mode_2d>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeParticleEmitter_property_mode_2d:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **mode_2d** = ``false`` :ref:`🔗<class_VisualShaderNodeParticleEmitter_property_mode_2d>`

.. rst-class:: classref-property-setget

- |void| **set_mode_2d**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_mode_2d**\ (\ )

Если ``true``, результат этого эмиттера проецируется в 2D-пространство. По умолчанию это ``false`` и предназначено для использования в 3D-пространстве.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
