:github_url: hide

.. _class_RenderDataExtension:

RenderDataExtension
===================

**Hereda:** :ref:`RenderData<class_RenderData>` **<** :ref:`Object<class_Object>`

Esta clase permite realizar una implementación de RenderData en GDExtension.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase permite realizar una implementación de RenderData en GDExtension.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`_get_camera_attributes<class_RenderDataExtension_private_method__get_camera_attributes>`\ (\ ) |virtual| |const|       |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`_get_environment<class_RenderDataExtension_private_method__get_environment>`\ (\ ) |virtual| |const|                   |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` | :ref:`_get_render_scene_buffers<class_RenderDataExtension_private_method__get_render_scene_buffers>`\ (\ ) |virtual| |const| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneData<class_RenderSceneData>`       | :ref:`_get_render_scene_data<class_RenderDataExtension_private_method__get_render_scene_data>`\ (\ ) |virtual| |const|       |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RenderDataExtension_private_method__get_camera_attributes:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_camera_attributes**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_camera_attributes>`

Implementa esto en GDExtension para devolver el :ref:`RID<class_RID>` del objeto de atributos de la cámara de la implementación.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_environment:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_environment**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_environment>`

Implementa esto en GDExtension para devolver el :ref:`RID<class_RID>` del objeto de entorno de la implementación.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_render_scene_buffers:

.. rst-class:: classref-method

:ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **_get_render_scene_buffers**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_render_scene_buffers>`

Implementa esto en GDExtension para devolver el objeto :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` de la implementación.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_render_scene_data:

.. rst-class:: classref-method

:ref:`RenderSceneData<class_RenderSceneData>` **_get_render_scene_data**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_render_scene_data>`

Implementa esto en GDExtension para devolver el objeto :ref:`RenderSceneDataExtension<class_RenderSceneDataExtension>` de la implementación.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
