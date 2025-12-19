:github_url: hide

.. _class_EncodedObjectAsID:

EncodedObjectAsID
=================

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contient une référence à l’ID d’instance d’un :ref:`Object<class_Object>`.

.. rst-class:: classref-introduction-group

Description
-----------

Classe utilitaire qui contient une référence à l'identifiant interne d'une instance d':ref:`Object<class_Object>`, comme donné par :ref:`Object.get_instance_id()<class_Object_method_get_instance_id>`. Cet ID peut ensuite être utilisé pour récupérer l'instance de l'objet avec :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>`.

Cette classe est utilisée en interne par l'inspecteur de l'éditeur et le débogueur de script, mais peut également être utilisé dans des plugins pour passer et afficher des objets par leurs identifiants.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`object_id<class_EncodedObjectAsID_property_object_id>` | ``0`` |
   +-----------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_EncodedObjectAsID_property_object_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **object_id** = ``0`` :ref:`🔗<class_EncodedObjectAsID_property_object_id>`

.. rst-class:: classref-property-setget

- |void| **set_object_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_object_id**\ (\ )

L'identifiant du :ref:`Object<class_Object>` stocké dans cette instance **EncodedObjectAsID**. L'instance de l'objet peut être récupérée avec :ref:`@GlobalScope.instance_from_id()<class_@GlobalScope_method_instance_from_id>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
