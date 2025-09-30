:github_url: hide

.. _class_AnimationNodeSync:

AnimationNodeSync
=================

**Наследует:** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`, :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`, :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>`, :ref:`AnimationNodeBlend3<class_AnimationNodeBlend3>`, :ref:`AnimationNodeOneShot<class_AnimationNodeOneShot>`, :ref:`AnimationNodeSub2<class_AnimationNodeSub2>`, :ref:`AnimationNodeTransition<class_AnimationNodeTransition>`

Базовый класс для :ref:`AnimationNode<class_AnimationNode>` с несколькими входными портами, которые необходимо синхронизировать.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел анимации, используемый для объединения, смешивания или комбинирования двух или более анимаций, сохраняя их синхронизированными в :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование дерева анимации <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`sync<class_AnimationNodeSync_property_sync>` | ``false`` |
   +-------------------------+----------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AnimationNodeSync_property_sync:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync** = ``false`` :ref:`🔗<class_AnimationNodeSync_property_sync>`

.. rst-class:: classref-property-setget

- |void| **set_use_sync**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_sync**\ (\ )

Если ``false``, кадр смешанной анимации останавливается, когда значение смешивания равно ``0``. 

Если ``true``, смешанная анимация принудительно переходит на следующий кадр.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
