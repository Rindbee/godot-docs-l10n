:github_url: hide

.. _class_PlaceholderCubemapArray:

PlaceholderCubemapArray
=======================

**Наследует:** :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

:ref:`CubemapArray<class_CubemapArray>` без данных изображения.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс заменяет :ref:`CubemapArray<class_CubemapArray>` или производный от :ref:`CubemapArray<class_CubemapArray>` класс в 2 условиях:

- В режиме выделенного сервера, где данные изображения не должны влиять на игровую логику. Это позволяет значительно уменьшить размер экспортируемого PCK.

- Когда производный от :ref:`CubemapArray<class_CubemapArray>` класс отсутствует, например, при использовании другой версии движка.

\ **Примечание:** Этот класс не предназначен для рендеринга или использования в шейдерах. Такие операции, как расчет UV, не гарантируют свою работоспособность.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
