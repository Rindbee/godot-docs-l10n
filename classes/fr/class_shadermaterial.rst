:github_url: hide

.. _class_ShaderMaterial:

ShaderMaterial
==============

**Hérite de :** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un matériau défini par un programme :ref:`Shader<class_Shader>` personnalisé et les valeurs des paramètres du shader.

.. rst-class:: classref-introduction-group

Description
-----------

Un matériau qui utilise un programme :ref:`Shader<class_Shader>` personnalisé pour rendre des objets visuels (éléments de canevas, maillage, ciel, brouillard) ou pour traiter des particules. Comparé à d'autres matériaux, **ShaderMaterial** donne un contrôle plus profond sur le code du shader généré. Pour plus d'informations, consultez l'index de documentation des shaders ci-dessous.

Plusieurs **ShaderMaterial**\ s peuvent utiliser le même shaderet configurer des valeurs différentes pour les uniforms du shader.

\ **Note :** Pour des raisons de performances, le :ref:`Resource.changed<class_Resource_signal_changed>` n'est émis que lorsque le nom :ref:`Resource.resource_name<class_Resource_property_resource_name>` change. Seulement dans l'éditeur, il est également émis pour les changements du :ref:`shader<class_ShaderMaterial_property_shader>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Index de la documentation sur les shaders <../tutorials/shaders/index>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------+
   | :ref:`Shader<class_Shader>` | :ref:`shader<class_ShaderMaterial_property_shader>` |
   +-----------------------------+-----------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_shader_parameter<class_ShaderMaterial_method_get_shader_parameter>`\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const|                                |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_shader_parameter<class_ShaderMaterial_method_set_shader_parameter>`\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ShaderMaterial_property_shader:

.. rst-class:: classref-property

:ref:`Shader<class_Shader>` **shader** :ref:`🔗<class_ShaderMaterial_property_shader>`

.. rst-class:: classref-property-setget

- |void| **set_shader**\ (\ value\: :ref:`Shader<class_Shader>`\ )
- :ref:`Shader<class_Shader>` **get_shader**\ (\ )

Le programme :ref:`Shader<class_Shader>` utilisé pour le rendu de ce matériau.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ShaderMaterial_method_get_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_ShaderMaterial_method_get_shader_parameter>`

Renvoie la valeur actuelle définie pour ce matériau d'un uniform du shader.

.. rst-class:: classref-item-separator

----

.. _class_ShaderMaterial_method_set_shader_parameter:

.. rst-class:: classref-method

|void| **set_shader_parameter**\ (\ param\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_ShaderMaterial_method_set_shader_parameter>`

Change la valeur définie pour ce matériau d'un uniform du shader.

\ **Note :** ``param`` est sensible à la casse et doit correspondre exactement au nom de l'uniform dans le code (pas le nom capitalisé dans l'inspecteur).

\ **Note :** Les changements apportés à l'uniform du shader seront effectifs dans toutes les instances utilisant ce **ShaderMaterial**. Pour éviter cela, utilisez des uniforms par instance avec :ref:`GeometryInstance3D.set_instance_shader_parameter()<class_GeometryInstance3D_method_set_instance_shader_parameter>` ou dupliquez la ressource **ShaderMaterial** en utilisant :ref:`Resource.duplicate()<class_Resource_method_duplicate>`. Les uniforms par instance permettent une meilleure réutilisation du shader et sont donc plus rapides, de sorte qu'ils devraient être préférés plutôt que la duplication du **ShaderMaterial** si possible.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
