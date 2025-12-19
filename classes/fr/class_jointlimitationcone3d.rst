:github_url: hide

.. _class_JointLimitationCone3D:

JointLimitationCone3D
=====================

**Hérite de :** :ref:`JointLimitation3D<class_JointLimitation3D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A cone shape limitation that interacts with :ref:`ChainIK3D<class_ChainIK3D>`.

.. rst-class:: classref-introduction-group

Description
-----------

A cone shape limitation that interacts with :ref:`ChainIK3D<class_ChainIK3D>`.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`radius_range<class_JointLimitationCone3D_property_radius_range>` | ``0.25`` |
   +---------------------------+------------------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_JointLimitationCone3D_property_radius_range:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius_range** = ``0.25`` :ref:`🔗<class_JointLimitationCone3D_property_radius_range>`

.. rst-class:: classref-property-setget

- |void| **set_radius_range**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius_range**\ (\ )

The size of the hole made by the cone.

\ ``0`` is no hole, ``0.5`` makes a hemisphere, and ``1.0`` makes a sphere (no limitation).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
