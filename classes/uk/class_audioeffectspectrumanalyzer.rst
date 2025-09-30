:github_url: hide

.. _class_AudioEffectSpectrumAnalyzer:

AudioEffectSpectrumAnalyzer
===========================

**Успадковує:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Аудіоефект, який можна використовувати для аудіо візуалізації в реальному часі.

.. rst-class:: classref-introduction-group

Опис
--------

Цей аудіоефект не впливає на вихідний звук, але може бути використаний для візуалізації звуку в реальному часі.

Цей ресурс налаштовує :ref:`AudioEffectSpectrumAnalyzerInstance<class_AudioEffectSpectrumAnalyzerInstance>`, який виконує фактичний аналіз під час виконання. Екземпляр можна отримати за допомогою методу :ref:`AudioServer.get_bus_effect_instance()<class_AudioServer_method_get_bus_effect_instance>`.

Див. також :ref:`AudioStreamGenerator<class_AudioStreamGenerator>` для процедурної генерації звуків.

.. rst-class:: classref-introduction-group

Посібники
------------------

- `Демонстрація візуалізатора аудіоспектру <https://godotengine.org/asset-library/asset/2762>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                                | :ref:`buffer_length<class_AudioEffectSpectrumAnalyzer_property_buffer_length>` | ``2.0``  |
   +----------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` | :ref:`fft_size<class_AudioEffectSpectrumAnalyzer_property_fft_size>`           | ``2``    |
   +----------------------------------------------------------+--------------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>`                                | :ref:`tap_back_pos<class_AudioEffectSpectrumAnalyzer_property_tap_back_pos>`   | ``0.01`` |
   +----------------------------------------------------------+--------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_AudioEffectSpectrumAnalyzer_FFTSize:

.. rst-class:: classref-enumeration

enum **FFTSize**: :ref:`🔗<enum_AudioEffectSpectrumAnalyzer_FFTSize>`

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_256:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_256** = ``0``

Використовуйте буфер із 256 вибірок для швидкого перетворення Фур’є. Найнижча затримка, але найменш стабільна з часом.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_512:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_512** = ``1``

Використовуйте буфер із 512 вибірок для швидкого перетворення Фур’є. Низька затримка, але менш стабільна з часом.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_1024:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_1024** = ``2``

Використовуйте буфер із 1024 вибірок для швидкого перетворення Фур’є. Це компроміс між затримкою та стабільністю в часі.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_2048:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_2048** = ``3``

Використовуйте буфер із 2048 вибірок для швидкого перетворення Фур’є. Висока затримка, але стабільна з часом.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_4096:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_4096** = ``4``

Використовуйте буфер із 4096 вибірок для швидкого перетворення Фур’є. Найвища затримка, але найбільш стабільна з часом.

.. _class_AudioEffectSpectrumAnalyzer_constant_FFT_SIZE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **FFT_SIZE_MAX** = ``5``

Представляє розмір переліку :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioEffectSpectrumAnalyzer_property_buffer_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **buffer_length** = ``2.0`` :ref:`🔗<class_AudioEffectSpectrumAnalyzer_property_buffer_length>`

.. rst-class:: classref-property-setget

- |void| **set_buffer_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_buffer_length**\ (\ )

Довжина буфера, який потрібно зберегти (у секундах). Вищі значення зберігають дані довше, але потребують більше пам’яті.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectSpectrumAnalyzer_property_fft_size:

.. rst-class:: classref-property

:ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **fft_size** = ``2`` :ref:`🔗<class_AudioEffectSpectrumAnalyzer_property_fft_size>`

.. rst-class:: classref-property-setget

- |void| **set_fft_size**\ (\ value\: :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>`\ )
- :ref:`FFTSize<enum_AudioEffectSpectrumAnalyzer_FFTSize>` **get_fft_size**\ (\ )

Розмір буфера `швидкого перетворення Фур’є <https://en.wikipedia.org/wiki/Fast_Fourier_transform>`__. Вищі значення згладжують спектральний аналіз з часом, але мають більшу затримку. Ефекти цієї високої затримки особливо помітні при раптових змінах амплітуди.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectSpectrumAnalyzer_property_tap_back_pos:

.. rst-class:: classref-property

:ref:`float<class_float>` **tap_back_pos** = ``0.01`` :ref:`🔗<class_AudioEffectSpectrumAnalyzer_property_tap_back_pos>`

.. rst-class:: classref-property-setget

- |void| **set_tap_back_pos**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_tap_back_pos**\ (\ )

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
