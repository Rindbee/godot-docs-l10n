:github_url: hide

.. _class_AudioEffect:

AudioEffect
===========

**Успадковує:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`AudioEffectAmplify<class_AudioEffectAmplify>`, :ref:`AudioEffectCapture<class_AudioEffectCapture>`, :ref:`AudioEffectChorus<class_AudioEffectChorus>`, :ref:`AudioEffectCompressor<class_AudioEffectCompressor>`, :ref:`AudioEffectDelay<class_AudioEffectDelay>`, :ref:`AudioEffectDistortion<class_AudioEffectDistortion>`, :ref:`AudioEffectEQ<class_AudioEffectEQ>`, :ref:`AudioEffectFilter<class_AudioEffectFilter>`, :ref:`AudioEffectHardLimiter<class_AudioEffectHardLimiter>`, :ref:`AudioEffectLimiter<class_AudioEffectLimiter>`, :ref:`AudioEffectPanner<class_AudioEffectPanner>`, :ref:`AudioEffectPhaser<class_AudioEffectPhaser>`, :ref:`AudioEffectPitchShift<class_AudioEffectPitchShift>`, :ref:`AudioEffectRecord<class_AudioEffectRecord>`, :ref:`AudioEffectReverb<class_AudioEffectReverb>`, :ref:`AudioEffectSpectrumAnalyzer<class_AudioEffectSpectrumAnalyzer>`, :ref:`AudioEffectStereoEnhance<class_AudioEffectStereoEnhance>`

Базовий клас для ресурсів звукових ефектів.

.. rst-class:: classref-introduction-group

Опис
--------

Основний :ref:`Resource<class_Resource>` для кожного звукового ефекту. У редакторі звуковий ефект можна додати до поточного макета шини через панель «Аудіо». Під час виконання також можна керувати звуковими ефектами за допомогою :ref:`AudioServer.add_bus_effect()<class_AudioServer_method_add_bus_effect>`, :ref:`AudioServer.remove_bus_effect()<class_AudioServer_method_remove_bus_effect>` і :ref:`AudioServer.get_bus_effect()<class_AudioServer_method_get_bus_effect>`.

 При застосуванні на шині звуковий ефект створює відповідний :ref:`AudioEffectInstance<class_AudioEffectInstance>`. Екземпляр безпосередньо відповідає за маніпулювання звуком на основі властивостей вихідного звукового ефекту.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Звукові шини <../tutorials/audio/audio_buses>`

- `Демонстраційний запис аудіо з мікрофона <https://godotengine.org/asset-library/asset/2760>`__

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------+
   | :ref:`AudioEffectInstance<class_AudioEffectInstance>` | :ref:`_instantiate<class_AudioEffect_private_method__instantiate>`\ (\ ) |virtual| |required| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AudioEffect_private_method__instantiate:

.. rst-class:: classref-method

:ref:`AudioEffectInstance<class_AudioEffectInstance>` **_instantiate**\ (\ ) |virtual| |required| :ref:`🔗<class_AudioEffect_private_method__instantiate>`

Перевизначте цей метод, щоб налаштувати :ref:`AudioEffectInstance<class_AudioEffectInstance>`, створений, коли цей ефект застосовано до шини на панелі Audio редактора або за допомогою :ref:`AudioServer.add_bus_effect()<class_AudioServer_method_add_bus_effect>`.

::

    extends AudioEffect

     @export var strength = 4,0

    func _instantiate():
         var effect = CustomAudioEffectInstance.new()
         effect.base = self

         return effect

\ **Примітка: ** Рекомендується зберегти посилання на оригінальний **AudioEffect** у новому екземплярі. Залежно від реалізації це дозволяє примірнику ефекту прослуховувати зміни під час виконання та відповідним чином змінювати.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
