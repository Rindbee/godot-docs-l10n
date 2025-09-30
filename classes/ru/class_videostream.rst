:github_url: hide

.. _class_VideoStream:

VideoStream
===========

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`VideoStreamTheora<class_VideoStreamTheora>`

Базовый ресурс для видеопотоков.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый тип ресурса для всех видеопотоков. Классы, производные от **VideoStream**, могут использоваться как типы ресурсов для воспроизведения видео в :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Воспроизведение видео <../tutorials/animation/playing_videos>`

- :doc:`Загрузка и сохранение файла времени выполнения <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`file<class_VideoStream_property_file>` | ``""`` |
   +-----------------------------+----------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+------------------------------------------------------------------------------------------------------+
   | :ref:`VideoStreamPlayback<class_VideoStreamPlayback>` | :ref:`_instantiate_playback<class_VideoStream_private_method__instantiate_playback>`\ (\ ) |virtual| |
   +-------------------------------------------------------+------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VideoStream_property_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **file** = ``""`` :ref:`🔗<class_VideoStream_property_file>`

.. rst-class:: classref-property-setget

- |void| **set_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_file**\ (\ )

Путь к видеофайлу или URI, который обрабатывает этот ресурс **VideoStream**.

Для :ref:`VideoStreamTheora<class_VideoStreamTheora>` это имя файла должно быть видеофайлом Ogg Theora с расширением ``.ogv``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_VideoStream_private_method__instantiate_playback:

.. rst-class:: classref-method

:ref:`VideoStreamPlayback<class_VideoStreamPlayback>` **_instantiate_playback**\ (\ ) |virtual| :ref:`🔗<class_VideoStream_private_method__instantiate_playback>`

Вызывается при начале воспроизведения видео для инициализации и возврата подкласса :ref:`VideoStreamPlayback<class_VideoStreamPlayback>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
