:github_url: hide

.. _class_AnimationNodeExtension:

AnimationNodeExtension
======================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Базовий клас для розширення :ref:`AnimationRootNode<class_AnimationRootNode>` з GDScript, C# або C++.

.. rst-class:: classref-introduction-group

Опис
--------

**AnimationNodeExtension** надає API :ref:`AnimationRootNode<class_AnimationRootNode>`, щоб дозволити користувачам розширювати його з GDScript, C# або C++. Цей клас не призначений для безпосереднього використання, а для розширення іншими класами. Він використовується для створення спеціальних вузлів для системи :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`_process_animation_node<class_AnimationNodeExtension_private_method__process_animation_node>`\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_remaining_time<class_AnimationNodeExtension_method_get_remaining_time>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static|                                  |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_looping<class_AnimationNodeExtension_method_is_looping>`\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static|                                                                                        |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_AnimationNodeExtension_private_method__process_animation_node:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **_process_animation_node**\ (\ playback_info\: :ref:`PackedFloat64Array<class_PackedFloat64Array>`, test_only\: :ref:`bool<class_bool>`\ ) |virtual| |required| :ref:`🔗<class_AnimationNodeExtension_private_method__process_animation_node>`

Версія методу :ref:`AnimationNode._process()<class_AnimationNode_private_method__process>`, призначена для перевизначення користувацькими вузлами. Він повертає :ref:`PackedFloat32Array<class_PackedFloat32Array>` з обробленими даними анімації. 

Параметр :ref:`PackedFloat64Array<class_PackedFloat64Array>` містить інформацію про відтворення, що містить такі значення, закодовані як числа з плаваючою комою (у порядку): час відтворення та дельта, час початку та завершення, чи був запит на пошук (закодований як число з плаваючою точкою, більше ніж ``0``), чи був запит на пошук іззовні (закодований як число з плаваючою точкою, більше ніж ``0``), поточний :ref:`LoopedFlag<enum_Animation_LoopedFlag>` (закодований як float) і поточна вага змішування. 

Функція має повертати :ref:`PackedFloat32Array<class_PackedFloat32Array>` інформації про час вузла, що містить такі значення (за порядком): тривалість анімації, позиція часу, дельта, :ref:`LoopMode<enum_Animation_LoopMode>` (закодована як число з плаваючою точкою), чи завершується анімація (закодовано як число з плаваючою речовиною, більше за ``0``) і чи є анімація нескінченною (закодовано як число з плаваючою речовиною). більше ``0``). Усі значення мають бути включені до поверненого масиву.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_get_remaining_time:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_remaining_time**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, break_loop\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_get_remaining_time>`

Повертає час анімації, що залишився, для даної інформації вузла. Для циклічної анімації він повертатиме час, що залишився, лише якщо ``break_loop`` має значення ``true``, інакше повертатиметься велике ціле значення.

.. rst-class:: classref-item-separator

----

.. _class_AnimationNodeExtension_method_is_looping:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_looping**\ (\ node_info\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) |static| :ref:`🔗<class_AnimationNodeExtension_method_is_looping>`

Повертає ``true``, якщо анімація для даного ``node_info`` повторюється.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
