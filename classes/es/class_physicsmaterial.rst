:github_url: hide

.. _class_PhysicsMaterial:

PhysicsMaterial
===============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Holds physics-related properties of a surface, namely its roughness and bounciness.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Holds physics-related properties of a surface, namely its roughness and bounciness. This class is used to apply these properties to a physics body.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`absorbent<class_PhysicsMaterial_property_absorbent>` | ``false`` |
   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`bounce<class_PhysicsMaterial_property_bounce>`       | ``0.0``   |
   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`float<class_float>` | :ref:`friction<class_PhysicsMaterial_property_friction>`   | ``1.0``   |
   +---------------------------+------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`   | :ref:`rough<class_PhysicsMaterial_property_rough>`         | ``false`` |
   +---------------------------+------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PhysicsMaterial_property_absorbent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **absorbent** = ``false`` :ref:`🔗<class_PhysicsMaterial_property_absorbent>`

.. rst-class:: classref-property-setget

- |void| **set_absorbent**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_absorbent**\ (\ )

Si es ``true``, resta el rebote del rebote del objeto que colisiona en lugar de agregarlo.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsMaterial_property_bounce:

.. rst-class:: classref-property

:ref:`float<class_float>` **bounce** = ``0.0`` :ref:`🔗<class_PhysicsMaterial_property_bounce>`

.. rst-class:: classref-property-setget

- |void| **set_bounce**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_bounce**\ (\ )

The body's bounciness. Values range from ``0`` (no bounce) to ``1`` (full bounciness).

\ **Note:** Even with :ref:`bounce<class_PhysicsMaterial_property_bounce>` set to ``1.0``, some energy will be lost over time due to linear and angular damping. To have a physics body that preserves all its energy over time, set :ref:`bounce<class_PhysicsMaterial_property_bounce>` to ``1.0``, the body's linear damp mode to **Replace** (if applicable), its linear damp to ``0.0``, its angular damp mode to **Replace** (if applicable), and its angular damp to ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsMaterial_property_friction:

.. rst-class:: classref-property

:ref:`float<class_float>` **friction** = ``1.0`` :ref:`🔗<class_PhysicsMaterial_property_friction>`

.. rst-class:: classref-property-setget

- |void| **set_friction**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_friction**\ (\ )

La fricción del cuerpo. Los valores van desde ``0`` (sin fricción) hasta ``1`` (fricción máxima).

.. rst-class:: classref-item-separator

----

.. _class_PhysicsMaterial_property_rough:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **rough** = ``false`` :ref:`🔗<class_PhysicsMaterial_property_rough>`

.. rst-class:: classref-property-setget

- |void| **set_rough**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_rough**\ (\ )

Si es ``true``, el motor de la física utilizará la fricción del objeto marcado como "áspero" cuando dos objetos colisionen. Si ``false``, el motor de física usará la menor fricción de todos los objetos que colisionen en su lugar. Si es ``true``, para ambos objetos que colisionan, el motor de física utilizará la fricción más alta.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
