:github_url: hide

.. _class_PhysicalSkyMaterial:

PhysicalSkyMaterial
===================

**Hereda:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un material que define un cielo para un recurso :ref:`Sky<class_Sky>` mediante un conjunto de propiedades físicas.

.. rst-class:: classref-introduction-group

Descripción
----------------------

El **PhysicalSkyMaterial** utiliza el modelo analítico de luz diurna de Preetham para dibujar un cielo basado en propiedades físicas. Esto da como resultado un cielo sustancialmente más realista que el :ref:`ProceduralSkyMaterial<class_ProceduralSkyMaterial>`, pero es ligeramente más lento y menos flexible.

El **PhysicalSkyMaterial** sólo admite un sol. El color, la energía y la dirección del sol se toman de la primera :ref:`DirectionalLight3D<class_DirectionalLight3D>` en el árbol de la escena.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`energy_multiplier<class_PhysicalSkyMaterial_property_energy_multiplier>`       | ``1.0``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`ground_color<class_PhysicalSkyMaterial_property_ground_color>`                 | ``Color(0.1, 0.07, 0.034, 1)``   |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`mie_coefficient<class_PhysicalSkyMaterial_property_mie_coefficient>`           | ``0.005``                        |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`mie_color<class_PhysicalSkyMaterial_property_mie_color>`                       | ``Color(0.69, 0.729, 0.812, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`mie_eccentricity<class_PhysicalSkyMaterial_property_mie_eccentricity>`         | ``0.8``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`night_sky<class_PhysicalSkyMaterial_property_night_sky>`                       |                                  |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`rayleigh_coefficient<class_PhysicalSkyMaterial_property_rayleigh_coefficient>` | ``2.0``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`Color<class_Color>`         | :ref:`rayleigh_color<class_PhysicalSkyMaterial_property_rayleigh_color>`             | ``Color(0.3, 0.405, 0.6, 1)``    |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`sun_disk_scale<class_PhysicalSkyMaterial_property_sun_disk_scale>`             | ``1.0``                          |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`float<class_float>`         | :ref:`turbidity<class_PhysicalSkyMaterial_property_turbidity>`                       | ``10.0``                         |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+
   | :ref:`bool<class_bool>`           | :ref:`use_debanding<class_PhysicalSkyMaterial_property_use_debanding>`               | ``true``                         |
   +-----------------------------------+--------------------------------------------------------------------------------------+----------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PhysicalSkyMaterial_property_energy_multiplier:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy_multiplier** = ``1.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_energy_multiplier>`

.. rst-class:: classref-property-setget

- |void| **set_energy_multiplier**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy_multiplier**\ (\ )

The sky's overall brightness multiplier. Higher values result in a brighter sky.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_ground_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ground_color** = ``Color(0.1, 0.07, 0.034, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_ground_color>`

.. rst-class:: classref-property-setget

- |void| **set_ground_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ground_color**\ (\ )

Modula el :ref:`Color<class_Color>` en la mitad inferior del cielo para representar el suelo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **mie_coefficient** = ``0.005`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_mie_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mie_coefficient**\ (\ )

Controla la fuerza de la `dispersión de Mie <https://es.wikipedia.org/wiki/Dispersi%C3%B3n_de_Mie>`__ en el cielo. La dispersión de Mie es el resultado de la luz que colisiona con partículas más grandes (como el agua). En la tierra, la dispersión de Mie da como resultado un color blanquecino alrededor del sol y el horizonte.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **mie_color** = ``Color(0.69, 0.729, 0.812, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_color>`

.. rst-class:: classref-property-setget

- |void| **set_mie_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_mie_color**\ (\ )

Controla el :ref:`Color<class_Color>` del efecto de la `Dispersión de Mie <https://en.wikipedia.org/wiki/Mie_scattering>`__. Aunque no es físicamente preciso, esto permite la creación de planetas con aspecto alienígena.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_mie_eccentricity:

.. rst-class:: classref-property

:ref:`float<class_float>` **mie_eccentricity** = ``0.8`` :ref:`🔗<class_PhysicalSkyMaterial_property_mie_eccentricity>`

.. rst-class:: classref-property-setget

- |void| **set_mie_eccentricity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mie_eccentricity**\ (\ )

Controla la dirección de la `Dispersión de Mie <https://en.wikipedia.org/wiki/Mie_scattering>`__. Un valor de ``1`` significa que cuando la luz golpea una partícula, esta pasa directamente hacia adelante. Un valor de ``-1`` significa que toda la luz se dispersa hacia atrás.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_night_sky:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **night_sky** :ref:`🔗<class_PhysicalSkyMaterial_property_night_sky>`

.. rst-class:: classref-property-setget

- |void| **set_night_sky**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_night_sky**\ (\ )

:ref:`Texture2D<class_Texture2D>` para el cielo nocturno. Esto se añade al cielo, así que si es lo suficientemente brillante, puede ser visible durante el día.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_rayleigh_coefficient:

.. rst-class:: classref-property

:ref:`float<class_float>` **rayleigh_coefficient** = ``2.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_rayleigh_coefficient>`

.. rst-class:: classref-property-setget

- |void| **set_rayleigh_coefficient**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_rayleigh_coefficient**\ (\ )

Controla la fuerza de la `Dispersión de Rayleigh <https://en.wikipedia.org/wiki/Rayleigh_scattering>`__. La dispersión de Rayleigh es el resultado de la luz que colisiona con pequeñas partículas. Es responsable del color azul del cielo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_rayleigh_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **rayleigh_color** = ``Color(0.3, 0.405, 0.6, 1)`` :ref:`🔗<class_PhysicalSkyMaterial_property_rayleigh_color>`

.. rst-class:: classref-property-setget

- |void| **set_rayleigh_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_rayleigh_color**\ (\ )

Controla el :ref:`Color<class_Color>` de la `Dispersión de Rayleigh <https://en.wikipedia.org/wiki/Rayleigh_scattering>`__. Aunque no es físicamente preciso, esto permite la creación de planetas con aspecto alienígena. Por ejemplo, si se establece en un :ref:`Color<class_Color>` rojo, se obtiene una atmósfera similar a la de Marte, con una puesta de sol azul correspondiente.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_sun_disk_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **sun_disk_scale** = ``1.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_sun_disk_scale>`

.. rst-class:: classref-property-setget

- |void| **set_sun_disk_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_sun_disk_scale**\ (\ )

Establece el tamaño del disco solar. El valor predeterminado se basa en el tamaño percibido de Sol desde la Tierra.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_turbidity:

.. rst-class:: classref-property

:ref:`float<class_float>` **turbidity** = ``10.0`` :ref:`🔗<class_PhysicalSkyMaterial_property_turbidity>`

.. rst-class:: classref-property-setget

- |void| **set_turbidity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_turbidity**\ (\ )

Establece el grosor de la atmósfera. Una alta turbidez crea una atmósfera de aspecto brumoso, mientras que una baja turbidez da como resultado una atmósfera más clara.

.. rst-class:: classref-item-separator

----

.. _class_PhysicalSkyMaterial_property_use_debanding:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_debanding** = ``true`` :ref:`🔗<class_PhysicalSkyMaterial_property_use_debanding>`

.. rst-class:: classref-property-setget

- |void| **set_use_debanding**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_use_debanding**\ (\ )

Si es ``true``, activa la reducción de bandas. La reducción de bandas añade una pequeña cantidad de ruido que ayuda a reducir las bandas que aparecen por los cambios suaves de color en el cielo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
