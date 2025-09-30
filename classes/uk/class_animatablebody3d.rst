:github_url: hide

.. _class_AnimatableBody3D:

AnimatableBody3D
================

**Успадковує:** :ref:`StaticBody3D<class_StaticBody3D>` **<** :ref:`PhysicsBody3D<class_PhysicsBody3D>` **<** :ref:`CollisionObject3D<class_CollisionObject3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Тривимірне фізичне тіло, яке не може рухатися зовнішніми силами. При переміщенні вручну він впливає на інші тіла на своєму шляху.

.. rst-class:: classref-introduction-group

Опис
--------

Анімаційне 3D фізичне тіло. Його не можна перемістити зовнішніми силами чи контактами, але можна перемістити вручну за допомогою інших засобів, таких як код, :ref:`AnimationMixer<class_AnimationMixer>`\ s (з :ref:`AnimationMixer.callback_mode_process<class_AnimationMixer_property_callback_mode_process>`, встановленим на :ref:`AnimationMixer.ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS<class_AnimationMixer_constant_ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS>`), і :ref:`RemoteTransform3D<class_RemoteTransform3D>` .

 Коли **AnimatableBody3D** переміщується, його лінійна та кутова швидкість оцінюються та використовуються для впливу на інші фізичні тіла на його шляху. Це робить його корисним для рухомих платформ, дверей та інших рухомих об’єктів.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Запровадження фізики <../tutorials/physics/physics_introduction>`

- :doc:`Вирішення проблем з фізики <../tutorials/physics/troubleshooting_physics_issues>`

- `Демонстрація тестів з 3D-фізики <https://godotengine.org/asset-library/asset/2747>`__

- `Демо-версія шутера від третьої особи (TPS) <https://godotengine.org/asset-library/asset/2710>`__

- `Демонстрація 3D вокселів <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`sync_to_physics<class_AnimatableBody3D_property_sync_to_physics>` | ``true`` |
   +-------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_AnimatableBody3D_property_sync_to_physics:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync_to_physics** = ``true`` :ref:`🔗<class_AnimatableBody3D_property_sync_to_physics>`

.. rst-class:: classref-property-setget

- |void| **set_sync_to_physics**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_sync_to_physics_enabled**\ (\ )

Якщо ``true``, рух тіла буде синхронізовано з фізичним кадром. Це корисно при анімації руху через :ref:`AnimationPlayer<class_AnimationPlayer>`, наприклад, на рухомих платформах. **Не** використовувати разом з :ref:`PhysicsBody3D.move_and_collide()<class_PhysicsBody3D_method_move_and_collide>`.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
