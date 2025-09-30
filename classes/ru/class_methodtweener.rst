:github_url: hide

.. _class_MethodTweener:

MethodTweener
=============

**Наследует:** :ref:`Tweener<class_Tweener>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Интерполирует абстрактное значение и передает его методу, вызываемому с течением времени.

.. rst-class:: classref-introduction-group

Описание
----------------

**MethodTweener** похож на комбинацию :ref:`CallbackTweener<class_CallbackTweener>` и :ref:`PropertyTweener<class_PropertyTweener>`. Он вызывает метод, предоставляющий интерполированное значение в качестве параметра. См. :ref:`Tween.tween_method()<class_Tween_method_tween_method>` для получения дополнительной информации об использовании.

Tweener завершится автоматически, если целевой объект обратного вызова будет освобожден.

\ **Примечание:** :ref:`Tween.tween_method()<class_Tween_method_tween_method>` — единственный правильный способ создания **MethodTweener**. Любой **MethodTweener**, созданный вручную, не будет работать правильно.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_delay<class_MethodTweener_method_set_delay>`\ (\ delay\: :ref:`float<class_float>`\ )                        |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_ease<class_MethodTweener_method_set_ease>`\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ )                |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MethodTweener<class_MethodTweener>` | :ref:`set_trans<class_MethodTweener_method_set_trans>`\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) |
   +-------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_MethodTweener_method_set_delay:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_delay**\ (\ delay\: :ref:`float<class_float>`\ ) :ref:`🔗<class_MethodTweener_method_set_delay>`

Устанавливает время в секундах, после которого **MethodTweener** начнет интерполяцию. По умолчанию задержки нет.

.. rst-class:: classref-item-separator

----

.. _class_MethodTweener_method_set_ease:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_ease**\ (\ ease\: :ref:`EaseType<enum_Tween_EaseType>`\ ) :ref:`🔗<class_MethodTweener_method_set_ease>`

Устанавливает тип используемой плавности из :ref:`EaseType<enum_Tween_EaseType>`. Если не установлено, плавность по умолчанию используется из :ref:`Tween<class_Tween>`, который содержит этот Tweener.

.. rst-class:: classref-item-separator

----

.. _class_MethodTweener_method_set_trans:

.. rst-class:: classref-method

:ref:`MethodTweener<class_MethodTweener>` **set_trans**\ (\ trans\: :ref:`TransitionType<enum_Tween_TransitionType>`\ ) :ref:`🔗<class_MethodTweener_method_set_trans>`

Задает тип используемого перехода из :ref:`TransitionType<enum_Tween_TransitionType>`. Если не задано, используется переход по умолчанию из :ref:`Tween<class_Tween>`, который содержит этот Tweener.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
