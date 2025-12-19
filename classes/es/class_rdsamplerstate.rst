:github_url: hide

.. _class_RDSamplerState:

RDSamplerState
==============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Estado del sampler (utilizado por :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este objeto es utilizado por :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>`     | ``1.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` | :ref:`border_color<class_RDSamplerState_property_border_color>`         | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`       | :ref:`compare_op<class_RDSamplerState_property_compare_op>`             | ``7``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`enable_compare<class_RDSamplerState_property_enable_compare>`     | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`lod_bias<class_RDSamplerState_property_lod_bias>`                 | ``0.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`mag_filter<class_RDSamplerState_property_mag_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`max_lod<class_RDSamplerState_property_max_lod>`                   | ``1e+20`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`min_filter<class_RDSamplerState_property_min_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                          | :ref:`min_lod<class_RDSamplerState_property_min_lod>`                   | ``0.0``   |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`           | :ref:`mip_filter<class_RDSamplerState_property_mip_filter>`             | ``0``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_u<class_RDSamplerState_property_repeat_u>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_v<class_RDSamplerState_property_repeat_v>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`   | :ref:`repeat_w<class_RDSamplerState_property_repeat_w>`                 | ``2``     |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`unnormalized_uvw<class_RDSamplerState_property_unnormalized_uvw>` | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                            | :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>`     | ``false`` |
   +--------------------------------------------------------------------+-------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDSamplerState_property_anisotropy_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **anisotropy_max** = ``1.0`` :ref:`🔗<class_RDSamplerState_property_anisotropy_max>`

.. rst-class:: classref-property-setget

- |void| **set_anisotropy_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_anisotropy_max**\ (\ )

Máxima anisotropía que se puede utilizar al muestrear. Solo es efectivo si :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>` es ``true``. Los valores más altos dan como resultado un sampler más nítido en ángulos oblicuos, a costa del rendimiento (debido al ancho de banda de la memoria). Este valor puede estar limitado por el hardware gráfico en uso. La mayoría del hardware gráfico solo admite valores de hasta ``16.0``.

Si :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>` es ``1.0``, desactiva por la fuerza la anisotropía incluso si :ref:`use_anisotropy<class_RDSamplerState_property_use_anisotropy>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_border_color:

.. rst-class:: classref-property

:ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` **border_color** = ``2`` :ref:`🔗<class_RDSamplerState_property_border_color>`

.. rst-class:: classref-property-setget

- |void| **set_border_color**\ (\ value\: :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>`\ )
- :ref:`SamplerBorderColor<enum_RenderingDevice_SamplerBorderColor>` **get_border_color**\ (\ )

El color del borde que se devolverá al muestrear fuera de los límites del sampler y los modos :ref:`repeat_u<class_RDSamplerState_property_repeat_u>`, :ref:`repeat_v<class_RDSamplerState_property_repeat_v>` o :ref:`repeat_w<class_RDSamplerState_property_repeat_w>` tienen la repetición desactivada.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_compare_op:

.. rst-class:: classref-property

:ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **compare_op** = ``7`` :ref:`🔗<class_RDSamplerState_property_compare_op>`

.. rst-class:: classref-property-setget

- |void| **set_compare_op**\ (\ value\: :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>`\ )
- :ref:`CompareOperator<enum_RenderingDevice_CompareOperator>` **get_compare_op**\ (\ )

La operación de comparación a utilizar. Solo es efectiva si :ref:`enable_compare<class_RDSamplerState_property_enable_compare>` es ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_enable_compare:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_compare** = ``false`` :ref:`🔗<class_RDSamplerState_property_enable_compare>`

.. rst-class:: classref-property-setget

- |void| **set_enable_compare**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_compare**\ (\ )

Si es ``true``, los valores devueltos se basarán en la operación de comparación definida en :ref:`compare_op<class_RDSamplerState_property_compare_op>`. Este es un enfoque basado en hardware y, por lo tanto, es más rápido que realizar esto manualmente en un shader. Por ejemplo, las operaciones de comparación se utilizan para el renderizado de mapas de sombras comparando los valores de profundidad de un sampler de sombras.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``0.0`` :ref:`🔗<class_RDSamplerState_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

El sesgo de LOD de mipmap a utilizar. Los valores positivos harán que el sampler sea más borroso a una distancia dada, mientras que los valores negativos harán que el sampler sea más nítido a una distancia dada (con el riesgo de verse granulado). Los valores recomendados están entre ``-0.5`` y ``0.0``. Solo es efectivo si el sampler tiene mipmaps disponibles.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_mag_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **mag_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_mag_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mag_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_mag_filter**\ (\ )

The sampler's magnification filter. It is the filtering method used when sampling texels that appear bigger than on-screen pixels.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_max_lod:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_lod** = ``1e+20`` :ref:`🔗<class_RDSamplerState_property_max_lod>`

.. rst-class:: classref-property-setget

- |void| **set_max_lod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_lod**\ (\ )

The maximum mipmap LOD bias to display (lowest resolution). Only effective if the sampler has mipmaps available.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_min_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **min_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_min_filter>`

.. rst-class:: classref-property-setget

- |void| **set_min_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_min_filter**\ (\ )

The sampler's minification filter. It is the filtering method used when sampling texels that appear smaller than on-screen pixels.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_min_lod:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_lod** = ``0.0`` :ref:`🔗<class_RDSamplerState_property_min_lod>`

.. rst-class:: classref-property-setget

- |void| **set_min_lod**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_lod**\ (\ )

The minimum mipmap LOD bias to display (highest resolution). Only effective if the sampler has mipmaps available.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_mip_filter:

.. rst-class:: classref-property

:ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **mip_filter** = ``0`` :ref:`🔗<class_RDSamplerState_property_mip_filter>`

.. rst-class:: classref-property-setget

- |void| **set_mip_filter**\ (\ value\: :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>`\ )
- :ref:`SamplerFilter<enum_RenderingDevice_SamplerFilter>` **get_mip_filter**\ (\ )

The filtering method to use for mipmaps.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_u:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_u** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_u>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_u**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_u**\ (\ )

The repeat mode to use along the U axis of UV coordinates. This affects the returned values if sampling outside the UV bounds.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_v:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_v** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_v>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_v**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_v**\ (\ )

The repeat mode to use along the V axis of UV coordinates. This affects the returned values if sampling outside the UV bounds.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_repeat_w:

.. rst-class:: classref-property

:ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **repeat_w** = ``2`` :ref:`🔗<class_RDSamplerState_property_repeat_w>`

.. rst-class:: classref-property-setget

- |void| **set_repeat_w**\ (\ value\: :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>`\ )
- :ref:`SamplerRepeatMode<enum_RenderingDevice_SamplerRepeatMode>` **get_repeat_w**\ (\ )

The repeat mode to use along the W axis of UV coordinates. This affects the returned values if sampling outside the UV bounds. Only effective for 3D samplers.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_unnormalized_uvw:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **unnormalized_uvw** = ``false`` :ref:`🔗<class_RDSamplerState_property_unnormalized_uvw>`

.. rst-class:: classref-property-setget

- |void| **set_unnormalized_uvw**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_unnormalized_uvw**\ (\ )

If ``true``, the texture will be sampled with coordinates ranging from 0 to the texture's resolution. Otherwise, the coordinates will be normalized and range from 0 to 1.

.. rst-class:: classref-item-separator

----

.. _class_RDSamplerState_property_use_anisotropy:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_anisotropy** = ``false`` :ref:`🔗<class_RDSamplerState_property_use_anisotropy>`

.. rst-class:: classref-property-setget

- |void| **set_use_anisotropy**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_anisotropy**\ (\ )

If ``true``, perform anisotropic sampling. See :ref:`anisotropy_max<class_RDSamplerState_property_anisotropy_max>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
