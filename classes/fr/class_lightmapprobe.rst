:github_url: hide

.. _class_LightmapProbe:

LightmapProbe
=============

**Hérite de :** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Représente une unique sonde placée manuellement pour l'éclairage des objets dynamiques avec :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Description
-----------

**LightmapProbe** représente la position d'une unique sonde placée manuellement pour l'éclairage d'objets dynamiques avec :ref:`LightmapGI<class_LightmapGI>`. Les sondes de lightmaps affectent l'éclairage des nœuds dérivés de :ref:`GeometryInstance3D<class_GeometryInstance3D>` qui ont leur :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` défini à :ref:`GeometryInstance3D.GI_MODE_DYNAMIC<class_GeometryInstance3D_constant_GI_MODE_DYNAMIC>`.

Généralement, les sondes :ref:`LightmapGI<class_LightmapGI>` sont placées automatiquement en définissant :ref:`LightmapGI.generate_probes_subdiv<class_LightmapGI_property_generate_probes_subdiv>` à une valeur autre que :ref:`LightmapGI.GENERATE_PROBES_DISABLED<class_LightmapGI_constant_GENERATE_PROBES_DISABLED>`. En créant des nœuds **LightmapProbe** avant de faire des lightmaps, vous pouvez ajouter plus de sondes dans des zones spécifiques pour plus de détails, ou désactiver la génération automatique et ne compter que sur des sondes placées manuellement.

\ **Note :** Les nœuds **LightmapProbe** placés que les lightmaps ont été calculées sont ignorés par les objets dynamiques. Vous devez re-calculer les lightmaps après avoir créé ou modifié des **LightmapProbe**\ s pour que les sondes soient effectives.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
