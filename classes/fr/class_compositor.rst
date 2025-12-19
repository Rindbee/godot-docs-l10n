:github_url: hide

.. _class_Compositor:

Compositor
==========

**Expérimental :** More customization of the rendering pipeline will be added in the future.

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Stocke des attributs utilisés pour personnaliser la façon dont un Viewport est rendu.

.. rst-class:: classref-introduction-group

Description
-----------

La ressource de compositeur stocke des attributs utilisés pour personnaliser la façon dont un :ref:`Viewport<class_Viewport>` est rendu.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Le compositeur <../tutorials/rendering/compositor>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+-------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] | :ref:`compositor_effects<class_Compositor_property_compositor_effects>` | ``[]`` |
   +------------------------------------------------------------------------------+-------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Compositor_property_compositor_effects:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] **compositor_effects** = ``[]`` :ref:`🔗<class_Compositor_property_compositor_effects>`

.. rst-class:: classref-property-setget

- |void| **set_compositor_effects**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`CompositorEffect<class_CompositorEffect>`\] **get_compositor_effects**\ (\ )

Les :ref:`CompositorEffect<class_CompositorEffect>`\ s personnalisés qui sont appliqués lors du rendu des viewports utilisant ce compositeur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
