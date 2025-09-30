:github_url: hide

.. _class_OpenXRFutureExtension:

OpenXRFutureExtension
=====================

**Наследует:** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Расширение OpenXR Future позволяет использовать асинхронные API.

.. rst-class:: classref-introduction-group

Описание
----------------

Это расширение поддержки в OpenXR, которое позволяет другим расширениям OpenXR запускать асинхронные функции и получать обратный вызов после завершения этой функции. Оно не предназначено для использования в GDScript, но к нему можно получить доступ из GDExtension.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`cancel_future<class_OpenXRFutureExtension_method_cancel_future>`\ (\ future\: :ref:`int<class_int>`\ )                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_active<class_OpenXRFutureExtension_method_is_active>`\ (\ ) |const|                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OpenXRFutureResult<class_OpenXRFutureResult>` | :ref:`register_future<class_OpenXRFutureExtension_method_register_future>`\ (\ future\: :ref:`int<class_int>`, on_success\: :ref:`Callable<class_Callable>` = Callable()\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRFutureExtension_method_cancel_future:

.. rst-class:: classref-method

|void| **cancel_future**\ (\ future\: :ref:`int<class_int>`\ ) :ref:`🔗<class_OpenXRFutureExtension_method_cancel_future>`

Отменяет выполняемое будущее. ``future`` должен быть значением ``XrFutureEXT``, ранее возвращенным API, запустившим асинхронную функцию.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureExtension_method_is_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_active**\ (\ ) |const| :ref:`🔗<class_OpenXRFutureExtension_method_is_active>`

Возвращает ``true``, если в используемой среде выполнения OpenXR доступны фьючерсы (futures). Эта функция вернет пригодный для использования результат только после инициализации OpenXR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFutureExtension_method_register_future:

.. rst-class:: classref-method

:ref:`OpenXRFutureResult<class_OpenXRFutureResult>` **register_future**\ (\ future\: :ref:`int<class_int>`, on_success\: :ref:`Callable<class_Callable>` = Callable()\ ) :ref:`🔗<class_OpenXRFutureExtension_method_register_future>`

Зарегистрируйте объект OpenXR Future, чтобы мы могли отслеживать завершение. ``future`` должен быть значением ``XrFutureEXT``, ранее возвращенным API, который запустил асинхронную функцию.

Вы можете дополнительно указать ``on_success``, он будет вызван при успешном завершении future.

Или вы можете использовать возвращенный объект :ref:`OpenXRFutureResult<class_OpenXRFutureResult>`, чтобы ``await`` его сигнала :ref:`OpenXRFutureResult.completed<class_OpenXRFutureResult_signal_completed>`.

::

    var future_result = OpenXRFutureExtension.register_future(future)
    await future_result.completed
    if future_result.get_status() == OpenXRFutureResult.RESULT_FINISHED:
        # Управляйте своим успехом
        pass

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
