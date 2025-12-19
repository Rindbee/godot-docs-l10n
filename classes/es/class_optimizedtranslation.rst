:github_url: hide

.. _class_OptimizedTranslation:

OptimizedTranslation
====================

**Hereda:** :ref:`Translation<class_Translation>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An optimized translation.

.. rst-class:: classref-introduction-group

Descripción
----------------------

An optimized translation. Uses real-time compressed translations, which results in very small dictionaries.

This class does not store the untranslated strings for optimization purposes. Therefore, :ref:`Translation.get_message_list()<class_Translation_method_get_message_list>` always returns an empty array, and :ref:`Translation.get_message_count()<class_Translation_method_get_message_count>` always returns ``0``.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+-----------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`generate<class_OptimizedTranslation_method_generate>`\ (\ from\: :ref:`Translation<class_Translation>`\ ) |
   +--------+-----------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OptimizedTranslation_method_generate:

.. rst-class:: classref-method

|void| **generate**\ (\ from\: :ref:`Translation<class_Translation>`\ ) :ref:`🔗<class_OptimizedTranslation_method_generate>`

Generates and sets an optimized translation from the given :ref:`Translation<class_Translation>` resource.

\ **Note:** Messages in ``from`` should not use context or plural forms.

\ **Note:** This method is intended to be used in the editor. It does nothing when called from an exported project.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
