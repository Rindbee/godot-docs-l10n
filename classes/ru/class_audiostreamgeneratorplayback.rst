:github_url: hide

.. _class_AudioStreamGeneratorPlayback:

AudioStreamGeneratorPlayback
============================

**Наследует:** :ref:`AudioStreamPlaybackResampled<class_AudioStreamPlaybackResampled>` **<** :ref:`AudioStreamPlayback<class_AudioStreamPlayback>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Воспроизводит звук, созданный с помощью :ref:`AudioStreamGenerator<class_AudioStreamGenerator>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс предназначен для использования с :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` для воспроизведения сгенерированного звука в реальном времени.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Демонстрация звукового генератора <https://godotengine.org/asset-library/asset/2759>`__

- `Godot 3.2 получит новые аудиофункции <https://godotengine.org/article/godot-32-will-get-new-audio-features>`__

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`can_push_buffer<class_AudioStreamGeneratorPlayback_method_can_push_buffer>`\ (\ amount\: :ref:`int<class_int>`\ ) |const|               |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`clear_buffer<class_AudioStreamGeneratorPlayback_method_clear_buffer>`\ (\ )                                                             |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_frames_available<class_AudioStreamGeneratorPlayback_method_get_frames_available>`\ (\ ) |const|                                     |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`get_skips<class_AudioStreamGeneratorPlayback_method_get_skips>`\ (\ ) |const|                                                           |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`push_buffer<class_AudioStreamGeneratorPlayback_method_push_buffer>`\ (\ frames\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`push_frame<class_AudioStreamGeneratorPlayback_method_push_frame>`\ (\ frame\: :ref:`Vector2<class_Vector2>`\ )                          |
   +-------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AudioStreamGeneratorPlayback_method_can_push_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **can_push_buffer**\ (\ amount\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_can_push_buffer>`

Возвращает ``true``, если буфер размером ``amount`` можно поместить в буфер данных аудиосэмпла без его переполнения, в противном случае — ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_clear_buffer:

.. rst-class:: classref-method

|void| **clear_buffer**\ (\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_clear_buffer>`

Очищает буфер данных аудиосэмпла.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_get_frames_available:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_frames_available**\ (\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_get_frames_available>`

Возвращает количество кадров, которые можно поместить в буфер данных аудиосэмпла без его переполнения. Если результат ``0``, буфер заполнен.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_get_skips:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_skips**\ (\ ) |const| :ref:`🔗<class_AudioStreamGeneratorPlayback_method_get_skips>`

Возвращает количество пропусков воспроизведения из-за опустошения буфера в данных аудиосэмпла. Это значение сбрасывается в начале воспроизведения.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_push_buffer:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_buffer**\ (\ frames\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_push_buffer>`

Помещает несколько аудиокадров данных в буфер. Обычно это эффективнее, чем :ref:`push_frame()<class_AudioStreamGeneratorPlayback_method_push_frame>` в C# и компилируемых языках через GDExtension, но :ref:`push_buffer()<class_AudioStreamGeneratorPlayback_method_push_buffer>` может быть *менее* эффективным в GDScript.

.. rst-class:: classref-item-separator

----

.. _class_AudioStreamGeneratorPlayback_method_push_frame:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **push_frame**\ (\ frame\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_AudioStreamGeneratorPlayback_method_push_frame>`

Помещает один аудио-фрейм данных в буфер. Обычно это менее эффективно, чем :ref:`push_buffer()<class_AudioStreamGeneratorPlayback_method_push_buffer>` в C# и компилируемых языках через GDExtension, но :ref:`push_frame()<class_AudioStreamGeneratorPlayback_method_push_frame>` может быть *более* эффективным в GDScript.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
