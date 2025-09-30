:github_url: hide

.. _class_Noise:

Noise
=====

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`FastNoiseLite<class_FastNoiseLite>`

Abstract base class for noise generators.

.. rst-class:: classref-introduction-group

Descripción
----------------------

This class defines the interface for noise generation libraries to inherit from.

A default :ref:`get_seamless_image()<class_Noise_method_get_seamless_image>` implementation is provided for libraries that do not provide seamless noise. This function requests a larger image from the :ref:`get_image()<class_Noise_method_get_image>` method, reverses the quadrants of the image, then uses the strips of extra width to blend over the seams.

Inheriting noise classes can optionally override this function to provide a more optimal algorithm.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Descripciones de Métodos
------------------------------------------------

.. _class_Noise_method_get_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_image**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_image>`

Returns an :ref:`Image<class_Image>` containing 2D noise values.

\ **Note:** With ``normalize`` set to ``false``, the default implementation expects the noise generator to return values in the range ``-1.0`` to ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_image_3d:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_image_3d**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_image_3d>`

Returns an :ref:`Array<class_Array>` of :ref:`Image<class_Image>`\ s containing 3D noise values for use with :ref:`ImageTexture3D.create()<class_ImageTexture3D_method_create>`.

\ **Note:** With ``normalize`` set to ``false``, the default implementation expects the noise generator to return values in the range ``-1.0`` to ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_1d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_1d**\ (\ x\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_1d>`

Returns the 1D noise value at the given (x) coordinate.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_2d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_2d**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_2d>`

Returns the 2D noise value at the given position.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_2dv:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_2dv**\ (\ v\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_2dv>`

Returns the 2D noise value at the given position.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_3d:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_3d**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, z\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_3d>`

Returns the 3D noise value at the given position.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_noise_3dv:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_noise_3dv**\ (\ v\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Noise_method_get_noise_3dv>`

Returns the 3D noise value at the given position.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_seamless_image:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_seamless_image**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, in_3d_space\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_seamless_image>`

Returns an :ref:`Image<class_Image>` containing seamless 2D noise values.

\ **Note:** With ``normalize`` set to ``false``, the default implementation expects the noise generator to return values in the range ``-1.0`` to ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_Noise_method_get_seamless_image_3d:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_seamless_image_3d**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`, depth\: :ref:`int<class_int>`, invert\: :ref:`bool<class_bool>` = false, skirt\: :ref:`float<class_float>` = 0.1, normalize\: :ref:`bool<class_bool>` = true\ ) |const| :ref:`🔗<class_Noise_method_get_seamless_image_3d>`

Returns an :ref:`Array<class_Array>` of :ref:`Image<class_Image>`\ s containing seamless 3D noise values for use with :ref:`ImageTexture3D.create()<class_ImageTexture3D_method_create>`.

\ **Note:** With ``normalize`` set to ``false``, the default implementation expects the noise generator to return values in the range ``-1.0`` to ``1.0``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
