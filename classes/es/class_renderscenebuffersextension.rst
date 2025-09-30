:github_url: hide

.. _class_RenderSceneBuffersExtension:

RenderSceneBuffersExtension
===========================

**Hereda:** :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Esta clase permite realizar una implementación de RenderSceneBuffer en GDExtension.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase permite realizar una implementación de RenderSceneBuffer en GDExtension.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_configure<class_RenderSceneBuffersExtension_private_method__configure>`\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |virtual|          |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_anisotropic_filtering_level<class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level>`\ (\ anisotropic_filtering_level\: :ref:`int<class_int>`\ ) |virtual| |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_fsr_sharpness<class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness>`\ (\ fsr_sharpness\: :ref:`float<class_float>`\ ) |virtual|                                       |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_texture_mipmap_bias<class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias>`\ (\ texture_mipmap_bias\: :ref:`float<class_float>`\ ) |virtual|                     |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`_set_use_debanding<class_RenderSceneBuffersExtension_private_method__set_use_debanding>`\ (\ use_debanding\: :ref:`bool<class_bool>`\ ) |virtual|                                         |
   +--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RenderSceneBuffersExtension_private_method__configure:

.. rst-class:: classref-method

|void| **_configure**\ (\ config\: :ref:`RenderSceneBuffersConfiguration<class_RenderSceneBuffersConfiguration>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__configure>`

Implementa esto en GDExtension para gestionar el (re)dimensionamiento de un viewport.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level:

.. rst-class:: classref-method

|void| **_set_anisotropic_filtering_level**\ (\ anisotropic_filtering_level\: :ref:`int<class_int>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_anisotropic_filtering_level>`

Implementa esto en GDExtension para cambiar el nivel de filtrado anisotrópico.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness:

.. rst-class:: classref-method

|void| **_set_fsr_sharpness**\ (\ fsr_sharpness\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_fsr_sharpness>`

Implementa esto en GDExtension para registrar un nuevo valor de nitidez FSR.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias:

.. rst-class:: classref-method

|void| **_set_texture_mipmap_bias**\ (\ texture_mipmap_bias\: :ref:`float<class_float>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_texture_mipmap_bias>`

Implementa esto en GDExtension para cambiar el sesgo del mipmap de la textura.

.. rst-class:: classref-item-separator

----

.. _class_RenderSceneBuffersExtension_private_method__set_use_debanding:

.. rst-class:: classref-method

|void| **_set_use_debanding**\ (\ use_debanding\: :ref:`bool<class_bool>`\ ) |virtual| :ref:`🔗<class_RenderSceneBuffersExtension_private_method__set_use_debanding>`

Implementa esto en GDExtension para reaccionar al cambio de la bandera de debanding.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
