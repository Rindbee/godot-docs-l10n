:github_url: hide

.. _class_ShaderInclude:

ShaderInclude
=============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A snippet of shader code to be included in a :ref:`Shader<class_Shader>` with ``#include``.

.. rst-class:: classref-introduction-group

Description
-----------

A shader include file, saved with the ``.gdshaderinc`` extension. This class allows you to define a custom shader snippet that can be included in a :ref:`Shader<class_Shader>` by using the preprocessor directive ``#include``, followed by the file path (e.g. ``#include "res://shader_lib.gdshaderinc"``). The snippet doesn't have to be a valid shader on its own.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Pré-calcul par le processeur de shader <../tutorials/shaders/shader_reference/shader_preprocessor>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`code<class_ShaderInclude_property_code>` | ``""`` |
   +-----------------------------+------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ShaderInclude_property_code:

.. rst-class:: classref-property

:ref:`String<class_String>` **code** = ``""`` :ref:`🔗<class_ShaderInclude_property_code>`

.. rst-class:: classref-property-setget

- |void| **set_code**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_code**\ (\ )

Returns the code of the shader include file. The returned text is what the user has written, not the full generated code used internally.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
