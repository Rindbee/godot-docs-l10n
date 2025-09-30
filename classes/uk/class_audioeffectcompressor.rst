:github_url: hide

.. _class_AudioEffectCompressor:

AudioEffectCompressor
=====================

**Успадковує:** :ref:`AudioEffect<class_AudioEffect>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Додає звуковий ефект компресора до звукової шини.

 Зменшує звуки, що перевищують певний пороговий рівень, згладжує динаміку і збільшує загальну гучність.

.. rst-class:: classref-introduction-group

Опис
--------

Компресор динамічного діапазону зменшує рівень звуку, коли амплітуда перевищує певний поріг у децибелах. Одним з основних застосувань компресора є збільшення динамічного діапазону шляхом мінімального кліппінгу (коли звук перевищує 0 дБ).

Компресор має багато застосувань у міксі:

- На головній шині для стиснення всього виходу (хоча :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>`, ймовірно, краще).

- У голосових каналах, щоб забезпечити їх максимально збалансоване звучання.

- З боковим ланцюгом. Це може зменшити рівень звуку, з'єднаний з боковим ланцюгом з іншою аудіошиною для виявлення порогу. Цей метод поширений у міксуванні відеоігор до рівня музики та звукових ефектів, коли чути голоси.

- Акцентує перехідні процеси, використовуючи ширшу атаку, роблячи ефекти більш потужними.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові шини <../tutorials/audio/audio_buses>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`attack_us<class_AudioEffectCompressor_property_attack_us>`   | ``20.0``  |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`gain<class_AudioEffectCompressor_property_gain>`             | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`mix<class_AudioEffectCompressor_property_mix>`               | ``1.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`ratio<class_AudioEffectCompressor_property_ratio>`           | ``4.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`release_ms<class_AudioEffectCompressor_property_release_ms>` | ``250.0`` |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>` | :ref:`sidechain<class_AudioEffectCompressor_property_sidechain>`   | ``&""``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`threshold<class_AudioEffectCompressor_property_threshold>`   | ``0.0``   |
   +-------------------------------------+--------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AudioEffectCompressor_property_attack_us:

.. rst-class:: classref-property

:ref:`float<class_float>` **attack_us** = ``20.0`` :ref:`🔗<class_AudioEffectCompressor_property_attack_us>`

.. rst-class:: classref-property-setget

- |void| **set_attack_us**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_attack_us**\ (\ )

Час реакції компресора, коли сигнал перевищує порогове значення, у мікросекундах. Вартість може коливатися від 20 до 2000.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_gain:

.. rst-class:: classref-property

:ref:`float<class_float>` **gain** = ``0.0`` :ref:`🔗<class_AudioEffectCompressor_property_gain>`

.. rst-class:: classref-property-setget

- |void| **set_gain**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gain**\ (\ )

Посилення, застосоване до вихідного сигналу.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_mix:

.. rst-class:: classref-property

:ref:`float<class_float>` **mix** = ``1.0`` :ref:`🔗<class_AudioEffectCompressor_property_mix>`

.. rst-class:: classref-property-setget

- |void| **set_mix**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mix**\ (\ )

Баланс між оригінальним сигналом і сигналом ефекту. Значення може коливатися від 0 (повністю сухий) до 1 (повністю вологий).

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** = ``4.0`` :ref:`🔗<class_AudioEffectCompressor_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ratio**\ (\ )

Ступінь стиснення, застосованого до аудіо, коли воно досягає порогового рівня. Чим вищий коефіцієнт, тим сильніше стискатимуться гучні частини аудіо. Значення може коливатися від 1 до 48.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_release_ms:

.. rst-class:: classref-property

:ref:`float<class_float>` **release_ms** = ``250.0`` :ref:`🔗<class_AudioEffectCompressor_property_release_ms>`

.. rst-class:: classref-property-setget

- |void| **set_release_ms**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_release_ms**\ (\ )

Час затримки компресора для припинення зниження сигналу після того, як рівень сигналу впаде нижче порогового значення, у мілісекундах. Вартість може коливатися від 20 до 2000.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_sidechain:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **sidechain** = ``&""`` :ref:`🔗<class_AudioEffectCompressor_property_sidechain>`

.. rst-class:: classref-property-setget

- |void| **set_sidechain**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_sidechain**\ (\ )

Зменшіть рівень звуку за допомогою іншої звукової шини для виявлення порогу.

.. rst-class:: classref-item-separator

----

.. _class_AudioEffectCompressor_property_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **threshold** = ``0.0`` :ref:`🔗<class_AudioEffectCompressor_property_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_threshold**\ (\ )

Рівень, вище якого стискається звук. Значення може коливатися від -60 до 0.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
