:github_url: hide

.. _class_VisibleOnScreenNotifier3D:

VisibleOnScreenNotifier3D
=========================

**Наследует:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`

Область трехмерного пространства в форме прямоугольника, которая определяет, видна ли она на экране.

.. rst-class:: classref-introduction-group

Описание
----------------

**VisibleOnScreenNotifier3D** представляет область в форме коробки в трехмерном пространстве. Когда любая часть этой области становится видимой на экране или в поле зрения :ref:`Camera3D<class_Camera3D>`, она выдаст сигнал :ref:`screen_entered<class_VisibleOnScreenNotifier3D_signal_screen_entered>`, и аналогично она выдаст сигнал :ref:`screen_exited<class_VisibleOnScreenNotifier3D_signal_screen_exited>`, когда никакая ее часть не остается видимой.

Если вы хотите, чтобы узел включался автоматически, когда эта область видна на экране, используйте :ref:`VisibleOnScreenEnabler3D<class_VisibleOnScreenEnabler3D>`.

\ **Примечание:** **VisibleOnScreenNotifier3D** использует приблизительную эвристику, которая не учитывает стены и другие преграды, если только не используется отбраковка преград. Она также не будет работать, если :ref:`Node3D.visible<class_Node3D_property_visible>` не установлен в ``true``.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------+-------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`aabb<class_VisibleOnScreenNotifier3D_property_aabb>` | ``AABB(-1, -1, -1, 2, 2, 2)`` |
   +-------------------------+------------------------------------------------------------+-------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_on_screen<class_VisibleOnScreenNotifier3D_method_is_on_screen>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_VisibleOnScreenNotifier3D_signal_screen_entered:

.. rst-class:: classref-signal

**screen_entered**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_entered>`

Вызывается, когда **VisibleOnScreenNotifier3D** появляется на экране.

.. rst-class:: classref-item-separator

----

.. _class_VisibleOnScreenNotifier3D_signal_screen_exited:

.. rst-class:: classref-signal

**screen_exited**\ (\ ) :ref:`🔗<class_VisibleOnScreenNotifier3D_signal_screen_exited>`

Вызывается, когда **VisibleOnScreenNotifier3D** покидает экран.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisibleOnScreenNotifier3D_property_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **aabb** = ``AABB(-1, -1, -1, 2, 2, 2)`` :ref:`🔗<class_VisibleOnScreenNotifier3D_property_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_aabb**\ (\ )

Ограничивающий прямоугольник **VisibleOnScreenNotifier3D**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VisibleOnScreenNotifier3D_method_is_on_screen:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_on_screen**\ (\ ) |const| :ref:`🔗<class_VisibleOnScreenNotifier3D_method_is_on_screen>`

Возвращает ``true``, если ограничивающий прямоугольник находится на экране.

\ **Примечание:** Для оценки видимости **VisibleOnScreenNotifier3D** после добавления в дерево сцены требуется один кадр, поэтому этот метод всегда будет возвращать ``false`` сразу после его создания.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
