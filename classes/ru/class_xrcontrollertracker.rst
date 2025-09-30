:github_url: hide

.. _class_XRControllerTracker:

XRControllerTracker
===================

**Наследует:** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Гусеничный контроллер.

.. rst-class:: classref-introduction-group

Описание
----------------

Экземпляр этого объекта представляет отслеживаемый контроллер.

Поскольку контроллеры включены и :ref:`XRInterface<class_XRInterface>` обнаруживает их, экземпляры этого объекта автоматически добавляются в этот список активных объектов отслеживания, доступных через :ref:`XRServer<class_XRServer>`.

\ :ref:`XRController3D<class_XRController3D>` потребляет объекты этого типа и должен использоваться в вашем проекте.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Индекс документации XR <../tutorials/xr/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+------+-------------------------------------------------------------------+
   | :ref:`TrackerType<enum_XRServer_TrackerType>` | type | ``2`` (overrides :ref:`XRTracker<class_XRTracker_property_type>`) |
   +-----------------------------------------------+------+-------------------------------------------------------------------+

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
