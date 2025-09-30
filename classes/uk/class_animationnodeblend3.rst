:github_url: hide

.. _class_AnimationNodeBlend3:

AnimationNodeBlend3
===================

**Успадковує:** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Лінійно змішує дві з трьох анімацій всередині :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Опис
--------

Ресурс для додавання до :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Лінійно змішує дві анімації з трьох на основі значення суми.

Цей вузол анімації має три входи:

- Базова анімація для змішування

- Анімація "-blend", з якою змішується, коли сума змішування є від'ємним значенням

- Анімація "+blend" для накладання, коли значення суми накладання є додатним

Загалом, значення накладання має бути в діапазоні ``[-1.0, 1.0]``. Значення поза цим діапазоном можуть змішувати посилені анімації, однак для цієї мети краще підходить :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання Дерева анімації <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
