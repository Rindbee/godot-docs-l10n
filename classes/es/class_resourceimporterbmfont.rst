:github_url: hide

.. _class_ResourceImporterBMFont:

ResourceImporterBMFont
======================

**Hereda:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Importa una fuente de mapa de bits en el formato BMFont (``.fnt``).

.. rst-class:: classref-introduction-group

Descripción
----------------------

El formato BMFont es un formato creado por el programa `BMFont <https://www.angelcode.com/products/bmfont/>`__. También existen muchos programas compatibles con BMFont, como `BMGlyph <https://www.bmglyph.com/>`__.

En comparación con :ref:`ResourceImporterImageFont<class_ResourceImporterImageFont>`, **ResourceImporterBMFont** admite fuentes de mapa de bits con anchos/altos de glifo variables.

Véase también :ref:`ResourceImporterDynamicFont<class_ResourceImporterDynamicFont>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- `Fuentes de mapa de bits - Uso de fuentes <../tutorials/ui/gui_using_fonts.html#bitmap-fonts>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>`   | :ref:`compress<class_ResourceImporterBMFont_property_compress>`         | ``true`` |
   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`Array<class_Array>` | :ref:`fallbacks<class_ResourceImporterBMFont_property_fallbacks>`       | ``[]``   |
   +---------------------------+-------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`     | :ref:`scaling_mode<class_ResourceImporterBMFont_property_scaling_mode>` | ``2``    |
   +---------------------------+-------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_ResourceImporterBMFont_property_compress:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **compress** = ``true`` :ref:`🔗<class_ResourceImporterBMFont_property_compress>`

Si es ``true``, utiliza compresión sin pérdidas para la fuente resultante.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBMFont_property_fallbacks:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **fallbacks** = ``[]`` :ref:`🔗<class_ResourceImporterBMFont_property_fallbacks>`

Lista de fuentes de respaldo a usar si no se encuentra un glifo en esta fuente de mapa de bits. Se intentará primero con las fuentes al principio del array.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterBMFont_property_scaling_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **scaling_mode** = ``2`` :ref:`🔗<class_ResourceImporterBMFont_property_scaling_mode>`

Modo de escalada de fuente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
