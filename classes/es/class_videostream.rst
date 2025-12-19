:github_url: hide

.. _class_VideoStream:

VideoStream
===========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`VideoStreamTheora<class_VideoStreamTheora>`

Recurso base para los streams de video.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Tipo de recurso base para todas las transmisiones de vídeo. Las clases que derivan de **VideoStream** pueden utilizarse como tipos de recurso para reproducir vídeos en :ref:`VideoStreamPlayer<class_VideoStreamPlayer>`.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Reproduciendo videos <../tutorials/animation/playing_videos>`

- :doc:`Carga y guardado de archivos en tiempo de ejecución <../tutorials/io/runtime_file_loading_and_saving>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`file<class_VideoStream_property_file>` | ``""`` |
   +-----------------------------+----------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
   | :ref:`VideoStreamPlayback<class_VideoStreamPlayback>` | :ref:`_instantiate_playback<class_VideoStream_private_method__instantiate_playback>`\ (\ ) |virtual| |required| |
   +-------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VideoStream_property_file:

.. rst-class:: classref-property

:ref:`String<class_String>` **file** = ``""`` :ref:`🔗<class_VideoStream_property_file>`

.. rst-class:: classref-property-setget

- |void| **set_file**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_file**\ (\ )

La ruta del archivo de vídeo o URI que gestiona este recurso **VideoStream**.

Para :ref:`VideoStreamTheora<class_VideoStreamTheora>`, este nombre de archivo debe ser un archivo de vídeo Ogg Theora con la extensión ``.ogv``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_VideoStream_private_method__instantiate_playback:

.. rst-class:: classref-method

:ref:`VideoStreamPlayback<class_VideoStreamPlayback>` **_instantiate_playback**\ (\ ) |virtual| |required| :ref:`🔗<class_VideoStream_private_method__instantiate_playback>`

Se llama cuando el vídeo comienza a reproducirse, para inicializar y devolver una subclase de :ref:`VideoStreamPlayback<class_VideoStreamPlayback>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
