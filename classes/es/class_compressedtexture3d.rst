:github_url: hide

.. _class_CompressedTexture3D:

CompressedTexture3D
===================

**Hereda:** :ref:`Texture3D<class_Texture3D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Textura con 3 dimensiones, opcionalmente comprimida.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**CompressedTexture3D** es la contraparte comprimida en VRAM de :ref:`ImageTexture3D<class_ImageTexture3D>`. La extensión de archivo para los archivos **CompressedTexture3D** es ``.ctex3d``. Este formato de archivo es interno de Godot; se crea importando otros formatos de imagen con el sistema de importación.

\ **CompressedTexture3D** utiliza la compresión VRAM, lo que permite reducir el uso de memoria en la GPU al renderizar la textura. Esto también mejora los tiempos de carga, ya que las texturas comprimidas en VRAM se cargan más rápido en comparación con las texturas que utilizan compresión sin pérdida. La compresión VRAM puede mostrar artefactos notables y está destinada a ser utilizada para el renderizado 3D, no 2D.

Véase :ref:`Texture3D<class_Texture3D>` para obtener una descripción general de las texturas 3D.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`load_path<class_CompressedTexture3D_property_load_path>` | ``""`` |
   +-----------------------------+----------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`load<class_CompressedTexture3D_method_load>`\ (\ path\: :ref:`String<class_String>`\ ) |
   +---------------------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CompressedTexture3D_property_load_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **load_path** = ``""`` :ref:`🔗<class_CompressedTexture3D_property_load_path>`

.. rst-class:: classref-property-setget

- :ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_load_path**\ (\ )

La ruta del archivo **CompressedTexture3D** a un archivo ``.ctex3d``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CompressedTexture3D_method_load:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **load**\ (\ path\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CompressedTexture3D_method_load>`

Carga la textura desde la ``path`` especificada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
