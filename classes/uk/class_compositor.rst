:github_url: hide

.. _class_Compositor:

Compositor
==========

**Експериментальний:** More customization of the rendering pipeline will be added in the future.

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Зберігати атрибути, які використовуються для налаштування, як продається Перегляд.

.. rst-class:: classref-introduction-group

Опис
--------

Приписи композиторних ресурсних магазинів, які використовуються для налаштування алгоритму :ref:`Viewport<class_Viewport>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Композитор <../tutorials/rendering/compositor>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+-------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] | :ref:`compositor_effects<class_Compositor_property_compositor_effects>` | ``[]`` |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_Compositor_property_compositor_effects:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] **compositor_effects** = ``[]`` :ref:`🔗<class_Compositor_property_compositor_effects>`

.. rst-class:: classref-property-setget

- |void| **set_compositor_effects**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] **get_compositor_effects**\ (\ )

Користувальницькі :ref:`CompositorEffect<class_CompositorEffect>`, які застосовуються при рендерингу портів з використанням цього композитора.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
