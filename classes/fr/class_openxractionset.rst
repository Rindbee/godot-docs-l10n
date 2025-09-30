:github_url: hide

.. _class_OpenXRActionSet:

OpenXRActionSet
===============

**Hérite de :** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Collection de ressources :ref:`OpenXRAction<class_OpenXRAction>` qui constituent un ensemble d'actions.

.. rst-class:: classref-introduction-group

Description
-----------

Les ensembles d'actions dans OpenXR définissent une collection d'actions qui peuvent être activées à l'unisson. Cela permet aux jeux de changer facilement entre différents états qui nécessitent des entrées différentes ou ont besoin de réinterpréter les entrées. Par exemple, nous pourrions avoir un ensemble d'actions qui est actif lorsqu'un menu est ouvert, un ensemble d'actions qui est actif lorsque le joueur marche librement et un ensemble d'actions qui est actif lorsque le joueur contrôle un véhicule.

Les ensembles d'actions peuvent contenir la même action avec le même nom, si ces ensembles d'action sont actifs en même temps, l'action définie avec la plus haute priorité définit quelle liaison est active.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`   | :ref:`actions<class_OpenXRActionSet_property_actions>`               | ``[]`` |
   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`localized_name<class_OpenXRActionSet_property_localized_name>` | ``""`` |
   +-----------------------------+----------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`       | :ref:`priority<class_OpenXRActionSet_property_priority>`             | ``0``  |
   +-----------------------------+----------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`add_action<class_OpenXRActionSet_method_add_action>`\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ )       |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_action_count<class_OpenXRActionSet_method_get_action_count>`\ (\ ) |const|                                     |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`remove_action<class_OpenXRActionSet_method_remove_action>`\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) |
   +-----------------------+--------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRActionSet_property_actions:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **actions** = ``[]`` :ref:`🔗<class_OpenXRActionSet_property_actions>`

.. rst-class:: classref-property-setget

- |void| **set_actions**\ (\ value\: :ref:`Array<class_Array>`\ )
- :ref:`Array<class_Array>` **get_actions**\ (\ )

Collection d'actions pour cet ensemble d'actions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_property_localized_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **localized_name** = ``""`` :ref:`🔗<class_OpenXRActionSet_property_localized_name>`

.. rst-class:: classref-property-setget

- |void| **set_localized_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_localized_name**\ (\ )

Le nom localisé de cet ensemble d'actions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_property_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **priority** = ``0`` :ref:`🔗<class_OpenXRActionSet_property_priority>`

.. rst-class:: classref-property-setget

- |void| **set_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_priority**\ (\ )

La priorité de cet ensemble d'actions.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRActionSet_method_add_action:

.. rst-class:: classref-method

|void| **add_action**\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) :ref:`🔗<class_OpenXRActionSet_method_add_action>`

Ajoute une action à cet ensemble d'actions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_method_get_action_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_action_count**\ (\ ) |const| :ref:`🔗<class_OpenXRActionSet_method_get_action_count>`

Récupère le nombre d'actions dans notre ensemble d'actions.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRActionSet_method_remove_action:

.. rst-class:: classref-method

|void| **remove_action**\ (\ action\: :ref:`OpenXRAction<class_OpenXRAction>`\ ) :ref:`🔗<class_OpenXRActionSet_method_remove_action>`

Retire une action de cet ensemble d'actions.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
