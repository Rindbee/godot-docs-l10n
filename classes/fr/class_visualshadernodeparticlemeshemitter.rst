:github_url: hide

.. _class_VisualShaderNodeParticleMeshEmitter:

VisualShaderNodeParticleMeshEmitter
===================================

**Hérite de :** :ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A visual shader node that makes particles emitted in a shape defined by a :ref:`Mesh<class_Mesh>`.

.. rst-class:: classref-introduction-group

Description
-----------

:ref:`VisualShaderNodeParticleEmitter<class_VisualShaderNodeParticleEmitter>` that makes the particles emitted in a shape of the assigned :ref:`mesh<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`. It will emit from the mesh's surfaces, either all or only the specified one.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`Mesh<class_Mesh>` | :ref:`mesh<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`                         |          |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`int<class_int>`   | :ref:`surface_index<class_VisualShaderNodeParticleMeshEmitter_property_surface_index>`       | ``0``    |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+
   | :ref:`bool<class_bool>` | :ref:`use_all_surfaces<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>` | ``true`` |
   +-------------------------+----------------------------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeParticleMeshEmitter_property_mesh:

.. rst-class:: classref-property

:ref:`Mesh<class_Mesh>` **mesh** :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_mesh>`

.. rst-class:: classref-property-setget

- |void| **set_mesh**\ (\ value\: :ref:`Mesh<class_Mesh>`\ )
- :ref:`Mesh<class_Mesh>` **get_mesh**\ (\ )

The :ref:`Mesh<class_Mesh>` that defines emission shape.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParticleMeshEmitter_property_surface_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **surface_index** = ``0`` :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_surface_index>`

.. rst-class:: classref-property-setget

- |void| **set_surface_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_surface_index**\ (\ )

Index of the surface that emits particles. :ref:`use_all_surfaces<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>` must be ``false`` for this to take effect.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_all_surfaces** = ``true`` :ref:`🔗<class_VisualShaderNodeParticleMeshEmitter_property_use_all_surfaces>`

.. rst-class:: classref-property-setget

- |void| **set_use_all_surfaces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_use_all_surfaces**\ (\ )

If ``true``, the particles will emit from all surfaces of the mesh.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
