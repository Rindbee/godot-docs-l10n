:github_url: hide

.. _class_LightmapperRD:

LightmapperRD
=============

**Hereda:** :ref:`Lightmapper<class_Lightmapper>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

El lightmapper incorporado basado en GPU para usar con :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

LightmapperRD ("RD" significa :ref:`RenderingDevice<class_RenderingDevice>`) es el lightmapper incorporado basado en GPU para usar con :ref:`LightmapGI<class_LightmapGI>`. En la mayoría de las GPU dedicadas, puede procesar lightmaps mucho más rápido que la mayoría de los lightmappers basados en CPU. LightmapperRD usa "compute shaders" para procesar lightmaps, por lo que no requiere que se instalen las bibliotecas CUDA u OpenCL para poder usarse.

\ **Nota:** Solo se puede usar cuando se utiliza el backend de RenderingDevice (renderizadores Forward+ o Mobile), no Compatibility.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
