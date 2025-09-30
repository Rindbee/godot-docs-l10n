:github_url: hide

.. _class_AnimationNodeSub2:

AnimationNodeSub2
=================

**Наследует:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Смешивает две анимации методом вычитания внутри :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Ресурс для добавления в :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Смешивает две анимации вычитающим образом на основе значения количества.

Этот узел анимации обычно используется для предварительного расчета, чтобы отменить любые дополнительные позы из анимации для источника анимации «add» в :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` или :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`.

В общем случае значение смешивания должно находиться в диапазоне ``[0.0, 1.0]``, но значения за пределами этого диапазона могут использоваться для усиленных или инвертированных анимаций.

\ **Примечание:** Это вычисление отличается от использования отрицательного значения в :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`, поскольку матрицы преобразования не удовлетворяют коммутативному закону. **AnimationNodeSub2** умножает матрицу преобразования инвертированной анимации с левой стороны, тогда как отрицательное :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` умножает ее с правой стороны.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Дерево анимации <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
