:github_url: hide

.. _class_AnimationRootNode:

AnimationRootNode
=================

**Наследует:** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AnimationNodeAnimation<class_AnimationNodeAnimation>`, :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`

Базовый класс для :ref:`AnimationNode<class_AnimationNode>`, которые содержат одну или несколько составных анимаций. Обычно используется для :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**AnimationRootNode** — это базовый класс для :ref:`AnimationNode<class_AnimationNode>`, которые содержат полную анимацию. Полная анимация относится к выходу :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` или выходу другого **AnimationRootNode**. Используется для :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` или в других **AnimationRootNode**.

Примерами встроенных корневых узлов являются :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` (позволяет смешивать узлы между собой с использованием различных режимов), :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` (позволяет настраивать смешивание и переходы между узлами с использованием шаблона конечного автомата), :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>` (позволяет линейное смешивание между **тремя** :ref:`AnimationNode<class_AnimationNode>`-ми), :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>` (позволяет линейное смешивание только между **двумя** :ref:`AnimationNode<class_AnimationNode>`-ми).

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование дерева анимации <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
