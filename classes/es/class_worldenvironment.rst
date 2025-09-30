:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/WorldEnvironment.xml.

.. _class_WorldEnvironment:

WorldEnvironment
================

**Hereda:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Propiedades de entorno por defecto para toda la escena (efectos de post-procesamiento, iluminación y ajustes de fondo).

.. rst-class:: classref-introduction-group

Descripción
----------------------

El nodo **WorldEnvironment** se utiliza para configurar el :ref:`Environment<class_Environment>` por defecto para la escena.

Los parámetros definidos en **WorldEnvironment** pueden ser sobreescritos por un nodo :ref:`Environment<class_Environment>` establecido en la ``Camera`` actual. Además, solo se puede instanciar un **WorldEnvironment** en una escena dada a la vez.

El **WorldEnvironment** permite al usuario especificar los parámetros de iluminación por defecto (p.ej. iluminación ambiental), varios efectos de post-procesamiento (p.ej. SSAO, DOF, Tonemapping), y cómo dibujar el fondo (p.ej. color sólido, skybox). Normalmente, estos se añaden para mejorar el realismo/equilibrio de color de la escena.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Ambiente y posprocesamiento <../tutorials/3d/environment_and_post_processing>`

- `Demo de Prueba de Materiales en 3D <https://godotengine.org/asset-library/asset/2742>`__

- `Demo de Shooter en Tercera Persona (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`CameraAttributes<class_CameraAttributes>` | :ref:`camera_attributes<class_WorldEnvironment_property_camera_attributes>` |
   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`Compositor<class_Compositor>`             | :ref:`compositor<class_WorldEnvironment_property_compositor>`               |
   +-------------------------------------------------+-----------------------------------------------------------------------------+
   | :ref:`Environment<class_Environment>`           | :ref:`environment<class_WorldEnvironment_property_environment>`             |
   +-------------------------------------------------+-----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_WorldEnvironment_property_camera_attributes:

.. rst-class:: classref-property

:ref:`CameraAttributes<class_CameraAttributes>` **camera_attributes** :ref:`🔗<class_WorldEnvironment_property_camera_attributes>`

.. rst-class:: classref-property-setget

- |void| **set_camera_attributes**\ (\ value\: :ref:`CameraAttributes<class_CameraAttributes>`\ )
- :ref:`CameraAttributes<class_CameraAttributes>` **get_camera_attributes**\ (\ )

El recurso :ref:`CameraAttributes<class_CameraAttributes>` por defecto a usar si no se ha establecido ninguno en la :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_compositor:

.. rst-class:: classref-property

:ref:`Compositor<class_Compositor>` **compositor** :ref:`🔗<class_WorldEnvironment_property_compositor>`

.. rst-class:: classref-property-setget

- |void| **set_compositor**\ (\ value\: :ref:`Compositor<class_Compositor>`\ )
- :ref:`Compositor<class_Compositor>` **get_compositor**\ (\ )

El recurso :ref:`Compositor<class_Compositor>` predeterminado que se utilizará si no se establece ninguno en la :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_WorldEnvironment_property_environment:

.. rst-class:: classref-property

:ref:`Environment<class_Environment>` **environment** :ref:`🔗<class_WorldEnvironment_property_environment>`

.. rst-class:: classref-property-setget

- |void| **set_environment**\ (\ value\: :ref:`Environment<class_Environment>`\ )
- :ref:`Environment<class_Environment>` **get_environment**\ (\ )

El recurso :ref:`Environment<class_Environment>` utilizado por este **WorldEnvironment**, definiendo las propiedades por defecto.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
