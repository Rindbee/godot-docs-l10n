:github_url: hide

.. _class_VisibleOnScreenEnabler3D:

VisibleOnScreenEnabler3D
========================

**Наследует:** :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Область трехмерного пространства в форме коробки, которая, будучи видимой на экране, активирует целевой узел.

.. rst-class:: classref-introduction-group

Описание
----------------

**VisibleOnScreenEnabler3D** содержит область в форме коробки трехмерного пространства и целевой узел. Целевой узел будет автоматически включен (через свойство :ref:`Node.process_mode<class_Node_property_process_mode>`), когда любая часть этой области станет видимой на экране, и автоматически отключен в противном случае. Это можно использовать, например, для активации врагов только при приближении к ним игрока.

См. :ref:`VisibleOnScreenNotifier3D<class_VisibleOnScreenNotifier3D>`, если вы хотите получать уведомления только тогда, когда область видна на экране.

\ **Примечание:** **VisibleOnScreenEnabler3D** использует приблизительную эвристику, которая не учитывает стены и другие преграды, если только не используется отбраковка преград. Он также не будет работать, если :ref:`Node3D.visible<class_Node3D_property_visible>` не установлен в ``true``.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` | :ref:`enable_mode<class_VisibleOnScreenEnabler3D_property_enable_mode>`           | ``0``              |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`enable_node_path<class_VisibleOnScreenEnabler3D_property_enable_node_path>` | ``NodePath("..")`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisibleOnScreenEnabler3D_EnableMode:

.. rst-class:: classref-enumeration

enum **EnableMode**: :ref:`🔗<enum_VisibleOnScreenEnabler3D_EnableMode>`

.. _class_VisibleOnScreenEnabler3D_constant_ENABLE_MODE_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **ENABLE_MODE_INHERIT** = ``0``

Соответствует :ref:`Node.PROCESS_MODE_INHERIT<class_Node_constant_PROCESS_MODE_INHERIT>`.

.. _class_VisibleOnScreenEnabler3D_constant_ENABLE_MODE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **ENABLE_MODE_ALWAYS** = ``1``

Соответствует :ref:`Node.PROCESS_MODE_ALWAYS<class_Node_constant_PROCESS_MODE_ALWAYS>`.

.. _class_VisibleOnScreenEnabler3D_constant_ENABLE_MODE_WHEN_PAUSED:

.. rst-class:: classref-enumeration-constant

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **ENABLE_MODE_WHEN_PAUSED** = ``2``

Соответствует :ref:`Node.PROCESS_MODE_WHEN_PAUSED<class_Node_constant_PROCESS_MODE_WHEN_PAUSED>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisibleOnScreenEnabler3D_property_enable_mode:

.. rst-class:: classref-property

:ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **enable_mode** = ``0`` :ref:`🔗<class_VisibleOnScreenEnabler3D_property_enable_mode>`

.. rst-class:: classref-property-setget

- |void| **set_enable_mode**\ (\ value\: :ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>`\ )
- :ref:`EnableMode<enum_VisibleOnScreenEnabler3D_EnableMode>` **get_enable_mode**\ (\ )

Определяет, как включается целевой узел. Соответствует :ref:`ProcessMode<enum_Node_ProcessMode>`. Когда узел отключен, он всегда использует :ref:`Node.PROCESS_MODE_DISABLED<class_Node_constant_PROCESS_MODE_DISABLED>`.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenEnabler3D_property_enable_node_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **enable_node_path** = ``NodePath("..")`` :ref:`🔗<class_VisibleOnScreenEnabler3D_property_enable_node_path>`

.. rst-class:: classref-property-setget

- |void| **set_enable_node_path**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_enable_node_path**\ (\ )

Путь к целевому узлу относительно **VisibleOnScreenEnabler3D**. Целевой узел кэшируется; он назначается только при установке этого свойства (если **VisibleOnScreenEnabler3D** находится внутри дерева сцены) и каждый раз, когда **VisibleOnScreenEnabler3D** входит в дерево сцены. Если путь пустой, ни один узел не будет затронут. Если путь недействителен, генерируется ошибка.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
