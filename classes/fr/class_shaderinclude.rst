:github_url: hide

.. _class_ShaderInclude:

ShaderInclude
=============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un bout de code de shader à inclure dans un :ref:`Shader<class_Shader>` avec ``#include``.

.. rst-class:: classref-introduction-group

Description
-----------

Un fichier à inclure dans un shader, enregistré avec l'extension ``.gdshaderinc``. Cette classe vous permet de définir un bout de code de shader personnalisé qui peut être inclus dans un :ref:`Shader<class_Shader>` en utilisant la directive de préprocesseur ``#include``, suivie du chemin de fichier (par exemple ``#include "res://shader_lib.gdshaderinc"``). Le bout de code n'a pas besoin d'être un shader valide seul.

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

Renvoie le code du fichier à inclure dans le shader. Le texte renvoyé est ce que l'utilisateur a écrit, pas le code entièrement généré utilisé en interne.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
