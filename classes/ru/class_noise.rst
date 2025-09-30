:github_url: hide

.. _class_Noise:

Noise
=====

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`FastNoiseLite<class_FastNoiseLite>`

Абстрактный базовый класс для генераторов шума.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс определяет интерфейс для библиотек генерации шума, от которых можно наследовать.

Реализация по умолчанию :ref:`get_seamless_image()<class_Noise_method_get_seamless_image>` предоставляется для библиотек, которые не предоставляют бесшовный шум. Эта функция запрашивает более крупное изображение из метода :ref:`get_image()<class_Noise_method_get_image>`, переворачивает квадранты изображения, затем использует полосы дополнительной ширины для смешивания по швам.

Наследование классов шума может опционально переопределять эту функцию для предоставления более оптимального алгоритма.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                              | :ref:`get_image<class_Noise_method_get_image>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const|                                                            |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`get_image_3d<class_Noise_method_get_image_3d>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const|                                                                      |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_1d<class_Noise_method_get_noise_1d>`\ (\ x\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                                                           |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_2d<class_Noise_method_get_noise_2d>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                                                            |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_2dv<class_Noise_method_get_noise_2dv>`\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_3d<class_Noise_method_get_noise_3d>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`\ ) |const|                                                                                                                                                             |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                              | :ref:`get_noise_3dv<class_Noise_method_get_noise_3dv>`\ (\ v\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                                                                                                                                                                     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                              | :ref:`get_seamless_image<class_Noise_method_get_seamless_image>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`get_seamless_image_3d<class_Noise_method_get_seamless_image_3d>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const|           |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Noise_method_get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_image**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_image>`

Возвращает :ref:`Image<class_Image>`, содержащий значения 2D-шума.

\ **Примечание:** Если ``normalize`` установлен на ``false``, реализация по умолчанию ожидает, что генератор шума вернет значения в диапазоне от ``-1.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_image_3d:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_image_3d**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_image_3d>`

Возвращает :ref:`Array<class_Array>` из :ref:`Image<class_Image>`, содержащих значения 3D-шума для использования с :ref:`ImageTexture3D.create()<class_ImageTexture3D_method_create>`.

\ **Примечание:** Если ``normalize`` установлен на ``false``, реализация по умолчанию ожидает, что генератор шума вернет значения в диапазоне от ``-1.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_1d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_1d**\ (\ x\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_1d>`

Возвращает значение одномерного шума в заданной координате (x).

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_2d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_2d**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_2d>`

Возвращает значение 2D-шума в указанной позиции.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_2dv:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_2dv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_2dv>`

Возвращает значение 2D-шума в указанной позиции.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_3d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_3d**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_3d>`

Возвращает значение 3D-шума в указанной позиции.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_3dv:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_3dv**\ (\ v\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_3dv>`

Возвращает значение 3D-шума в указанной позиции.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_seamless_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_seamless_image**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_seamless_image>`

Возвращает :ref:`Image<class_Image>`, содержащий бесшовные значения 2D-шума.

\ **Примечание:** Если ``normalize`` установлен на ``false``, реализация по умолчанию ожидает, что генератор шума вернет значения в диапазоне от ``-1.0`` до ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_seamless_image_3d:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_seamless_image_3d**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_seamless_image_3d>`

Возвращает :ref:`Array<class_Array>` из :ref:`Image<class_Image>`, содержащих бесшовные значения 3D-шума для использования с :ref:`ImageTexture3D.create()<class_ImageTexture3D_method_create>`.

\ **Примечание:** Если ``normalize`` установлен на ``false``, реализация по умолчанию ожидает, что генератор шума вернет значения в диапазоне от ``-1.0`` до ``1.0``.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
