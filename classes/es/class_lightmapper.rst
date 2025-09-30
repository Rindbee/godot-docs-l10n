:github_url: hide

.. _class_Lightmapper:

Lightmapper
===========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`LightmapperRD<class_LightmapperRD>`

Clase abstracta extendida por los lightmappers, para su uso en :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase debe ser extendida por clases lightmapper personalizadas. Los lightmappers pueden ser usados con :ref:`LightmapGI<class_LightmapGI>` para proveer iluminación global procesada rápidamente en 3D.

Godot contiene un lightmapper basado en GPU :ref:`LightmapperRD<class_LightmapperRD>` que usa "compute shaders", pero los lightmappers personalizados pueden ser implementados por módulos de C++.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
