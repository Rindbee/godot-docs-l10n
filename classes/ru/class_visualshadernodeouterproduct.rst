:github_url: hide

.. _class_VisualShaderNodeOuterProduct:

VisualShaderNodeOuterProduct
============================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вычисляет внешнее произведение двух векторов в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

``OuterProduct`` обрабатывает первый параметр ``c`` как вектор-столбец (матрицу с одним столбцом), а второй параметр ``r`` как вектор-строку (матрицу с одной строкой) и выполняет линейное алгебраическое умножение матриц ``c * r``, в результате чего получается матрица, количество строк которой равно количеству компонентов в ``c``, а количество столбцов равно количеству компонентов в ``r``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
