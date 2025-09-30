:github_url: hide

.. _class_CompressedCubemapArray:

CompressedCubemapArray
======================

**Успадковує:** :ref:`CompressedTextureLayered<class_CompressedTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Додатково стиснено :ref:`CubemapArray<class_CubemapArray>`.

.. rst-class:: classref-introduction-group

Опис
--------

Масив карт куба, який завантажується з файлу ``.ccubearray``. Цей формат файлів є внутрішнім для Godot; він створюється шляхом імпорту інших форматів зображень за допомогою системи імпорту. **CompressedCubemapArray** може використовувати один з 4 методів стиснення:

- Без втрат (WebP або PNG, без стиснення на графічному процесорі)

- З втратами (WebP, без стиснення на графічному процесорі)

- VRAM Compressed (стискається на графічному процесорі)

- VRAM Uncompressed (без стиснення на графічному процесорі)

- Basis Universal (стискається на графічному процесорі. Має менший розмір, ніж VRAM Compressed, але повільніше стискається і має нижчу якість, ніж VRAM Compressed)

Тільки **VRAM Compressed** фактично зменшує використання пам'яті на графічному процесорі. Методи стиснення **Lossless** та **Lossy** зменшують необхідний обсяг пам'яті на диску, але не зменшують використання пам'яті на графічному процесорі, оскільки текстура надсилається на графічний процесор без стиснення.

Використання **VRAM Compressed** також покращує час завантаження, оскільки текстури, стиснуті VRAM, завантажуються швидше порівняно з текстурами, що використовують стиснення без втрат або з втратами. Стиснення VRAM може демонструвати помітні артефакти і призначене для використання у 3D-візуалізації, а не у 2D-візуалізації.

Дивіться :ref:`CubemapArray<class_CubemapArray>` для загального опису масивів кубічних карт.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
