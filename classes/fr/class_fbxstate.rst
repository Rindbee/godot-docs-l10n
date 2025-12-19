:github_url: hide

.. _class_FBXState:

FBXState
========

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`GLTFState<class_GLTFState>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

.. rst-class:: classref-introduction-group

Description
-----------

Le FBXState gère les données d'état importées des fichiers FBX.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+-----------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`allow_geometry_helper_nodes<class_FBXState_property_allow_geometry_helper_nodes>` | ``false`` |
   +-------------------------+-----------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_FBXState_property_allow_geometry_helper_nodes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **allow_geometry_helper_nodes** = ``false`` :ref:`🔗<class_FBXState_property_allow_geometry_helper_nodes>`

.. rst-class:: classref-property-setget

- |void| **set_allow_geometry_helper_nodes**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_allow_geometry_helper_nodes**\ (\ )

Si ``true``, le processus d'import a utilisé des nœuds auxiliaires appelés nœuds d'aide à la géométrie. Ces nœuds aident à préserver les pivots et les transformations du modèle 3D original lors de l'import.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
