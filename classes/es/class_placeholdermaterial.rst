:github_url: hide

.. _class_PlaceholderMaterial:

PlaceholderMaterial
===================

**Hereda:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Placeholder class for a material.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase se utiliza al cargar un proyecto que utiliza una subclase de :ref:`Material<class_Material>` en 2 condiciones:

- Cuando se ejecuta el proyecto exportado en modo de servidor dedicado, sólo se mantienen las dimensiones de la textura (ya que se puede confiar en ellas para fines de juego o para el posicionamiento de otros elementos). Esto permite reducir significativamente el tamaño del PCK exportado.

- Cuando falta esta subclase debido al uso de una versión o compilación diferente del motor (por ejemplo, módulos desactivados).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
