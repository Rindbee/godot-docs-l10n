:github_url: hide

.. _class_PhysicsServer2DManager:

PhysicsServer2DManager
======================

**Hereda:** :ref:`Object<class_Object>`

Un singleton para administrar las implementaciones de :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**PhysicsServer2DManager** es la API para registrar implementaciones de :ref:`PhysicsServer2D<class_PhysicsServer2D>` y para establecer la implementación predeterminada.

\ **Nota:** No es posible cambiar los servidores de física en tiempo de ejecución. Esta clase solo se utiliza al inicio en el nivel de inicialización del servidor, por Godot y posiblemente por las GDExtensions.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`register_server<class_PhysicsServer2DManager_method_register_server>`\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`set_default_server<class_PhysicsServer2DManager_method_set_default_server>`\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ )            |
   +--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_PhysicsServer2DManager_method_register_server:

.. rst-class:: classref-method

|void| **register_server**\ (\ name\: :ref:`String<class_String>`, create_callback\: :ref:`Callable<class_Callable>`\ ) :ref:`🔗<class_PhysicsServer2DManager_method_register_server>`

Registra una implementación de :ref:`PhysicsServer2D<class_PhysicsServer2D>` pasando un ``name`` y un :ref:`Callable<class_Callable>` que devuelve un objeto :ref:`PhysicsServer2D<class_PhysicsServer2D>`.

.. rst-class:: classref-item-separator

----

.. _class_PhysicsServer2DManager_method_set_default_server:

.. rst-class:: classref-method

|void| **set_default_server**\ (\ name\: :ref:`String<class_String>`, priority\: :ref:`int<class_int>`\ ) :ref:`🔗<class_PhysicsServer2DManager_method_set_default_server>`

Establece la implementación predeterminada de :ref:`PhysicsServer2D<class_PhysicsServer2D>` a la identificada por ``name``, si ``priority`` es mayor que la prioridad de la implementación predeterminada actual.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
